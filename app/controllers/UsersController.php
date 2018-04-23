<?php
namespace Vokuro\Controllers;

use Phalcon\Tag;
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
use Vokuro\Forms\ChangePasswordForm;
use Vokuro\Forms\UsersForm;
use Vokuro\Forms\VerifmanualForm;
use Vokuro\Forms\CekreferalForm;
use Vokuro\Forms\CekresellerForm;
use Vokuro\Forms\InsresellerForm;
use Vokuro\Forms\CreateReferalForm;
use Vokuro\Forms\DashboardForm;
use Vokuro\Models\Users;
use Vokuro\Models\Cekreseller;
use Vokuro\Models\PasswordChanges;

use Phalcon\Paginator\Adapter\Model as PaginatorModel;
use Phalcon\Paginator\Adapter\NativeArray as PaginatorArray;
use Phalcon\Paginator\Adapter\QueryBuilder as PaginatorQueryBuilder;
use Phalcon\Mvc\Model\Query;

use Phalcon\Http\Request;
use Phalcon\Db\Adapter\Pdo\Mysql;
use Phalcon\Db as Assoc;
/**
 * Vokuro\Controllers\UsersController
 * CRUD to manage users
 */
class UsersController extends ControllerBase
{

    public function initialize()
    {

    }

    /**
     * Default action, shows the search form
     */
    public function indexAction()
    {
        $this->persistent->conditions = null;
        $this->view->form = new UsersForm();
    }

    /*page untuk cek codereferal sebelum redirect ke insresellerAction */
    public function cekreferalAction()
    {
      $form = new CekreferalForm();

      if ($this->request->isPost()) {

        $coderef = $this->request->getPost('coderef');

        $param = " and coderef = '$coderef' ";

        $query = new Query(
            "SELECT *
            from Vokuro\Models\Users where profilesId = 4 $param",
            $this->getDI()
        );

        $cek = $query->execute();

        if (count($cek) == 0) {
            $this->flash->notice("The search did not find any Super Agen");

        }
        foreach ($cek as $cok) {
          // var_dump($cok->name." ".$cok->coderef);
          $this->response->redirect('users/insreseller?coderef='.$coderef);
        }
        // var_dump($param);
      }

      $this->view->form = $form;
    }

    /*Page Untuk PENDAFTARAN AWAL RESELLER BERUPA NAMA DAN NO TLP DAN CODE REFERAL ke table reseller_inputadmin
      field code referal Super Agen Terisi otomatis dari cekreferalAction.
    */
    public function insresellerAction()
    {
        $form = new InsresellerForm();

      if ($this->request->isPost()) {
          if($this->security->checkToken())
          {
            if ($form->isValid($this->request->getPost()) == false)
            {
              foreach ($form->getMessages() as $message) {
                  $this->flash->error($message);
              }
            }else
            {
                $cekreseller = new Cekreseller([
                    'nama' => $this->request->getPost('nama', 'striptags'),
                    'no_hp' => $this->request->getPost('no_hp'),
                    'coderef' => $this->request->getPost('coderef'),
                ]);

                if ($cekreseller->save()) {
                  $form->clear();
                  $this->flash->success("Pendaftaran Awal Reseller Berhasil");
                }

                foreach ($form->getMessages() as $message) {
                    $this->flash->error($message);
                }
            }
          }
          else {
              $this->flash->error('CSRF Validation is Failed');
          }
      }
      $this->view->form = $form;

    }

   /**
   * list RESELLER UNTUK AKTIVASI for users
   */

    public function listactiveAction()
    {
       //list aktivasi USER RESELLER
       $numberPage = 1;

       $form = new UsersForm();

       if ($this->request->isPost()) {
           $query = Criteria::fromInput($this->di, 'Vokuro\Models\Users', $this->request->getPost());
           $this->persistent->searchParams = $query->getParams();
       } else {
           $numberPage = $this->request->getQuery("page", "int");
       }

       $users = Users::find(" 1=1 and active = 'N' and profilesId = 5 ");
       if (count($users) == 0) {
           $this->flash->notice("The search did not find any users");
          //  return $this->dispatcher->forward([
          //      "action" => "index"
          //  ]);
       }

       $paginator = new Paginator([
           "data" => $users,
           "limit" => 10,
           "page" => $numberPage
       ]);

       $this->view->page = $paginator->getPaginate();
       $this->view->form = $form;
     }

    /**
    * Aktivasi USER RESELLER oleh JPU APPROVAL
    */

    public function aktivasiAction($id)
    {
      $user = Users::findFirstById($id);
      if (!$user) {
          $this->flash->error("User was not found");
          return $this->dispatcher->forward([
              'action' => 'listactive'
          ]);
      }

      $user->active = "Y";
      $user->status = 1;
      $tampemail = $user->email;
      $tampname = $user->name;
      if (!$user->save()) {
          $this->flash->error($user->getMessages());
      } else {

          $this->getDI()
              ->getMail()
              ->send([$tampemail => $tampname],"Anda Berhasil Menjadi Reseller", 'confirmpayment',
                  [ 'emailBody'=> "Selamat Anda Telah Berhasil Menjadi Reseller JPU Silahkan Login dengan Username dan
                  Password yang sudah anda daftarkan, Selamat Berjualan :)
                  "]);

          $this->flash->success("SUCCESS Aktivasi Reseller");
      }

      return $this->dispatcher->forward([
          'action' => 'listactive'
      ]);

    }
   /**
   * AKSES Verifikasi MANUAL RESELLER yang baru apply oleh JPU VERIFIKATOR
   */

   public function listverifAction()
   {
     //list Verifikasi manual oleh adminjpu
     $numberPage = 1;

     $form = new UsersForm();

     if ($this->request->isPost()) {
         $query = Criteria::fromInput($this->di, 'Vokuro\Models\Users', $this->request->getPost());
         $this->persistent->searchParams = $query->getParams();
     } else {
         $numberPage = $this->request->getQuery("page", "int");
     }

     $users = Users::find(" 1=1 and active = 'N' and profilesId = 5 ");
     if (count($users) == 0) {
         $this->flash->notice("The search did not find any users");
        //  return $this->dispatcher->forward([
        //      "action" => "index"
        //  ]);
     }

     $paginator = new Paginator([
         "data" => $users,
         "limit" => 10,
         "page" => $numberPage
     ]);

     $this->view->page = $paginator->getPaginate();
     $this->view->form = $form;
   }

   public function verifmanualAction($id)
   {

       $user = Users::findFirstById($id);
       if (!$user) {
           $this->flash->error("User was not found");
           return $this->dispatcher->forward([
               'action' => 'index'
           ]);
       }

       $form =  new VerifmanualForm($user, [
           'edit' => true
       ]);

       if ($this->request->isPost()) {

         if ($form->isValid($this->request->getPost()) != false)
         {

           $user->assign([
               'name' => $this->request->getPost('name', 'striptags'),
               'lastname' => $this->request->getPost('lastname', 'striptags'),
               'profilesId' => $this->request->getPost('profilesId', 'int'),
               'email' => $this->request->getPost('email', 'email'),
               'banned' => $this->request->getPost('banned'),
               'suspended' => $this->request->getPost('suspended'),
               'active' => $this->request->getPost('active'),
               'type' => $this->request->getPost('type'),
               'skype' => $this->request->getPost('skype'),
               'phone' => $this->request->getPost('phone'),
               'company' => $this->request->getPost('company'),
               'address' => $this->request->getPost('address'),
               'city' => $this->request->getPost('city'),
               'country' => $this->request->getPost('country'),
           ]);

           if (!$user->save()) {
               $this->flash->error($user->getMessages());
           } else {

               $this->flash->success("User was updated successfully");

               Tag::resetInput();
           }
         }
       }
       $this->view->user = $user;
       $this->view->form = $form;

       // $this->view->form = new UsersForm($user, [
       //     'edit' => true
       // ]);
   }


   /*List View Data Reseller Sementara yang hanya berupa Nama, No hp dan Codereferal*/
   /* data reseller sementara view,edit, delete */
   public function listtempresellerAction()
   {
     $numberPage = 1;

     $form = new InsresellerForm();

     if ($this->request->isPost()) {
         $query = Criteria::fromInput($this->di, 'Vokuro\Models\Cekreseller', $this->request->getPost());
         $this->persistent->searchParams = $query->getParams();
     } else {
         $numberPage = $this->request->getQuery("page", "int");
     }

     $parameters = [];
     if ($this->persistent->searchParams) {
         $parameters = $this->persistent->searchParams;
     }

     $users = Cekreseller::find($parameters);
     if (count($users) == 0) {
         $this->flash->notice("The search did not find any data Reseller Sementara");
         return $this->dispatcher->forward([
             "action" => "index"
         ]);
     }

     $paginator = new Paginator([
         "data" => $users,
         "limit" => 10,
         "page" => $numberPage
     ]);

     $this->view->page = $paginator->getPaginate();
     $this->view->form = $form;

   }

   /**
    * Saves the user from the 'edit' reseller sementara action
    */
   public function edittempresAction($hp)
   {
       $user = Cekreseller::findFirstByno_hp($hp);
       if (!$user) {
           $this->flash->error("User was not found");
           return $this->dispatcher->forward([
               'action' => 'index'
           ]);
       }

       $form =  new CekresellerForm($user, [
           'edit' => true
       ]);

      //  var_dump($user->nama.' '.$user->no_hp.' '.$user->coderef);
       $this->view->name = $user->nama;
       $this->view->phone = $user->no_hp;
       $this->view->coderef = $user->coderef;

       if ($this->request->isPost()) {

         if ($form->isValid($this->request->getPost()) != false)
         {

           $user->assign([
             'nama' => $this->request->getPost('name', 'striptags'),
             'no_hp' => $this->request->getPost('phone'),
             'coderef' => $this->request->getPost('coderef'),
           ]);

           if (!$user->save()) {
               $this->flash->error($user->getMessages());
           } else {

               $this->flash->success("User was updated successfully");

               Tag::resetInput();
           }
         }
       }
       $this->view->user = $user;
       $this->view->form = $form;

       // $this->view->form = new UsersForm($user, [
       //     'edit' => true
       // ]);
   }

   /**
    * Deletes a User
    *
    * @param int $id
    */
   public function deletetempresAction($hp)
   {
       $user = Cekreseller::findFirstByno_hp($hp);
       if (!$user) {
           $this->flash->error("User was not found");
          //  return $this->dispatcher->forward([
          //      'action' => 'index'
          //  ]);
       }

       if (!$user->delete()) {
           $this->flash->error($user->getMessages());
       } else {
           $this->flash->success("User was deleted");
       }

       return $this->dispatcher->forward([
           'action' => 'listtempreseller'
       ]);
   }


   /* end all about data reseller sementara */

    /**
     * Searches for users
     */
    public function searchAction()
    {
        $numberPage = 1;

        $form = new UsersForm();

        if ($this->request->isPost()) {
            $query = Criteria::fromInput($this->di, 'Vokuro\Models\Users', $this->request->getPost());
            $this->persistent->searchParams = $query->getParams();
        } else {
            $numberPage = $this->request->getQuery("page", "int");
        }

        $parameters = [];
        if ($this->persistent->searchParams) {
            $parameters = $this->persistent->searchParams;
        }

        $users = Users::find($parameters);
        if (count($users) == 0) {
            $this->flash->notice("The search did not find any users");
            return $this->dispatcher->forward([
                "action" => "index"
            ]);
        }

        $paginator = new Paginator([
            "data" => $users,
            "limit" => 10,
            "page" => $numberPage
        ]);

        $this->view->page = $paginator->getPaginate();
        $this->view->form = $form;
    }

    /**
     * Creates a User
     */
    public function createAction()
    {
        if ($this->request->isPost()) {

            // print_r($this->security->hash($this->request->getPost('name')).'<br>'.$this->request->getPost('name', 'striptags'));
            // $this->view->disable();
            $user = new Users([
                'name' => $this->request->getPost('name', 'striptags'),
                'lastname' => $this->request->getPost('lastname', 'striptags'),
                'profilesId' => $this->request->getPost('profilesId', 'int'),
                'email' => $this->request->getPost('email', 'email'),
                'password' => $this->security->hash($this->request->getPost('password')),
                'profilesId' => $this->request->getPost('profilesId'),
                'type' => "AAA",
                'skype' => $this->request->getPost('skype'),
                'phone' => $this->request->getPost('phone'),
                'company' => $this->request->getPost('company'),
                'address' => $this->request->getPost('address'),
                'city' => $this->request->getPost('city'),
                'country' => $this->request->getPost('country'),
            ]);

            if (!$user->save()) {
                $this->flash->error($user->getMessages());
            } else {

                $this->flash->success("User was created successfully");

                Tag::resetInput();
            }
        }

        $this->view->form = new UsersForm(null);
    }

    /**
     * Saves the user from the 'edit' action
     */
    public function editrefAction($id)
    {
      $user = Users::findFirstById($id);
      if (!$user) {
          $this->flash->error("User was not found");
          return $this->dispatcher->forward([
              'action' => 'listref'
          ]);
      }

      $form =  new CreateReferalForm($user, [
          'edit' => true
      ]);

      $form->id = $user->id;

      if ($this->request->isPost()) {

        if ($form->isValid($this->request->getPost()) != false)
        {

          $user->assign([
            'id' => $this->request->getPost('id'),
            'name' => $this->request->getPost('name', 'striptags'),
            'email' => $this->request->getPost('email', 'email'),
            'profilesId' => 4,
            'active' => 'Y',
            'phone' => $this->request->getPost('phone'),
            'coderef' => $this->request->getPost('coderef'),
            'no_ktp' => $this->request->getPost('no_ktp'),
            'commision' => $this->request->getPost('commision'),
            'status' => 1,
            'lev1' => $this->request->getPost('level1'),
          ]);

          if (!$user->save()) {
              $this->flash->error($user->getMessages());
          } else {

              $this->flash->success("User was updated successfully");

              // Tag::resetInput();
          }
        }
      }
      $this->view->user = $user;
      $this->view->form = $form;
      $this->view->lev1 = $user->lev1;

    }

    public function editAction($id)
    {


        $user = Users::findFirstById($id);
        if (!$user) {
            $this->flash->error("User was not found");
            return $this->dispatcher->forward([
                'action' => 'listref'
            ]);
        }

        $form =  new UsersForm($user, [
            'edit' => true
        ]);
        $form->id = $user->id;
        if ($this->request->isPost()) {

          if ($form->isValid($this->request->getPost()) != false)
          {

            $user->assign([
                'name' => $this->request->getPost('name', 'striptags'),
                'lastname' => $this->request->getPost('lastname', 'striptags'),
                'profilesId' => $this->request->getPost('profilesId', 'int'),
                'email' => $this->request->getPost('email', 'email'),
                'banned' => $this->request->getPost('banned'),
                'suspended' => $this->request->getPost('suspended'),
                'active' => $this->request->getPost('active'),
                'type' => $this->request->getPost('type'),
                'skype' => $this->request->getPost('skype'),
                'phone' => $this->request->getPost('phone'),
                'company' => $this->request->getPost('company'),
                'address' => $this->request->getPost('address'),
                'city' => $this->request->getPost('city'),
                'country' => $this->request->getPost('country'),
            ]);

            if (!$user->save()) {
                $this->flash->error($user->getMessages());
            } else {

                $this->flash->success("User was updated successfully");

                Tag::resetInput();
            }
          }
        }
        $this->view->user = $user;
        $this->view->form = $form;

        // $this->view->form = new UsersForm($user, [
        //     'edit' => true
        // ]);
    }

    /**
     * Deletes a User
     *
     * @param int $id
     */

     public function deleterefAction($id)
     {
         $user = Users::findFirstById($id);
         if (!$user) {
             $this->flash->error("User was not found");
             return $this->dispatcher->forward([
                 'action' => 'listref'
             ]);
         }

         if (!$user->delete()) {
             $this->flash->error($user->getMessages());
         } else {
             $this->flash->success("User was deleted");
         }

         return $this->dispatcher->forward([
             'action' => 'listref'
         ]);
     }

    public function deleteAction($id)
    {
        $user = Users::findFirstById($id);
        if (!$user) {
            $this->flash->error("User was not found");
            return $this->dispatcher->forward([
                'action' => 'index'
            ]);
        }

        if (!$user->delete()) {
            $this->flash->error($user->getMessages());
        } else {
            $this->flash->success("User was deleted");
        }

        return $this->dispatcher->forward([
            'action' => 'index'
        ]);
    }

    /**
     * Users must use this action to change its password
     */
    public function changePasswordAction()
    {
        // $this->view->setTemplateBefore('cobaprivate');
        $form = new ChangePasswordForm();

        if ($this->request->isPost()) {

            if (!$form->isValid($this->request->getPost())) {

                foreach ($form->getMessages() as $message) {
                    $this->flash->error($message);
                }
            } else {

                $user = $this->auth->getUser();

                $user->password = $this->security->hash($this->request->getPost('password'));
                $user->mustChangePassword = 'N';

                $passwordChange = new PasswordChanges();
                $passwordChange->user = $user;
                $passwordChange->ipAddress = $this->request->getClientAddress();
                $passwordChange->userAgent = $this->request->getUserAgent();

                if (!$passwordChange->save()) {
                    $this->flash->error($passwordChange->getMessages());
                } else {

                    // $this->flash->success('Your password was successfully changed');

                    Tag::resetInput();

                    $this->flashSess->success("Your password was successfully changed");
                    $this->view->disable();
                    $this->auth->remove();

                    return $this->response->redirect('session/login');
                }
            }
        }

        $this->view->form = $form;
    }

    public function accountInfoAction()
    {
      // $this->view->setTemplateBefore('cobaprivate');
      $user = Users::findFirstById($this->auth->getId());
      if (!$user) {
          $this->flash->error("User was not found");
          return $this->dispatcher->forward([
              'action' => 'index'
          ]);
      }

      $form =  new UsersForm($user, [
          'edit' => true
      ]);
      $profilesId = $user->profilesId;
      // $banned = $user->banned;
      // $suspended = $user->suspended;
      // $active = $user->active;
      if ($this->request->isPost()) {

        if ($form->isValid($this->request->getPost()) != false) {

          $user->assign([
              'name' => $this->request->getPost('name', 'striptags'),
              'lastname' => $this->request->getPost('lastname', 'striptags'),
              // 'profilesId' => $this->request->getPost('profilesId', 'int'),
              'email' => $this->request->getPost('email', 'email'),
              // 'banned' => $this->request->getPost('banned'),
              // 'suspended' => $this->request->getPost('suspended'),
              // 'active' => $this->request->getPost('active'),
              'type' => $this->request->getPost('type'),
              'skype' => $this->request->getPost('skype'),
              'phone' => $this->request->getPost('phone'),
              'company' => $this->request->getPost('company'),
              'address' => $this->request->getPost('address'),
              'city' => $this->request->getPost('city'),
              'country' => $this->request->getPost('country'),
          ]);

          $user->profilesId = $profilesId;

          if (!$user->save()) {
              $this->flash->error($user->getMessages());
          } else {

              $this->flash->success("User was updated successfully");

              Tag::resetInput();
          }
        }
      }
      $this->view->user = $user;
      $this->view->form = $form;

    }


    /*Modul CREATE USER REFERAL, password Otomatis tercreate dan User mengetahui password defaultnya di email personal, atau referal#nohp
    */
    public function createrefAction()
    {
        $form = new CreateReferalForm();

        if ($this->request->isPost())
        {
          // print_r($this->request->getPost());
          // $this->view->disable();
            if($this->security->checkToken())
            {
              if ($form->isValid($this->request->getPost()) == false)
              {
                foreach ($form->getMessages() as $message) {
                    $this->flash->error($message);
                }
              }else
              {
                  $tamp = $this->request->getPost('phone');
                  $nametamp = $this->request->getPost('name', 'striptags');
                  $emailtamp = $this->request->getPost('email');
                  $passgen = "referal#".$tamp;
                  $hasil = $this->security->hash($passgen);
                  // var_dump($passgen.' - '.$hasil);
                  $createref = new Users([
                      'name' => $this->request->getPost('name', 'striptags'),
                      'email' => $this->request->getPost('email', 'email'),
                      'password' => $hasil,
                      'profilesId' => 4,
                      'active' => 'Y',
                      'phone' => $this->request->getPost('phone'),
                      'coderef' => $this->request->getPost('coderef'),
                      'no_ktp' => $this->request->getPost('no_ktp'),
                      'commision' => $this->request->getPost('commision'),
                      'status' => 1,
                      'lev1' => $this->request->getPost('level1'),
                      'lev2' => $this->request->getPost('level2'),
                      'lev3' => $this->request->getPost('level3'),
                      'lev4' => $this->request->getPost('level4'),
                  ]);

                  if ($createref->save()) {
                    $form->clear();
                    $this->flash->success("Pendaftaran Referal Berhasil");
                    $this->getDI()
                        ->getMail()
                        ->send([$emailtamp => $nametamp],"Anda Berhasil Menjadi Referal", 'confirmpayment',
                            [ 'emailBody'=> "Selamat Anda Telah Berhasil Menjadi REFERAL JPU Silahkan Login dengan<br>
                            Username : $emailtamp <br>
                            Password : $passgen <br>
                            Selamat Berjualan :) <br>
                            Jaga Kerahasiaan Password anda, demi keamanan, mohon ganti Password anda setelah login.
                            "]);
                  }

                  foreach ($form->getMessages() as $message) {
                      $this->flash->error($message);
                  }
              }
            }
            else {
                $this->flash->error('CSRF Validation is Failed');
            }
        }
        $this->view->form = $form;
    }

    public function grabcoderefAction()
    {

        $id = $this->request->getPost('id', 'int');

        $query = "SELECT coderef FROM Vokuro\Models\Users WHERE id=$id";
        $result_dis = $this->modelsManager->executeQuery($query);
        $resData = array();

        foreach ($result_dis as $result) {
           $resData[]= array("coderef"=>$result->coderef);
         }

        $this->view->disable();
        echo json_encode($resData);
        exit;
    }

    public function grablevel2Action()
    {

        $id = $this->request->getPost('id', 'int');

        $query = "SELECT * FROM Vokuro\Models\Users WHERE lev1=$id";
        $result_dis = $this->modelsManager->executeQuery($query);
        $resData = array();

        foreach ($result_dis as $result) {
           $resData[]= array("id"=>$result->id, "name"=>$result->name);
         }

        $this->view->disable();
        echo json_encode($resData);
        exit;
    }

    public function grablevel3Action()
    {

        $id = $this->request->getPost('id', 'int');

        $query = "SELECT * FROM Vokuro\Models\Users WHERE lev2=$id";
        $result_dis = $this->modelsManager->executeQuery($query);
        $resData = array();

        foreach ($result_dis as $result) {
           $resData[]= array("id"=>$result->id, "name"=>$result->name);
         }
        $this->view->disable();
        echo json_encode($resData);
        exit;
    }

    public function grablevel4Action()
    {

        $id = $this->request->getPost('id', 'int');

        $query = "SELECT * FROM Vokuro\Models\Users WHERE lev3=$id";
        $result_dis = $this->modelsManager->executeQuery($query);
        $resData = array();

        foreach ($result_dis as $result) {
           $resData[]= array("id"=>$result->id, "name"=>$result->name);
         }
        $this->view->disable();
        echo json_encode($resData);
        exit;
    }

    public function listrefAction()
    {
      $numberPage = 1;

      $form = new UsersForm();

      if ($this->request->isPost()) {
          $query = Criteria::fromInput($this->di, 'Vokuro\Models\Users', $this->request->getPost());
          $this->persistent->searchParams = $query->getParams();
      } else {
          $numberPage = $this->request->getQuery("page", "int");
      }

      $parameters = [" profilesId = '4'"];
      if ($this->persistent->searchParams) {
          $parameters = $this->persistent->searchParams;
      }

      $users = Users::find($parameters);
      if (count($users) == 0) {
          $this->flash->notice("The search did not find any users");
          return $this->dispatcher->forward([
              "action" => "index"
          ]);
      }

      $paginator = new Paginator([
          "data" => $users,
          "limit" => 10,
          "page" => $numberPage
      ]);

      $this->view->page = $paginator->getPaginate();
      $this->view->form = $form;
    }

    /*HALAMAN REFERAL untuk cek DAFTAR RESELLER*/
    public function viewresAction()
    {
      ini_set('display_errors', 1);
      $numberPage = 1;
      $userid = $this->auth->getId();
      $request = new Request();
      $database = 'cmsjpu';
      $config = [
        'adapter' => 'Mysql',
        'host' => '127.0.0.1',
        'username' => 'root',
        'password' => 'adminadmin',
        'dbname' => $database
      ];

      $connection = new Mysql($config);
      //ambil coderef
      $qry = "SELECT * FROM ".$database.".users where id = '".$userid."'";


      $sukses = $connection->query($qry);

      $sukses->setFetchMode(
          \Phalcon\Db::FETCH_ASSOC
      );

      $row = $sukses->fetchArray();

      $query = new Query(
          "SELECT *
          from Vokuro\Models\Users where coderef = '".$row['coderef']."' and id != '".$userid."' and profilesId = '5'",
          $this->getDI()
      );

      $resultset = $query->execute();

      if (count($resultset) == 0) {
          $this->flash->notice("The search did not find any Penjualan");

      }

      $paginator = new Paginator([
          'data' => $resultset,
          'limit'=> 10,
          'page' => $numberPage
      ]);

      $this->view->page = $paginator->getPaginate();
      // $this->view->form = $form;

      // $this->view->disable();
    }

    //dashboard referal
    public function dashrefAction()
    {
      $form = new DashboardForm();

      if(!empty($this->request->getPost("period")))
      {
        $period = $this->request->getPost("period");
      }

      ini_set('display_errors', 1);
      $numberPage = 1;
      $userid = $this->auth->getId();
      $request = new Request();
      $database = 'cmsjpu';
      $config = [
        'adapter' => 'Mysql',
        'host' => '127.0.0.1',
        'username' => 'root',
        'password' => 'adminadmin',
        'dbname' => $database
      ];

      $connection = new Mysql($config);
      //ambil coderef
      $qry = "SELECT * FROM ".$database.".users where id = '".$userid."'";

      $sukses = $connection->query($qry);

      $sukses->setFetchMode(
          \Phalcon\Db::FETCH_ASSOC
      );

      $row = $sukses->fetchArray();

      $qry2 = "SELECT * FROM ".$database.".users where coderef = '".$row['coderef']."' and id != '".$userid."' and profilesId = '5'";

      $sukses2 = $connection->query($qry2);
      $sukses2->setFetchMode(
          \Phalcon\Db::FETCH_ASSOC
      );
      // $row2 = $sukses2->fetchArray();
      // var_dump(count($row2['id']));
      $addqry = '';
      $count_reseller = 0;
      while ($row2 = $sukses2->fetchArray()) {
        if($row2['id'] != null)
        {
        $addqry .= "'". $row2['id']."',";
        $count_reseller++;
        }
      }
      if($addqry != ""){
      $paramqry =  rtrim($addqry,',');
      }else {
      $paramqry = "0";
      }
      /////total Penjualan dari tbl reseller

      // $qry3 = "SELECT count(id) as jml FROM ".$database.".penjualan_akun_".date("Ym")." where id_reseller in (".$paramqry.")";
      if(!isset($period)){
        $tgl = date("Y-m-d");

        $qry3 = "SELECT count(id) as jml FROM ".$database.".penjualan_akun_".date("Ym")." where msisdn != '' and id_reseller in (".$paramqry.") and updated like '".$tgl."%'";

      }else {
        switch ($period) {
          case 'yesterday':
          $date	= mktime(0,0,0,date("m"),date("d")-1,date("Y"));
          $yesterday	= date("Y-m-d",$date);

          $tabel = date("Ym",$date);

          $qry3 = "SELECT count(id) as jml FROM ".$database.".penjualan_akun_".$tabel." where msisdn != '' and id_reseller in (".$paramqry.") and updated like '".$yesterday."%'";
          break;

          case "last_7d" :
          $date_awal	= mktime(0,0,0,date("m"),date("d")-6,date("Y"));
          $tgl_awal	= date("Y-m-d",$date_awal);
          $tabel_awal	= date("Ym",$date_awal);

          $bln_awal = date("m",$date_awal);

          $qry3 = "SELECT count(id) as jml FROM ".$database.".penjualan_akun_".$tabel_awal." where msisdn != '' and id_reseller in (".$paramqry.")
           and updated BETWEEN '".$tgl_awal." 00:00:00' AND '".date("Y-m-d")." 23:59:59' ";

          break;

          case "last_1m" :
          $date_awal	= mktime(0,0,0,date("m"),date("d")-30,date("Y"));
          $tgl_awal	= date("Y-m-d",$date_awal);
          $tabel_awal	= date("Ym",$date_awal);

          $qry3 = "SELECT count(id) as jml FROM ".$database.".penjualan_akun_".$tabel_awal." where msisdn != '' and id_reseller in (".$paramqry.")
           and updated BETWEEN '".$tgl_awal." 00:00:00' AND '".date("Y-m-d")." 23:59:59' ";

          break;

          default:
          $tgl = date("Y-m-d");

          $qry3 = "SELECT count(id) as jml FROM ".$database.".penjualan_akun_".date("Ym")." where msisdn != '' and id_reseller in (".$paramqry.") and updated like '".$tgl."%'";
          break;
        }
      }
      $sukses3 = $connection->query($qry3);

      $sukses3->setFetchMode(
          \Phalcon\Db::FETCH_ASSOC
      );

      $row3 = $sukses3->fetchArray();
      $rev = $row3['jml'] * $row['commision'];
      // echo 'total penjualan = '.$row3['jml'].' total komisi anda = '.$rev;
      // echo $qry3.' '.$row['commision'];
      $this->view->form = $form;
      $this->view->tot_penjualan = $row3['jml'];
      $this->view->tot_rev = $rev;
      $this->view->tot_reseller = $count_reseller;

      // $this->view->disable();
    }

    //dasboard reseller
    public function dashresAction()
    {
      $form = new DashboardForm();

      if(!empty($this->request->getPost("period")))
      {
        $period = $this->request->getPost("period");
      }

      ini_set('display_errors', 1);
      $numberPage = 1;
      $userid = $this->auth->getId();
      $leveluser = $this->auth->getProfilesId();

      $request = new Request();
      $database = 'cmsjpu';
      $config = [
        'adapter' => 'Mysql',
        'host' => '127.0.0.1',
        'username' => 'root',
        'password' => 'adminadmin',
        'dbname' => $database
      ];

      $connection = new Mysql($config);
      //ambil harga per pcs voucher
      $qry = "SELECT * FROM ".$database.".tbl_hargaprod";

      $sukses = $connection->query($qry);

      $sukses->setFetchMode(
          \Phalcon\Db::FETCH_ASSOC
      );

      $row = $sukses->fetchArray();

      if(($leveluser == 1) || ($leveluser == 4))
      {
        $qry2 = "SELECT * FROM ".$database.".users where profilesId = 5 and id != '".$userid."'";
      }else {
        $qry2 = "SELECT * FROM ".$database.".users where id = '".$userid."'";
      }
      $sukses2 = $connection->query($qry2);
      $sukses2->setFetchMode(
          \Phalcon\Db::FETCH_ASSOC
      );

      $addqry = '';
      while ($row2 = $sukses2->fetchArray()) {
        $addqry .= "'". $row2['id']."',";
      }
      if($addqry != ""){
      $paramqry =  rtrim($addqry,',');
      }else {
      $paramqry = "0";
      }
      /////total Penjualan dari tbl reseller

      // $qry3 = "SELECT count(id) as jml FROM ".$database.".penjualan_akun_".date("Ym")." where id_reseller in (".$paramqry.")";
      if(!isset($period)){
        $tgl = date("Y-m-d");

        $qry3 = "SELECT count(id) as jml FROM ".$database.".penjualan_akun_".date("Ym")." where msisdn != '' and id_reseller in (".$paramqry.") and updated like '".$tgl."%'";

      }else {
        switch ($period) {
          case 'yesterday':
          $date	= mktime(0,0,0,date("m"),date("d")-1,date("Y"));
          $yesterday	= date("Y-m-d",$date);

          $tabel = date("Ym",$date);

          $qry3 = "SELECT count(id) as jml FROM ".$database.".penjualan_akun_".$tabel." where msisdn != '' and id_reseller in (".$paramqry.") and updated like '".$yesterday."%'";
          break;

          case "last_7d" :
          $date_awal	= mktime(0,0,0,date("m"),date("d")-6,date("Y"));
          $tgl_awal	= date("Y-m-d",$date_awal);
          $tabel_awal	= date("Ym",$date_awal);

          $bln_awal = date("m",$date_awal);

          $qry3 = "SELECT count(id) as jml FROM ".$database.".penjualan_akun_".$tabel_awal." where msisdn != '' and id_reseller in (".$paramqry.")
           and updated BETWEEN '".$tgl_awal." 00:00:00' AND '".date("Y-m-d")." 23:59:59' ";

          break;

          case "last_1m" :
          $date_awal	= mktime(0,0,0,date("m"),date("d")-30,date("Y"));
          $tgl_awal	= date("Y-m-d",$date_awal);
          $tabel_awal	= date("Ym",$date_awal);

          $qry3 = "SELECT count(id) as jml FROM ".$database.".penjualan_akun_".$tabel_awal." where msisdn != '' and id_reseller in (".$paramqry.")
           and updated BETWEEN '".$tgl_awal." 00:00:00' AND '".date("Y-m-d")." 23:59:59' ";

          break;

          default:
          $tgl = date("Y-m-d");

          $qry3 = "SELECT count(id) as jml FROM ".$database.".penjualan_akun_".date("Ym")." where msisdn != '' and id_reseller in (".$paramqry.") and updated like '".$tgl."%'";
          break;
        }
      }
      $sukses3 = $connection->query($qry3);

      $sukses3->setFetchMode(
          \Phalcon\Db::FETCH_ASSOC
      );

      $row3 = $sukses3->fetchArray();
      $rev = $row3['jml'] * $row['harga'];
      // echo 'total penjualan = '.$row3['jml'].' total komisi anda = '.$rev;
      // echo $qry3.' '.$row['commision'];

      //qry cek saldo user dan quota
      $qry_ceksaldo = "SELECT * FROM ".$database.".saldo where user_id = ".$userid;

      $sukses_ceksaldo = $connection->query($qry_ceksaldo);

      $sukses_ceksaldo->setFetchMode(
          \Phalcon\Db::FETCH_ASSOC
      );

      $row_ceksaldo = $sukses_ceksaldo->fetchArray();

      $this->view->form = $form;
      $this->view->tot_penjualan = $row3['jml'];
      $this->view->tot_rev = $rev;
      $this->view->saldo = $row_ceksaldo['cur_saldo'];
      $this->view->quota = $row_ceksaldo['quota'];
      // print_r($row3['jml']);
      // print_r($rev);
      // $this->view->disable();
    }

    public function welcomeAction()
    {
        //landing page
    }

    public function experiaAction(){
      ini_set('display_errors', 1);
      $data = array();
      $request = new Request();
      $database = 'cmsjpu';
      $config = [
        'adapter' => 'Mysql',
        'host' => '127.0.0.1',
        'username' => 'root',
        'password' => 'adminadmin',
        'dbname' => $database
      ];

      $connection = new Mysql($config);
      // $query = "select * from ".$database.".treeview_items";
      $query = "select * from ".$database.".users";

      $sukses = $connection->query($query);

      $sukses->setFetchMode(
          \Phalcon\Db::FETCH_ASSOC
      );

      while ($row = $sukses->fetchArray())
      {
        $tmp = array();
        $tmp['id'] = $row['id'];
        $tmp['name'] = $row['name'];
        $tmp['text'] = $row['name'].' ['.$row['coderef'].']';
        $tmp['lev1'] = $row['lev1'];
        $tmp['coderef'] = $row['coderef'];
        array_push($data, $tmp);

      }

      $itemsByReference = array();

      // Build array of item references:
      foreach($data as $key => &$item) {
         $itemsByReference[$item['id']] = &$item;
         // Children array:
         $itemsByReference[$item['id']]['nodes'] = array();
        // $itemsByReference[$item['id']]['a_attr'] = new \StdClass();
      }

      // Set items as children of the relevant parent item.
      foreach($data as $key => &$item)  {
      //echo "<pre>";print_r($itemsByReference[$item['parent_id']]);die;
        //  if($item['parent_id'] && isset($itemsByReference[$item['parent_id']])) {
           if($item['lev1'] && isset($itemsByReference[$item['lev1']])) {
            $itemsByReference [$item['lev1']]['nodes'][] = &$item;
            // $itemsByReference [$item['parent_id']]['nodes'][] = &$item;
        }
      }
      // Remove items that were added to parents elsewhere:
      foreach($data as $key => &$item) {
         if(empty($item['nodes'])) {
              unset($item['nodes']);
              // $item['a_attr']->href = 'http://kemanaaja.com';
          }
         if($item['lev1'] && isset($itemsByReference[$item['lev1']])) {
        // if($item['parent_id'] && isset($itemsByReference[$item['parent_id']])) {
            unset($data[$key]);
         }
      }

      // Encode:
      echo json_encode($data);
      $this->view->disable();
    }

}

<?php

namespace Vokuro\Controllers;

use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
// use Vokuro\Models\Adspace;
use Vokuro\Models\Hospital;
use Phalcon\Tag;
// use Vokuro\Forms\AdspaceForm;
use Vokuro\Forms\HospitalForm;


class HospitalController extends ControllerBase
{
    /**
     * Index action
     */
     public function initialize()
     {

     }

    public function indexAction()
    {
        $this->persistent->parameters = null;
        $this->view->form = new HospitalForm();
    }

    /**
     * Searches for adspace
     */
    public function searchAction()
    {
        $numberPage = 1;

        $form = new HospitalForm();
        $numberPage = 1;
        $addParam = '';
        $addParam1 = '';
        $addParam2 = '';
        $selfId = $this->auth->getId();

        $this->view->selfId = $selfId;

        if ($this->request->isPost()) {
          $kode = $this->request->getPost("kode_rs");
          $nama = $this->request->getPost("nama_rs");
          $telp = $this->request->getPost("telp_rs");

          if($kode == '')
          {
              $addParam =   " and kode_rs is not null";
          }else {
              $addParam =   " and kode_rs = '" . $kode ."'";
          }

          if($nama == "")
          {
            $addParam1 = " and nama_rs is not null";
          }else {
              $addParam1 = " and nama_rs = '".$nama."'";
          }

          if($telp == "")
          {
            $addParam2 = " and telp_rs is not null";
          }else {
              $addParam2 = " and telp_rs = '".$telp."'";
          }
            // $query = Criteria::fromInput($this->di, 'Adspace', $_POST);
            // $this->persistent->parameters = $query->getParams();
        } else {
            $numberPage = $this->request->getQuery("page", "int");
        }

        $parameters = $this->persistent->parameters;
        if (!is_array($parameters)) {
            $parameters = [];
        }
        $parameters = "1=1 ";
        $hospital = Hospital::find($parameters.$addParam.$addParam1.$addParam2." order by updated desc");
        if (count($hospital) == 0) {
            $this->flash->notice("The search did not find any Hospital");

        }

        $paginator = new Paginator([
            'data' => $hospital,
            'limit'=> 5,
            'page' => $numberPage
        ]);

        $this->view->page = $paginator->getPaginate();
        $this->view->form = $form;
    }

    /**
     * Edits a adspace
     *
     * @param string $id
     */
    public function editAction($id)
    {
      $hospital = Hospital::findFirstByid($id);

      if (!$hospital){
             $this->flash->error("Hospital was not found");
             return;
      }

      $form = new HospitalForm($hospital, [
          'edit' => true
      ]);

      $form->id = $hospital->id;

      $form->pic_rs = $doctor->pic_rs;
      $tampung_pic_rs = $doctor->pic_rs;
      if($form->pic_rs != null){
        $green+=1;
      }

      if ($this->request->isPost())
      {
        $hospital->assign([
          'id' => $this->request->getPost('id'),
          'kode_rs' => $this->request->getPost("kode_rs"),
          'nama_rs' => $this->request->getPost("nama_rs"),
          'alamat_rs' => $this->request->getPost("alamat_rs"),
          'telp_rs' => $this->request->getPost("telp_rs"),
          'email_rs' => $this->request->getPost("email_rs"),
          'status_rs' => $this->request->getPost("status_rs"),
          'pic_rs' => $this->request->getPost("pic_rs"),
          'lat_rs' => $this->request->getPost("lat_rs"),
          'lon_rs' => $this->request->getPost("lon_rs"),
        ]);

        $data = $this->request->getPost();
        if (!$form->isValid($data, $hospital)) {
            foreach ($form->getMessages() as $message) {

            }
        }

        if (!$hospital->save()) {
          $messages = $hospital->getMessages();

          // echo "sorry problemnya dibawah ya";
          foreach ($messages as $message) {
            $this->flash->error($message);
          }

        } else {

          Tag::resetInput();
          $this->flash->success("Hospital was updated successfully");
          // $this->view->disable();
          // return $this->response->redirect('hospital/edit/'.$id);
        }
      }
      $this->view->user = $hospital;
      $this->view->form = $form;


    }

    /**
     * Creates a new adspace
     */
    public function createAction()
    {

      $form = new HospitalForm();

      if($this->request->isPost())
      {
        if($this->security->checkToken())
        {
          $data = array(
            'kode_rs' => $this->request->getPost("kode_rs"),
            'nama_rs' => $this->request->getPost("nama_rs"),
            'alamat_rs' => $this->request->getPost("alamat_rs"),
            'telp_rs' => $this->request->getPost("telp_rs"),
            'email_rs' => $this->request->getPost("email_rs"),
            'status_rs' => $this->request->getPost("status_rs"),
            'lat_rs' => $this->request->getPost("lat_rs"),
            'lon_rs' => $this->request->getPost("lon_rs"),
          );

          $hospital = new Hospital();

          if($this->request->hasFiles() != false)
          {
            if(!is_dir("img_cmsdokter".date("Y-m-d")))
            {
             mkdir("img_cmsdokter/".date("Y-m-d"));
            }

            $dir = "img_cmsdokter/".date("Y-m-d")."/";
            if(($_FILES['photo1']['name']))
            {
            $file1 = $dir . ($_FILES['photo1']['name']);
            move_uploaded_file($_FILES['photo1']['tmp_name'], $file1);
            $hospital->pic_rs = $file1;
            }
          }

          $hospital->assign($data);

          // cek valid/tidak data
          $cek = $this->request->getPost();
          if (!$form->isValid($cek, $hospital)) {
              foreach ($form->getMessages() as $message) {

              }
          }

          if($hospital->create()) {
            $form->clear();
           $this->flash->success("Hospital was created successfully ");
          } else {
           $this->flash->error("Hospital cannot created");
          }




        }
        else {
          $this->flash->error('CSRF Validation is Failed');
        }


      }

        $this->view->form = $form;


    }


    /**
     * Deletes a adspace
     *
     * @param string $id
     */
    public function deleteAction($id,$page)
    {
        $hospital = Hospital::findFirstByid($id);
        if (!$hospital) {
            $this->flash->error("Hospital was not found");

            $this->dispatcher->forward([
                'controller' => "hospital",
                'action' => 'search'
            ]);

            return;
        }

        if (!$hospital->delete()) {

            foreach ($doctor->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "hospital",
                'action' => 'search'
            ]);

            return;
        }

        $this->flash->success("Hospital was deleted successfully");

        $this->dispatcher->forward([
            'controller' => "hospital",
            'action' => "search"
        ]);
    }

    public function viewAction($id,$page)
    {
        $numberPage = 1;

        if ($this->request->isPost()) {
            $query = Criteria::fromInput($this->di, 'Vokuro\Models\Hospital', $_POST);
            $this->persistent->parameters = $query->getParams();
        } else {
            $numberPage = $this->request->getQuery("page", "int");
        }

        $parameters = $this->persistent->parameters;
        if (!is_array($parameters)) {
            $parameters = [];
        }

        $parameters = "id = ". $id;

        $hospital = Hospital::find($parameters);

        if (count($hospital) == 0) {
            $this->flash->notice("The search did not find any Hospital");

        }

        $paginator = new Paginator([
            'data' => $hospital,
            'limit'=> 5,
        ]);

        $this->view->page = $paginator->getPaginate();
        $this->view->frompage = $page;

        // $this->view->form = $form;
    }

}

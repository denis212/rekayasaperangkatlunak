<?php
namespace Vokuro\Controllers;

use Vokuro\Forms\LoginForm;
use Vokuro\Forms\SignUpForm;
use Vokuro\Forms\ForgotPasswordForm;
use Vokuro\Forms\CekresellerForm;
use Vokuro\Auth\Exception as AuthException;
use Vokuro\Models\Users;
use Vokuro\Models\Cekreseller;
use Vokuro\Models\ResetPasswords;
use Phalcon\Validation;

use Phalcon\Paginator\Adapter\Model as PaginatorModel;
use Phalcon\Paginator\Adapter\NativeArray as PaginatorArray;
use Phalcon\Paginator\Adapter\QueryBuilder as PaginatorQueryBuilder;
use Phalcon\Mvc\Model\Query;

/**
 * Controller used handle non-authenticated session actions like login/logout, user signup, and forgotten passwords
 */
class SessionController extends ControllerBase
{


    /**
     * Default action. Set the public layout (layouts/public.volt)
     */
    public function initialize()
    {

    }

    public function indexAction()
    {

    }

    /**
     * Allow a user to signup to the system
     */
    public function cekresellerAction()
    {
        $form = new CekresellerForm();

        if ($this->request->isPost()) {
          $nama = $this->request->getPost('name');
          $hp = $this->request->getPost('phone');
          $coderef = $this->request->getPost('coderef');

          $param = " inpt.nama = '$nama' and inpt.no_hp = '$hp' and inpt.coderef = '$coderef' ";

          $query = new Query(
              "SELECT  inpt.nama,
              inpt.no_hp,
              inpt.coderef,
              usr.id as idref
              from Vokuro\Models\Cekreseller inpt
              left join Vokuro\Models\Users usr on inpt.coderef = usr.coderef
              where $param",
              $this->getDI()
          );

          $cek = $query->execute();

          if (count($cek) == 0) {
              $this->flash->notice("The search did not find any Reseller");

          }
          foreach ($cek as $cok) {
            // var_dump($cok->nama." ".$cok->no_hp);
            $this->response->redirect('session/signup?nama='.$cok->nama.'&hp='.$cok->no_hp.'&coderef='.$coderef.'&idref='.$cok->idref);
          }
          // var_dump($param);
        }

        $this->view->form = $form;
    }

    public function signupAction()
    {
        $form = new SignUpForm();

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
                  $user = new Users([
                      'name' => $this->request->getPost('name', 'striptags'),
                      'email' => $this->request->getPost('email'),
                      'password' => $this->security->hash($this->request->getPost('password')),
                      'profilesId' => 5,
                      'phone' => $this->request->getPost('phone'),
                      'coderef' => $this->request->getPost('coderef'),
                      'no_ktp' => $this->request->getPost('no_ktp'),
                      'active' => 'N',
                      'status' => 0,
                      'lev1' => $this->request->getPost('idref'),
                  ]);

                  if ($user->save()) {
                    $form->clear();
                    $this->flash->success("We will check your data first for activation, please check your email If Approved");
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
     * Starts a session in the admin backend
     */
    public function loginAction()
    {
      if ($this->session->has('auth-identity')) {
        return $this->response->redirect('users/listref');
      }
        $form = new LoginForm();

        try {

            if (!$this->request->isPost()) {

                if ($this->auth->hasRememberMe()) {
                    return $this->auth->loginWithRememberMe();
                }
            } else {

                if ($form->isValid($this->request->getPost()) == false) {
                    foreach ($form->getMessages() as $message) {
                        $this->flash->error($message);
                    }
                } else {

                    $this->auth->check([
                        'email' => $this->request->getPost('email'),
                        'password' => $this->request->getPost('password'),
                        'remember' => $this->request->getPost('remember')
                    ]);

                    // return $this->response->redirect('index');
                    return $this->response->redirect('users/welcome');

                }
            }
        } catch (AuthException $e) {
            $this->flash->error($e->getMessage());
        }

        $this->view->form = $form;
    }

    /**
     * Shows the forgot password form
     */
    public function forgotPasswordAction()
    {
        $form = new ForgotPasswordForm();

        if ($this->request->isPost())
        {
          if($this->security->checkToken())
          {
            // Send emails only is config value is set to true
            if ($this->getDI()->get('config')->useMail) {

                if ($form->isValid($this->request->getPost()) == false) {
                    foreach ($form->getMessages() as $message) {
                        $this->flash->error($message);
                    }
                } else {

                    $user = Users::findFirstByEmail($this->request->getPost('email'));
                    if (!$user) {
                        $this->flash->success('There is no account associated to this email');
                    } else {

                        $resetPassword = new ResetPasswords();
                        $resetPassword->usersId = $user->id;
                        if ($resetPassword->save()) {
                            // $this->flash->success('Success! Please check your messages for an email reset password');
                            $this->flashSess->success("Success! Please check your messages for an email reset password");
                            $this->view->disable();
                            return $this->response->redirect('');
                        } else {
                            foreach ($resetPassword->getMessages() as $message) {
                                $this->flash->error($message);
                            }
                        }
                    }
                }
            } else {
                $this->flash->warning('Emails are currently disabled. Change config key "useMail" to true to enable emails.');
            }
        }
        else {
            $this->flash->error('CSRF Validation is Failed');
        }
      }
        $this->view->form = $form;
    }

    /**
     * Closes the session
     */
    public function logoutAction()
    {
        $this->auth->remove();

        return $this->response->redirect('');
    }
}

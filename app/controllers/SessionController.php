<?php
namespace Vokuro\Controllers;

use Vokuro\Forms\LoginForm;
use Vokuro\Forms\SignUpForm;
use Vokuro\Forms\ForgotPasswordForm;
use Vokuro\Auth\Exception as AuthException;
use Vokuro\Models\Users;
use Vokuro\Models\ResetPasswords;

/**
 * Controller used handle non-authenticated session actions like login/logout, user signup, and forgotten passwords
 */
class SessionController extends ControllerBase
{

  public $extIMG = array(
        'image/jpeg',
        'image/png',
        'image/bmp',
        'application/pdf',
    );

    /**
     * Default action. Set the public layout (layouts/public.volt)
     */
    public function initialize()
    {
        // $this->view->setTemplateBefore('public');
          // $this->view->setTemplateBefore('coba');
          if ($this->session->has('auth-identity')) {
              // $this->view->setTemplateBefore('private');
                $this->view->setTemplateBefore('cobaprivate');
          }else {
            // $this->view->setTemplateBefore('public');
            $this->view->setTemplateBefore('coba');
          }
    }

    public function indexAction()
    {

    }

    /**
     * Allow a user to signup to the system
     */
    public function signupAction()
    {
        $form = new SignUpForm();

        if ($this->request->isPost()) {
            if($this->security->checkToken())
            {
            if ($form->isValid($this->request->getPost()) != false) {

                $user = new Users([
                    'name' => $this->request->getPost('name', 'striptags'),
                    'lastname' => $this->request->getPost('lastname', 'striptags'),
                    'email' => $this->request->getPost('email'),
                    'password' => $this->security->hash($this->request->getPost('password')),
                    'profilesId' => 2,
                    'type' => $this->request->getPost('type'),
                    'skype' => $this->request->getPost('skype'),
                    'phone' => $this->request->getPost('phone'),
                    'company' => $this->request->getPost('company'),
                    'address' => $this->request->getPost('address'),
                    'city' => $this->request->getPost('city'),
                    'country' => $this->request->getPost('country'),
                ]);

                if ($user->save()) {
                    return $this->dispatcher->forward([
                        'controller' => 'index',
                        'action' => 'index'
                    ]);
                }

                $this->flash->error($user->getMessages());
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

                    return $this->response->redirect('index');
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

        if ($this->request->isPost()) {

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
                            $this->flash->success('Success! Please check your messages for an email reset password');
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

        $this->view->form = $form;
    }

    /**
     * Closes the session
     */
    public function logoutAction()
    {
        $this->auth->remove();

        return $this->response->redirect('index');
    }
}

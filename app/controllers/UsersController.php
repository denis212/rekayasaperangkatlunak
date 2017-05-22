<?php
namespace Vokuro\Controllers;

use Phalcon\Tag;
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
use Vokuro\Forms\ChangePasswordForm;
use Vokuro\Forms\UsersForm;
use Vokuro\Models\Users;
use Vokuro\Models\PasswordChanges;

/**
 * Vokuro\Controllers\UsersController
 * CRUD to manage users
 */
class UsersController extends ControllerBase
{

    public function initialize()
    {
        if ($this->session->has('auth-identity')) {
            // $this->view->setTemplateBefore('private');
              $this->view->setTemplateBefore('cobaprivate');
        }else {
          // $this->view->setTemplateBefore('public');
          $this->view->setTemplateBefore('coba');
        }

          // Add some local CSS resources
         $this->assets->addCss("https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css");
         $this->assets->addCss("css/font-awesome.min.css");
         $this->assets->addCss("css/animate.min.css");
         $this->assets->addCss("css/prettyPhoto.css");
         $this->assets->addCss("css/main.css");
         $this->assets->addCss("css/responsive.css");

         // And some local JavaScript resources
         $this->assets->addJs("//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js");
         $this->assets->addJs("js/jquery.js");
         $this->assets->addJs("js/bootstrap.min.js");
         $this->assets->addJs("js/main.js");
         $this->assets->addJs("js/jquery.prettyPhoto.js");
         $this->assets->addJs("js/jquery.isotope.min.js");
         $this->assets->addJs("js/wow.min.js");
    }

    /**
     * Default action, shows the search form
     */
    public function indexAction()
    {
        $this->persistent->conditions = null;
        $this->view->form = new UsersForm();
    }

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

            $user = new Users([
                'name' => $this->request->getPost('name', 'striptags'),
                'profilesId' => $this->request->getPost('profilesId', 'int'),
                'email' => $this->request->getPost('email', 'email'),
                'password' => $this->security->hash($this->request->getPost('password')),
                'profilesId' => $this->request->getPost('profilesId'),
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

                $this->flash->success("User was created successfully");

                Tag::resetInput();
            }
        }

        $this->view->form = new UsersForm(null);
    }

    /**
     * Saves the user from the 'edit' action
     */
    public function editAction($id)
    {


        $user = Users::findFirstById($id);
        if (!$user) {
            $this->flash->error("User was not found");
            return $this->dispatcher->forward([
                'action' => 'index'
            ]);
        }

        $form =  new UsersForm($user, [
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

    /**
     * Deletes a User
     *
     * @param int $id
     */
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
        $this->view->setTemplateBefore('cobaprivate');
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
      $this->view->setTemplateBefore('cobaprivate');
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
}

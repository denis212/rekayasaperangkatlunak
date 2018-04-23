<?php

namespace Vokuro\Controllers;

use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
// use Vokuro\Models\Adspace;
use Vokuro\Models\Expertise;
use Phalcon\Tag;
// use Vokuro\Forms\AdspaceForm;
use Vokuro\Forms\ExpertiseForm;


class ExpertiseController extends ControllerBase
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
        $this->view->form = new ExpertiseForm();
    }

    /**
     * Searches for adspace
     */
    public function searchAction()
    {
        $numberPage = 1;

        $form = new ExpertiseForm();
        $numberPage = 1;
        $addParam = '';
        $addParam1 = '';
        $addParam2 = '';
        $selfId = $this->auth->getId();

        $this->view->selfId = $selfId;

        if ($this->request->isPost()) {

          $dest = $this->request->getPost("dest");

          if($dest == "")
          {
            $addParam1 = " and dest is not null";
          }else {
              $addParam1 = " and dest like '".$dest."%'";
          }

        } else {
            $numberPage = $this->request->getQuery("page", "int");
        }

        $parameters = $this->persistent->parameters;
        if (!is_array($parameters)) {
            $parameters = [];
        }
        $parameters = "1=1 ";
        $expertise = Expertise::find($parameters.$addParam.$addParam1);
        if (count($expertise) == 0) {
            $this->flash->notice("The search did not find any Expertise");
        }

        $paginator = new Paginator([
            'data' => $expertise,
            'limit'=> 10,
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
      $expertise = Expertise::findFirstByid($id);

      if (!$expertise){
             $this->flash->error("Expertise was not found");
             return;
      }

      $form = new ExpertiseForm($expertise, [
          'edit' => true
      ]);

      $form->id = $expertise->id;

      if ($this->request->isPost())
      {
        $expertise->assign([
          'id' => $this->request->getPost('id'),
          'dest' => $this->request->getPost("dest"),
        ]);

        $data = $this->request->getPost();
        if (!$form->isValid($data, $expertise)) {
            foreach ($form->getMessages() as $message) {

            }
        }

        if (!$expertise->save()) {
          $messages = $expertise->getMessages();

          // echo "sorry problemnya dibawah ya";
          foreach ($messages as $message) {
            $this->flash->error($message);
          }

        } else {

          Tag::resetInput();
          $this->flash->success("Expertise was updated successfully");
        }
      }
      $this->view->user = $expertise;
      $this->view->form = $form;


    }

    /**
     * Creates a new adspace
     */
    public function createAction()
    {

      $form = new ExpertiseForm();

      if($this->request->isPost())
      {
        if($this->security->checkToken())
        {
          $data = array(
              'id' => $this->request->getPost("id"),
              'dest' => $this->request->getPost("dest"),

          );

          $expertise = new Expertise();

          // cek valid/tidak data
          $cek = $this->request->getPost();
          if (!$form->isValid($cek, $expertise)) {
              foreach ($form->getMessages() as $message) {

              }
          }

          $expertise->assign($data);

          if($expertise->save() === true) {
            $form->clear();
           $this->flash->success("Expertise was created successfully ");
          } else {
           $this->flash->error("Expertise cannot created");
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
        $expertise = Expertise::findFirstByid($id);
        if (!$expertise) {
            $this->flash->error("Expertise was not found");

            $this->dispatcher->forward([
                'controller' => "expertise",
                'action' => 'index'
            ]);

            return;
        }

        if (!$expertise->delete()) {

            foreach ($expertise->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "expertise",
                'action' => 'search'
            ]);

            return;
        }

        $this->flash->success("Expertise was deleted successfully");

        $this->dispatcher->forward([
            'controller' => "expertise",
            'action' => "search"
        ]);
    }

    public function viewAction($id,$page)
    {
        $numberPage = 1;

        if ($this->request->isPost()) {
            $query = Criteria::fromInput($this->di, 'Vokuro\Models\Expertise', $_POST);
            $this->persistent->parameters = $query->getParams();
        } else {
            $numberPage = $this->request->getQuery("page", "int");
        }

        $parameters = $this->persistent->parameters;
        if (!is_array($parameters)) {
            $parameters = [];
        }

        $parameters = "id = ". $id;

        $expertise = Expertise::find($parameters);

        if (count($expertise) == 0) {
            $this->flash->notice("The search did not find any Expertise");

        }

        $paginator = new Paginator([
            'data' => $expertise,
            'limit'=> 10,
        ]);

        $this->view->page = $paginator->getPaginate();
        $this->view->frompage = $page;

        // $this->view->form = $form;
    }

}

<?php

namespace Vokuro\Controllers;

use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
use Vokuro\Models\Adspace;
use Phalcon\Tag;
use Vokuro\Forms\AdspaceForm;


class AdspaceController extends ControllerBase
{
    /**
     * Index action
     */
     public function initialize()
     {
        //  $this->view->setTemplateBefore('private');
           $this->view->setTemplateBefore('cobaprivate');

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

    public function indexAction()
    {
        $this->persistent->parameters = null;
        $this->view->form = new AdspaceForm();
    }

    /**
     * Searches for adspace
     */
    public function searchAction()
    {
        $numberPage = 1;

        $form = new AdspaceForm();
        $numberPage = 1;
        $addParam = '';
        $addParam1 = '';
        $addParam2 = '';
        $selfId = $this->auth->getId();

        $this->view->selfId = $selfId;

        if ($this->request->isPost()) {
          $name = $this->request->getPost("client_search");
          $type = $this->request->getPost("ad_typesearch");
          $status = $this->request->getPost("cp_status");

          if($name == '')
          {
              $addParam =   " and client_id is not null";
          }else {
              $addParam =   " and client_id = '" . $name ."'";
          }

          if($type == "")
          {
            $addParam1 = " and ad_type is not null";
          }else {
              $addParam1 = " and ad_type = '".$type."'";
          }

          if($status == "")
          {
            $addParam2 = " and status is not null";
          }else {
              $addParam2 = " and status = '".$status."'";
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
        // $parameters["order"] = "id";

        if($this->auth->getProfilesId()!='1')
        {
          $parameters = "1=1 and client_id = ". $this->auth->getId();
        }else {
            $parameters = "1=1 ";
        }

        $adspace = Adspace::find($parameters.$addParam.$addParam1.$addParam2." order by updated_at desc");
        if (count($adspace) == 0) {
            $this->flash->notice("The search did not find any adspace");

        }

        $paginator = new Paginator([
            'data' => $adspace,
            'limit'=> 10,
            'page' => $numberPage
        ]);

        $this->view->page = $paginator->getPaginate();
        $this->view->form = $form;
    }

    /**
     * Displays the creation form
     */
    public function newAction()
    {

    }

    /**
     * Edits a adspace
     *
     * @param string $id
     */
    public function editAction($id)
    {
      $adspace = Adspace::findFirstByid($id);

      if (!$adspace){
             $this->flash->error("adspace was not found");
             return;
      }

      $form = new AdspaceForm($adspace, [
          'edit' => true
      ]);

      $form->id = $adspace->id;

      // $this->tag->setDefault("ad_status", 'yes');

      if ($this->request->isPost())
      {
        $adspace->assign([
          'id' => $this->request->getPost('id'),
          'client_id' => $this->request->getPost("client_id"),
          'client_name' => $this->request->getPost("client_name"),
          'ad_url' => $this->request->getPost("ad_url"),
          'ad_type' => $this->request->getPost("ad_type"),
          'ad_guarantee' => $this->request->getPost("ad_guarantee")
        ]);

        if($this->request->getPost('ad_status') == 'yes')
        {
          $adspace->ad_status = 'yes';
          $adspace->status = 'a';
        }else {
          $adspace->ad_status = 'no';
          $adspace->status = 'n';
        }

        $data = $this->request->getPost();
        if (!$form->isValid($data, $adspace)) {
            foreach ($form->getMessages() as $message) {

            }
        }
        if (!$adspace->save()) {

        } else {

          Tag::resetInput();
          $this->flashSess->success("Ad Space was updated successfully");
          $this->view->disable();
          return $this->response->redirect('adspace/edit/'.$id);
        }
      }
      $this->view->user = $adspace;
      $this->view->form = $form;


    }

    /**
     * Creates a new adspace
     */
    public function createAction()
    {

      $form = new AdspaceForm();

      if($this->request->isPost())
      {
        if($this->security->checkToken())
        {
            // if($form->isValid($this->request->getPost()) != false)
            // {
              $adspace = new Adspace([
                'client_id' => $this->request->getPost('client_id'),
                'client_name' => $this->request->getPost('client_name'),
                'ad_url' => $this->request->getPost('ad_url'),
                'ad_type' => $this->request->getPost('ad_type'),
                'ad_guarantee' => $this->request->getPost('ad_guarantee'),
              ]);


                if($this->request->getPost('ad_status') == 'yes')
                {
                  $adspace->ad_status = 'yes';
                  $adspace->status = 'a';
                }else {
                  $adspace->ad_status = 'no';
                  $adspace->status = 'n';
                }

              $data = $this->request->getPost();
              if (!$form->isValid($data, $adspace)) {
                  foreach ($form->getMessages() as $message) {

                  }
              }

              if ($adspace->save())
              {

                $form->clear();
                $this->flash->success("Adspace was created successfully");
              }
              // $this->flash->error($adspace->getMessages());
            // }
          }
          else {
            $this->flash->error('CSRF Validation is Failed');
          }


      }

        $this->view->form = $form;


    }

    /**
     * Saves a adspace edited
     *
     */
    public function saveAction()
    {

        if (!$this->request->isPost()) {
            $this->dispatcher->forward([
                'controller' => "adspace",
                'action' => 'index'
            ]);

            return;
        }

        $id = $this->request->getPost("id");
        $adspace = Adspace::findFirstByid($id);

        if (!$adspace) {
            $this->flash->error("adspace does not exist " . $id);

            $this->dispatcher->forward([
                'controller' => "adspace",
                'action' => 'index'
            ]);

            return;
        }

        $adspace->ad_url = $this->request->getPost("ad_url");
        $adspace->ad_type = $this->request->getPost("ad_type");
        $adspace->ad_guarantee = $this->request->getPost("ad_guarantee");
        $adspace->ad_status = $this->request->getPost("ad_status");
        $adspace->created_at = $this->request->getPost("created_at");
        $adspace->updated_at = $this->request->getPost("updated_at");


        if (!$adspace->save()) {

            foreach ($adspace->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "adspace",
                'action' => 'edit',
                'params' => [$adspace->id]
            ]);

            return;
        }

        $this->flash->success("adspace was updated successfully");

        $this->dispatcher->forward([
            'controller' => "adspace",
            'action' => 'index'
        ]);
    }

    /**
     * Deletes a adspace
     *
     * @param string $id
     */
    public function deleteAction($id)
    {
        $adspace = Adspace::findFirstByid($id);
        if (!$adspace) {
            $this->flash->error("adspace was not found");

            $this->dispatcher->forward([
                'controller' => "adspace",
                'action' => 'index'
            ]);

            return;
        }

        if (!$adspace->delete()) {

            foreach ($adspace->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "adspace",
                'action' => 'search'
            ]);

            return;
        }

        $this->flash->success("adspace was deleted successfully");

        $this->dispatcher->forward([
            'controller' => "adspace",
            'action' => "search"
        ]);
    }

    public function ActivateAction($id,$page)
    {
      $adspace = Adspace::findFirstByid($id);
      if($adspace->status == 'n')
      { $adspace->status = 'a';
        $adspace->save();
      }elseif($adspace->status == 'a') {
        $adspace->status = 'n';
          $adspace->save();
      }

      // $page = 1;

      return $this->response->redirect('adspace/search?page='.$page);

    }

}

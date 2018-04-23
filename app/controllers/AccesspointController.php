<?php

namespace Vokuro\Controllers;

use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
use Vokuro\Models\Doctor;
use Vokuro\Models\Expertise;
use Vokuro\Models\Accesspoint;
use Vokuro\Models\Users;
use Phalcon\Tag;
use Vokuro\Forms\AccesspointForm;
// use Phalcon\Mvc\Controller;
use Phalcon\Validation;



class AccesspointController extends ControllerBase
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
        $this->view->form = new AccesspointForm();
    }

    /**
     * Searches for adspace
     */
    public function searchAction()
    {
        $numberPage = 1;

        $form = new AccesspointForm();
        $numberPage = 1;
        $addParam = ' 1 = 1 ';
        $addParam1 = '';
        $addParam2 = '';
        $addParam3 = '';
        $selfId = $this->auth->getId();

        $this->view->selfId = $selfId;

        if ($this->request->isPost()) {

          $nama_agen = $this->request->getPost("nama_agen");
          $merk = $this->request->getPost("merk");
          $serial_number = $this->request->getPost("serial_number");

          if($nama_agen == "")
          {
            $addParam1 = " ";
          }else {
              $addParam1 = " and Vokuro\Models\Users.name like '".$nama_agen."%'";
          }

          if($merk == "")
          {
            $addParam2 = " ";
          }else {
              $addParam2 = " and Vokuro\Models\Accesspoint.merk like '".$merk."%'";
          }

           if($serial_number == "")
          {
            $addParam3 = " ";
          }else {
              $addParam3 = " and Vokuro\Models\Accesspoint.serial_number like '".$serial_number."%'";
          }

        } else {
            $numberPage = $this->request->getQuery("page", "int");
        }

        $parameters = $this->persistent->parameters;
        if (!is_array($parameters)) {
            $parameters = [];
        }
        $parameters = "1=1 ";
        // $accesspoint = Accesspoint::find($parameters.$addParam.$addParam1.$addParam2.$addParam3);
        $accesspoint = Accesspoint::query()
        ->columns([
          'Vokuro\Models\Accesspoint.id',
          'Vokuro\Models\Accesspoint.id_reseller',
          'Vokuro\Models\Users.name',
          'Vokuro\Models\Accesspoint.merk',
          'Vokuro\Models\Accesspoint.serial_number',
          'Vokuro\Models\Accesspoint.lokasi',
          'Vokuro\Models\Accesspoint.alamat',
          'Vokuro\Models\Accesspoint.created',
          'Vokuro\Models\Accesspoint.updated',
        ])
        ->leftJoin('Vokuro\Models\Users','Vokuro\Models\Accesspoint.id_reseller = Vokuro\Models\Users.id')
        ->where($addParam.$addParam1.$addParam2.$addParam3)
        ->orderBy('Vokuro\Models\Accesspoint.updated')
        ->execute();
        if (count($accesspoint) == 0) {
            $this->flash->notice("The search did not find any Data");
        }

        $paginator = new Paginator([
            'data' => $accesspoint,
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
      $accesspoint = Accesspoint::findFirstByid($id);

      if (!$accesspoint){
             $this->flash->error("Access Point was not found");
             return;
      }

      $form = new AccesspointForm($accesspoint, [
          'edit' => true
      ]);

      $form->id = $accesspoint->id;
      $form->id_reseller = $accesspoint->id_reseller;
      if ($this->request->isPost())
      {
        $accesspoint->assign([
          'id' => $this->request->getPost('id'),
          'id_reseller' => $this->request->getPost("id_reseller"),
          // 'nama_agen' => $this->request->getPost("nama_agen"),
          'merk' => $this->request->getPost("merk"),
          'serial_number' => $this->request->getPost("serial_number"),
          'lokasi' => $this->request->getPost("lokasi"),
          'alamat' => $this->request->getPost("alamat"),
        ]);

        $data = $this->request->getPost();
        if (!$form->isValid($data, $accesspoint)) {
            foreach ($form->getMessages() as $message) {

            }
        }


        if (!$accesspoint->save()) {
          $messages = $accesspoint->getMessages();

          // echo "sorry problemnya dibawah ya";
          foreach ($messages as $message) {
            $this->flash->error($message);
          }

        } else {

          // Tag::resetInput();
          $this->flash->success("Access Point was updated successfully");
        }
      }
      $this->view->user = $accesspoint;
      $this->view->form = $form;
      $this->view->id_res = $accesspoint->id_reseller;


    }

    /**
     * Creates a new adspace
     */
    public function createAction()
    {

      $form = new AccesspointForm();

      if($this->request->isPost())
      {
        if($this->security->checkToken())
        {
          $data = array(
              'id_reseller' => $this->request->getPost("id_reseller"),
              // 'nama_agen' => $this->request->getPost("nama_agen"),
              'merk' => $this->request->getPost("merk"),
              'serial_number' => $this->request->getPost("serial_number"),
              'lokasi' => $this->request->getPost("lokasi"),
              'alamat' => $this->request->getPost("alamat"),
              'created' => 'inii',
              'updated' => 'anaaa'
          );

          $accesspoint = new Accesspoint();

          // cek valid/tidak data
          // $cek = $this->request->getPost();
          $cek = $this->request->getPost();
          if (!$form->isValid($cek, $accesspoint)) {
              foreach ($form->getMessages() as $message) {

              }
          }

          $accesspoint->assign($data);
          // if($accesspoint->create()) {
          //   $form->clear();
          //  $this->flash->success("Access Point was created successfully ");
          // } else {
          //  $this->flash->error("Access Point cannot created");
          // }
          if ($accesspoint->save() == false)
          {
              // echo "Umh, We can't store product: ";
              foreach ($accesspoint->getMessages() as $message)
              {
                 $this->flash->error("Access Point cannot created because: ".$message);
              }
          }
          else
          {
                $this->flash->success("Access Point was created successfully ");
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
    public function deleteAction($id)
    {
        $accesspoint = Accesspoint::findFirstByid($id);
        if (!$accesspoint) {
            $this->flash->error("Access Point was not found");

            $this->dispatcher->forward([
                'controller' => "accespoint",
                'action' => 'search'
            ]);

            return;
        }

        if (!$accesspoint->delete()) {

            foreach ($accesspoint->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "accesspoint",
                'action' => 'search'
            ]);

            return;
        }

        $this->flash->success("Access Point was deleted successfully");

        $this->dispatcher->forward([
            'controller' => "accesspoint",
            'action' => "search"
        ]);
    }

    public function viewAction($id,$page)
    {
        $numberPage = 1;

        if ($this->request->isPost()) {
            $query = Criteria::fromInput($this->di, 'Vokuro\Models\Doctor', $_POST);
            $this->persistent->parameters = $query->getParams();
        } else {
            $numberPage = $this->request->getQuery("page", "int");
        }

        $parameters = $this->persistent->parameters;
        if (!is_array($parameters)) {
            $parameters = [];
        }

        $parameters = "doctor_id = ". $id;

        $doctor = Doctor::find($parameters);

        if (count($doctor) == 0) {
            $this->flash->notice("The search did not find any campaign");

        }

        $paginator = new Paginator([
            'data' => $doctor,
            'limit'=> 10,
        ]);

        $this->view->page = $paginator->getPaginate();
        $this->view->frompage = $page;

        // $this->view->form = $form;
    }

}

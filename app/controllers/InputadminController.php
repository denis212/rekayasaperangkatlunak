<?php

namespace Vokuro\Controllers;

use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
use Vokuro\Models\Inputadmin;
use Phalcon\Tag;
use Vokuro\Forms\InputadminForm;


class InputadminController extends ControllerBase
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
        $this->view->form = new InputadminForm();
    }

    /**
     * Searches for Data Iklan BELUMMMMMM
     */
    public function searchAction()
    {
      $numberPage = 1;

      $form = new InputadminForm();
      $numberPage = 1;

      $parameters = "1=1 order by updated_at desc ";

      $input = Inputadmin::find($parameters);
      if (count($input) == 0) {
          $this->flash->notice("The search did not find any adspace");

      }

      $paginator = new Paginator([
          'data' => $input,
          'limit'=> 10,
          'page' => $numberPage
      ]);

      $this->view->page = $paginator->getPaginate();
      $this->view->form = $form;

    }

    public function newAction()
    {

    }

    public function editAction($id)
    {
      $inputadmin = Inputadmin::findFirstByid($id);

      if (!$inputadmin){
             $this->flash->error("adspace was not found");
             return;
      }

      $form = new InputadminForm($inputadmin, [
          'edit' => true
      ]);

      $form->id = $inputadmin->id;

      $form->url_gambar = $inputadmin->url_gambar;
      $tampung = $inputadmin->url_gambar;
      if($form->url_gambar != null){
        $green+=1;
      }

      $form->hijau = $green;


      if ($this->request->isPost())
      {
        $inputadmin->assign([
          'id' => $this->request->getPost('id'),
          'nama_klien' => $this->request->getPost("nama_klien"),
          'url_klik' => $this->request->getPost("url_klik"),
          'start_date' => $this->request->getPost("start_date"),
          'end_date' => $this->request->getPost("end_date"),
          'iklan_aktif' => $this->request->getPost("iklan_aktif"),
          // 'url_gambar' => $this->request->getPost("url_gambar"),
          'page_iklan' => $this->request->getPost("page_iklan"),
          // 'created_at' => "asdasd",
          'updated_at' => "asdasd",
        ]);

        if($this->request->getPost('iklan_aktif') == 'yes')
        {
          $inputadmin->iklan_aktif = 'A';
        }else {
          $inputadmin->iklan_aktif = 'N';
        }

        $data = $this->request->getPost();
        if (!$form->isValid($data, $inputadmin)) {
            foreach ($form->getMessages() as $message) {

            }
        }

        if($this->request->hasFiles() != false)
        {
          if(!is_dir("img_cmslock".date("Y-m-d")))
          {
           mkdir("img_cmslock/".date("Y-m-d"));
          }

          $dir = "img_cmslock/".date("Y-m-d")."/";
          if(($_FILES['photo1']['name']))
          {
          $file1 = $dir . ($_FILES['photo1']['name']);
          move_uploaded_file($_FILES['photo1']['tmp_name'], $file1);
          $inputadmin->url_gambar = $file1;
          }
        }
        else {
            $inputadmin->url_gambar = $tampung;
        }

        if (!$inputadmin->save()) {
          $messages = $inputadmin->getMessages();

          // echo "sorry problemnya dibawah ya";
          foreach ($messages as $message) {
            $this->flash->error($message);
          }
        } else {

          // $form->clear();
          // $this->flash->success("Data Iklan was Updated successfully");
          // // return $this->response->redirect('inputadmin/edit/'.$id);

          Tag::resetInput();
          $this->flashSess->success("Campaign was updated successfully");
          return $this->response->redirect('inputadmin/edit/'.$id);
          // $this->view->disable();
        }
      }
      $this->view->user = $inputadmin;
      $this->view->form = $form;


    }

    /**
     * Creates a new data iklan
     */
    public function createAction()
    {

      $form = new InputadminForm();

      if($this->request->isPost())
      {
        if($this->security->checkToken())
        {
          $datasent = $this->request->getPost();

          $input = new Inputadmin();

          $input->nama_klien = $datasent["nama_klien"];
          $input->title_iklan = $datasent["title_iklan"];
          $input->url_klik = $datasent["url_klik"];
          $input->start_date = $datasent["start_date"];
          $input->end_date = $datasent["end_date"];
          $input->page_iklan = $datasent["page_iklan"];
          $input->created_at = "asdasd";
          $input->updated_at = "asdasd";

          if($datasent["iklan_aktif"] == "yes")
          {
            $input->iklan_aktif = "A";
          }else {
            $input->iklan_aktif = "N";
          }

          if($this->request->hasFiles() != false)
          {
            if(!is_dir("img_cmslock".date("Y-m-d")))
            {
             mkdir("img_cmslock/".date("Y-m-d"));
            }

            $dir = "img_cmslock/".date("Y-m-d")."/";
            if(($_FILES['photo1']['name']))
            {
            $file1 = $dir . ($_FILES['photo1']['name']);
            move_uploaded_file($_FILES['photo1']['tmp_name'], $file1);
            $input->url_gambar = $file1;
            }
          }

            $data = $this->request->getPost();
            if (!$form->isValid($data, $input)) {
                foreach ($form->getMessages() as $message) {
                }
            }

            $savesuccess = $input->save();

            if($savesuccess) {
              $form->clear();
              $this->flash->success("Data Iklan was created successfully");
            }else {
              $messages = $input->getMessages();

              echo "sorry problemnya dibawah ya";
              foreach ($messages as $message) {
                $this->flash->error($message);
              }
            }

          }
          else {
            $this->flash->error('CSRF Validation is Failed');
          }
      }else {
        // echo "request harus post";
      }
        $this->view->form = $form;
    }

    public function deleteAction($id)
    {
        $inputadmin = Inputadmin::findFirstByid($id);
        if (!$inputadmin) {
            $this->flash->error("Data Iklan was not found");

            $this->dispatcher->forward([
                'controller' => "inputadmin",
                'action' => 'index'
            ]);

            return;
        }

        if (!$inputadmin->delete()) {

            foreach ($inputadmin->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "inputadmin",
                'action' => 'search'
            ]);

            return;
        }

        $this->flash->success("Data Iklan was deleted successfully");

        $this->dispatcher->forward([
            'controller' => "inputadmin",
            'action' => "search"
        ]);
    }

    public function DeletegambarAction($id)
    {
        $input = Inputadmin::findFirstByid($id);
        $input->url_gambar = "";
        $success = $input->save();

        return $this->response->redirect('inputadmin/edit/'.$id);
    }

    // public function ActivateAction($id,$page)
    // {
    //   $adspace = Adspace::findFirstByid($id);
    //   if($adspace->status == 'n')
    //   { $adspace->status = 'a';
    //     $adspace->save();
    //   }elseif($adspace->status == 'a') {
    //     $adspace->status = 'n';
    //       $adspace->save();
    //   }
    //
    //   // $page = 1;
    //
    //   return $this->response->redirect('adspace/search?page='.$page);
    //
    // }

}

<?php

namespace Vokuro\Controllers;

use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
use Vokuro\Models\Doctor;
use Phalcon\Tag;
use Vokuro\Forms\DoctorForm;
use Phalcon\Mvc\Controller;
use Phalcon\Validation;




class DoctorController extends ControllerBase
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
        $this->view->form = new DoctorForm();
    }

    /**
     * Searches for adspace
     */
    public function searchAction()
    {
        $numberPage = 1;

        $form = new DoctorForm();
        $numberPage = 1;
        $addParam = '';
        $addParam1 = '';
        $addParam2 = '';
        $selfId = $this->auth->getId();

        $this->view->selfId = $selfId;

        if ($this->request->isPost())
        {
          $email = $this->request->getPost("doctor_email");
          $msisdn = $this->request->getPost("doctor_msisdn");
          $name = $this->request->getPost("doctor_name");

          if($email == '')
          {
              $addParam =   " and doctor_email is not null";
          }else {
              $addParam =   " and doctor_email like '" . $email ."%'";
          }

          if($msisdn == "")
          {
            $addParam1 = " and doctor_msisdn is not null";
          }else {
              $addParam1 = " and doctor_msisdn like '".$msisdn."%'";
          }

          if($name == "")
          {
            $addParam2 = " and doctor_name is not null";
          }else {
              $addParam2 = " and doctor_name like '".$name."%'";
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

        $doctor = Doctor::find($parameters.$addParam.$addParam1.$addParam2." order by doctor_updated desc");
        if (count($doctor) == 0) {
            $this->flash->notice("The search did not find any Doctor Account");

        }

        $paginator = new Paginator([
            'data' => $doctor,
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
      $doctor = Doctor::findFirstBydoctor_id($id);

      if (!$doctor){
             $this->flash->error("Doctor Account was not found");
             return;
      }

      $form = new DoctorForm($doctor, [
          'edit' => true
      ]);

      $form->doctor_id = $doctor->doctor_id;

      $form->doctor_photo = $doctor->doctor_photo;
      $tampung_doctor_photo = $doctor->doctor_photo;
      if($form->doctor_photo != null){
        $green+=1;
      }

      $form->doctor_ktp = $doctor->doctor_ktp;
      $tampung_doctor_ktp = $doctor->doctor_ktp;
      if($form->doctor_ktp != null){
        $green+=1;
      }

      $form->doctor_sim = $doctor->doctor_sim;
      $tampung_doctor_sim = $doctor->doctor_sim;
      if($form->doctor_sim != null){
        $green+=1;
      }

      $form->doctor_kk = $doctor->doctor_kk;
      $tampung_doctor_kk = $doctor->doctor_kk;
      if($form->doctor_kk != null){
        $green+=1;
      }

      $form->hijau = $green;

      if ($this->request->isPost())
      {
        $doctor->assign([
          'doctor_id' => $this->request->getPost('doctor_id'),
          'doctor_email' => $this->request->getPost("doctor_email"),
          'doctor_msisdn' => $this->request->getPost("doctor_msisdn"),
          'doctor_name' => $this->request->getPost("doctor_name"),
          'doctor_address' => $this->request->getPost("doctor_address"),
          'doctor_pass' => "",
          'doctor_salt' => $this->request->getPost("doctor_salt"),
          'doctor_status' => $this->request->getPost("doctor_status")

        ]);

        $data = $this->request->getPost();
        if (!$form->isValid($data, $doctor)) {
            foreach ($form->getMessages() as $message) {

            }
        }

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
          $doctor->doctor_photo = $file1;
          }
          if(($_FILES['photo2']['name']))
          {
          $file2 = $dir . ($_FILES['photo2']['name']);
          move_uploaded_file($_FILES['photo2']['tmp_name'], $file2);
          $doctor->doctor_ktp = $file2;
          }
          if(($_FILES['photo3']['name']))
          {
          $file3 = $dir . ($_FILES['photo3']['name']);
          move_uploaded_file($_FILES['photo3']['tmp_name'], $file3);
          $doctor->doctor_sim = $file3;
          }
          if(($_FILES['photo4']['name']))
          {
          $file4 = $dir . ($_FILES['photo4']['name']);
          move_uploaded_file($_FILES['photo4']['tmp_name'], $file4);
          $doctor->doctor_kk = $file4;
          }
        }
        else {
            $doctor->doctor_photo = $tampung_doctor_photo;
            $doctor->doctor_ktp = $tampung_doctor_ktp;
            $doctor->doctor_sim = $tampung_doctor_sim;
            $doctor->doctor_kk = $tampung_doctor_kk;

        }


        if (!$doctor->save()) {
          $messages = $doctor->getMessages();

          // echo "sorry problemnya dibawah ya";
          foreach ($messages as $message) {
            $this->flash->error($message);
          }

        } else {

          Tag::resetInput();
          $this->flash->success("Doctor Account was updated successfully");
        }
      }
      $this->view->user = $doctor;
      $this->view->form = $form;


    }

    /**
     * Creates a new adspace
     */
    public function createAction()
    {

      $form = new DoctorForm();

      if($this->request->isPost())
      {
        if($this->security->checkToken())
        {
          $data = array(
              'doctor_email' => $this->request->getPost("doctor_email"),
              'doctor_msisdn' => $this->request->getPost("doctor_msisdn"),
              'doctor_name' => $this->request->getPost("doctor_name"),
              'doctor_address' => $this->request->getPost("doctor_address"),
              'doctor_pass' => "",
              'doctor_salt' => $this->request->getPost("doctor_salt"),
              'doctor_status' => $this->request->getPost("doctor_status"),
              'doctor_created' => "asdasd",
              'doctor_updated' => "asdasdsad",
          );

          $doctor = new Doctor();

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
            $doctor->doctor_photo = $file1;
            }
            if(($_FILES['photo2']['name']))
            {
            $file2 = $dir . ($_FILES['photo2']['name']);
            move_uploaded_file($_FILES['photo2']['tmp_name'], $file2);
            $doctor->doctor_ktp = $file2;
            }
            if(($_FILES['photo3']['name']))
            {
            $file3 = $dir . ($_FILES['photo3']['name']);
            move_uploaded_file($_FILES['photo3']['tmp_name'], $file3);
            $doctor->doctor_sim = $file3;
            }
            if(($_FILES['photo4']['name']))
            {
            $file4 = $dir . ($_FILES['photo4']['name']);
            move_uploaded_file($_FILES['photo4']['tmp_name'], $file4);
            $doctor->doctor_kk = $file4;
            }
          }
          // cek valid/tidak data
          $cek = $this->request->getPost();

          $doctor->assign($data);

          $ceksukses = $form->isValid($cek, $doctor);

          if ($ceksukses) {
            $this->flash->error("Doctor Account cannot created");

          }else {
            $sukses = $doctor->save();
            if($sukses){
              $form->clear();
              $this->flash->success("Doctor Account was updated successfully");
            }
            foreach ($form->getMessages() as $message) {

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
     * Deletes a adspace
     *
     * @param string $id
     */
    public function deleteAction($id,$page)
    {
        $doctor = Doctor::findFirstBydoctor_id($id);
        if (!$doctor) {
            $this->flash->error("Doctor Account was not found");

            $this->dispatcher->forward([
                'controller' => "adspace",
                'action' => 'index'
            ]);

            return;
        }

        if (!$doctor->delete()) {

            foreach ($doctor->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "doctoracc",
                'action' => 'search'
            ]);

            return;
        }

        $this->flash->success("Doctor Account was deleted successfully");

        $this->dispatcher->forward([
            'controller' => "doctoracc",
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

    public function searchdwnAction()
    {
      $this->view->posisi = 'download';
      $parameters = "1=1 ";

      $doctor = Doctor::find($parameters.$addParam.$addParam1.$addParam2." order by doctor_updated desc");
      if (count($doctor) == 0) {
          $this->flash->notice("The search did not find any Doctor Account");

      }

      $paginator = new Paginator([
          'data' => $doctor,
          'limit'=> 10,
          'page' => $numberPage
      ]);

      $this->view->page = $paginator->getPaginate();
      $this->view->form = $form;

    }

}

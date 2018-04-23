<?php

namespace Vokuro\Controllers;

use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
// use Vokuro\Models\Adspace;
use Vokuro\Models\Schedule;
use Phalcon\Tag;
// use Vokuro\Forms\AdspaceForm;
use Vokuro\Forms\ScheduleForm;

use Phalcon\Paginator\Adapter\Model as PaginatorModel;
use Phalcon\Paginator\Adapter\NativeArray as PaginatorArray;
use Phalcon\Paginator\Adapter\QueryBuilder as PaginatorQueryBuilder;
use Phalcon\Mvc\Model\Query;


class ScheduleController extends ControllerBase
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
        $this->view->form = new ScheduleForm();
    }

    /**
     * Searches for adspace
     */
    public function searchAction()
    {
        $numberPage = 1;

        $form = new ScheduleForm();
        $numberPage = 1;
        $addParam = ' s.id_rs is not null ';
        $addParam1 = ' and h.nama_rs is not null ';
        $addParam2 = ' and h.telp_rs is not null ';
        $selfId = $this->auth->getId();

        $this->view->selfId = $selfId;

        if ($this->request->isPost()) {
          $kode = $this->request->getPost("kode_rs");
          $nama = $this->request->getPost("nama_rs");
          $telp = $this->request->getPost("telp_rs");

          if($kode == '')
          {
              $addParam =   " s.id_rs is not null";
          }else {
              $addParam =   " s.id_rs like '" . $kode ."%'";
          }

          if($nama == "")
          {
            $addParam1 = " and h.nama_rs is not null";
          }else {
              $addParam1 = " and h.nama_rs like '".$nama."%'";
          }

          if($telp == "")
          {
            $addParam2 = " and h.telp_rs is not null";
          }else {
              $addParam2 = " and h.telp_rs like '".$telp."%'";
          }
        //     // $query = Criteria::fromInput($this->di, 'Adspace', $_POST);
        //     // $this->persistent->parameters = $query->getParams();
        } else {
            $numberPage = $this->request->getQuery("page", "int");
        }

        $parameters = $this->persistent->parameters;
        if (!is_array($parameters)) {
            $parameters = [];
        }

        $parameters = "1=1 ";

        $query = new Query(
            "SELECT s.id, s.id_doctor,d.doctor_name, d.doctor_email, s.id_rs, h.nama_rs, h.alamat_rs,h.telp_rs,
            s.id_expertise,e.dest, s.monday, s.tuesday, s.wednesday,
            s.thurday, s.friday, s.saturday, s.sunday, s.status, s.created, s.updated
            from Vokuro\Models\Schedule s
            join Vokuro\Models\Doctor d on d.doctor_id = s.id_doctor
            join Vokuro\Models\Hospital h on h.kode_rs = s.id_rs
            join Vokuro\Models\Expertise e on e.id = s.id_expertise
            where $addParam $addParam1 $addParam2 ",
            $this->getDI()
        );

        $schedule = $query->execute();

        if (count($schedule) == 0) {
            $this->flash->notice("The search did not find any Hospital");

        }

        $paginator = new Paginator([
            'data' => $schedule,
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
      $schedule = Schedule::findFirstByid($id);

      if (!$schedule){
             $this->flash->error("Hospital was not found");
             return;
      }

      $form = new ScheduleForm($schedule, [
          'edit' => true
      ]);

      $form->id = $schedule->id;

      if ($this->request->isPost())
      {
        $schedule->assign([
          'id' => $this->request->getPost('id'),
          'id_doctor' => $this->request->getPost("id_doctor"),
          'id_rs' => $this->request->getPost("id_rs"),
          'id_expertise' => $this->request->getPost("id_expertise"),
          'monday' => $this->request->getPost("monday"),
          'tuesday' => $this->request->getPost("tuesday"),
          'wednesday' => $this->request->getPost("wednesday"),
          'thurday' => $this->request->getPost("thurday"),
          'friday' => $this->request->getPost("friday"),
          'saturday' => $this->request->getPost("saturday"),
          'sunday' => $this->request->getPost("sunday"),
          'status' => $this->request->getPost("status"),
        ]);

        $data = $this->request->getPost();
        if (!$form->isValid($data, $schedule)) {
            foreach ($form->getMessages() as $message) {

            }
        }

        if (!$schedule->save()) {
          $messages = $schedule->getMessages();

          // echo "sorry problemnya dibawah ya";
          foreach ($messages as $message) {
            $this->flash->error($message);
          }

        } else {

          Tag::resetInput();
          $this->flash->success("Schedule was updated successfully");
          // $this->view->disable();
          // return $this->response->redirect('schedule/edit/'.$id);
        }
      }
      $this->view->user = $schedule;
      $this->view->form = $form;


    }

    /**
     * Creates a new adspace
     */
    public function createAction()
    {

      $form = new ScheduleForm();

      if($this->request->isPost())
      {
        // print_r( $this->request->getPost());
        // $this->view->disable();
        if($this->security->checkToken())
        {
          $data = array(
            'id_doctor' => $this->request->getPost("id_doctor"),
            'id_rs' => $this->request->getPost("id_rs"),
            'id_expertise' => $this->request->getPost("id_expertise"),
            'monday' => $this->request->getPost("monday"),
            'tuesday' => $this->request->getPost("tuesday"),
            'wednesday' => $this->request->getPost("wednesday"),
            'thurday' => $this->request->getPost("thurday"),
            'friday' => $this->request->getPost("friday"),
            'saturday' => $this->request->getPost("saturday"),
            'sunday' => $this->request->getPost("sunday"),
            'status' => $this->request->getPost("status")
          );

          $schedule = new Schedule();

          // cek valid/tidak data
          $cek = $this->request->getPost();
          if (!$form->isValid($cek, $schedule)) {
              foreach ($form->getMessages() as $message) {

              }
          }

          $schedule->assign($data);

          if($schedule->create()) {
           $this->flash->success("Schedule was created successfully ");
          } else {
           $this->flash->error("Schedule cannot created");
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
        $schedule = schedule::findFirstByid($id);
        if (!$schedule) {
            $this->flash->error("Schedule was not found");

            $this->dispatcher->forward([
                'controller' => "schedule",
                'action' => 'search'
            ]);

            return;
        }

        if (!$schedule->delete()) {

            foreach ($schedule->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "schedule",
                'action' => 'search'
            ]);

            return;
        }

        $this->flash->success("Schedule was deleted successfully");

        $this->dispatcher->forward([
            'controller' => "schedule",
            'action' => "search"
        ]);
    }

    public function viewAction($id,$page)
    {
        $numberPage = 1;
        $addParam = ' s.id_rs is not null ';
        $addParam1 = ' and h.nama_rs is not null ';
        $addParam2 = ' and h.telp_rs is not null ';
        // if ($this->request->isPost()) {
        //     $query = Criteria::fromInput($this->di, 'Vokuro\Models\Schedule', $_POST);
        //     $this->persistent->parameters = $query->getParams();
        // } else {
        //     $numberPage = $this->request->getQuery("page", "int");
        // }
        //
        // $parameters = $this->persistent->parameters;
        // if (!is_array($parameters)) {
        //     $parameters = [];
        // }
        //
        // $parameters = "id = ". $id;

        $parameters = $this->persistent->parameters;
        if (!is_array($parameters)) {
            $parameters = [];
        }

        $parameters = "1=1 ";

        $query = new Query(
            "SELECT s.id, s.id_doctor,d.doctor_name, d.doctor_email, s.id_rs, h.nama_rs, h.alamat_rs,h.telp_rs,
            s.id_expertise,e.dest, s.monday, s.tuesday, s.wednesday,
            s.thurday, s.friday, s.saturday, s.sunday, s.status, s.created, s.updated
            from Vokuro\Models\Schedule s
            join Vokuro\Models\Doctor d on d.doctor_id = s.id_doctor
            join Vokuro\Models\Hospital h on h.kode_rs = s.id_rs
            join Vokuro\Models\Expertise e on e.id = s.id_expertise
            where s.id = $id ",
            $this->getDI()
        );

        $schedule = $query->execute();

        if (count($schedule) == 0) {
            $this->flash->notice("The search did not find any Hospital");

        }

        $paginator = new Paginator([
            'data' => $schedule,
            'limit'=> 2,
        ]);

        $this->view->page = $paginator->getPaginate();
        $this->view->frompage = $page;

        // $this->view->form = $form;
    }

}

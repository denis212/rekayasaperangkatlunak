<?php

namespace Vokuro\Controllers;

use Phalcon\Tag;
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
use Vokuro\Models\Campaign;
use Vokuro\Forms\CampaignForm;


class CampaignController extends ControllerBase
{
    public function initialize()
    {
        // $this->view->setTemplateBefore('private');
          $this->view->setTemplateBefore('cobaprivate');
    }
    /**
     * Index action
     */
    public function indexAction()
    {
        $this->persistent->parameters = null;
        $this->view->form = new CampaignForm();
    }

    /**
     * Searches for campaign
     */
    public function searchAction()
    {

        $form = new CampaignForm();
        $numberPage = 1;
        $addParam = '';
        $addParam1 = '';
        $addParam2 = '';
        $selfId = $this->auth->getId();

        $this->view->selfId = $selfId;

        if ($this->request->isPost()) {

            $name = $this->request->getPost("cp_namesearch");
            $client = $this->request->getPost("client_search");
            $status = $this->request->getPost("cp_status");

            if($name != '')
            {
                $addParam = " and cp_name Like '".$name."%'";
            }

            if($client == '')
            {
                $addParam1 =   " and client_id is not null";
            }else {
                $addParam1 =   " and client_id = '" . $client ."'";
            }

            if($status == "")
            {
              $addParam2 = " and status is not null";
            }else {
                $addParam2 = " and status = '".$status."'";
            }
            // echo $name.' '.$client.' '.$status;
            // $query = Criteria::fromInput($this->di, 'Vokuro\Models\Campaign', $_POST);
            // $this->persistent->parameters = $query->getParams();
        } else {
            $numberPage = $this->request->getQuery("page", "int");
        }

        $parameters = $this->persistent->parameters;

        if (!is_array($parameters)) {
            $parameters = [];
        }

        if($this->auth->getProfilesId()!='1')
        {
          $parameters = "1=1 and client_id = ". $this->auth->getId();
        }else {
            $parameters = "1=1 ";
        }

        // var_dump($parameters.$addParam.$addParam1.$addParam2);

        $campaign = Campaign::find($parameters.$addParam.$addParam1.$addParam2." order by upddate_at desc");

        if (count($campaign) == 0) {
            $this->flash->notice("The search did not find any campaign");

            // $this->dispatcher->forward([
            //     "controller" => "campaign",
            //     "action" => "index"
            // ]);
            //
            // return;
        }

        $paginator = new Paginator([
            'data' => $campaign,
            'limit'=> 10,
            'page' => $numberPage
        ]);

        $this->view->page = $paginator->getPaginate();
        $this->view->form = $form;


        // $this->view->form = $form;
    }

    /**
     * Displays the creation form
     */
    public function newAction()
    {

    }

    /**
     * Edits a campaign
     *
     * @param string $id
     */
    public function editAction($id,$page)
    {
      $green = 0;
      $campaign = Campaign::findFirstByid($id);
      if (!$campaign) {
          $this->flash->error("campaign was not found");

          // $this->dispatcher->forward([
          //     'controller' => "campaign",
          //     'action' => 'index'
          // ]);

          return;
      }

      $this->view->frompage = $page;

      $form = new CampaignForm($campaign, [
          'edit' => true
      ]);
      $form->profilesId = $this->auth->getProfilesId();
      $form->cid = $this->auth->getId();
      $form->id = $campaign->id;
      $form->gbr120x600 = $campaign->gbr120x600;
      if($form->gbr120x600 != null){
        $green+=1;
      }
      $form->gbr160x600 = $campaign->gbr160x600;
      if($form->gbr160x600 != null){
        $green+=1;
      }
      $form->gbr250x250 = $campaign->gbr250x250;
      if($form->gbr250x250 != null){
        $green+=1;
      }
      $form->gbr300x50 = $campaign->gbr300x50;
      if($form->gbr300x50 != null){
        $green+=1;
      }
      $form->gbr300x250 = $campaign->gbr300x250;
      if($form->gbr300x250 != null){
        $green+=1;
      }
      $form->gbr300x100 = $campaign->gbr300x100;
      if($form->gbr300x100 != null){
        $green+=1;
      }
      $form->gbr300x600 = $campaign->gbr300x600;
      if($form->gbr300x600 != null){
        $green+=1;
      }
      $form->gbr305x99 = $campaign->gbr305x99;
      if($form->gbr305x99 != null){
        $green+=1;
      }
      $form->gbr315x300 = $campaign->gbr315x300;
      if($form->gbr315x300 != null){
        $green+=1;
      }
      $form->gbr320x50 = $campaign->gbr320x50;
      if($form->gbr320x50 != null){
        $green+=1;
      }
      $form->gbr320x100 = $campaign->gbr320x100;
      if($form->gbr320x100 != null){
        $green+=1;
      }
      $form->gbr320x250 = $campaign->gbr320x250;
      if($form->gbr320x250 != null){
        $green+=1;
      }
      $form->gbr320x416 = $campaign->gbr320x416;
      if($form->gbr320x416 != null){
        $green+=1;
      }
      $form->gbr320x480 = $campaign->gbr320x480;
      if($form->gbr320x480 != null){
        $green+=1;
      }
      $form->gbr336x280 = $campaign->gbr336x280;
      if($form->gbr336x280 != null){
        $green+=1;
      }
      $form->gbr468x60 = $campaign->gbr468x60;
      if($form->gbr468x60 != null){
        $green+=1;
      }
      $form->gbr640x960 = $campaign->gbr640x960;
      if($form->gbr640x960 != null){
        $green+=1;
      }
      $form->gbr728x90 = $campaign->gbr728x90;
      if($form->gbr728x90 != null){
        $green+=1;
      }
      $form->gbr800x440 = $campaign->gbr800x440;
      if($form->gbr800x440 != null){
        $green+=1;
      }
      $form->gbr1024x768 = $campaign->gbr1024x768;
      if($form->gbr1024x768 != null){
        $green+=1;
      }

      $this->tag->setDefault("tampcount", $campaign->cp_country);
      $this->tag->setDefault("tampdate", $campaign->cp_startenddate);
      $form->hijau = $green;

        if ($this->request->isPost())
        {
            $campaign->assign([
              'id' => $this->request->getPost('id'),
              'client_id' => $this->request->getPost("client_id"),
              'client_name' => $this->request->getPost("client_name"),
              'cp_name' => $this->request->getPost("cp_name"),
              'cp_pricemodel' => $this->request->getPost("cp_pricemodel"),
              'cp_targeturl' => $this->request->getPost("cp_targeturl"),
              'cp_startenddate' => $this->request->getPost("cp_startdate")." - ".$this->request->getPost("cp_enddate"),
              'cp_country' => $this->request->getPost("hd_country"),
              'cp_dailybudget' => $this->request->getPost("cp_dailybudget"),
              'cp_totalbudget' => $this->request->getPost("cp_totalbudget"),
              'cp_schedule' => $this->request->getPost("cp_schedule"),
              'cp_delivmethod' => $this->request->getPost("cp_delivmethod"),
              'cp_target' => $this->request->getPost("cp_target"),
              // 'cp_adult' => $this->request->getPost("cp_adult"),
              'cp_tag' => $this->request->getPost("cp_tag"),
              'cp_zone' => $this->request->getPost("cp_zone"),
              'cp_gettraffic' => $this->request->getPost("cp_gettraffic"),
              'cp_guarantee' => $this->request->getPost("cp_guarantee"),
              'cp_testbudget' => $this->request->getPost("cp_testbudget"),
              'cp_mblimit' => $this->request->getPost("cp_mblimit"),
              'cp_dsktplimit' => $this->request->getPost("cp_dsktplimit"),
              'cp_cpmcpa' => $this->request->getPost("cp_cpmcpa"),
            ]);

            // $campaign->upddate_at =  new \Phalcon\Db\RawValue('now()');

            if($this->request->hasFiles() != false)
            {
              if(!is_dir("ImageUpload/".date("Y-m-d")))
              {
               mkdir("ImageUpload/".date("Y-m-d"));
              }

              $dir = "ImageUpload/".date("Y-m-d")."/";
              if(($_FILES['photo1']['name']))
              {
              $file1 = $dir . ($_FILES['photo1']['name']);
              move_uploaded_file($_FILES['photo1']['tmp_name'], $file1);
              $campaign->gbr120x600 = $file1;
              }
              if($_FILES['photo2']['name'])
              {
              $file2 = $dir . ($_FILES['photo2']['name']);
              move_uploaded_file($_FILES['photo2']['tmp_name'], $file2);
              $campaign->gbr160x600 = $file2;
              }
              if($_FILES['photo3']['name'])
              {
              $file3 = $dir . ($_FILES['photo3']['name']);
              move_uploaded_file($_FILES['photo3']['tmp_name'], $file3);
              $campaign->gbr250x250 = $file3;
              }
              if($_FILES['photo4']['name'])
              {
              $file4 = $dir . ($_FILES['photo4']['name']);
              move_uploaded_file($_FILES['photo4']['tmp_name'], $file4);
              $campaign->gbr300x50 = $file4;
              }
              if($_FILES['photo5']['name'])
              {
              $file5 = $dir . ($_FILES['photo5']['name']);
              move_uploaded_file($_FILES['photo5']['tmp_name'], $file5);
              $campaign->gbr300x100 = $file5;
              }
              if($_FILES['photo6']['name'])
              {
              $file6 = $dir . ($_FILES['photo6']['name']);
              move_uploaded_file($_FILES['photo6']['tmp_name'], $file6);
              $campaign->gbr300x250 = $file6;
              }
              if($_FILES['photo7']['name'])
              {
              $file7 = $dir . ($_FILES['photo7']['name']);
              move_uploaded_file($_FILES['photo7']['tmp_name'], $file7);
              $campaign->gbr300x600 = $file7;
              }
              if($_FILES['photo8']['name'])
              {
              $file8 = $dir . ($_FILES['photo8']['name']);
              move_uploaded_file($_FILES['photo8']['tmp_name'], $file8);
              $campaign->gbr305x99 = $file8;
              }
              if($_FILES['photo9']['name'])
              {
              $file9 = $dir . ($_FILES['photo9']['name']);
              move_uploaded_file($_FILES['photo9']['tmp_name'], $file9);
              $campaign->gbr315x300 = $file9;
              }
              if($_FILES['photo10']['name'])
              {
              $file10 = $dir . ($_FILES['photo10']['name']);
              move_uploaded_file($_FILES['photo10']['tmp_name'], $file10);
              $campaign->gbr320x50 = $file10;
              }
              if($_FILES['photo11']['name'])
              {
              $file11 = $dir . ($_FILES['photo11']['name']);
              move_uploaded_file($_FILES['photo11']['tmp_name'], $file11);
              $campaign->gbr320x100 = $file11;
              }
              if($_FILES['photo12']['name'])
              {
              $file12 = $dir . ($_FILES['photo12']['name']);
              move_uploaded_file($_FILES['photo12']['tmp_name'], $file12);
              $campaign->gbr320x250 = $file12;
              }
              if($_FILES['photo13']['name'])
              {
              $file13 = $dir . ($_FILES['photo13']['name']);
              move_uploaded_file($_FILES['photo13']['tmp_name'], $file13);
              $campaign->gbr320x416 = $file13;
              }
              if($_FILES['photo14']['name'])
              {
              $file14 = $dir . ($_FILES['photo14']['name']);
              move_uploaded_file($_FILES['photo14']['tmp_name'], $file14);
              $campaign->gbr320x480 = $file14;
              }
              if($_FILES['photo15']['name'])
              {
              $file15 = $dir . ($_FILES['photo15']['name']);
              move_uploaded_file($_FILES['photo15']['tmp_name'], $file15);
              $campaign->gbr336x280 = $file15;
              }
              if($_FILES['photo16']['name'])
              {
              $file16 = $dir . ($_FILES['photo16']['name']);
              move_uploaded_file($_FILES['photo16']['tmp_name'], $file16);
              $campaign->gbr468x60 = $file16;
              }
              if($_FILES['photo17']['name'])
              {
              $file17 = $dir . ($_FILES['photo17']['name']);
              move_uploaded_file($_FILES['photo17']['tmp_name'], $file17);
              $campaign->gbr640x960 = $file17;
              }
              if($_FILES['photo18']['name'])
              {
              $file18 = $dir . ($_FILES['photo18']['name']);
              move_uploaded_file($_FILES['photo18']['tmp_name'], $file18);
              $campaign->gbr728x90 = $file18;
              }
              if($_FILES['photo19']['name'])
              {
              $file19 = $dir . ($_FILES['photo19']['name']);
              move_uploaded_file($_FILES['photo19']['tmp_name'], $file19);
              $campaign->gbr800x440 = $file19;
              }
              if($_FILES['photo20']['name'])
              {
              $file20 = $dir . ($_FILES['photo20']['name']);
              move_uploaded_file($_FILES['photo20']['tmp_name'], $file20);
              $campaign->gbr1024x768 = $file20;
              }
            }
            else {
              $this->flash->error("Minimum Upload 6 Images");
            }

            if (!$campaign->save()) {
                $this->flash->error($campaign->getMessages());
            } else {

              Tag::resetInput();
              $this->flashSess->success("Campaign was updated successfully");
              $this->view->disable();
              return $this->response->redirect('campaign/edit/'.$id.'/'.$page);
            }
      }
      $this->view->user = $campaign;
      $this->view->form = $form;
    }

    /**
     * View a campaign
     *
     * @param string $id
     */
     public function viewAction($id,$page)
     {
         $numberPage = 1;

         if ($this->request->isPost()) {
             $query = Criteria::fromInput($this->di, 'Vokuro\Models\Campaign', $_POST);
             $this->persistent->parameters = $query->getParams();
         } else {
             $numberPage = $this->request->getQuery("page", "int");
         }

         $parameters = $this->persistent->parameters;
         if (!is_array($parameters)) {
             $parameters = [];
         }

         $parameters = "id = ". $id;

         $campaign = Campaign::find($parameters);

         if (count($campaign) == 0) {
             $this->flash->notice("The search did not find any campaign");

             // $this->dispatcher->forward([
             //     "controller" => "campaign",
             //     "action" => "index"
             // ]);
             //
             // return;
         }

         $paginator = new Paginator([
             'data' => $campaign,
             'limit'=> 10,
         ]);

         $this->view->page = $paginator->getPaginate();
         $this->view->frompage = $page;

         // $this->view->form = $form;
     }

     public function viewdownloadAction($id,$param1,$param2)
     {
         $numberPage = 1;

         if ($this->request->isPost()) {
             $query = Criteria::fromInput($this->di, 'Vokuro\Models\Campaign', $_POST);
             $this->persistent->parameters = $query->getParams();
         } else {
             $numberPage = $this->request->getQuery("page", "int");
         }

         $this->view->clientname = $param1;
         $this->view->clientid = $param2;

         $parameters = $this->persistent->parameters;
         if (!is_array($parameters)) {
             $parameters = [];
         }

         $parameters = "id = ". $id;

         $campaign = Campaign::find($parameters);


         if (count($campaign) == 0) {
             $this->flash->notice("The search did not find any campaign");

         }

         $paginator = new Paginator([
             'data' => $campaign,
             'limit'=> 10,
         ]);

         $this->view->page = $paginator->getPaginate();
         $this->view->frompage = $page;

         // $this->view->form = $form;
     }

    /**
     * Saves a campaign edited
     *
     */
    public function saveAction()
    {

        if (!$this->request->isPost()) {
            $this->dispatcher->forward([
                'controller' => "campaign",
                'action' => 'index'
            ]);

            return;
        }

        $id = $this->request->getPost("id");
        $campaign = Campaign::findFirstByid($id);

        if (!$campaign) {
            $this->flash->error("campaign does not exist " . $id);

            $this->dispatcher->forward([
                'controller' => "campaign",
                'action' => 'index'
            ]);

            return;
        }

        $campaign->client_id = $this->request->getPost("client_id");
        $campaign->client_name = $this->request->getPost("client_name");
        $campaign->cp_name = $this->request->getPost("cp_name");
        $campaign->cp_pricemodel = $this->request->getPost("cp_pricemodel");
        $campaign->cp_targeturl = $this->request->getPost("cp_targeturl");
        $campaign->cp_startenddate = $this->request->getPost("cp_startenddate");
        $campaign->cp_country = $this->request->getPost("cp_country");
        $campaign->cp_dailybudget = $this->request->getPost("cp_dailybudget");
        $campaign->cp_totalbudget = $this->request->getPost("cp_totalbudget");
        $campaign->cp_schedule = $this->request->getPost("cp_schedule");
        $campaign->cp_delivmethod = $this->request->getPost("cp_delivmethod");
        $campaign->cp_target = $this->request->getPost("cp_target");
        // $campaign->cp_adult = $this->request->getPost("cp_adult");
        $campaign->cp_tag = $this->request->getPost("cp_tag");
        $campaign->cp_zone = $this->request->getPost("cp_zone");
        $campaign->cp_gettraffic = $this->request->getPost("cp_gettraffic");
        $campaign->cp_guarantee = $this->request->getPost("cp_guarantee");
        $campaign->cp_testbudget = $this->request->getPost("cp_testbudget");
        $campaign->cp_mblimit = $this->request->getPost("cp_mblimit");
        $campaign->cp_dsktplimit = $this->request->getPost("cp_dsktplimit");


        if (!$campaign->save()) {

            foreach ($campaign->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "campaign",
                'action' => 'edit',
                'params' => [$campaign->id]
            ]);

            return;
        }

        $this->flash->success("campaign was updated successfully");

        $this->dispatcher->forward([
            'controller' => "campaign",
            'action' => 'index'
        ]);
    }

    /**
     * Deletes a campaign
     *
     * @param string $id
     */
    public function deleteAction($id,$page)
    {
        $campaign = Campaign::findFirstByid($id);
        if (!$campaign) {
            $this->flash->error("campaign was not found");

            $this->dispatcher->forward([
                'controller' => "campaign",
                'action' => 'search'
            ]);

            return;
        }

        if (!$campaign->delete()) {

            foreach ($campaign->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "campaign",
                'action' => 'search'
            ]);

            return;
        }

        $this->flash->success("campaign Id : [". $id ."] and Name : [".$campaign->cp_name."] was deleted successfully");

        $this->dispatcher->forward([
            'controller' => "campaign",
            'action' => "search"
        ]);
    }

    //create Action
    public function createAction()
    {
        $form = new CampaignForm();
        $form->profilesId = $this->auth->getProfilesId();
        $form->cid = $this->auth->getId();
        if ($this->request->isPost())
        {
            // if ($form->isValid($this->request->getPost()) != false)
            // {
            if($this->security->checkToken())
            {
                $campaign = new Campaign([
                  'client_id' => $this->request->getPost("client_id"),
                  'client_name' => $this->request->getPost("client_name"),
                  'cp_name' => $this->request->getPost("cp_name"),
                  'cp_pricemodel' => $this->request->getPost("cp_pricemodel"),
                  'cp_targeturl' => $this->request->getPost("cp_targeturl"),
                  'cp_startenddate' => $this->request->getPost("cp_startdate")." - ".$this->request->getPost("cp_enddate"),
                  'cp_country' => $this->request->getPost("hd_country"),
                  'cp_dailybudget' => $this->request->getPost("cp_dailybudget"),
                  'cp_totalbudget' => $this->request->getPost("cp_totalbudget"),
                  'cp_schedule' => $this->request->getPost("cp_schedule"),
                  'cp_delivmethod' => $this->request->getPost("cp_delivmethod"),
                  'cp_target' => $this->request->getPost("cp_target"),
                  // 'cp_adult' => $this->request->getPost("cp_adult"),
                  'cp_tag' => $this->request->getPost("cp_tag"),
                  'cp_zone' => $this->request->getPost("cp_zone"),
                  'cp_gettraffic' => $this->request->getPost("cp_gettraffic"),
                  'cp_guarantee' => $this->request->getPost("cp_guarantee"),
                  'cp_testbudget' => $this->request->getPost("cp_testbudget"),
                  'cp_mblimit' => $this->request->getPost("cp_mblimit"),
                  'cp_dsktplimit' => $this->request->getPost("cp_dsktplimit"),
                  'cp_cpmcpa' => $this->request->getPost("cp_cpmcpa"),
                  // 'cp_cpmcpa' => $this->request->getPost("cp_cpmcpa"),
                  ]);

                  // $campaign->created_at = new Phalcon\Db\RawValue('now()');
                  $campaign->status = 'N';

                  if($this->request->hasFiles() != false)
                  {
                    if(!is_dir("ImageUpload/".date("Y-m-d")))
                    {
                     mkdir("ImageUpload/".date("Y-m-d"));
                    }

                    $dir = "ImageUpload/".date("Y-m-d")."/";
                    if(($_FILES['photo1']['name']))
                    {
                    $file1 = $dir . ($_FILES['photo1']['name']);
                    move_uploaded_file($_FILES['photo1']['tmp_name'], $file1);
                    $campaign->gbr120x600 = $file1;
                    }
                    if($_FILES['photo2']['name'])
                    {
                    $file2 = $dir . ($_FILES['photo2']['name']);
                    move_uploaded_file($_FILES['photo2']['tmp_name'], $file2);
                    $campaign->gbr160x600 = $file2;
                    }
                    if($_FILES['photo3']['name'])
                    {
                    $file3 = $dir . ($_FILES['photo3']['name']);
                    move_uploaded_file($_FILES['photo3']['tmp_name'], $file3);
                    $campaign->gbr250x250 = $file3;
                    }
                    if($_FILES['photo4']['name'])
                    {
                    $file4 = $dir . ($_FILES['photo4']['name']);
                    move_uploaded_file($_FILES['photo4']['tmp_name'], $file4);
                    $campaign->gbr300x50 = $file4;
                    }
                    if($_FILES['photo5']['name'])
                    {
                    $file5 = $dir . ($_FILES['photo5']['name']);
                    move_uploaded_file($_FILES['photo5']['tmp_name'], $file5);
                    $campaign->gbr300x100 = $file5;
                    }
                    if($_FILES['photo6']['name'])
                    {
                    $file6 = $dir . ($_FILES['photo6']['name']);
                    move_uploaded_file($_FILES['photo6']['tmp_name'], $file6);
                    $campaign->gbr300x250 = $file6;
                    }
                    if($_FILES['photo7']['name'])
                    {
                    $file7 = $dir . ($_FILES['photo7']['name']);
                    move_uploaded_file($_FILES['photo7']['tmp_name'], $file7);
                    $campaign->gbr300x600 = $file7;
                    }
                    if($_FILES['photo8']['name'])
                    {
                    $file8 = $dir . ($_FILES['photo8']['name']);
                    move_uploaded_file($_FILES['photo8']['tmp_name'], $file8);
                    $campaign->gbr305x99 = $file8;
                    }
                    if($_FILES['photo9']['name'])
                    {
                    $file9 = $dir . ($_FILES['photo9']['name']);
                    move_uploaded_file($_FILES['photo9']['tmp_name'], $file9);
                    $campaign->gbr315x300 = $file9;
                    }
                    if($_FILES['photo10']['name'])
                    {
                    $file10 = $dir . ($_FILES['photo10']['name']);
                    move_uploaded_file($_FILES['photo10']['tmp_name'], $file10);
                    $campaign->gbr320x50 = $file10;
                    }
                    if($_FILES['photo11']['name'])
                    {
                    $file11 = $dir . ($_FILES['photo11']['name']);
                    move_uploaded_file($_FILES['photo11']['tmp_name'], $file11);
                    $campaign->gbr320x100 = $file11;
                    }
                    if($_FILES['photo12']['name'])
                    {
                    $file12 = $dir . ($_FILES['photo12']['name']);
                    move_uploaded_file($_FILES['photo12']['tmp_name'], $file12);
                    $campaign->gbr320x250 = $file12;
                    }
                    if($_FILES['photo13']['name'])
                    {
                    $file13 = $dir . ($_FILES['photo13']['name']);
                    move_uploaded_file($_FILES['photo13']['tmp_name'], $file13);
                    $campaign->gbr320x416 = $file13;
                    }
                    if($_FILES['photo14']['name'])
                    {
                    $file14 = $dir . ($_FILES['photo14']['name']);
                    move_uploaded_file($_FILES['photo14']['tmp_name'], $file14);
                    $campaign->gbr320x480 = $file14;
                    }
                    if($_FILES['photo15']['name'])
                    {
                    $file15 = $dir . ($_FILES['photo15']['name']);
                    move_uploaded_file($_FILES['photo15']['tmp_name'], $file15);
                    $campaign->gbr336x280 = $file15;
                    }
                    if($_FILES['photo16']['name'])
                    {
                    $file16 = $dir . ($_FILES['photo16']['name']);
                    move_uploaded_file($_FILES['photo16']['tmp_name'], $file16);
                    $campaign->gbr468x60 = $file16;
                    }
                    if($_FILES['photo17']['name'])
                    {
                    $file17 = $dir . ($_FILES['photo17']['name']);
                    move_uploaded_file($_FILES['photo17']['tmp_name'], $file17);
                    $campaign->gbr640x960 = $file17;
                    }
                    if($_FILES['photo18']['name'])
                    {
                    $file18 = $dir . ($_FILES['photo18']['name']);
                    move_uploaded_file($_FILES['photo18']['tmp_name'], $file18);
                    $campaign->gbr728x90 = $file18;
                    }
                    if($_FILES['photo19']['name'])
                    {
                    $file19 = $dir . ($_FILES['photo19']['name']);
                    move_uploaded_file($_FILES['photo19']['tmp_name'], $file19);
                    $campaign->gbr800x440 = $file19;
                    }
                    if($_FILES['photo20']['name'])
                    {
                    $file20 = $dir . ($_FILES['photo20']['name']);
                    move_uploaded_file($_FILES['photo20']['tmp_name'], $file20);
                    $campaign->gbr1024x768 = $file20;
                    }
                  }
                  else {
                    $this->flash->error("Minimum Upload 6 Images");
                  }

                  $data = $this->request->getPost();
                  if (!$form->isValid($data, $campaign)) {
                      foreach ($form->getMessages() as $message) {

                      }
                  }

                  if ($campaign->save())
                  {
                    $form->clear();
                    $this->flash->success("Campaign was created successfully");
                  }

                  }
                  else {
                      $this->flash->error('CSRF Validation is Failed');
                  }
                  // $this->flash->error($campaign->getMessages());
                }
            // }
        $this->view->form = $form;
    }

    public function ActivateviewAction($id)
    {
        $campaign = Campaign::findFirstByid($id);
        if($campaign->status == 'N')
        { $campaign->status = 'A';
          $campaign->save();
        }elseif($campaign->status == 'A') {
          $campaign->status = 'N';
            $campaign->save();
        }

        $page = 1;

        return $this->response->redirect('campaign/view/'.$id.'/'.$page);
    }

    public function ActivateoutAction($id,$page)
    {
        $campaign = Campaign::findFirstByid($id);
        if($campaign->status == 'N')
        { $campaign->status = 'A';
          $campaign->save();
        }elseif($campaign->status == 'A') {
          $campaign->status = 'N';
            $campaign->save();
        }

        return $this->response->redirect('campaign/search?page='.$page);
    }

    public function Deletegbr120x600Action($id)
    {
        $campaign = Campaign::findFirstByid($id);
        $campaign->gbr120x600 = '';
        $campaign->save();

        return $this->response->redirect('campaign/edit/'.$id.'/1');
    }

    public function Deletegbr160x600Action($id)
    {
        $campaign = Campaign::findFirstByid($id);
        $campaign->gbr160x600 = '';
        $campaign->save();

        return $this->response->redirect('campaign/edit/'.$id.'/1');
    }

    public function Deletegbr250x250Action($id)
    {
        $campaign = Campaign::findFirstByid($id);
        $campaign->gbr250x250 = '';
        $campaign->save();

        return $this->response->redirect('campaign/edit/'.$id.'/1');
    }

    public function Deletegbr300x50Action($id)
    {
        $campaign = Campaign::findFirstByid($id);
        $campaign->gbr300x50 = '';
        $campaign->save();

        return $this->response->redirect('campaign/edit/'.$id.'/1');
    }

    public function Deletegbr300x100Action($id)
    {
        $campaign = Campaign::findFirstByid($id);
        $campaign->gbr300x100 = '';
        $campaign->save();

        return $this->response->redirect('campaign/edit/'.$id.'/1');
    }

    public function Deletegbr300x250Action($id)
    {
        $campaign = Campaign::findFirstByid($id);
        $campaign->gbr300x250 = '';
        $campaign->save();

        return $this->response->redirect('campaign/edit/'.$id.'/1');
    }

    public function Deletegbr300x600Action($id)
    {
        $campaign = Campaign::findFirstByid($id);
        $campaign->gbr300x600 = '';
        $campaign->save();

        return $this->response->redirect('campaign/edit/'.$id.'/1');
    }

    public function Deletegbr305x99Action($id)
    {
        $campaign = Campaign::findFirstByid($id);
        $campaign->gbr305x99 = '';
        $campaign->save();

        return $this->response->redirect('campaign/edit/'.$id.'/1');
    }

    public function Deletegbr315x300Action($id)
    {
        $campaign = Campaign::findFirstByid($id);
        $campaign->gbr315x300 = '';
        $campaign->save();

        return $this->response->redirect('campaign/edit/'.$id.'/1');
    }

    public function Deletegbr320x50Action($id)
    {
        $campaign = Campaign::findFirstByid($id);
        $campaign->gbr320x50 = '';
        $campaign->save();

        return $this->response->redirect('campaign/edit/'.$id.'/1');
    }

    public function Deletegbr320x100Action($id)
    {
        $campaign = Campaign::findFirstByid($id);
        $campaign->gbr320x100 = '';
        $campaign->save();

        return $this->response->redirect('campaign/edit/'.$id.'/1');
    }

    public function Deletegbr320x250Action($id)
    {
        $campaign = Campaign::findFirstByid($id);
        $campaign->gbr320x250 = '';
        $campaign->save();

        return $this->response->redirect('campaign/edit/'.$id.'/1');
    }

    public function Deletegbr320x416Action($id)
    {
        $campaign = Campaign::findFirstByid($id);
        $campaign->gbr320x416 = '';
        $campaign->save();

        return $this->response->redirect('campaign/edit/'.$id.'/1');
    }

    public function Deletegbr320x480Action($id)
    {
        $campaign = Campaign::findFirstByid($id);
        $campaign->gbr320x480 = '';
        $campaign->save();

        return $this->response->redirect('campaign/edit/'.$id.'/1');
    }

    public function Deletegbr336x280Action($id)
    {
        $campaign = Campaign::findFirstByid($id);
        $campaign->gbr336x280 = '';
        $campaign->save();

        return $this->response->redirect('campaign/edit/'.$id.'/1');
    }

    public function Deletegbr468x60Action($id)
    {
        $campaign = Campaign::findFirstByid($id);
        $campaign->gbr468x60 = '';
        $campaign->save();

        return $this->response->redirect('campaign/edit/'.$id.'/1');
    }

    public function Deletegbr640x960Action($id)
    {
        $campaign = Campaign::findFirstByid($id);
        $campaign->gbr640x960 = '';
        $campaign->save();

        return $this->response->redirect('campaign/edit/'.$id.'/1');
    }

    public function Deletegbr728x90Action($id)
    {
        $campaign = Campaign::findFirstByid($id);
        $campaign->gbr728x90 = '';
        $campaign->save();

        return $this->response->redirect('campaign/edit/'.$id.'/1');
    }

    public function Deletegbr800x440Action($id)
    {
        $campaign = Campaign::findFirstByid($id);
        $campaign->gbr800x440 = '';
        $campaign->save();

        return $this->response->redirect('campaign/edit/'.$id.'/1');
    }

    public function Deletegbr1024x7Action($id)
    {
        $campaign = Campaign::findFirstByid($id);
        $campaign->gbr1024x768 = '';
        $campaign->save();

        return $this->response->redirect('campaign/edit/'.$id.'/1');
    }

    public function DowngbrloopAction($id)
    {
      $campaign = Campaign::findFirstByid($id);
      // $files = array($campaign->gbr1024x768);
      // $zipname = 'file.zip';
      // $zip = new \ZipArchive;
      // $zip->open($zipname, ZipArchive::CREATE);
      // foreach ($files as $file) {
      //   $zip->addFile($file);
      // }
      // $zip->close();
      //
      // header('Content-Type: application/zip');
      // header('Content-disposition: attachment; filename='.$zipname);
      // header('Content-Length: ' . filesize($zipname));
      // readfile($zipname);

      $path = $campaign->gbr1024x768;
      $clientname = $campaign->client_name;
      $clientid = $campaign->client_id;
      $campaignname = $campaign->cp_name;
      $size = '1024x768';

      $this->view->disable();
  		$file = $path;
    		// get mime
    		$info = finfo_open(FILEINFO_MIME_TYPE);
    		$mime = finfo_file($info, $file);
    		finfo_close($info);

    		if ( ! ob_get_level()) ob_start();

    		// set headers
    		header('Set-Cookie: token=download; path=/');
    		header("Pragma: public");
    		header("Expires: 0");
    		header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
    		header("Cache-Control: public");
    		header("Content-Description: File Transfer");
    		header("Content-Type: image/png");
    		header("Content-Disposition: attachment; filename=\"".$clientid.'-'.$clientname.'-'.$campaignname.'-'.$size.$tipe."\"");
    		header("Content-Transfer-Encoding: binary");
    		header("Content-Length: ".filesize($file));
    		if (($stream = fopen($file, 'rb'))) {
    			while( ! feof($stream)) {
    				echo fread($stream, 2014);
    				ob_flush();
    				flush();
    			}
    		}
    		ob_end_clean();
    }

    public function Downgbr1024x768Action($id)
    {
      $campaign = Campaign::findFirstByid($id);
      $path = $campaign->gbr1024x768;
      if(strpos($path,'.jpg') !== false){
          $tipe = '.jpg';
      }elseif(strpos($path,'.png')!== false){
          $tipe = '.png';
      }
      $clientname = $campaign->client_name;
      $clientid = $campaign->client_id;
      $campaignname = $campaign->cp_name;
      $size = '1024x768';
      $this->view->disable();
  		$file = $path;
      var_dump($file);
    		// get mime
    		$info = finfo_open(FILEINFO_MIME_TYPE);
    		$mime = finfo_file($info, $file);
    		finfo_close($info);

    		if ( ! ob_get_level()) ob_start();

    		// set headers
    		header('Set-Cookie: token=download; path=/');
    		header("Pragma: public");
    		header("Expires: 0");
    		header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
    		header("Cache-Control: public");
    		header("Content-Description: File Transfer");
    		header("Content-Type: image/png");
    		header("Content-Disposition: attachment; filename=\"".$clientid.'-'.$clientname.'-'.$campaignname.'-'.$size.$tipe."\"");
    		header("Content-Transfer-Encoding: binary");
    		header("Content-Length: ".filesize($file));
    		if (($stream = fopen($file, 'rb'))) {
    			while( ! feof($stream)) {
    				echo fread($stream, 2014);
    				ob_flush();
    				flush();
    			}
    		}
    		ob_end_clean();

    }
    public function Downgbr800x440Action($id)
    {
      $campaign = Campaign::findFirstByid($id);
      $path = $campaign->gbr800x440;
      if(strpos($path,'.jpg') !== false){
          $tipe = '.jpg';
      }elseif(strpos($path,'.png')!== false){
          $tipe = '.png';
      }
      $clientname = $campaign->client_name;
      $clientid = $campaign->client_id;
      $campaignname = $campaign->cp_name;
      $size = '800x440';

      $this->view->disable();
  		$file = $path;
    		// get mime
    		$info = finfo_open(FILEINFO_MIME_TYPE);
    		$mime = finfo_file($info, $file);
    		finfo_close($info);

    		if ( ! ob_get_level()) ob_start();

    		// set headers
    		header('Set-Cookie: token=download; path=/');
    		header("Pragma: public");
    		header("Expires: 0");
    		header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
    		header("Cache-Control: public");
    		header("Content-Description: File Transfer");
    		header("Content-Type: image/png");
    		header("Content-Disposition: attachment; filename=\"".$clientid.'-'.$clientname.'-'.$campaignname.'-'.$size.$tipe."\"");
    		header("Content-Transfer-Encoding: binary");
    		header("Content-Length: ".filesize($file));
    		if (($stream = fopen($file, 'rb'))) {
    			while( ! feof($stream)) {
    				echo fread($stream, 2014);
    				ob_flush();
    				flush();
    			}
    		}
    		ob_end_clean();
    }
    public function Downgbr728x90Action($id)
    {
      $campaign = Campaign::findFirstByid($id);
      $path = $campaign->gbr728x90;
      if(strpos($path,'.jpg') !== false){
          $tipe = '.jpg';
      }elseif(strpos($path,'.png')!== false){
          $tipe = '.png';
      }
      $clientname = $campaign->client_name;
      $clientid = $campaign->client_id;
      $campaignname = $campaign->cp_name;
      $size = '728x90';

      $this->view->disable();
  		$file = $path;
    		// get mime
    		$info = finfo_open(FILEINFO_MIME_TYPE);
    		$mime = finfo_file($info, $file);
    		finfo_close($info);

    		if ( ! ob_get_level()) ob_start();

    		// set headers
    		header('Set-Cookie: token=download; path=/');
    		header("Pragma: public");
    		header("Expires: 0");
    		header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
    		header("Cache-Control: public");
    		header("Content-Description: File Transfer");
    		header("Content-Type: image/png");
    		header("Content-Disposition: attachment; filename=\"".$clientid.'-'.$clientname.'-'.$campaignname.'-'.$size.$tipe."\"");
    		header("Content-Transfer-Encoding: binary");
    		header("Content-Length: ".filesize($file));
    		if (($stream = fopen($file, 'rb'))) {
    			while( ! feof($stream)) {
    				echo fread($stream, 2014);
    				ob_flush();
    				flush();
    			}
    		}
    		ob_end_clean();
    }
    public function Downgbr640x960Action($id)
    {
      $campaign = Campaign::findFirstByid($id);
      $path = $campaign->gbr640x960;
      if(strpos($path,'.jpg') !== false){
          $tipe = '.jpg';
      }elseif(strpos($path,'.png')!== false){
          $tipe = '.png';
      }
      $clientname = $campaign->client_name;
      $clientid = $campaign->client_id;
      $campaignname = $campaign->cp_name;
      $size = '640x960';

      $this->view->disable();
  		$file = $path;
    		// get mime
    		$info = finfo_open(FILEINFO_MIME_TYPE);
    		$mime = finfo_file($info, $file);
    		finfo_close($info);

    		if ( ! ob_get_level()) ob_start();

    		// set headers
    		header('Set-Cookie: token=download; path=/');
    		header("Pragma: public");
    		header("Expires: 0");
    		header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
    		header("Cache-Control: public");
    		header("Content-Description: File Transfer");
    		header("Content-Type: image/png");
    		header("Content-Disposition: attachment; filename=\"".$clientid.'-'.$clientname.'-'.$campaignname.'-'.$size.$tipe."\"");
    		header("Content-Transfer-Encoding: binary");
    		header("Content-Length: ".filesize($file));
    		if (($stream = fopen($file, 'rb'))) {
    			while( ! feof($stream)) {
    				echo fread($stream, 2014);
    				ob_flush();
    				flush();
    			}
    		}
    		ob_end_clean();
    }
    public function Downgbr468x60Action($id)
    {
      $campaign = Campaign::findFirstByid($id);
      $path = $campaign->gbr468x60;
      if(strpos($path,'.jpg') !== false){
          $tipe = '.jpg';
      }elseif(strpos($path,'.png')!== false){
          $tipe = '.png';
      }
      $clientname = $campaign->client_name;
      $clientid = $campaign->client_id;
      $campaignname = $campaign->cp_name;
      $size = '468x60';

      $this->view->disable();
  		$file = $path;
    		// get mime
    		$info = finfo_open(FILEINFO_MIME_TYPE);
    		$mime = finfo_file($info, $file);
    		finfo_close($info);

    		if ( ! ob_get_level()) ob_start();

    		// set headers
    		header('Set-Cookie: token=download; path=/');
    		header("Pragma: public");
    		header("Expires: 0");
    		header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
    		header("Cache-Control: public");
    		header("Content-Description: File Transfer");
    		header("Content-Type: image/png");
    		header("Content-Disposition: attachment; filename=\"".$clientid.'-'.$clientname.'-'.$campaignname.'-'.$size.$tipe."\"");
    		header("Content-Transfer-Encoding: binary");
    		header("Content-Length: ".filesize($file));
    		if (($stream = fopen($file, 'rb'))) {
    			while( ! feof($stream)) {
    				echo fread($stream, 2014);
    				ob_flush();
    				flush();
    			}
    		}
    		ob_end_clean();
    }
    public function Downgbr336x280Action($id)
    {
      $campaign = Campaign::findFirstByid($id);
      $path = $campaign->gbr336x280;
      if(strpos($path,'.jpg') !== false){
          $tipe = '.jpg';
      }elseif(strpos($path,'.png')!== false){
          $tipe = '.png';
      }
      $clientname = $campaign->client_name;
      $clientid = $campaign->client_id;
      $campaignname = $campaign->cp_name;
      $size = '336x280';

      $this->view->disable();
  		$file = $path;
    		// get mime
    		$info = finfo_open(FILEINFO_MIME_TYPE);
    		$mime = finfo_file($info, $file);
    		finfo_close($info);

    		if ( ! ob_get_level()) ob_start();

    		// set headers
    		header('Set-Cookie: token=download; path=/');
    		header("Pragma: public");
    		header("Expires: 0");
    		header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
    		header("Cache-Control: public");
    		header("Content-Description: File Transfer");
    		header("Content-Type: image/png");
    		header("Content-Disposition: attachment; filename=\"".$clientid.'-'.$clientname.'-'.$campaignname.'-'.$size.$tipe."\"");
    		header("Content-Transfer-Encoding: binary");
    		header("Content-Length: ".filesize($file));
    		if (($stream = fopen($file, 'rb'))) {
    			while( ! feof($stream)) {
    				echo fread($stream, 2014);
    				ob_flush();
    				flush();
    			}
    		}
    		ob_end_clean();
    }
    public function Downgbr320x480Action($id)
    {
      $campaign = Campaign::findFirstByid($id);
      $path = $campaign->gbr320x480;
      if(strpos($path,'.jpg') !== false){
          $tipe = '.jpg';
      }elseif(strpos($path,'.png')!== false){
          $tipe = '.png';
      }
      $clientname = $campaign->client_name;
      $clientid = $campaign->client_id;
      $campaignname = $campaign->cp_name;
      $size = '320x480';

      $this->view->disable();
  		$file = $path;
    		// get mime
    		$info = finfo_open(FILEINFO_MIME_TYPE);
    		$mime = finfo_file($info, $file);
    		finfo_close($info);

    		if ( ! ob_get_level()) ob_start();

    		// set headers
    		header('Set-Cookie: token=download; path=/');
    		header("Pragma: public");
    		header("Expires: 0");
    		header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
    		header("Cache-Control: public");
    		header("Content-Description: File Transfer");
    		header("Content-Type: image/png");
    		header("Content-Disposition: attachment; filename=\"".$clientid.'-'.$clientname.'-'.$campaignname.'-'.$size.$tipe."\"");
    		header("Content-Transfer-Encoding: binary");
    		header("Content-Length: ".filesize($file));
    		if (($stream = fopen($file, 'rb'))) {
    			while( ! feof($stream)) {
    				echo fread($stream, 2014);
    				ob_flush();
    				flush();
    			}
    		}
    		ob_end_clean();
    }
    public function Downgbr320x416Action($id)
    {
      $campaign = Campaign::findFirstByid($id);
      $path = $campaign->gbr320x416;
      if(strpos($path,'.jpg') !== false){
          $tipe = '.jpg';
      }elseif(strpos($path,'.png')!== false){
          $tipe = '.png';
      }
      $clientname = $campaign->client_name;
      $clientid = $campaign->client_id;
      $campaignname = $campaign->cp_name;
      $size = '320x416';

      $this->view->disable();
      $file = $path;
        // get mime
        $info = finfo_open(FILEINFO_MIME_TYPE);
        $mime = finfo_file($info, $file);
        finfo_close($info);

        if ( ! ob_get_level()) ob_start();

        // set headers
        header('Set-Cookie: token=download; path=/');
        header("Pragma: public");
        header("Expires: 0");
        header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
        header("Cache-Control: public");
        header("Content-Description: File Transfer");
        header("Content-Type: image/png");
        header("Content-Disposition: attachment; filename=\"".$clientid.'-'.$clientname.'-'.$campaignname.'-'.$size.$tipe."\"");
        header("Content-Transfer-Encoding: binary");
        header("Content-Length: ".filesize($file));
        if (($stream = fopen($file, 'rb'))) {
          while( ! feof($stream)) {
            echo fread($stream, 2014);
            ob_flush();
            flush();
          }
        }
        ob_end_clean();
    }
    public function Downgbr320x250Action($id)
    {
      $campaign = Campaign::findFirstByid($id);
      $path = $campaign->gbr320x250;
      if(strpos($path,'.jpg') !== false){
          $tipe = '.jpg';
      }elseif(strpos($path,'.png')!== false){
          $tipe = '.png';
      }
      $clientname = $campaign->client_name;
      $clientid = $campaign->client_id;
      $campaignname = $campaign->cp_name;
      $size = '320x250';

      $this->view->disable();
      $file = $path;
        // get mime
        $info = finfo_open(FILEINFO_MIME_TYPE);
        $mime = finfo_file($info, $file);
        finfo_close($info);

        if ( ! ob_get_level()) ob_start();

        // set headers
        header('Set-Cookie: token=download; path=/');
        header("Pragma: public");
        header("Expires: 0");
        header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
        header("Cache-Control: public");
        header("Content-Description: File Transfer");
        header("Content-Type: image/png");
        header("Content-Disposition: attachment; filename=\"".$clientid.'-'.$clientname.'-'.$campaignname.'-'.$size.$tipe."\"");
        header("Content-Transfer-Encoding: binary");
        header("Content-Length: ".filesize($file));
        if (($stream = fopen($file, 'rb'))) {
          while( ! feof($stream)) {
            echo fread($stream, 2014);
            ob_flush();
            flush();
          }
        }
        ob_end_clean();
    }

    public function Downgbr320x100Action($id)
    {
      $campaign = Campaign::findFirstByid($id);
      $path = $campaign->gbr320x100;
      if(strpos($path,'.jpg') !== false){
          $tipe = '.jpg';
      }elseif(strpos($path,'.png')!== false){
          $tipe = '.png';
      }
      $clientname = $campaign->client_name;
      $clientid = $campaign->client_id;
      $campaignname = $campaign->cp_name;
      $size = '320x100';

      $this->view->disable();
      $file = $path;
        // get mime
        $info = finfo_open(FILEINFO_MIME_TYPE);
        $mime = finfo_file($info, $file);
        finfo_close($info);

        if ( ! ob_get_level()) ob_start();

        // set headers
        header('Set-Cookie: token=download; path=/');
        header("Pragma: public");
        header("Expires: 0");
        header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
        header("Cache-Control: public");
        header("Content-Description: File Transfer");
        header("Content-Type: image/png");
        header("Content-Disposition: attachment; filename=\"".$clientid.'-'.$clientname.'-'.$campaignname.'-'.$size.$tipe."\"");
        header("Content-Transfer-Encoding: binary");
        header("Content-Length: ".filesize($file));
        if (($stream = fopen($file, 'rb'))) {
          while( ! feof($stream)) {
            echo fread($stream, 2014);
            ob_flush();
            flush();
          }
        }
        ob_end_clean();
    }
    public function Downgbr320x50Action($id)
    {
      $campaign = Campaign::findFirstByid($id);
      $path = $campaign->gbr320x50;
      if(strpos($path,'.jpg') !== false){
          $tipe = '.jpg';
      }elseif(strpos($path,'.png')!== false){
          $tipe = '.png';
      }
      $clientname = $campaign->client_name;
      $clientid = $campaign->client_id;
      $campaignname = $campaign->cp_name;
      $size = '320x50';

      $this->view->disable();
      $file = $path;
        // get mime
        $info = finfo_open(FILEINFO_MIME_TYPE);
        $mime = finfo_file($info, $file);
        finfo_close($info);

        if ( ! ob_get_level()) ob_start();

        // set headers
        header('Set-Cookie: token=download; path=/');
        header("Pragma: public");
        header("Expires: 0");
        header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
        header("Cache-Control: public");
        header("Content-Description: File Transfer");
        header("Content-Type: image/png");
        header("Content-Disposition: attachment; filename=\"".$clientid.'-'.$clientname.'-'.$campaignname.'-'.$size.$tipe."\"");
        header("Content-Transfer-Encoding: binary");
        header("Content-Length: ".filesize($file));
        if (($stream = fopen($file, 'rb'))) {
          while( ! feof($stream)) {
            echo fread($stream, 2014);
            ob_flush();
            flush();
          }
        }
        ob_end_clean();
    }
    public function Downgbr315x300Action($id)
    {
      $campaign = Campaign::findFirstByid($id);
      $path = $campaign->gbr315x300;
      if(strpos($path,'.jpg') !== false){
          $tipe = '.jpg';
      }elseif(strpos($path,'.png')!== false){
          $tipe = '.png';
      }
      $clientname = $campaign->client_name;
      $clientid = $campaign->client_id;
      $campaignname = $campaign->cp_name;
      $size = '315x300';

      $this->view->disable();
      $file = $path;
        // get mime
        $info = finfo_open(FILEINFO_MIME_TYPE);
        $mime = finfo_file($info, $file);
        finfo_close($info);

        if ( ! ob_get_level()) ob_start();

        // set headers
        header('Set-Cookie: token=download; path=/');
        header("Pragma: public");
        header("Expires: 0");
        header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
        header("Cache-Control: public");
        header("Content-Description: File Transfer");
        header("Content-Type: image/png");
        header("Content-Disposition: attachment; filename=\"".$clientid.'-'.$clientname.'-'.$campaignname.'-'.$size.$tipe."\"");
        header("Content-Transfer-Encoding: binary");
        header("Content-Length: ".filesize($file));
        if (($stream = fopen($file, 'rb'))) {
          while( ! feof($stream)) {
            echo fread($stream, 2014);
            ob_flush();
            flush();
          }
        }
        ob_end_clean();
    }
    public function Downgbr305x99Action($id)
    {
      $campaign = Campaign::findFirstByid($id);
      $path = $campaign->gbr305x99;
      if(strpos($path,'.jpg') !== false){
          $tipe = '.jpg';
      }elseif(strpos($path,'.png')!== false){
          $tipe = '.png';
      }
      $clientname = $campaign->client_name;
      $clientid = $campaign->client_id;
      $campaignname = $campaign->cp_name;
      $size = '305x99';

      $this->view->disable();
      $file = $path;
        // get mime
        $info = finfo_open(FILEINFO_MIME_TYPE);
        $mime = finfo_file($info, $file);
        finfo_close($info);

        if ( ! ob_get_level()) ob_start();

        // set headers
        header('Set-Cookie: token=download; path=/');
        header("Pragma: public");
        header("Expires: 0");
        header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
        header("Cache-Control: public");
        header("Content-Description: File Transfer");
        header("Content-Type: image/png");
        header("Content-Disposition: attachment; filename=\"".$clientid.'-'.$clientname.'-'.$campaignname.'-'.$size.$tipe."\"");
        header("Content-Transfer-Encoding: binary");
        header("Content-Length: ".filesize($file));
        if (($stream = fopen($file, 'rb'))) {
          while( ! feof($stream)) {
            echo fread($stream, 2014);
            ob_flush();
            flush();
          }
        }
        ob_end_clean();
    }
    public function Downgbr300x600Action($id)
    {
      $campaign = Campaign::findFirstByid($id);
      $path = $campaign->gbr300x600;
      if(strpos($path,'.jpg') !== false){
          $tipe = '.jpg';
      }elseif(strpos($path,'.png')!== false){
          $tipe = '.png';
      }
      $clientname = $campaign->client_name;
      $clientid = $campaign->client_id;
      $campaignname = $campaign->cp_name;
      $size = '300x600';

      $this->view->disable();
      $file = $path;
        // get mime
        $info = finfo_open(FILEINFO_MIME_TYPE);
        $mime = finfo_file($info, $file);
        finfo_close($info);

        if ( ! ob_get_level()) ob_start();

        // set headers
        header('Set-Cookie: token=download; path=/');
        header("Pragma: public");
        header("Expires: 0");
        header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
        header("Cache-Control: public");
        header("Content-Description: File Transfer");
        header("Content-Type: image/png");
        header("Content-Disposition: attachment; filename=\"".$clientid.'-'.$clientname.'-'.$campaignname.'-'.$size.$tipe."\"");
        header("Content-Transfer-Encoding: binary");
        header("Content-Length: ".filesize($file));
        if (($stream = fopen($file, 'rb'))) {
          while( ! feof($stream)) {
            echo fread($stream, 2014);
            ob_flush();
            flush();
          }
        }
        ob_end_clean();
    }
    public function Downgbr300x100Action($id)
    {
      $campaign = Campaign::findFirstByid($id);
      $path = $campaign->gbr300x100;
      if(strpos($path,'.jpg') !== false){
          $tipe = '.jpg';
      }elseif(strpos($path,'.png')!== false){
          $tipe = '.png';
      }
      $clientname = $campaign->client_name;
      $clientid = $campaign->client_id;
      $campaignname = $campaign->cp_name;
      $size = '300x100';

      $this->view->disable();
      $file = $path;
        // get mime
        $info = finfo_open(FILEINFO_MIME_TYPE);
        $mime = finfo_file($info, $file);
        finfo_close($info);

        if ( ! ob_get_level()) ob_start();

        // set headers
        header('Set-Cookie: token=download; path=/');
        header("Pragma: public");
        header("Expires: 0");
        header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
        header("Cache-Control: public");
        header("Content-Description: File Transfer");
        header("Content-Type: image/png");
        header("Content-Disposition: attachment; filename=\"".$clientid.'-'.$clientname.'-'.$campaignname.'-'.$size.$tipe."\"");
        header("Content-Transfer-Encoding: binary");
        header("Content-Length: ".filesize($file));
        if (($stream = fopen($file, 'rb'))) {
          while( ! feof($stream)) {
            echo fread($stream, 2014);
            ob_flush();
            flush();
          }
        }
        ob_end_clean();
    }
    public function Downgbr300x250Action($id)
    {
      $campaign = Campaign::findFirstByid($id);
      $path = $campaign->gbr300x250;
      if(strpos($path,'.jpg') !== false){
          $tipe = '.jpg';
      }elseif(strpos($path,'.png')!== false){
          $tipe = '.png';
      }
      $clientname = $campaign->client_name;
      $clientid = $campaign->client_id;
      $campaignname = $campaign->cp_name;
      $size = '300x250';

      $this->view->disable();
      $file = $path;
        // get mime
        $info = finfo_open(FILEINFO_MIME_TYPE);
        $mime = finfo_file($info, $file);
        finfo_close($info);

        if ( ! ob_get_level()) ob_start();

        // set headers
        header('Set-Cookie: token=download; path=/');
        header("Pragma: public");
        header("Expires: 0");
        header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
        header("Cache-Control: public");
        header("Content-Description: File Transfer");
        header("Content-Type: image/png");
        header("Content-Disposition: attachment; filename=\"".$clientid.'-'.$clientname.'-'.$campaignname.'-'.$size.$tipe."\"");
        header("Content-Transfer-Encoding: binary");
        header("Content-Length: ".filesize($file));
        if (($stream = fopen($file, 'rb'))) {
          while( ! feof($stream)) {
            echo fread($stream, 2014);
            ob_flush();
            flush();
          }
        }
        ob_end_clean();
    }
    public function Downgbr300x50Action($id)
    {
      $campaign = Campaign::findFirstByid($id);
      $path = $campaign->gbr300x50;
      if(strpos($path,'.jpg') !== false){
          $tipe = '.jpg';
      }elseif(strpos($path,'.png')!== false){
          $tipe = '.png';
      }
      $clientname = $campaign->client_name;
      $clientid = $campaign->client_id;
      $campaignname = $campaign->cp_name;
      $size = '300x50';

      $this->view->disable();
      $file = $path;
        // get mime
        $info = finfo_open(FILEINFO_MIME_TYPE);
        $mime = finfo_file($info, $file);
        finfo_close($info);

        if ( ! ob_get_level()) ob_start();

        // set headers
        header('Set-Cookie: token=download; path=/');
        header("Pragma: public");
        header("Expires: 0");
        header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
        header("Cache-Control: public");
        header("Content-Description: File Transfer");
        header("Content-Type: image/png");
        header("Content-Disposition: attachment; filename=\"".$clientid.'-'.$clientname.'-'.$campaignname.'-'.$size.$tipe."\"");
        header("Content-Transfer-Encoding: binary");
        header("Content-Length: ".filesize($file));
        if (($stream = fopen($file, 'rb'))) {
          while( ! feof($stream)) {
            echo fread($stream, 2014);
            ob_flush();
            flush();
          }
        }
        ob_end_clean();
    }
    public function Downgbr250x250Action($id)
    {
      $campaign = Campaign::findFirstByid($id);
      $path = $campaign->gbr250x250;
      if(strpos($path,'.jpg') !== false){
          $tipe = '.jpg';
      }elseif(strpos($path,'.png')!== false){
          $tipe = '.png';
      }
      $clientname = $campaign->client_name;
      $clientid = $campaign->client_id;
      $campaignname = $campaign->cp_name;
      $size = '250x250';

      $this->view->disable();
      $file = $path;
        // get mime
        $info = finfo_open(FILEINFO_MIME_TYPE);
        $mime = finfo_file($info, $file);
        finfo_close($info);

        if ( ! ob_get_level()) ob_start();

        // set headers
        header('Set-Cookie: token=download; path=/');
        header("Pragma: public");
        header("Expires: 0");
        header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
        header("Cache-Control: public");
        header("Content-Description: File Transfer");
        header("Content-Type: image/png");
        header("Content-Disposition: attachment; filename=\"".$clientid.'-'.$clientname.'-'.$campaignname.'-'.$size.$tipe."\"");
        header("Content-Transfer-Encoding: binary");
        header("Content-Length: ".filesize($file));
        if (($stream = fopen($file, 'rb'))) {
          while( ! feof($stream)) {
            echo fread($stream, 2014);
            ob_flush();
            flush();
          }
        }
        ob_end_clean();
    }
    public function Downgbr160x600Action($id)
    {
      $campaign = Campaign::findFirstByid($id);
      $path = $campaign->gbr160x600;
      if(strpos($path,'.jpg') !== false){
          $tipe = '.jpg';
      }elseif(strpos($path,'.png')!== false){
          $tipe = '.png';
      }
      $clientname = $campaign->client_name;
      $clientid = $campaign->client_id;
      $campaignname = $campaign->cp_name;
      $size = '160x600';

      $this->view->disable();
      $file = $path;
        // get mime
        $info = finfo_open(FILEINFO_MIME_TYPE);
        $mime = finfo_file($info, $file);
        finfo_close($info);

        if ( ! ob_get_level()) ob_start();

        // set headers
        header('Set-Cookie: token=download; path=/');
        header("Pragma: public");
        header("Expires: 0");
        header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
        header("Cache-Control: public");
        header("Content-Description: File Transfer");
        header("Content-Type: image/png");
        header("Content-Disposition: attachment; filename=\"".$clientid.'-'.$clientname.'-'.$campaignname.'-'.$size.$tipe."\"");
        header("Content-Transfer-Encoding: binary");
        header("Content-Length: ".filesize($file));
        if (($stream = fopen($file, 'rb'))) {
          while( ! feof($stream)) {
            echo fread($stream, 2014);
            ob_flush();
            flush();
          }
        }
        ob_end_clean();
    }
    public function Downgbr120x600Action($id)
    {
      $campaign = Campaign::findFirstByid($id);
      $path = $campaign->gbr120x600;
      if(strpos($path,'.jpg') !== false){
          $tipe = '.jpg';
      }elseif(strpos($path,'.png')!== false){
          $tipe = '.png';
      }
      $clientname = $campaign->client_name;
      $clientid = $campaign->client_id;
      $campaignname = $campaign->cp_name;
      $size = '120x600';

      $this->view->disable();
      $file = $path;
        // get mime
        $info = finfo_open(FILEINFO_MIME_TYPE);
        $mime = finfo_file($info, $file);
        finfo_close($info);

        if ( ! ob_get_level()) ob_start();

        // set headers
        header('Set-Cookie: token=download; path=/');
        header("Pragma: public");
        header("Expires: 0");
        header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
        header("Cache-Control: public");
        header("Content-Description: File Transfer");
        header("Content-Type: image/png");
        header("Content-Disposition: attachment; filename=\"".$clientid.'-'.$clientname.'-'.$campaignname.'-'.$size.$tipe."\"");
        header("Content-Transfer-Encoding: binary");
        header("Content-Length: ".filesize($file));
        if (($stream = fopen($file, 'rb'))) {
          while( ! feof($stream)) {
            echo fread($stream, 2014);
            ob_flush();
            flush();
          }
        }
        ob_end_clean();
    }
}

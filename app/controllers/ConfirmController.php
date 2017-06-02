<?php
namespace Vokuro\Controllers;

use Phalcon\Tag;
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
use Vokuro\Models\Confirmation;
use Vokuro\Models\Saldo;
use Vokuro\Forms\ConfirmForm;
/**
 * Display the terms and conditions page.
 */
class ConfirmController extends ControllerBase
{

    /**
     * Default action. Set the public layout (layouts/public.volt)
     */
     public function initialize()
     {

      //  $this->view->setTemplateBefore('cobaprivate');
      //  // Add some local CSS resources
      // $this->assets->addCss("https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css");
      // $this->assets->addCss("css/font-awesome.min.css");
      // $this->assets->addCss("css/animate.min.css");
      // $this->assets->addCss("css/prettyPhoto.css");
      // $this->assets->addCss("css/main.css");
      // $this->assets->addCss("css/responsive.css");
      //
      // // And some local JavaScript resources
      // $this->assets->addJs("//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js");
      // $this->assets->addJs("js/jquery.js");
      // $this->assets->addJs("js/bootstrap.min.js");
      // $this->assets->addJs("js/main.js");
      // $this->assets->addJs("js/jquery.prettyPhoto.js");
      // $this->assets->addJs("js/jquery.isotope.min.js");
      // $this->assets->addJs("js/wow.min.js");
     }

     public function indexAction()
     {
         $this->persistent->parameters = null;
         $this->view->form = new ConfirmForm();
     }


    public function createAction()
    {
        $form = new ConfirmForm();

        if($this->request->isPost())
        {
          if($this->security->checkToken())
          {
              if($form->isValid($this->request->getPost()) != false)
              {
                $confirm = new Confirmation([
                  'user_id' => $this->request->getPost('user_id'),
                  'username' => $this->request->getPost('username'),
                  'bankname' => $this->request->getPost('bankname'),
                  'branch' => $this->request->getPost('branch'),
                  'accountnumber' => $this->request->getPost('accountnumber'),
                  'accountname' => $this->request->getPost('accountname'),
                  'phone' => $this->request->getPost('phone'),
                  'email' => $this->request->getPost('email'),
                  'nominal' => $this->request->getPost('nominal'),
                  'currency' => $this->request->getPost('currency'),
                ]);
                $confirm->status = 'N';
                if ($confirm->save())
                {
                  $form->clear();
                  $this->flash->success("Thanks for confirmation, we will check payment immediately. ");
                }
                $this->flash->error($confirm->getMessages());
              }
            }
            else {
              $this->flash->error('CSRF Validation is Failed');
            }


        }
       $this->view->form = $form;
    }

    public function SearchAction()
    {
      $numberPage = 1;

      $form = new ConfirmForm();
      $numberPage = 1;

      $parameters = "1=1 order by upddate_at desc ";

      $confirm = Confirmation::find($parameters);
      if (count($confirm) == 0) {
          $this->flash->notice("The search did not find any adspace");

      }

      $paginator = new Paginator([
          'data' => $confirm,
          'limit'=> 10,
          'page' => $numberPage
      ]);

      $this->view->page = $paginator->getPaginate();
      $this->view->form = $form;

    }

    public function ApproveAction($id,$page)
    {
      $confirm = Confirmation::findFirst("id = ".$id);
      $confirmId = $confirm->user_id;
      $saldo = Saldo::findFirst("user_id = ". $confirmId);
      if(count($saldo) != 0)
      {
        $saldoId = $saldo->user_id;
      }else {
        $saldoId = 0;
      }

      if(($saldoId != $confirmId) && ($confirm->status == 'N'))
      {
        $confirm->status = 'A';
        $saldo = new Saldo();

        $saldo->user_id = $confirm->user_id;
        $saldo->cur_saldo = $confirm->nominal;
        $saldo->currency = $confirm->currency;
        $saldo->save();

        $confirm->save();
        $this->flashSess->success('Saldo top up success for client '. $confirm->username);
      }elseif (($saldoId == $confirmId) && ($confirm->status == 'N')) {
        $confirm->status = 'A';
        $saldonow = $saldo->cur_saldo;
        $saldo->user_id = $confirm->user_id;
        $saldo->cur_saldo = $saldonow + $confirm->nominal;
        $saldo->currency = $confirm->currency;
        $saldo->save();

        $confirm->save();
        $this->flashSess->success('Saldo top up success for client '. $confirm->username);
      }else {
        $this->flashSess->error('Payment was confirmed');
      }

      return $this->response->redirect('confirm/search?page=1');

    }

    public function UnapproveAction($id)
    {

    }
}

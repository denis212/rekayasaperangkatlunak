<?php
namespace Vokuro\Controllers;
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
use Vokuro\Models\Contact;
use Phalcon\Tag;
use Vokuro\Forms\ContactForm;
/**
 * Display the terms and conditions page.
 */
class ContactController extends ControllerBase
{

    /**
     * Default action. Set the public layout (layouts/public.volt)
     */
     public function initialize()
     {
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
        $form = new ContactForm();

        if($this->request->isPost())
        {
          if($this->security->checkToken())
          {
              if($form->isValid($this->request->getPost()) != false)
              {
                $contact = new Contact([
                  'name' => $this->request->getPost('name'),
                  'email' => $this->request->getPost('email'),
                  'subject' => $this->request->getPost('subject'),
                  'body' => $this->request->getPost('body'),
                ]);

                if ($contact->save())
                {
                  return $this->dispatcher->forward([
                      'action' => 'result'
                  ]);
                  $form->clear();
                  $this->flash->success("Message Sent Thank you for contacting us.");
                }
                $this->flash->error($contact->getMessages());
              }
            }
            else {
              $this->flash->error('CSRF Validation is Failed');
            }


        }

          $this->view->form = $form;
    }

    public function ResultAction ()
    {


    }
}

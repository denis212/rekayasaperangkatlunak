<?php
namespace Vokuro\Controllers;

/**
 * Display the default index page.
 */
class IndexController extends ControllerBase
{

    /**
     * Default action. Set the public layout (layouts/public.volt)
     */
    public function indexAction()
    {
        $this->view->setVar('logged_in', is_array($this->auth->getIdentity()));
        // if ($this->session->has('auth-identity')) {
        //     $this->view->setTemplateBefore('private');
        // }else {
        //   $this->view->setTemplateBefore('public');
        // }

        if ($this->session->has('auth-identity')) {
          $this->view->setTemplateBefore('cobaprivate');
        }else {
        $this->view->setTemplateBefore('coba');
        }
    }
}

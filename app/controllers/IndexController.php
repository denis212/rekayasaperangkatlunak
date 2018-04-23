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

        if ($this->session->has('auth-identity')) {
          return $this->response->redirect('users/listref');
          // return $this->response->redirect('index');
        }else {
          // $this->view->setTemplateBefore('coba');
          return $this->response->redirect('session/login');
        }

    }
}

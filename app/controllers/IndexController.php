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
          return $this->response->redirect('campaign/dashboardcamp');
        }else {
          $this->view->setTemplateBefore('coba');
        }

    }
}

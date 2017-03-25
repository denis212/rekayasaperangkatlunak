<?php
namespace Vokuro\Controllers;

/**
 * Display the privacy page.
 */
class PolicyController extends ControllerBase
{

    /**
     * Default action. Set the public layout (layouts/public.volt)
     */
    public function indexAction()
    {
      if ($this->session->has('auth-identity')) {
          // $this->view->setTemplateBefore('private');
            $this->view->setTemplateBefore('cobaprivate');
      }else {
        // $this->view->setTemplateBefore('public');
        $this->view->setTemplateBefore('coba');
      }
    }
}

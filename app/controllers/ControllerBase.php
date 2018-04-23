<?php
namespace Vokuro\Controllers;

use Phalcon\Mvc\Controller;
use Phalcon\Mvc\Action;
use Phalcon\Mvc\Dispatcher;
use Vokuro\Models\Saldo;

/**
 * ControllerBase
 * This is the base controller for all controllers in the application
 */
class ControllerBase extends Controller
{
    /**
     * Execute before the router so we can determine if this is a private controller, and must be authenticated, or a
     * public controller that is open to all.
     *
     * @param Dispatcher $dispatcher
     * @return boolean
     */

    public function beforeExecuteRoute(Dispatcher $dispatcher)
    {
        $controllerName = $dispatcher->getControllerName();
        $this->view->userlevel = $this->auth->getProfilesId();
        if($this->auth->getId()!=0)
        {
          $this->view->posisi = 'in';
          $userid = $this->auth->getId();
          // $saldo = Saldo::findFirst("user_id = ". $userid);
          // if($saldo != null)
          // {
          //   $sal = $saldo->cur_saldo;
          //   $cur = $saldo->currency;
          //   $this->view->usersaldo = $cur.' '.$sal;
          // }else {
          //   $sal = '0';
          //   $cur = 'IDR';
          //   $this->view->usersaldo = $cur.' '.$sal;
          // }
        }else {
          $this->view->posisi = 'out';
        }

        // Only check permissions on private controllers
        if ($this->acl->isPrivate($controllerName)) {
            // $this->view->posisi = 'in';
            // Get the current identity
            $identity = $this->auth->getIdentity();
            $userid = $this->auth->getId();
            // $saldo = Saldo::findFirst("user_id = ". $userid);

            // if($saldo != null)
            // {
            //   $sal = $saldo->cur_saldo;
            //   $cur = $saldo->currency;
            //   $this->view->usersaldo = $cur.' '.$sal;
            // }else {
            //   $sal = '0';
            //   $cur = 'IDR';
            //   $this->view->usersaldo = $cur.' '.$sal;
            // }

            // If there is no identity available the user is redirected to index/index
            if (!is_array($identity)) {

                $this->flash->notice('You don\'t have access to this module: private');

                $dispatcher->forward([
                    'controller' => 'index',
                    'action' => 'index'
                ]);
                return false;
            }

            // Check if the user have permission to the current option
            $actionName = $dispatcher->getActionName();
            if (!$this->acl->isAllowed($identity['profile'], $controllerName, $actionName)) {

                $this->flash->notice('You don\'t have access to this module: ' . $controllerName . ':' . $actionName);

                if ($this->acl->isAllowed($identity['profile'], $controllerName, 'indexl')) {
                    $dispatcher->forward([
                        'controller' => $controllerName,
                        'action' => 'index'
                    ]);
                } else {
                    $dispatcher->forward([
                        'controller' => 'user_control',
                        'action' => 'index'
                    ]);
                }

                return false;
            }
        }else {
          // $this->view->posisi = 'out';
        }

    }
}

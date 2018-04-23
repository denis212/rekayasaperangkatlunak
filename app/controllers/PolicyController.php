<?php
namespace Vokuro\Controllers;

use Phalcon\Tag;
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
use Vokuro\Models\Confirmation;
use Vokuro\Models\Saldo;
use Vokuro\Models\Daftarbank;
use Vokuro\Forms\ConfirmForm;
use Vokuro\Forms\RequestDepositForm;
use Vokuro\Forms\HalamanreqdepForm;
use Vokuro\Forms\CreateloopakunForm;
use Vokuro\Forms\QueryForm;
use Vokuro\Forms\SellForm;
use Vokuro\Models\Users;
use Vokuro\Models\Hargaprod;
use Vokuro\Models\Penjualan;

use Phalcon\Paginator\Adapter\Model as PaginatorModel;
use Phalcon\Paginator\Adapter\NativeArray as PaginatorArray;
use Phalcon\Paginator\Adapter\QueryBuilder as PaginatorQueryBuilder;
use Phalcon\Mvc\Model\Query;

use Phalcon\Http\Request;
use Phalcon\Db\Adapter\Pdo\Mysql;

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

    public function experimenAction()
    {

      ini_set('display_errors', 1);
      // $data = array();
      // $request = new Request();
      // $database = 'ujicoba';
      // $config = [
      //   'adapter' => 'Mysql',
      //   'host' => '127.0.0.1',
      //   'username' => 'root',
      //   'password' => 'adminadmin',
      //   'dbname' => $database
      // ];
      //
      // $connection = new Mysql($config);
      // $query = "select * from ".$database.".treeview_items";
      //
      // $sukses = $connection->query($query);
      //
      // $sukses->setFetchMode(
      //     \Phalcon\Db::FETCH_ASSOC
      // );
      //
      // while ($row = $sukses->fetchArray())
      // {
      //   $tmp = array();
  		// 	$tmp['id'] = $row['id'];
  		// 	$tmp['name'] = $row['name'];
  		// 	$tmp['text'] = $row['label'];
  		// 	$tmp['parent_id'] = $row['parent_id'];
  		// 	$tmp['href'] = $row['link'];
  		// 	array_push($data, $tmp);
      // }
      // // print_r($data);
      // // $this->view->disable();
      // $itemsByReference = array();
      //
    	// // Build array of item references:
    	// foreach($data as $key => &$item) {
    	//    $itemsByReference[$item['id']] = &$item;
    	//    // Children array:
    	//    $itemsByReference[$item['id']]['nodes'] = array();
    	// }
      //
    	// // Set items as children of the relevant parent item.
    	// foreach($data as $key => &$item)  {
    	// //echo "<pre>";print_r($itemsByReference[$item['parent_id']]);die;
    	//    if($item['parent_id'] && isset($itemsByReference[$item['parent_id']])) {
    	//       $itemsByReference [$item['parent_id']]['nodes'][] = &$item;
    	// 	}
    	// }
    	// // Remove items that were added to parents elsewhere:
    	// foreach($data as $key => &$item) {
    	// 	 if(empty($item['nodes'])) {
    	// 		unset($item['nodes']);
    	// 		}
    	//    if($item['parent_id'] && isset($itemsByReference[$item['parent_id']])) {
    	//       unset($data[$key]);
    	// 	 }
    	// }
      //
    	// // Encode:
    	// echo json_encode($data);
      // // $this->view->disable();
      // // print_r($data);
    }

    public function experiAction(){
      ini_set('display_errors', 1);
      $data = array();
      $request = new Request();
      $database = 'ujicoba';
      $config = [
        'adapter' => 'Mysql',
        'host' => '127.0.0.1',
        'username' => 'root',
        'password' => 'adminadmin',
        'dbname' => $database
      ];

      $connection = new Mysql($config);
      $query = "select * from ".$database.".treeview_items";
      // $query = "select * from ".$database.".users";

      $sukses = $connection->query($query);

      $sukses->setFetchMode(
          \Phalcon\Db::FETCH_ASSOC
      );

      while ($row = $sukses->fetchArray())
      {
        // $tmp = array();
  			// $tmp['id'] = $row['id'];
  			// $tmp['name'] = $row['name'];
  			// // $tmp['text'] = $row['label'];
  			// $tmp['lev1'] = $row['lev1'];
  			// $tmp['coderef'] = $row['coderef'];
        //
        $tmp = array();
        $tmp['id'] = $row['id'];
        $tmp['name'] = $row['name'];
        $tmp['text'] = $row['label'];
        $tmp['parent_id'] = $row['parent_id'];
        $tmp['href'] = $row['link'];
  			array_push($data, $tmp);
      }
      // print_r($data);
      // $this->view->disable();
      $itemsByReference = array();

    	// Build array of item references:
    	foreach($data as $key => &$item) {
    	   $itemsByReference[$item['id']] = &$item;
    	   // Children array:
    	   $itemsByReference[$item['id']]['nodes'] = array();
    	}

    	// Set items as children of the relevant parent item.
    	foreach($data as $key => &$item)  {
    	//echo "<pre>";print_r($itemsByReference[$item['parent_id']]);die;
    	   if($item['parent_id'] && isset($itemsByReference[$item['parent_id']])) {
          //  if($item['lev1'] && isset($itemsByReference[$item['lev1']])) {
    	      // $itemsByReference [$item['lev1']]['nodes'][] = &$item;
            $itemsByReference [$item['parent_id']]['nodes'][] = &$item;
    		}
    	}
    	// Remove items that were added to parents elsewhere:
    	foreach($data as $key => &$item) {
    		 if(empty($item['nodes'])) {
    			unset($item['nodes']);
    			}
    	  //  if($item['lev1'] && isset($itemsByReference[$item['lev1']])) {
        if($item['parent_id'] && isset($itemsByReference[$item['parent_id']])) {
    	      unset($data[$key]);
    		 }
    	}

    	// Encode:
    	echo json_encode($data);
      $this->view->disable();
    }

    public function experiaAction(){
      ini_set('display_errors', 1);
      $data = array();
      $request = new Request();
      $database = 'cmsjpu';
      $config = [
        'adapter' => 'Mysql',
        'host' => '127.0.0.1',
        'username' => 'root',
        'password' => 'adminadmin',
        'dbname' => $database
      ];

      $connection = new Mysql($config);
      // $query = "select * from ".$database.".treeview_items";
      $query = "select * from ".$database.".users";

      $sukses = $connection->query($query);

      $sukses->setFetchMode(
          \Phalcon\Db::FETCH_ASSOC
      );

      while ($row = $sukses->fetchArray())
      {
        $tmp = array();
  			$tmp['id'] = $row['id'];
  			$tmp['name'] = $row['name'];
  			$tmp['text'] = $row['name'].' ['.$row['coderef'].']';
  			$tmp['lev1'] = $row['lev1'];
  			$tmp['coderef'] = $row['coderef'];
        array_push($data, $tmp);

      }

      $itemsByReference = array();

    	// Build array of item references:
    	foreach($data as $key => &$item) {
    	   $itemsByReference[$item['id']] = &$item;
    	   // Children array:
    	   $itemsByReference[$item['id']]['nodes'] = array();
        // $itemsByReference[$item['id']]['a_attr'] = new \StdClass();
    	}

    	// Set items as children of the relevant parent item.
    	foreach($data as $key => &$item)  {
    	//echo "<pre>";print_r($itemsByReference[$item['parent_id']]);die;
    	  //  if($item['parent_id'] && isset($itemsByReference[$item['parent_id']])) {
           if($item['lev1'] && isset($itemsByReference[$item['lev1']])) {
    	      $itemsByReference [$item['lev1']]['nodes'][] = &$item;
            // $itemsByReference [$item['parent_id']]['nodes'][] = &$item;
    		}
    	}
    	// Remove items that were added to parents elsewhere:
    	foreach($data as $key => &$item) {
    		 if(empty($item['nodes'])) {
    			    unset($item['nodes']);
            	// $item['a_attr']->href = 'http://kemanaaja.com';
    			}
    	   if($item['lev1'] && isset($itemsByReference[$item['lev1']])) {
        // if($item['parent_id'] && isset($itemsByReference[$item['parent_id']])) {
    	      unset($data[$key]);
    		 }
    	}

    	// Encode:
    	echo json_encode($data);
      $this->view->disable();
    }

    public function experibAction(){
      ini_set('display_errors', 1);
      $data = array();
      $request = new Request();
      $database = 'ujicoba';
      $config = [
        'adapter' => 'Mysql',
        'host' => '127.0.0.1',
        'username' => 'root',
        'password' => 'adminadmin',
        'dbname' => $database
      ];

      $connection = new Mysql($config);
      $query = "select * from ".$database.".treeview_items";
      // $query = "select * from ".$database.".users";

      $sukses = $connection->query($query);

      $sukses->setFetchMode(
          \Phalcon\Db::FETCH_ASSOC
      );

      while ($row = $sukses->fetchArray())
      {
        $tmp = array();
        $tmp['id'] = $row['id'];
        $tmp['name'] = $row['name'];
        $tmp['text'] = $row['label'];
        $tmp['parent_id'] = $row['parent_id'];
        $tmp['href'] = $row['link'];
        array_push($data, $tmp);
      }
      // print_r($data);
      // $this->view->disable();
      $itemsByReference = array();

      // Build array of item references:
      foreach($data as $key => &$item) {
         $itemsByReference[$item['id']] = &$item;
         // Children array:
         $itemsByReference[$item['id']]['children'] = array();
        //  $itemsByReference[$item['id']]['a_attr'] = new \StdClass();
         $itemsByReference[$item['id']]['a_attr'] = new \StdClass();
      }

      // Set items as children of the relevant parent item.
      foreach($data as $key => &$item)  {
      //echo "<pre>";print_r($itemsByReference[$item['parent_id']]);die;
        //  if($item['parent_id'] && isset($itemsByReference[$item['parent_id']])) {
          if($item['parent_id'] && isset($itemsByReference[$item['parent_id']])) {
           $itemsByReference [$item['parent_id']]['children'][] = &$item;
         }
      }
      // Remove items that were added to parents elsewhere:
      foreach($data as $key => &$item) {
        if(empty($item['children'])) {

   				$item['a_attr']->href = 'http://kemanaaja.com';
   			}
     	   if($item['parent_id'] && isset($itemsByReference[$item['parent_id']])) {
     	      unset($data[$key]);
     		 }
        //  $item['a_attr']->href = 'jancuk';
      }

      // Encode:
      echo json_encode($data);
      $this->view->disable();
    }

    public function experimunAction()
    {

    }
}

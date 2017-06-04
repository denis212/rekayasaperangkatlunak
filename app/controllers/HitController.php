<?php
namespace Vokuro\Controllers;

use Phalcon\Tag;
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
use Phalcon\Db\Adapter\Pdo\Mysql;
use Phalcon\Http\Request;

/**
 * Vokuro\Controllers\UsersController
 * CRUD to manage users
 */
class HitController extends ControllerBase
{

  public function indexAction()
  {

  }

  public function hitTestAction()
  {
      $request = new Request();
      $database = 'vokuro';
      $config = [
        'adapter' => 'Mysql',
        'host' => '127.0.0.1',
        'username' => 'root',
        'password' => 'adminadmin',
        'dbname' => $database
      ];

      $connection = new Mysql($config);

      $sal_awal = 0;
      $cost_per = 0;
      $clientid = '';
      $sal_akhir = 0;

      if(!empty($this->request->getQuery('cid')))
      {
        $cid = $this->request->getQuery('cid');
      }

      if(!empty($this->request->getQuery('nid')))
      {
          $nid = $this->request->getQuery('nid');
      }

      if(!empty($this->request->getQuery('trans_id'))) //transaction id
      {
          $traceid = $this->request->getQuery('trans_id');
      }else {
        $s_id = date("YmdHis").rand(0,99999);
        $traceid = md5($s_id);
      }

      if(!empty($this->request->getQuery('sub_id'))) //publisher id
      {
        $subid = $this->request->getQuery('sub_id');
      }else {
        $subid = 1;
      }

      $traceid_alias = md5($traceid);

      $httpreferer = $request->getServer("HTTP_REFERER");
      $requri = $request->getServer("REQUEST_URI");
      $remaddr = $request->getServer("REMOTE_ADDR");
      $useragent = $request->getServer("HTTP_USER_AGENT");
      $useragent = $request->getServer("HTTP_USER_AGENT");

      $resultset = $connection->query('SELECT c.id,c.status,count(c.id) as jumlah, c.cp_cpmcpa as cost_per, c.client_id, sal.cur_saldo as saldo, c.cp_targeturl as targeturl FROM '.$database.'.campaign c, '.$database.'.saldo sal WHERE c.client_id = sal.user_id AND c.id = '.$cid);

      while($result = $resultset->fetchArray())
      {
        if($result['jumlah'] <= 0)
        {
            print_r('Wrong ID ');
            die();
        }else {
          if($result['status'] != 'A')
          {
            print_r('Campaign End ');
            die();
          }
        }
        $statusAds = $result['status'];
        $sal_awal = $result['saldo'];
        $cost_per = $result['cost_per'];
        $clientid = $result['client_id'];
        $target = $result['targeturl'];
        $sal_akhir = $sal_awal - $cost_per;
        // print_r($result['saldo'].' '.$result['cost_per'].' '.$result['client_id']);
      }

      $this->view->disable();

      return $this->response->redirect($target);

  }

  public function hitAdsAction()
  {
    $request = new Request();
    $database = 'vokuro';
    $config = [
      'adapter' => 'Mysql',
      'host' => '127.0.0.1',
      'username' => 'root',
      'password' => 'adminadmin',
      'dbname' => $database
    ];

    $connection = new Mysql($config);

    $sal_awal = 0;
    $cost_per = 0;
    $clientid = '';
    $sal_akhir = 0;

    if(!empty($this->request->getQuery('cid')))
    {
      $cid = $this->request->getQuery('cid');
    }

    if(!empty($this->request->getQuery('nid')))
    {
        $nid = $this->request->getQuery('nid');
    }

    if(!empty($this->request->getQuery('trans_id'))) //transaction id
    {
        $traceid = $this->request->getQuery('trans_id');
    }else {
      $s_id = date("YmdHis").rand(0,99999);
      $traceid = md5($s_id);
    }

    if(!empty($this->request->getQuery('sub_id'))) //publisher id
    {
      $subid = $this->request->getQuery('sub_id');
    }else {
      $subid = 1;
    }

    $traceid_alias = md5($traceid);

    $httpreferer = $request->getServer("HTTP_REFERER");
    $requri = $request->getServer("REQUEST_URI");
    $remaddr = $request->getServer("REMOTE_ADDR");
    $useragent = $request->getServer("HTTP_USER_AGENT");
    $useragent = $request->getServer("HTTP_USER_AGENT");

    $resultset = $connection->query('SELECT c.id,c.status,count(c.id) as jumlah, c.cp_cpmcpa as cost_per, c.client_id, sal.cur_saldo as saldo, c.cp_targeturl as targeturl FROM '.$database.'.campaign c, '.$database.'.saldo sal WHERE c.client_id = sal.user_id AND c.id = '.$cid);

    while($result = $resultset->fetchArray())
    {
      if($result['jumlah'] <= 0)
      {
          print_r('Wrong ID ');
          die();
      }else {
        if($result['status'] != 'A')
        {
          print_r('Campaign End ');
          die();
        }
      }
      $statusAds = $result['status'];
      $sal_awal = $result['saldo'];
      $cost_per = $result['cost_per'];
      $clientid = $result['client_id'];
      $target = $result['targeturl'];
      $sal_akhir = $sal_awal - $cost_per;
      // print_r($result['saldo'].' '.$result['cost_per'].' '.$result['client_id']);
    }

    // $sqltrace
    $connection->execute("INSERT INTO ".$database.".c_traceid_log_".date("Ym")." (campaign_id,traceid,traceid_ads,sub_id,entry_date) VALUES (".$cid.",'".$traceid_alias."','".$traceid."','".$subid."',NOW())");

    // LOG
    $connection->execute("INSERT INTO ".$database.".c_click_log".date("Ym")." (campaign_id,referer,filename,ip_address,user_agent,traceid,session_id,entry_date) VALUES (".$cid.",'".$httpreferer."','".$requri."','".$remaddr."','".$useragent."','".$traceid_alias."','".$traceid_alias."',NOW())");

    // Daily Hit
    $connection->execute("INSERT INTO ".$database.".c_daily_hit_".date("Ym")." (campaign_id,hit_date,jumlah,entry_date) VALUES (".$cid.",NOW(),1,NOW()) ON DUPLICATE KEY UPDATE jumlah = jumlah+1");

    //query potong saldo awal
    $connection->execute("UPDATE ".$database.".saldo
                          SET  cur_saldo = ".$sal_akhir."
                          WHERE user_id = ".$clientid);

    // IP Daily Hit
    $connection->execute("INSERT INTO ".$database.".c_daily_ip_hit_".date("Ym")." (campaign_id,ip_address,hit_date,jumlah,entry_date) VALUES (".$cid.",'".$remaddr."',NOW(),1,NOW()) ON DUPLICATE KEY UPDATE jumlah = jumlah+1");

    // Referer Daily Hit
    $connection->execute("INSERT INTO ".$database.".c_daily_referer_hit_".date("Ym")." (campaign_id,referer,hit_date,jumlah,entry_date) VALUES (".$cid.",'".$httpreferer."',NOW(),1,NOW()) ON DUPLICATE KEY UPDATE jumlah = jumlah+1");

    // User Agent Daily Hit
    $connection->execute("INSERT INTO ".$database.".c_daily_ua_hit_".date("Ym")." (campaign_id,user_agent,hit_date,jumlah,entry_date) VALUES (".$cid.",'".$useragent."',NOW(),1,NOW()) ON DUPLICATE KEY UPDATE jumlah = jumlah+1");

    // Hourly Hit
    $connection->execute("INSERT INTO ".$database.".c_hourly_hit_".date("Ym")." (campaign_id,hit_date,jam,jumlah,entry_date) VALUES (".$cid.",NOW(),".date("G").",1,NOW()) ON DUPLICATE KEY UPDATE jumlah = jumlah+1");

    // IP Hourly Hit
    $connection->execute("INSERT INTO ".$database.".c_hourly_ip_hit_".date("Ym")." (campaign_id,ip_address,hit_date,jam,jumlah,entry_date) VALUES (".$cid.",'".$remaddr."',NOW(),".date("G").",1,NOW()) ON DUPLICATE KEY UPDATE jumlah = jumlah+1");

    // Referer Hourly Hit
    $connection->execute("INSERT INTO ".$database.".c_hourly_referer_hit_".date("Ym")." (campaign_id,referer,hit_date,jam,jumlah,entry_date) VALUES (".$cid.",'".$httpreferer."',NOW(),".date("G").",1,NOW()) ON DUPLICATE KEY UPDATE jumlah = jumlah+1");

    // User Agent Hourly Hit
    $connection->execute("INSERT INTO ".$database.".c_hourly_ua_hit_".date("Ym")." (campaign_id,user_agent,hit_date,jam,jumlah,entry_date) VALUES (".$cid.",'".$useragent."',NOW(),".date("G").",1,NOW()) ON DUPLICATE KEY UPDATE jumlah = jumlah+1");

    // $url_click = str_replace("{transaction_id}",$traceid_alias,$row['url_click']);
    // header("Location:".$url_click);exit();

    $this->view->disable();

    return $this->response->redirect($target);
    // http://http://122.248.32.27:8089/hit?cid={cid}&nid={nid}&sub_id={sub_id}&sub_id2={sub_id2}
  }

}

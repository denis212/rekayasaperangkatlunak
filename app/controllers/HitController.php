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

  public function hitAdsAction()
  {
    $request = new Request();
    $database = 'vokuro';
    // var_dump('masuk marih');
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

    if(!empty($this->dispatcher->getParam('cid')))
    {
      $cid = $this->dispatcher->getParam('cid');
    }
    if(!empty($this->dispatcher->getParam('nid')))
    {
      $nid = $this->dispatcher->getParam('nid');
    }
    if(!empty($this->dispatcher->getParam('trans_id'))) //transaction id
    {
      $traceid = $this->dispatcher->getParam('trans_id');
    }
    if(!empty($this->dispatcher->getParam('sub_id'))) //publisher id
    {
      $subid = $this->dispatcher->getParam('sub_id');
    }

    $httpreferer = $request->getServer("HTTP_REFERER");
    $requri = $request->getServer("REQUEST_URI");
    $remaddr = $request->getServer("REMOTE_ADDR");
    $useragent = $request->getServer("HTTP_USER_AGENT");
    $useragent = $request->getServer("HTTP_USER_AGENT");

    $resultset = $connection->query('SELECT c.id,c.status,count(c.id) as jumlah, c.cp_cpmcpa as cost_per, c.client_id, sal.cur_saldo as saldo FROM '.$database.'.campaign c, '.$database.'.saldo sal WHERE c.client_id = sal.user_id AND c.id = '.$cid);

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
      $sal_awal = $result['saldo'];
      $cost_per = $result['cost_per'];
      $clientid = $result['client_id'];
      $sal_akhir = $sal_awal - $cost_per;
      // print_r($result['saldo'].' '.$result['cost_per'].' '.$result['client_id']);
    }

    $s_id = date("YmdHis").rand(0,99999);
    $traceid = md5($s_id);

    $subid = 1;

    $traceid_alias = md5($traceid);

    // $sqltrace =
    $connection->execute("INSERT INTO ".$database.".c_traceid_log_".date("Ym")." (campaign_id,traceid,traceid_ads,sub_id,entry_date) VALUES (".$cid.",'".$traceid_alias."','".$traceid."','".$subid."',NOW())");
    // mysql_query($sqltrace);

    // LOG
    // $sqllog =
    $connection->execute("INSERT INTO ".$database.".c_click_log".date("Ym")." (campaign_id,referer,filename,ip_address,user_agent,traceid,session_id,entry_date) VALUES (".$cid.",'".$httpreferer."','".$requri."','".$remaddr."','".$useragent."','".$traceid_alias."','".$traceid_alias."',NOW())");
    // mysql_query($sqllog);

    // Daily Hit
    // $sqli =
    $connection->execute("INSERT INTO ".$database.".c_daily_hit_".date("Ym")." (campaign_id,hit_date,jumlah,entry_date) VALUES (".$cid.",NOW(),1,NOW()) ON DUPLICATE KEY UPDATE jumlah = jumlah+1");
    // mysql_query($sqli);

    //query potong saldo awal
    $connection->execute("UPDATE ".$database.".saldo
                          SET  cur_saldo = ".$sal_akhir."
                          WHERE user_id = ".$clientid);

    // IP Daily Hit
    // $sqli =
    $connection->execute("INSERT INTO ".$database.".c_daily_ip_hit_".date("Ym")." (campaign_id,ip_address,hit_date,jumlah,entry_date) VALUES (".$cid.",'".$remaddr."',NOW(),1,NOW()) ON DUPLICATE KEY UPDATE jumlah = jumlah+1");
    // mysql_query($sqli);

    // Referer Daily Hit
    // $sqli =
    $connection->execute("INSERT INTO ".$database.".c_daily_referer_hit_".date("Ym")." (campaign_id,referer,hit_date,jumlah,entry_date) VALUES (".$cid.",'".$httpreferer."',NOW(),1,NOW()) ON DUPLICATE KEY UPDATE jumlah = jumlah+1");
    // mysql_query($sqli);

    // User Agent Daily Hit
    // $sqli =
    $connection->execute("INSERT INTO ".$database.".c_daily_ua_hit_".date("Ym")." (campaign_id,user_agent,hit_date,jumlah,entry_date) VALUES (".$cid.",'".$useragent."',NOW(),1,NOW()) ON DUPLICATE KEY UPDATE jumlah = jumlah+1");
    // mysql_query($sqli);

    // Hourly Hit
    // $sqli =
    $connection->execute("INSERT INTO ".$database.".c_hourly_hit_".date("Ym")." (campaign_id,hit_date,jam,jumlah,entry_date) VALUES (".$cid.",NOW(),".date("G").",1,NOW()) ON DUPLICATE KEY UPDATE jumlah = jumlah+1");
    // mysql_query($sqli);

    // IP Hourly Hit
    // $sqli =
    $connection->execute("INSERT INTO ".$database.".c_hourly_ip_hit_".date("Ym")." (campaign_id,ip_address,hit_date,jam,jumlah,entry_date) VALUES (".$cid.",'".$remaddr."',NOW(),".date("G").",1,NOW()) ON DUPLICATE KEY UPDATE jumlah = jumlah+1");
    // mysql_query($sqli);

    // Referer Hourly Hit
    // $sqli =
    $connection->execute("INSERT INTO ".$database.".c_hourly_referer_hit_".date("Ym")." (campaign_id,referer,hit_date,jam,jumlah,entry_date) VALUES (".$cid.",'".$httpreferer."',NOW(),".date("G").",1,NOW()) ON DUPLICATE KEY UPDATE jumlah = jumlah+1");
    // mysql_query($sqli);

    // User Agent Hourly Hit
    // $sqli =
    $connection->execute("INSERT INTO ".$database.".c_hourly_ua_hit_".date("Ym")." (campaign_id,user_agent,hit_date,jam,jumlah,entry_date) VALUES (".$cid.",'".$useragent."',NOW(),".date("G").",1,NOW()) ON DUPLICATE KEY UPDATE jumlah = jumlah+1");
    // mysql_query($sqli);

    // $url_click = str_replace("{transaction_id}",$traceid_alias,$row['url_click']);
    // header("Location:".$url_click);exit();

    $this->view->disable();
  }

}

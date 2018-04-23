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


  public function penjualanAction()
  {
    $database = 'cmsjpu';
    $config = [
    	'adapter' => 'Mysql',
    	'host' => '127.0.0.1',
    	// 'port' => '3306',
    	'username' => 'root',
    	'password' => 'adminadmin',
    	'dbname' => $database
    ];

    $connection = new Mysql($config);

    print("Create table -- ".date("Y-m-d H:i:s")." -- Start\n");

    // $thnn = date("Y") + 1; //create table ditahun sekarang tambah satu "untuk si cronjob setiap tgl tertentu eksekusi php ini"
    $thnn = date("Y"); //create table ditahun sekarang

    for( $i=1;$i<=12;$i++ )
    {

      if( strlen($i) == 1 ) $bln = "0".$i;
      else $bln = $i;


      $sql2 = "CREATE TABLE IF NOT EXISTS `penjualan_akun_".$thnn.$bln."` (
        `id` bigint(10) NOT NULL AUTO_INCREMENT,
        `id_reseller` varchar(5) NULL,
        `msisdn` varchar(20) NULL,
        `username` varchar(15) NOT NULL,
        `pass` varchar(6) NOT NULL,
        `terjual` varchar(1) NOT NULL,
        `status` varchar(1) NOT NULL,
        `created` datetime NOT NULL,
        `updated` datetime NOT NULL,
      	 PRIMARY KEY (`id`)
      );";

      // mysql_query($sql2);
      $connection->execute($sql2);
      // print_r($sql2);
    }

    print("Create table -- ".date("Y-m-d H:i:s")." -- End\n");

  }

}

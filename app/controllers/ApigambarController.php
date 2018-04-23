<?php
namespace Vokuro\Controllers;

use Phalcon\Tag;
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
use Phalcon\Db\Adapter\Pdo\Mysql;
use Phalcon\Http\Request;
use Phalcon\Db as Assoc;

/**
 * Vokuro\Controllers\UsersController
 * CRUD to manage users
 */
class ApigambarController extends ControllerBase
{

  public function indexAction()
  {

  }

  public function gambarAction()
  {

    $request = new Request();
    $database = 'cms_lock';
    $config = [
      'adapter' => 'Mysql',
      'host' => '127.0.0.1',
      'username' => 'root',
      'password' => 'adminadmin',
      'dbname' => $database
    ];

    $connection = new Mysql($config);


    if(!empty($this->request->getQuery('start_date')))
    {
      $start_date = $this->request->getQuery('start_date');
    }

    if(!empty($this->request->getQuery('end_date')))
    {
        $end_date = $this->request->getQuery('end_date');
    }

    //region banding data antara table input dan tampung_input, kalo ada di tampung_input maka gak di select,
    //kalo null maka delete all yang ada di tampung input

    $qry_cek = "SELECT *, count(id) as jumlah FROM `input` where id not in (select tamp_id from tampung_input)
                  and CURDATE() <= end_date order by created_at asc";
    $resultsetcek = $connection->query($qry_cek);

    while($resultcek = $resultsetcek->fetchArray())
    {
      $jml_cek = $resultcek['jumlah'];
    }

    if($jml_cek == 0)
    {
      $connection->execute("delete from tampung_input");
    }
    //end region banding data


    $query_sql = "SELECT *,cost_kanan * 0.7 as komisi_kanan, cost_kiri * 0.7 as komisi_kiri FROM `input` where id not in (select tamp_id from tampung_input)
                  and CURDATE() <= end_date order by created_at asc limit 10";

    $resultset = $connection->query($query_sql);

    $resultset->setFetchMode(
        \Phalcon\Db::FETCH_ASSOC
    );

    // $res_array = $resultset->fetchAll();

    while($result = $resultset->fetchArray())
    {
      $tampid = $result['id'];
      $klienid = $result['client_id'];
      $namaklien = $result['nama_klien'];

      $qry = "INSERT INTO tampung_input (tamp_id,client_id,nama_klien) VALUES ('".$tampid."','".$klienid."','".$namaklien."')";
      // echo $qry .'<br>';
      $connection->execute($qry);

      // print_r($result);
      $res[] = $result;

    }

    foreach ($res as $key => $value) {
          $finalres[] = $value;
    }

    echo json_encode($finalres);

    $this->view->disable();
  }
}

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
 * Display the terms and conditions page.
 */
class ConfirmController extends ControllerBase
{

    /**
     * Default action. Set the public layout (layouts/public.volt)
     */
     public function initialize()
     {

     }

     public function indexAction()
     {
         $this->persistent->parameters = null;
         $this->view->form = new ConfirmForm();
     }


    public function createAction()
    {
        $form = new ConfirmForm();
        // $selfid = $this->auth->getId();

        if($this->request->isPost())
        {
          if($this->security->checkToken())
          {
              if($form->isValid($this->request->getPost()) != false)
              {
                $u_id = $this->request->getPost('user_id');
                $uname = $this->request->getPost('username');
                $bankname = $this->request->getPost('bankname');
                $cabang = $this->request->getPost('branch');
                $accnumb = $this->request->getPost('accountnumber');
                $nominal = $this->request->getPost('nominal');
                $currency = $this->request->getPost('currency');
                $accname = $this->request->getPost('accountname');
                $email = $this->request->getPost('email');

                $confirm = new Confirmation([
                  'user_id' => $this->request->getPost('user_id'),
                  'username' => $this->request->getPost('username'),
                  'bankname' => $this->request->getPost('bankname'),
                  'branch' => $this->request->getPost('branch'),
                  'accountnumber' => $this->request->getPost('accountnumber'),
                  'accountname' => $this->request->getPost('accountname'),
                  'phone' => $this->request->getPost('phone'),
                  'email' => $this->request->getPost('email'),
                  'nominal' => $this->request->getPost('nominal'),
                  'currency' => $this->request->getPost('currency'),
                ]);

                $confirm->status = 'N';

                $users = Users::find(" 1=1 and profilesId = 7 ");

                if ($confirm->save())
                {
                  foreach ($users as $tampuser) {
                    $this->getDI()
                        ->getMail()
                        ->send([$tampuser->email => $tampuser->username],"Konfirmasi Pembayaran Baru dari Reseller", 'confirmpayment',
                            [ 'emailBody'=> "<br>Tolong verifikasi pembayaran dari </br>
                                User ID : <b>$u_id</b></br>
                                Reseller Name: <b>$uname</b><br>
                                Bank Name : $bankname <br>
                                Email : $email <br>
                                Branch : $cabang <br>
                                Account Number : $accnumb <br>
                                Account Name : $accname <br>
                                Nominal : $nominal <br>
                                Currency : $currency <br>
                            "]);
                  }



                  $form->clear();
                  $this->flash->success("Thanks for confirmation, we will check payment immediately. ");
                }
                $this->flash->error($confirm->getMessages());
              }
            }
            else {
              $this->flash->error('CSRF Validation is Failed');
            }


        }
       $this->view->form = $form;
    }

    public function SearchAction()
    {
      $numberPage = 1;

      $form = new ConfirmForm();
      $numberPage = 1;

      $parameters = "1=1 order by updated desc ";

      $confirm = Confirmation::find($parameters);
      if (count($confirm) == 0) {
          $this->flash->notice("The search did not find any Confirmation");

      }

      $paginator = new Paginator([
          'data' => $confirm,
          'limit'=> 10,
          'page' => $numberPage
      ]);

      $this->view->page = $paginator->getPaginate();
      $this->view->form = $form;

    }

    public function ApproveAction($id,$page)
    {
      // var_dump($id);
      $confirm = Confirmation::findFirst("id = ".$id);
      $confirmId = $confirm->user_id;
      $harga = Hargaprod::find();
      $sisasaldo = Saldo::findFirst("user_id = ". $confirmId);
      // $jmlvocer = 0;

      if(count($sisasaldo) > 0)
      {
        $saldoId = $sisasaldo->user_id;
        $saldosisa = $sisasaldo->cur_saldo;
      }else {
        $saldoId = 0;
        $saldosisa = 0;
      }

      foreach ($harga as $price) {
        $hrg = $price->harga;
      }
      $saldo = $confirm->nominal + $saldosisa;

      $jmlvocer = floor($saldo / $hrg); //cek total vocer yang di dapat, dari hasil saldo yang di depositkan dibagi harga per pcs vocer

      $sisa = $saldo - ($jmlvocer * $hrg); //menghitung sisa saldo.

      if(($saldoId != $confirmId) && ($confirm->status == 'N'))
      {
        $confirm->status = 'A';
        $saldo = new Saldo();

        $saldo->user_id = $confirm->user_id;
        $saldo->cur_saldo = $sisa;
        $saldo->quota = $jmlvocer;

        $saldo->save();

        $confirm->save();

        $this->flashSess->success('Saldo top up success for client '. $confirm->username);
        return $this->response->redirect('confirm/loopakun/'.$jmlvocer.'/'.$confirmId);
        // var_dump("'confirm/loopakun/'.$jmlakun.'/'.$confirmId'");

      }elseif (($saldoId == $confirmId) && ($confirm->status == 'N')) {
        // $saldo = new Saldo();

        $confirm->status = 'A';
        $saldonow = $sisasaldo->cur_saldo;
        $quotanow = $sisasaldo->quota;
        $sisasaldo->user_id = $confirm->user_id;
        $sisasaldo->cur_saldo = $sisa;
        $sisasaldo->quota = $quotanow + $jmlvocer;

        $sisasaldo->save();

        $confirm->save();
        $this->flashSess->success('Saldo top up success for client '. $confirm->username);
        // var_dump("'confirm/loopakun/'.$jmlvocer.'/'.$confirmId'");
        return $this->response->redirect('confirm/loopakun/'.$jmlvocer.'/'.$confirmId);

      }else {
        $this->flash->error('Payment was confirmed');
        $this->dispatcher->forward([
            'controller' => "confirm",
            'action' => "search"
        ]);
      }


    }

    public function reqdepositAction()
    {
      $form = new RequestDepositForm();
      // $selfid = $this->auth->getId();
      ini_set('display_errors', 1);
      if($this->request->isPost())
      {
        if($this->security->checkToken())
        {
              $u_id = $this->request->getPost('user_id'); //
              $uname = $this->request->getPost('username'); //
              $accbank = $this->request->getPost('accbank');

              //region rekening ambil data bank
              $param = " nama = '$accbank'";

              $query = new Query(
                  "SELECT * FROM
                  Vokuro\Models\Daftarbank where $param",
                  $this->getDI()
              );

              $daftarbank = $query->execute();

              foreach ($daftarbank as $bank) {
                $rekening = $bank->norek;
                $namaakun = $bank->namaakun;
                $cabang = $bank->cabang;
              }
              // end region data bank

              //region kode unik transfer
              $tampnominal = $this->request->getPost('nominal'); //
              $max = strlen($tampnominal);
              $min = $max-3;
              if(strlen($u_id) == 1)
              {
                  $id = "00".$u_id;
              }elseif (strlen($u_id) == 2) {
                $id = "0".$u_id;
              }else {
                $id = $u_id;
              }
              $nominal = substr_replace($tampnominal,$id,$min,$max);

              $nomformat = number_format($nominal,2,",",".");
              //end region kode unik transfer
              $currency = $this->request->getPost('currency'); //
              $email = $this->request->getPost('email');

              if(($u_id != null) && ($uname != null) && ($email != null))
              {
                $this->getDI()
                    ->getMail()
                    ->send([$email => $uname],"Halo, Reseller! ", 'confirmpayment',
                        [ 'emailBody'=> "<br>Segera Selesaikan proses Topup Saldo Anda : <br><br>
                            User ID : <b>$u_id</b><br>
                            Username: <b>$uname</b><br>>br>
                            Silahkan Transfer ke <br>
                            Rekening $accbank: $rekening<br>
                            Atas Nama $namaakun <br>
                            Cabang $cabang  <br>
                            Sebesar : Rp. $nomformat <br>

                            Terimakasih :)
                        "]);

                  $form->clear();

                  $this->response->redirect("confirm/halamanreqdep?nominal=".$nominal."&namaakun=".$namaakun."&uid=".$u_id."&bankname=".$accbank."&rekening=".$rekening."&cabang=".$cabang);

              }else {
                  $this->flash->error("Please Check All data");
              }

          }
          else {
            $this->flash->error('CSRF Validation is Failed');
          }

      }
     $this->view->form = $form;

    }

    public function halamanreqdepAction()
    {
      $form = new HalamanreqdepForm();

      $this->flash->success("Terimakasih, silahkan cek email anda untuk detail Proses Topup Anda ! ");

      $this->view->form = $form;
    }

    public function loopakunAction($jmlakun,$confirmId)
    {
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

      for($i = 0; $i < $jmlakun; $i++)
      {
        // $a = date('ymdHis');
        // $username = rand(000000000000,$a);
        //
        // $pass = substr($username,0,6);
        // $passgen = rand(100000,$pass);
        //
        // $query = "INSERT INTO ".$database.".penjualan_akun_".date("Ym")." (id_reseller,msisdn,username,pass,terjual,status,created,updated)
        // VALUES (".$confirmId.",'',".$username.",".$passgen.",'N','N',now(),now())";

        $query = "UPDATE ".$database.".penjualan_akun_".date("Ym")." SET id_reseller = ".$confirmId. ", updated = now() WHERE id_reseller = '' limit 1";
        $connection->execute($query);
      }

      return $this->response->redirect('confirm/search?page=1');

    }

    public function createloopakunAction()
    {
      $form = new CreateloopakunForm();

      if ($this->request->isPost())
      {
        if($this->security->checkToken())
        {
          $jmlakun = $this->request->getPost('jmlakun');

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

          for($i = 0; $i < $jmlakun; $i++)
          {
            $a = date('ymdHis');
            $username = rand(000000000000,$a);

            $pass = substr($username,0,6);
            $passgen = rand(100000,$pass);

            $query .= "INSERT INTO ".$database.".penjualan_akun_".date("Ym")." (id_reseller,msisdn,username,pass,terjual,status,created,updated)
            VALUES ('','',".$username.",".$passgen.",'Y','Y',now(),now());";

          }
          $done = $connection->execute($query);
          if($done)
          {
            $form->clear();
            $this->flash->success("Berhasil Generate Akun");
            $this->view->done = "ok";
          }

        }

      }


      $this->view->form = $form;
    }

    public function listorderAction()
    { //modul list akun wifi id yang akan di order
      $numberPage = 1;
      $form = new ConfirmForm();
      ini_set('display_errors', 1);

      if ($this->request->isPost()) {
          $query = Criteria::fromInput($this->di, 'Vokuro\Models\Penjualan', $this->request->getPost());
          $this->persistent->searchParams = $query->getParams();
      } else {
          $numberPage = $this->request->getQuery("page", "int");
      }

      $userid = $this->auth->getId();
      // di model Penjualan ini tablenya berdasarkan penjualan_akun_date("Ym") jadi berubah2 tergantung bulang sekarang
      $resultset = Penjualan::query()
      ->columns([
        'Vokuro\Models\Penjualan.id',
        'Vokuro\Models\Penjualan.id_reseller',
        'Vokuro\Models\Penjualan.msisdn',
        'Vokuro\Models\Penjualan.username',
        'Vokuro\Models\Penjualan.pass',
        'Vokuro\Models\Penjualan.terjual',
        'Vokuro\Models\Penjualan.status',
        'Vokuro\Models\Penjualan.created',
        'Vokuro\Models\Penjualan.updated',
      ])
      ->where("Vokuro\Models\Penjualan.terjual='Y' and Vokuro\Models\Penjualan.status='Y' and Vokuro\Models\Penjualan.msisdn = '' and Vokuro\Models\Penjualan.id_reseller = $userid")
      ->execute();

      if (count($resultset) == 0) {
          $this->flash->notice("The search did not find any Penjualan");

      }

      $paginator = new Paginator([
          'data' => $resultset,
          'limit'=> 10,
          'page' => $numberPage
      ]);

      $this->view->page = $paginator->getPaginate();
      $this->view->form = $form;
      $this->view->jumlah = count($resultset);
    }


    public function beliAction()
    {
      error_reporting(E_ALL);
      ini_set('display_errors', 1);
      $form = new SellForm();
      // var_dump();
      $id = $this->request->getQuery('id');
      // $stock =  $this->request->getQuery('stock');
      $numberPage = 1;
      //di model Penjualan ini tablenya berdasarkan penjualan_akun_date("Ym") jadi berubah2 tergantung bulang sekarang
      $query = new Query(
          "SELECT id,id_reseller,msisdn,username,pass,terjual,status,created,updated
          from Vokuro\Models\Penjualan where id = $id",
          $this->getDI()
      );

      $resultset = $query->execute();

      if (count($resultset) == 0) {
          $this->flash->notice("The search did not find any Penjualan");

      }

      foreach ($resultset as $result) {
          $res_id = $result->id;
          $res_idseller = $result->id_reseller;
          $res_msisdn = $result->msisdn;
          $res_uname = $result->username;
          $res_pass = $result->pass;
      }

      // $form->id = $res_id;
      $this->view->id = $res_id;
      $this->view->id_reseller = $res_idseller;;
      $this->view->msisdn = $res_msisdn;
      $this->view->username = $res_uname;
      $this->view->pass = $res_pass;

      if ($this->request->isPost())
      {
          $id = $res_id;
          $msisdn = $this->request->getPost('msisdn');
          $stock = $this->request->getQuery('stock');
          $newstock = $stock-1;
          // $selfid = $this->auth->getId();
          $id_reseller = $this->auth->getId();

          if($msisdn != null)
          {
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

            $connection->execute("UPDATE ".$database.".penjualan_akun_".date("Ym")."
                                      SET msisdn = '".$msisdn."',id_reseller = '".$id_reseller."', terjual = 'Y', updated = '".date('Y-m-d H:i:s')."' where id = ".$id);

            $connection->execute("UPDATE ".$database.".saldo
                                      SET quota = '".$newstock."' where user_id = ".$id_reseller);


            $url = "http://api.cakraflash.com:8000/api/sendsms?user=cfjagat&password=RPb6WwCb&senderid=TemanJalan&message=Akun+Wifi.id+Anda+Username:+$res_uname+dan+Pass:+$res_pass&msisdn=$msisdn";

            $ok = file_get_contents($url);

            if($ok){
            $this->flash->success("ID & Password Ordered successfully");
            $this->dispatcher->forward([
                'controller' => "confirm",
                'action' => "listorder"
            ]);
          }

          }else {
            $this->flash->error("No HP is Required");
          }
      }
      // $this->view->user = $orderakun;
      $this->view->form = $form;

    }

    public function orderlistdwnAction()
    {
      // $this->flash->success("Berhasil Generate Akun");
          $this->view->posisi = "download";
            $query = new Query(
                "SELECT id,id_reseller,msisdn,username,pass,terjual,status,created,updated
                from Vokuro\Models\Penjualan where terjual='Y' and status='Y' and msisdn = '' and id_reseller = ''",
                $this->getDI()
            );

            $resultset = $query->execute();

            if (count($resultset) == 0) {
                $this->flash->notice("The search did not find any Penjualan");

            }

            foreach ($resultset as $result) {
                $print .= "
                  <tr height=20 style='height:15.0pt'>
                    <td height=20 class=xl65 style='height:15.0pt;border-top:none'>".$result->username."</td>
                    <td class=xl65 style='border-top:none;border-left:none'>".$result->pass."</td>
                  </tr>
                ";
            }
            $this->view->print = $print;
  }

  public function uploadexcAction()
  {
    // echo dirname(__FILE__) . '/Classes/PHPExcel/IOFactory.php';
    if ($this->request->isPost())
    {
        error_reporting(E_ALL);
        ini_set('display_errors', 1);
        libxml_use_internal_errors(true);
      	require_once dirname(__FILE__) . '/Classes/PHPExcel/IOFactory.php';

        $target_dir = 'uploads/';
      	$target_file = $target_dir . ($_FILES["excel"]["name"]);

      	move_uploaded_file($_FILES["excel"]["tmp_name"], $target_file);

      	$objReader = \PHPExcel_IOFactory::createReaderForFile($target_file);
      	$objPHPExcel = $objReader->load($target_file);

        $worksheet = $objPHPExcel->getActiveSheet();
        $lastrow = $worksheet->getHighestRow();
        $lastcol = $worksheet->getHighestColumn();

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
        $qry = '';
        for($row = 1; $row <= $lastrow; $row++)
        {
          $uname = $worksheet->getCell('A'.$row)->getValue();
          $pass = $worksheet->getCell('B'.$row)->getValue();
          $qry .= "UPDATE ".$database.".penjualan_akun_".date("Ym")."
                                    SET status = 'Y' where username = '".$uname."' and pass = '".$pass."';";
          // echo $qry;

        }
        $sukses = $connection->execute($qry);
        if($sukses)
        {
          $this->flash->success('Berhasil Aktivasi User');
        }else {
            $this->flash->error('Gagal Aktivasi User');
        }

        unlink($target_file);
      }

      // $this->view->print = $print;
      // $this->view->disable();
  }

  public function rptreferalAction()
  {
      $form = new QueryForm();

      if(!empty($this->request->getPost("startdate")) && !empty($this->request->getPost("enddate")))
      {
        $startdate = $this->request->getPost("startdate");
        $enddate = $this->request->getPost("enddate");
      }
      $thn = SUBSTR($startdate,0,4);
      $bln = SUBSTR($startdate,5,2);

      if(!empty($this->request->getPost("referal")))
      {
        $referal_id = $this->request->getPost("referal");
      }

      if(!empty($this->request->getPost("reseller")))
      {
        $reseller_id = $this->request->getPost("reseller");
      }

      // ini_set('display_errors', 1);
      $numberPage = 1;
      $userid = $this->auth->getId();
      $leveluser = $this->auth->getProfilesId();
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

      $param = '';
      $param1 = '';
      $param2 = '';

      if(($leveluser == 1) || ($leveluser == 9))
      {
          $param = " id_reseller != '' and ANY_VALUE(pnj.msisdn) != '' AND ";
      }else {
          // $param = "ANY_VALUE(u.coderef) = (SELECT xx.coderef from ".$database.".users xx WHERE id = ".$userid.") AND
          // id_reseller !='' AND ";
          $param  = " ANY_VALUE(levl1.id) = ".$userid." or ANY_VALUE(lev2.id) = ".$userid." or ANY_VALUE(lev3.id) = ".$userid." or ANY_VALUE(lev4.id) = ".$userid." AND id_reseller != '' and ANY_VALUE(pnj.msisdn) != '' AND ";
      }

      if(!empty($this->request->getPost("referal")))
      {
        // $param1 = " ANY_VALUE(x.id) = ".$referal_id ." AND ";
        $param = " ";
        $param1 = " ANY_VALUE(levl1.id) = ".$referal_id." or ANY_VALUE(lev2.id) = ".$referal_id." or ANY_VALUE(lev3.id) = ".$referal_id." or ANY_VALUE(lev4.id) = ".$referal_id." AND id_reseller != '' and ANY_VALUE(pnj.msisdn) != '' AND ";
      }

      if(!empty($this->request->getPost("reseller")))
      {
        $param2 = " ANY_VALUE(pnj.id_reseller) = ".$reseller_id ." AND ";
      }

      if(!empty($this->request->getPost("startdate")) && !empty($this->request->getPost("enddate")))
      {
        $qry = "SELECT
                  ANY_VALUE(pnj.id) AS id,
                  ANY_VALUE(SUBSTR(pnj.updated,
                  1,
                  10)) AS tanggal_trans,
                  ANY_VALUE(pnj.id_reseller) AS id_reseller,
                  ANY_VALUE(res.name) AS nama_reseller,
                  ANY_VALUE(COUNT(pnj.id)) AS jumlah_akun,
                  ANY_VALUE(COUNT(pnj.id) * harga) AS pendapatan,
                  ANY_VALUE(res.coderef) AS coderef,
                  ANY_VALUE(levl1.id) id1,ANY_VALUE(levl1.name) as referal1,ANY_VALUE(levl1.commision) as komisi1, (ANY_VALUE(COUNT(pnj.id)) * ANY_VALUE(levl1.commision)) as tot_komisi1,
                  ANY_VALUE(lev2.id) id2,ANY_VALUE(lev2.name) as referal2, ANY_VALUE(lev2.commision) as komisi2, (ANY_VALUE(COUNT(pnj.id)) * ANY_VALUE(lev2.commision)) as tot_komisi2,
                  ANY_VALUE(lev3.id) id3,ANY_VALUE(lev3.name) as referal3, ANY_VALUE(lev3.commision) as komisi3, (ANY_VALUE(COUNT(pnj.id)) * ANY_VALUE(lev3.commision)) as tot_komisi3,
                  ANY_VALUE(lev4.id) id4,ANY_VALUE(lev4.name) as referal4, ANY_VALUE(lev4.commision) as komisi4, (ANY_VALUE(COUNT(pnj.id)) * ANY_VALUE(lev4.commision)) as tot_komisi4
                  FROM
                  ".$database.".penjualan_akun_201712 pnj
                JOIN
                  ".$database.".tbl_hargaprod hrg
                JOIN
                  ".$database.".users res ON ANY_VALUE(pnj.id_reseller) = ANY_VALUE(res.id)
                left join ".$database.".users levl1 on ANY_VALUE(res.lev1) = ANY_VALUE(levl1.id)
                LEFT join ".$database.".users lev2 on ANY_VALUE(res.lev1) = ANY_VALUE(lev2.id)
                LEFT join ".$database.".users lev3 on ANY_VALUE(lev2.lev1) = ANY_VALUE(lev3.id)
                LEFT join ".$database.".users lev4 on ANY_VALUE(lev3.lev1) = ANY_VALUE(lev4.id)
                WHERE
                  ".$param2."  ".$param1." ".$param." ANY_VALUE(SUBSTR(pnj.updated,1,10)) BETWEEN '".$startdate."' AND '".$enddate."'
                GROUP BY
                  ANY_VALUE(SUBSTR(updated,
                  1,
                  10)),
                  id_reseller";
      }else {
        $tgl = date("Y-m-d");
        $qry = "SELECT
                  ANY_VALUE(pnj.id) AS id,
                  ANY_VALUE(SUBSTR(pnj.updated,
                  1,
                  10)) AS tanggal_trans,
                  ANY_VALUE(pnj.id_reseller) AS id_reseller,
                  ANY_VALUE(res.name) AS nama_reseller,
                  ANY_VALUE(COUNT(pnj.id)) AS jumlah_akun,
                  ANY_VALUE(COUNT(pnj.id) * harga) AS pendapatan,
                  ANY_VALUE(res.coderef) AS coderef,
                  ANY_VALUE(levl1.id) id1,ANY_VALUE(levl1.name) as referal1,ANY_VALUE(levl1.commision) as komisi1, (ANY_VALUE(COUNT(pnj.id)) * ANY_VALUE(levl1.commision)) as tot_komisi1,
                  ANY_VALUE(lev2.id) id2,ANY_VALUE(lev2.name) as referal2, ANY_VALUE(lev2.commision) as komisi2, (ANY_VALUE(COUNT(pnj.id)) * ANY_VALUE(lev2.commision)) as tot_komisi2,
                  ANY_VALUE(lev3.id) id3,ANY_VALUE(lev3.name) as referal3, ANY_VALUE(lev3.commision) as komisi3, (ANY_VALUE(COUNT(pnj.id)) * ANY_VALUE(lev3.commision)) as tot_komisi3,
                  ANY_VALUE(lev4.id) id4,ANY_VALUE(lev4.name) as referal4, ANY_VALUE(lev4.commision) as komisi4, (ANY_VALUE(COUNT(pnj.id)) * ANY_VALUE(lev4.commision)) as tot_komisi4
                  FROM
                  ".$database.".penjualan_akun_201712 pnj
                JOIN
                  ".$database.".tbl_hargaprod hrg
                JOIN
                ".$database.".users res ON ANY_VALUE(pnj.id_reseller) = ANY_VALUE(res.id)
                left join ".$database.".users levl1 on ANY_VALUE(res.lev1) = ANY_VALUE(levl1.id)
                LEFT join ".$database.".users lev2 on ANY_VALUE(res.lev1) = ANY_VALUE(lev2.id)
                LEFT join ".$database.".users lev3 on ANY_VALUE(lev2.lev1) = ANY_VALUE(lev3.id)
                LEFT join ".$database.".users lev4 on ANY_VALUE(lev3.lev1) = ANY_VALUE(lev4.id)
                WHERE
                  ".$param2."  ".$param1." ".$param." ANY_VALUE(SUBSTR(pnj.updated,1,10)) BETWEEN '".$tgl."' AND '".$tgl."'
                GROUP BY
                  ANY_VALUE(SUBSTR(updated,
                  1,
                  10)),
                  id_reseller";
      }
      $sukses = $connection->query($qry);

      $sukses->setFetchMode(
          \Phalcon\Db::FETCH_ASSOC
      );
      $tampil = '';
      $a = '';
      $b = '';
      $tot_penjualan = 0;
      $tot_pendapatan = 0;
      $tot_komisi = 0;
      $tot_komisikom = 0;
      while ($row = $sukses->fetchArray())
      {
        // '.$row['nama_referal'].'

        if($userid == $row['id1'])
        {
          $a = $row['komisi1'];
          $b = $row['tot_komisi1'];
        }elseif($userid == $row['id2'])
        {
          $a = $row['komisi2'];
          $b = $row['tot_komisi2'];
        }elseif($userid == $row['id3'])
        {
          $a = $row['komisi3'];
          $b = $row['tot_komisi3'];
        }elseif($userid == $row['id4'])
        {
          $a = $row['komisi4'];
          $b = $row['tot_komisi4'];
        }
        $tampil .= '
          <tbody>
            <tr>
              <td>'.$row['tanggal_trans'].'</td>
              <td></td>
              <td>'.$row['nama_reseller'].'</td>
              <td>'.number_format($row['jumlah_akun']).'</td>
              <td>'.number_format($row['pendapatan']).'</td>
              <td>'.number_format($a).'</td>
              <td>'.number_format($b).'</td>
            <tr>
          </tbody>
        ';
        $tot_penjualan += $row['jumlah_akun'];
        $tot_pendapatan +=$row['pendapatan'];
        $tot_komisi += $a;
        $tot_komisikom += $b;

      }

      $this->view->tampil= $tampil;
      $this->view->tot_penjualan= number_format($tot_penjualan);
      $this->view->tot_pendapatan= number_format($tot_pendapatan);
      $this->view->tot_komisi= number_format($tot_komisi);
      $this->view->tot_komisikom= number_format($tot_komisikom);
      $this->view->form = $form;


  }

  public function rptresellerAction()
  {
      $form = new QueryForm();

      if(!empty($this->request->getPost("startdate")) && !empty($this->request->getPost("enddate")))
      {
        $startdate = $this->request->getPost("startdate");
        $enddate = $this->request->getPost("enddate");
      }
      $thn = SUBSTR($startdate,0,4);
      $bln = SUBSTR($startdate,5,2);

      if(!empty($this->request->getPost("nohp")))
      {
        $nohp = $this->request->getPost("nohp");
      }

      ini_set('display_errors', 1);
      $numberPage = 1;
      $userid = $this->auth->getId();
      $leveluser = $this->auth->getProfilesId();
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

      $param = '';
      $param1 = '';
      $param2 = '';

      if(($leveluser == 1) || ($leveluser == 9))
      {
          $param = " ANY_VALUE(p.id_reseller) != '' AND ";
      }else {
          $param = "ANY_VALUE(p.id_reseller) = ".$userid." AND ";
      }

      if(!empty($this->request->getPost("nohp")))
      {
        $param1 = " ANY_VALUE(p.msisdn) like '".$nohp."%' AND ";
      }

      if(!empty($this->request->getPost("startdate")) && !empty($this->request->getPost("enddate")))
      {
        $qry = "SELECT
                  ANY_VALUE(SUBSTR(p.updated,1,10)) AS tanggal_trans,
                  ANY_VALUE(p.id_reseller) AS id_reseller,
                  ANY_VALUE(u.name) AS nama_reseller,
                  ANY_VALUE(p.msisdn) as msisdn,
                  ANY_VALUE(hrg.harga) as harga
                FROM
                  ".$database.".penjualan_akun_".$thn.$bln." p
                JOIN
                  ".$database.".tbl_hargaprod hrg
                JOIN
                  ".$database.".users u on  p.id_reseller = u.id
                JOIN
                  ".$database.".users x on ANY_VALUE(u.id) = x.id
                WHERE
                  ".$param1." ".$param." ANY_VALUE(SUBSTR(p.updated,1,10)) BETWEEN '".$startdate."' and '".$enddate."' ";

      }else {
        $tgl = date("Y-m-d");
        $qry = "SELECT
                  ANY_VALUE(SUBSTR(p.updated,1,10)) AS tanggal_trans,
                  ANY_VALUE(p.id_reseller) AS id_reseller,
                  ANY_VALUE(u.name) AS nama_reseller,
                  ANY_VALUE(p.msisdn) as msisdn,
                  ANY_VALUE(hrg.harga) as harga
                FROM
                  ".$database.".penjualan_akun_".date('Ym')." p
                JOIN
                  ".$database.".tbl_hargaprod hrg
                JOIN
                  ".$database.".users u on  p.id_reseller = u.id
                JOIN
                  ".$database.".users x on ANY_VALUE(u.id) = x.id
                WHERE
                 ".$param1." ".$param." ANY_VALUE(SUBSTR(p.updated,1,10)) BETWEEN '".$tgl."' and '".$tgl."' ";
      }
      $sukses = $connection->query($qry);

      $sukses->setFetchMode(
          \Phalcon\Db::FETCH_ASSOC
      );
      $tampil = '';

      $tot_harga = 0;

      while ($row = $sukses->fetchArray())
      {
        $tampil .= '
          <tbody>
            <tr>
              <td>'.$row['tanggal_trans'].'</td>
              <td>'.$row['nama_reseller'].'</td>
              <td>'.$row['msisdn'].'</td>
              <td>'.number_format($row['harga']).'</td>
            <tr>
          </tbody>
        ';
        $tot_harga += $row['harga'];

      }
      // print_r($qry);
      $this->view->tampil= $tampil;
      $this->view->tot_harga= number_format($tot_harga);
      $this->view->form = $form;

  }

  public function cbhitAction($url)
  {
    $hasil = $this->response->redirect($url);

    if($hasil)
    {
      var_dump($url);
      $this->response->redirect("confirm/listorder");
    }

  }

}

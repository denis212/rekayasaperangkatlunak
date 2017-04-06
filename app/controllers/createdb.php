<?php
use Phalcon\Db\Adapter\Pdo\Mysql;
//kenapa taro di controller, biar bisa di jalanain pake putty dan menggunakan libary Mysql nya si phalcon

$database = 'vokuro';
$config = [
	'adapter' => 'Mysql',
	'host' => '127.0.0.1',
	// 'port' => '3306',
	'username' => 'root',
	'password' => '',
	'dbname' => $database
];
// $config = [
// 	'adapter' => 'Mysql',
// 	'host' => 'localhost',
// 	'port' => '3306',
// 	'username' => 'root',
// 	'password' => 'Gam4n4d5<>?',
// 	'dbname' => $database
// ];

$connection = new Mysql($config);

print("Create table -- ".date("Y-m-d H:i:s")." -- Start\n");

// $thnn = date("Y") + 1; //create table ditahun sekarang tambah satu "untuk si cronjob setiap tgl tertentu eksekusi php ini"
$thnn = date("Y"); //create table ditahun sekarang

for( $i=1;$i<=12;$i++ )
{

	if( strlen($i) == 1 ) $bln = "0".$i;
	else $bln = $i;

$sql1 = "CREATE TABLE IF NOT EXISTS `c_click_callback_".$thnn.$bln."` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `url_callback` text NOT NULL,
  `response_callback` varchar(100) NOT NULL,
  `entry_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;";

// mysql_query($sql1);
	$connection->execute($sql1);

	$sql2 = "CREATE TABLE IF NOT EXISTS `c_click_log".$thnn.$bln."` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(10) NOT NULL,
  `referer` text NOT NULL,
  `filename` text NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `user_agent` text NOT NULL,
  `traceid` text NOT NULL,
  `session_id` varchar(100) NOT NULL,
  `entry_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `campaign_id` (`campaign_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;";

// mysql_query($sql2);
$connection->execute($sql2);

$sql3 = "CREATE TABLE IF NOT EXISTS `c_cp_log_".$thnn.$bln."` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `subs_id` varchar(10) NOT NULL,
  `payout_client` decimal(6,2) NOT NULL DEFAULT '0.00',
  `entry_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;";

// mysql_query($sql3);
$connection->execute($sql3);

$sql4 = "CREATE TABLE IF NOT EXISTS `c_daily_cp_".$thnn.$bln."` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;";

// mysql_query($sql4);
$connection->execute($sql4);

$sql5 = "CREATE TABLE IF NOT EXISTS `c_daily_hit_".$thnn.$bln."` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(5) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_id` (`campaign_id`,`hit_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;";

// mysql_query($sql5);
$connection->execute($sql5);

$sql6 = "CREATE TABLE IF NOT EXISTS `c_daily_ip_hit_".$thnn.$bln."` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(5) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_id` (`campaign_id`,`ip_address`,`hit_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;";

// mysql_query($sql6);
$connection->execute($sql6);

$sql7 = "CREATE TABLE IF NOT EXISTS `c_daily_referer_hit_".$thnn.$bln."` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(5) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_id` (`campaign_id`,`referer`,`hit_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;";

// mysql_query($sql7);
$connection->execute($sql7);

$sql8 = "CREATE TABLE IF NOT EXISTS `c_daily_sms_".$thnn.$bln."` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;";

// mysql_query($sql8);
$connection->execute($sql8);

$sql9 = "CREATE TABLE IF NOT EXISTS `c_daily_ua_hit_".$thnn.$bln."` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_id` (`campaign_id`,`user_agent`,`hit_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;";

// mysql_query($sql9);
$connection->execute($sql9);

$sql10 = "CREATE TABLE IF NOT EXISTS `c_hourly_cp_".$thnn.$bln."` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`,`jam`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;";

// mysql_query($sql10);
$connection->execute($sql10);


$sql11 = "CREATE TABLE IF NOT EXISTS `c_hourly_hit_".$thnn.$bln."` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(5) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_id` (`campaign_id`,`hit_date`,`jam`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;";

// mysql_query($sql11);
$connection->execute($sql11);

$sql12 = "CREATE TABLE IF NOT EXISTS `c_hourly_ip_hit_".$thnn.$bln."` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(5) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_id` (`campaign_id`,`ip_address`,`hit_date`,`jam`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;";

// mysql_query($sql12);
$connection->execute($sql12);

$sql13 = "CREATE TABLE IF NOT EXISTS `c_hourly_referer_hit_".$thnn.$bln."` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(5) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_id` (`campaign_id`,`referer`,`hit_date`,`jam`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;";

// mysql_query($sql13);
$connection->execute($sql13);

$sql14 = "CREATE TABLE IF NOT EXISTS `c_hourly_sms_".$thnn.$bln."` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`,`jam`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;";

// mysql_query($sql14);
$connection->execute($sql14);

$sql15 = "CREATE TABLE IF NOT EXISTS `c_hourly_ua_hit_".$thnn.$bln."` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_id` (`campaign_id`,`user_agent`,`hit_date`,`jam`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;";

// mysql_query($sql15);
$connection->execute($sql15);

$sql16 = "CREATE TABLE IF NOT EXISTS `c_sms_log_".$thnn.$bln."` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `subs_id` varchar(10) NOT NULL,
  `url_postback` text NOT NULL,
  `response_postback` text NOT NULL,
  `payout` decimal(6,2) NOT NULL DEFAULT '0.00',
  `entry_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;";

// mysql_query($sql16);
$connection->execute($sql16);

$sql17 = "CREATE TABLE IF NOT EXISTS `c_traceid_log_".$thnn.$bln."` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(5) NOT NULL,
  `traceid` varchar(255) NOT NULL,
  `traceid_ads` varchar(255) NOT NULL,
  `sub_id` varchar(10) NOT NULL,
  `entry_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `campaign_id` (`campaign_id`,`traceid`,`traceid_ads`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;";

// mysql_query($sql17);
$connection->execute($sql17);

$sql18 = "CREATE TABLE IF NOT EXISTS `c_transaction_log_".$thnn.$bln."` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(255) NOT NULL,
  `entry_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;";

// mysql_query($sql18);
$connection->execute($sql18);

// print($sql18."\n");

}

print("Create table -- ".date("Y-m-d H:i:s")." -- End\n");

?>

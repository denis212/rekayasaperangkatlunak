<?php
use \Phalcon\Db\Adapter\Pdo\Mysql;
//kenapa taro di controller, biar bisa di jalanain pake putty dan menggunakan libary Mysql nya si phalcon

$database = 'cms_lock';
$config = [
	'adapter' => 'Mysql',
	'host' => '127.0.0.1',
	// 'port' => '3306',
	'username' => 'root',
	'password' => 'adminadmin',
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
	client_id bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `campaign_id` (`campaign_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;";

// mysql_query($sql2);
$connection->execute($sql2);

$sql5 = "CREATE TABLE IF NOT EXISTS `c_daily_hit_".$thnn.$bln."` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(5) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL,
	client_id bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_id` (`campaign_id`,`hit_date`, client_id)
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
	client_id bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_id` (`campaign_id`,`ip_address`,`hit_date`,client_id)
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
	client_id bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_id` (`campaign_id`,`referer`,`hit_date`,client_id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;";

// mysql_query($sql7);
$connection->execute($sql7);

$sql9 = "CREATE TABLE IF NOT EXISTS `c_daily_ua_hit_".$thnn.$bln."` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL,
	client_id bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_id` (`campaign_id`,`user_agent`,`hit_date`,client_id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;";

// mysql_query($sql9);
$connection->execute($sql9);


$sql11 = "CREATE TABLE IF NOT EXISTS `c_hourly_hit_".$thnn.$bln."` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(5) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL,
	client_id bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_id` (`campaign_id`,`hit_date`,`jam`, client_id)
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
	client_id bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_id` (`campaign_id`,`ip_address`,`hit_date`,`jam`, client_id)
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
	client_id bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_id` (`campaign_id`,`referer`,`hit_date`,`jam`,client_id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;";

// mysql_query($sql13);
$connection->execute($sql13);

$sql15 = "CREATE TABLE IF NOT EXISTS `c_hourly_ua_hit_".$thnn.$bln."` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL,
	client_id bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_id` (`campaign_id`,`user_agent`,`hit_date`,`jam`,client_id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;";

// mysql_query($sql15);
$connection->execute($sql15);

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

$sql18 = "CREATE TABLE IF NOT EXISTS `c_daily_impress_".$thnn.$bln."` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(5) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL,
	client_id bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_id` (`campaign_id`,`hit_date`, client_id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;";

// mysql_query($sql5);
$connection->execute($sql18);

$sql19 = "CREATE TABLE IF NOT EXISTS `c_daily_payout_".$thnn.$bln."` (
`id` bigint(10) NOT NULL AUTO_INCREMENT,
`date` date NOT NULL,
`pay` text NOT NULL,
`client_id` bigint(10) NOT NULL,
PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;";

// mysql_query($sql2);
$connection->execute($sql19);

$sql20 = "CREATE TABLE IF NOT EXISTS `c_daily_spending_".$thnn.$bln."` (
`id` bigint(10) NOT NULL AUTO_INCREMENT,
`date` date NOT NULL,
`pay` text NOT NULL,
`client_id` bigint(10) NOT NULL,
PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;";

// mysql_query($sql2);
$connection->execute($sql20);



}

print("Create table -- ".date("Y-m-d H:i:s")." -- End\n");

?>

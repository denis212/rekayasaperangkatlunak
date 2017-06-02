-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 02, 2017 at 02:43 PM
-- Server version: 5.7.18-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vokuro`
--

-- --------------------------------------------------------

--
-- Table structure for table `adspace`
--

CREATE TABLE `adspace` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `client_name` varchar(55) NOT NULL,
  `ad_url` varchar(255) NOT NULL,
  `ad_type` varchar(8) NOT NULL,
  `ad_guarantee` varchar(5) NOT NULL,
  `ad_status` varchar(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adspace`
--

INSERT INTO `adspace` (`id`, `client_id`, `client_name`, `ad_url`, `ad_type`, `ad_guarantee`, `ad_status`, `created_at`, `updated_at`, `status`) VALUES
(31, 18, 'admindenis superadmin', 'au amat', 'Image', 'yes', 'yes', '2017-03-14 07:28:39', '2017-03-21 11:01:52', 'n'),
(33, 18, 'admindenis superadmin', 'asdasdasd1231asdasdasdasd', 'Text', 'yes', 'yes', '2017-03-14 13:39:12', '2017-03-21 10:03:27', 'n'),
(34, 39, 'wina', 'lalalalyeyeyey', 'Text', 'yes', 'yes', '2017-03-14 14:53:04', '2017-03-21 10:03:25', 'n'),
(35, 39, 'wina', 'maingmaning', 'Image', 'yes', 'yes', '2017-03-14 14:53:25', '2017-03-21 10:03:24', 'n'),
(36, 39, 'wina', 'lagilagi', 'Image', 'yes', 'yes', '2017-03-14 14:53:34', '2017-03-21 10:03:21', 'n'),
(38, 18, 'admindenis superadmin', 'asdasd', 'Text', 'yes', 'no', '2017-03-21 10:11:19', '2017-03-21 13:16:03', 'n'),
(39, 18, 'admindenis superadmin', 'hokya.com/jancuk', 'Image', 'yes', 'yes', '2017-03-22 04:25:23', '2017-03-22 04:27:37', 'a'),
(40, 18, 'admindenis superadmin', 'lalaland.com', 'Image', 'yes', 'yes', '2017-03-22 04:27:10', '2017-03-22 04:27:10', 'a'),
(41, 18, 'admindenis superadmin', 'cuks.com', 'Text', 'yes', 'yes', '2017-03-22 04:29:16', '2017-03-22 04:29:29', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `campaign`
--

CREATE TABLE `campaign` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `cp_name` varchar(50) NOT NULL,
  `cp_pricemodel` varchar(5) NOT NULL,
  `cp_targeturl` varchar(200) NOT NULL,
  `cp_startenddate` varchar(50) NOT NULL,
  `cp_country` varchar(400) NOT NULL,
  `cp_dailybudget` varchar(20) NOT NULL,
  `cp_totalbudget` varchar(20) NOT NULL,
  `cp_schedule` varchar(200) NOT NULL,
  `cp_delivmethod` varchar(20) NOT NULL,
  `cp_target` varchar(200) NOT NULL,
  `cp_adult` varchar(30) DEFAULT NULL,
  `cp_tag` varchar(30) NOT NULL,
  `cp_zone` varchar(300) DEFAULT NULL,
  `cp_gettraffic` varchar(5) DEFAULT NULL,
  `cp_guarantee` varchar(5) NOT NULL,
  `cp_testbudget` varchar(20) DEFAULT NULL,
  `cp_mblimit` varchar(10) DEFAULT NULL,
  `cp_dsktplimit` varchar(10) DEFAULT NULL,
  `cp_cpmcpa` varchar(50) NOT NULL,
  `gbr120x600` varchar(50) DEFAULT NULL,
  `gbr160x600` varchar(50) DEFAULT NULL,
  `gbr250x250` varchar(50) DEFAULT NULL,
  `gbr300x50` varchar(50) DEFAULT NULL,
  `gbr300x100` varchar(50) DEFAULT NULL,
  `gbr300x250` varchar(50) DEFAULT NULL,
  `gbr300x600` varchar(50) DEFAULT NULL,
  `gbr305x99` varchar(50) DEFAULT NULL,
  `gbr315x300` varchar(50) DEFAULT NULL,
  `gbr320x50` varchar(50) DEFAULT NULL,
  `gbr320x100` varchar(50) DEFAULT NULL,
  `gbr320x250` varchar(50) DEFAULT NULL,
  `gbr320x416` varchar(50) DEFAULT NULL,
  `gbr320x480` varchar(50) DEFAULT NULL,
  `gbr336x280` varchar(50) DEFAULT NULL,
  `gbr468x60` varchar(50) DEFAULT NULL,
  `gbr640x960` varchar(50) DEFAULT NULL,
  `gbr728x90` varchar(50) DEFAULT NULL,
  `gbr800x440` varchar(50) DEFAULT NULL,
  `gbr1024x768` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `upddate_at` timestamp NULL DEFAULT NULL,
  `status` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaign`
--

INSERT INTO `campaign` (`id`, `client_id`, `client_name`, `cp_name`, `cp_pricemodel`, `cp_targeturl`, `cp_startenddate`, `cp_country`, `cp_dailybudget`, `cp_totalbudget`, `cp_schedule`, `cp_delivmethod`, `cp_target`, `cp_adult`, `cp_tag`, `cp_zone`, `cp_gettraffic`, `cp_guarantee`, `cp_testbudget`, `cp_mblimit`, `cp_dsktplimit`, `cp_cpmcpa`, `gbr120x600`, `gbr160x600`, `gbr250x250`, `gbr300x50`, `gbr300x100`, `gbr300x250`, `gbr300x600`, `gbr305x99`, `gbr315x300`, `gbr320x50`, `gbr320x100`, `gbr320x250`, `gbr320x416`, `gbr320x480`, `gbr336x280`, `gbr468x60`, `gbr640x960`, `gbr728x90`, `gbr800x440`, `gbr1024x768`, `created_at`, `upddate_at`, `status`) VALUES
(587, 18, 'admindenis superadmin', 'asdasdasd', 'CPA', 'http://google.com', '03/01/2017 - 04/30/2017', 'ALGERIA', '10', '100', 'All Day', 'Standard', 'All Mobile', NULL, 'All', 'asdasd', 'yes', 'yes', '50', '', '', '0.5', 'ImageUpload/2017-03-14/120x600.jpg', 'ImageUpload/2017-03-14/160x600.jpg', 'ImageUpload/2017-03-14/250x250.jpg', 'ImageUpload/2017-03-14/300x50.jpg', 'ImageUpload/2017-03-14/300x100.jpg', 'ImageUpload/2017-03-14/300x250.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-14 06:16:08', '2017-03-14 06:28:26', 'A'),
(588, 18, 'admindenis superadmin', 'moncrot', 'CPA', 'asdasdasd', '03/01/2017 - 04/30/2017', 'ALAND ISLANDS,ALGERIA', '10.06', '100', 'All Day', 'Standard', 'All Mobile', NULL, 'All', 'asdasd', 'yes', 'yes', '50', '', '', '0.5', '', '', 'ImageUpload/2017-03-14/250x250.jpg', 'ImageUpload/2017-03-14/300x50.jpg', 'ImageUpload/2017-03-14/300x100.jpg', 'ImageUpload/2017-03-14/300x250.jpg', 'ImageUpload/2017-03-16/300x600.jpg', 'ImageUpload/2017-03-16/305x99.jpg', 'ImageUpload/2017-03-16/315x300.jpg', 'ImageUpload/2017-03-16/320x50.jpg', 'ImageUpload/2017-03-16/320x100.jpg', 'ImageUpload/2017-03-16/320x250.jpg', 'ImageUpload/2017-03-16/320x416.jpg', 'ImageUpload/2017-03-16/320x480.jpg', 'ImageUpload/2017-03-16/336x280.jpg', 'ImageUpload/2017-03-16/468x60.jpg', 'ImageUpload/2017-03-16/640x960.jpg', 'ImageUpload/2017-03-16/728x90.jpg', '', '', '2017-03-14 06:22:24', '2017-03-16 07:28:42', 'N'),
(589, 39, 'wina', 'coba wina', 'CPA', 'asdasdasd', '03/01/2017 - 04/30/2017', 'ANDORRA,KOREA', '10.19', '100', 'All Day', 'Standard', 'All Mobile', NULL, 'All', 'asdasdasd', 'yes', 'yes', '50', '', '', '0.5', 'ImageUpload/2017-03-14/120x600.jpg', 'ImageUpload/2017-03-14/160x600.jpg', 'ImageUpload/2017-03-14/250x250.jpg', 'ImageUpload/2017-03-14/300x50.jpg', 'ImageUpload/2017-03-14/300x100.jpg', 'ImageUpload/2017-03-14/300x250.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-14 06:30:19', '2017-03-15 03:12:32', 'A'),
(590, 18, 'admindenis superadmin', 'janjimu manis', 'CPA', 'asdasdasdasd', '03/01/2017 - 04/30/2017', 'ANDORRA', '10', '100.01', 'All Day', 'Standard', 'All Mobile', NULL, 'All', '', 'yes', 'yes', '50', '', '', '0.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-15 14:48:56', '2017-03-16 06:49:29', 'N'),
(591, 18, 'admindenis superadmin', 'coba tampilan baru', 'CPA', 'asdasdasd.com', '03/01/2017 - 04/30/2017', 'JAPAN', '10.01', '100', 'Working Day', 'Distributed', 'All Mobile', NULL, 'All', '', 'yes', 'yes', '50', '', '', '0.5', 'ImageUpload/2017-03-20/120x600.jpg', 'ImageUpload/2017-03-20/160x600.jpg', 'ImageUpload/2017-03-20/250x250.jpg', 'ImageUpload/2017-03-20/300x50.jpg', 'ImageUpload/2017-03-20/300x100.jpg', 'ImageUpload/2017-03-20/300x250.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-20 15:13:03', '2017-03-21 07:36:26', 'A'),
(592, 18, 'admindenis superadmin', 'asdasdasd', 'CPA', 'asdasdasd', '03/22/2017 - 04/25/2017', 'ALBANIA', '10', '100', 'All Day', 'Standard', 'All Mobile', NULL, 'All', 'asdasd', 'yes', 'yes', '50', '', '', '0.5', 'ImageUpload/2017-03-21/120x600.jpg', 'ImageUpload/2017-03-21/160x600.jpg', 'ImageUpload/2017-03-21/250x250.jpg', 'ImageUpload/2017-03-21/300x50.jpg', 'ImageUpload/2017-03-21/300x100.jpg', 'ImageUpload/2017-03-21/300x250.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-21 10:09:22', '2017-03-21 10:09:22', 'A'),
(593, 18, 'admindenis superadmin', 'lala land', 'CPA', 'asdasdasd.com', '03/01/2017 - 04/30/2017', 'ALGERIA', '10', '100', 'All Day', 'Standard', 'All Mobile', NULL, 'All', '', 'yes', 'yes', '50', '', '', '0.5', 'ImageUpload/2017-03-22/120x600.jpg', 'ImageUpload/2017-03-22/160x600.jpg', 'ImageUpload/2017-03-22/250x250.jpg', 'ImageUpload/2017-03-22/300x50.jpg', 'ImageUpload/2017-03-22/300x100.jpg', 'ImageUpload/2017-03-22/300x250.jpg', 'ImageUpload/2017-03-22/300x600.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-22 04:02:06', '2017-03-22 04:02:06', 'A'),
(594, 18, 'admindenis superadmin', 'lalal land ganti ajah', 'CPA', 'asdasdas.co', '03/01/2017 - 04/30/2017', 'INDONESIA', '10', '100', 'All Day', 'Standard', 'All Mobile', NULL, 'All', 'asdasd', 'yes', 'yes', '50', '', '', '0.52', 'ImageUpload/2017-03-22/120x600.jpg', 'ImageUpload/2017-03-22/160x600.jpg', 'ImageUpload/2017-03-22/250x250.jpg', 'ImageUpload/2017-03-22/300x50.jpg', 'ImageUpload/2017-03-22/300x100.jpg', 'ImageUpload/2017-03-22/300x250.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-22 04:04:28', '2017-03-22 04:28:27', 'A'),
(595, 39, 'wina', 'Campaign Terbaru', 'CPA', 'terbaru.com', '05/03/2017 - 09/30/2017', 'SINGAPORE', '10', '100.2', 'All Day', 'Standard', 'All Mobile', NULL, 'All', '1', 'yes', 'yes', '50.01', 'ooo', 'ooo', '0.6', 'ImageUpload/2017-05-03/120x600.jpg', 'ImageUpload/2017-05-03/160x600.jpg', 'ImageUpload/2017-05-03/250x250.jpg', 'ImageUpload/2017-05-03/300x50.jpg', 'ImageUpload/2017-05-03/300x100.jpg', 'ImageUpload/2017-05-03/300x250.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-05-03 00:25:59', '2017-05-05 06:56:57', 'A'),
(596, 39, 'wina', 'Promo XL Tri', 'CPA', 'http://wap.funspaz.com/wap/getmsisdn.php?SHORTCODE=413961501&TRACKERID={transaction_id}&SP_CONTENT=5rio.com&AOC_SMS=5rio.com%2Fth%2F4139615%2FF1', '06/01/2017 - 07/31/2017', 'SINGAPORE', '10', '250', 'All Day', 'Standard', 'All', NULL, 'All', '', 'yes', 'yes', '50', '11', '11', '0.5', 'ImageUpload/2017-05-26/120x600.jpg', 'ImageUpload/2017-05-26/160x600.jpg', 'ImageUpload/2017-05-26/250x250.jpg', 'ImageUpload/2017-05-26/300x50.jpg', 'ImageUpload/2017-05-26/300x100.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ImageUpload/2017-05-26/1024x768asdasd.jpg', '2017-05-26 03:29:41', '2017-05-27 03:27:39', 'A'),
(597, 39, 'wina', 'PROMO TRI XL Beneran', 'CPA', 'http://103.43.47.22/sms/wc/cpm.php?id=453&transaction_id={transaction_id}', '06/01/2017 - 06/30/2017', 'INDONESIA', '10', '100', 'All Day', 'Standard', 'All Mobile', NULL, 'All', 'asdasd', 'yes', 'yes', '50', 'asdasd', 'asdasd', '0.5', 'ImageUpload/2017-05-26/120x600.jpg', 'ImageUpload/2017-05-26/160x600.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ImageUpload/2017-05-26/640x960.jpg', 'ImageUpload/2017-05-26/728x90.jpg', 'ImageUpload/2017-05-26/800x440.jpg', 'ImageUpload/2017-05-26/1024x768.jpg', '2017-05-26 03:33:57', '2017-05-27 03:18:19', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `confirmation`
--

CREATE TABLE `confirmation` (
  `id` int(11) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `username` varchar(25) NOT NULL,
  `bankname` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `accountnumber` varchar(25) NOT NULL,
  `accountname` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nominal` varchar(30) NOT NULL,
  `currency` varchar(25) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `upddate_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `confirmation`
--

INSERT INTO `confirmation` (`id`, `user_id`, `username`, `bankname`, `branch`, `accountnumber`, `accountname`, `phone`, `email`, `nominal`, `currency`, `created_at`, `upddate_at`, `status`) VALUES
(14, '18', 'admindenis superadmin', 'Aljazair', 'tangernag', '123123123', 'denieneinei', '292992929292', 'denidnei@ffmfmf.com', '10', 'IDR', '2017-03-21 07:10:13', '2017-03-21 13:23:00', 'A'),
(15, '18', 'admindenis superadmin', 'moncrot', 'asdasdasd', '123123123', 'asdaskdmaksmdk', '192i3912i39', 'daksdak@djjdjdj.o', '10.01', 'IDR', '2017-03-21 07:10:16', '2017-03-21 13:22:54', 'A'),
(16, '18', 'admindenis superadmin', 'lalala yeyey', 'maskdmalsdkm', 'lmalskmdlaksmd', 'lkmalskmdlaskmd', 'kmaksmdlaskd', 'kamsldkamsdlk@fmkamswd.o', '10', 'IDR', '2017-03-21 07:10:18', '2017-03-21 12:11:13', 'A'),
(17, '18', 'admindenis superadmin', 'sahndkajsndkjn', 'ansdna,smdn', 'mnasm,dna,sdn,masd', ',mna,snd,amsdn', ',amsdn,masnd', 'ASnda@fnfnfn.co', '10', 'IDR', '2017-03-21 07:00:30', '2017-03-21 12:08:54', 'A'),
(18, '39', 'wina', 'bank wina', 'asdasdas', 'asdasdasd', 'wina winur', 'asdasd', 'askdasd@fkfkfk.com', '50', 'IDR', '2017-03-21 13:15:07', '2017-03-21 13:15:14', 'A'),
(19, '39', 'wina', 'wina bank', 'tambah saldo lagi', '1231231231', 'wina saldo', '123123123', 'wina@winur.com', '30', 'IDR', '2017-03-21 13:10:22', '2017-03-21 13:16:27', 'A'),
(20, '18', 'admindenis superadmin', 'Bank Denis', 'tangerang', '12312i3182319239', 'denis', '123123123', 'denis@dndndndn.co', '200000', 'IDR', '2017-03-22 04:35:47', '2017-03-22 05:42:53', 'A'),
(21, '18', 'admindenis superadmin', 'bank ganteng', 'akwjdsaslkdjlaksjd', 'lkjaslkdjalksdj', 'lkjasldkjalskdj', '123123123', 'asndas@ckckc.co', '10', 'IDR', '2017-03-22 04:36:25', '2017-03-22 05:42:42', 'A'),
(22, '39', 'wina', 'akakak', 'masdalsm', '919191991', 'aakakakk', '19919191', 'Wasd@kaskak.om', '250', 'USD', '2017-04-26 04:02:17', '2017-04-26 04:04:58', 'A'),
(23, '39', 'wina', 'asdasd`', 'asdasd', '123123', 'asdasd', '123123', 'asd@ssmsm.com', '200', 'IDR', '2017-04-26 04:02:56', '2017-04-26 04:04:54', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `upddate_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `body`, `created_at`, `upddate_at`) VALUES
(1, 'asndaslndasnd', 'amnsd@gannana.com', 'asdasdasd', 'asdasdasdasd', '2017-03-20 07:46:29', '0000-00-00 00:00:00'),
(2, 'tanya dong gan', 'denis@gfmama.com', 'asdasd', 'tanya lagi ya gan', '2017-03-20 07:48:05', '0000-00-00 00:00:00'),
(3, 'laigamsdk', 'akmskdam@gmmgm.co', 'asdasd', 'jajsndalsndkm,ans ,dmna smdnasdasdasd', '2017-03-20 07:49:14', '0000-00-00 00:00:00'),
(4, 'lallal', 'asdmaksmd@fjgjgj.com', 'asdasdsad', 'maksmdlaksmdlkasdasdasd', '2017-03-20 07:51:59', '2017-03-20 07:51:59'),
(5, 'hokya', 'cona@dmdmdm.co', 'asdasdasd', 'alaallalalala', '2017-03-21 02:47:20', '2017-03-21 02:47:20'),
(6, 'coba redirect ya', 'asdasd@gggngnng.co', 'asdasd', 'coba bosssssque', '2017-03-21 02:51:51', '2017-03-21 02:51:51'),
(7, 'denisinsisn', 'nanansndansdn@nanna.co', 'asdasdasd', 'asdasdasdsad', '2017-03-22 03:01:24', '2017-03-22 03:01:24'),
(8, 'asdas', 'd@akka.co', 'asdasdasd', 'asdasdasd', '2017-03-22 03:02:26', '2017-03-22 03:02:26'),
(9, 'asdasd', 'asd@ffkf.co', 'asdasdasd', 'asdasdasd', '2017-03-22 03:03:57', '2017-03-22 03:03:57'),
(10, 'asdasdnajsdn', 'nasnda@kddkk.co', 'asdasdas', 'nasndjansdasd', '2017-03-22 03:04:22', '2017-03-22 03:04:22'),
(11, 'asdasd', 'asdasd@fjfjfj.coa', 'asdasd', 'aksdkamsdkmsad', '2017-03-22 03:05:13', '2017-03-22 03:05:13'),
(12, 'sadas', 'dsad@asd.co', 'asdasd', 'asdasd', '2017-03-22 03:06:43', '2017-03-22 03:06:43'),
(13, 'halo halo', 'denis@setianto.com', 'asdasdasd', 'asdasdasd', '2017-03-22 03:09:14', '2017-03-22 03:09:14'),
(14, 'holaaa', 'DENIS@setianto.com', 'asdasdasd', 'hola', '2017-03-22 03:10:45', '2017-03-22 03:10:45'),
(15, 'hola', 'denis@fmf.co', 'asdasd', 'makkmsadkmaksmdaskmdasdasd', '2017-03-22 03:16:02', '2017-03-22 03:16:02'),
(16, 'asdkasdmaksmd', 'kasmdkam@fjfjjfj.co', 'asdasdmasdkmk', 'alalalalalalala', '2017-03-22 03:18:17', '2017-03-22 03:18:17'),
(17, 'holalala', 'k@kqkak.co', 'asdasdmkamsdkm', 'maskdmkamsdkmasd', '2017-03-22 03:30:22', '2017-03-22 03:30:22'),
(18, 'denis', 'denis@setianto.com', 'taya dong gan', 'asdasdasdasdasd', '2017-03-22 03:34:42', '2017-03-22 03:34:42'),
(19, 'hokalmasm', 'kasdmka@cocooc.co', 'asdasdkasdm', 'lalalalskadkasdlkasd', '2017-03-22 03:37:09', '2017-03-22 03:37:09'),
(20, 'ajsjdahj', 'askdaksd@fjff.co0', 'aasdaknsdnaksdn', 'lalallalaaasd', '2017-03-22 03:39:50', '2017-03-22 03:39:50'),
(21, 'asdasd', 'saasd@dnfnfn.co', 'skdmaksdmk', 'mas,dmasdasdasd', '2017-03-22 03:53:04', '2017-03-22 03:53:04'),
(22, 'dasd', 'asdasdas@asdasd.co', 'asdasdnasdn', 'nsadnas,mndasdasd', '2017-03-22 03:54:55', '2017-03-22 03:54:55'),
(23, 'asdasdln', 'densnsnsn@mffmf.co', 'sankdnaskdn', 'asndkasnd,amsdasdasd', '2017-03-22 03:55:58', '2017-03-22 03:55:58'),
(24, 'hai gays', 'denis@setianto.com', 'coba email', 'masuk ga ya', '2017-03-22 03:56:46', '2017-03-22 03:56:46'),
(25, 'denis', 'setianto@com.com', 'coba ya', 'halooooo', '2017-03-22 03:57:36', '2017-03-22 03:57:36');

-- --------------------------------------------------------

--
-- Table structure for table `c_click_callback_201701`
--

CREATE TABLE `c_click_callback_201701` (
  `id` bigint(10) NOT NULL,
  `url_callback` text NOT NULL,
  `response_callback` varchar(100) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_click_callback_201702`
--

CREATE TABLE `c_click_callback_201702` (
  `id` bigint(10) NOT NULL,
  `url_callback` text NOT NULL,
  `response_callback` varchar(100) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_click_callback_201703`
--

CREATE TABLE `c_click_callback_201703` (
  `id` bigint(10) NOT NULL,
  `url_callback` text NOT NULL,
  `response_callback` varchar(100) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_click_callback_201704`
--

CREATE TABLE `c_click_callback_201704` (
  `id` bigint(10) NOT NULL,
  `url_callback` text NOT NULL,
  `response_callback` varchar(100) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_click_callback_201705`
--

CREATE TABLE `c_click_callback_201705` (
  `id` bigint(10) NOT NULL,
  `url_callback` text NOT NULL,
  `response_callback` varchar(100) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_click_callback_201706`
--

CREATE TABLE `c_click_callback_201706` (
  `id` bigint(10) NOT NULL,
  `url_callback` text NOT NULL,
  `response_callback` varchar(100) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_click_callback_201707`
--

CREATE TABLE `c_click_callback_201707` (
  `id` bigint(10) NOT NULL,
  `url_callback` text NOT NULL,
  `response_callback` varchar(100) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_click_callback_201708`
--

CREATE TABLE `c_click_callback_201708` (
  `id` bigint(10) NOT NULL,
  `url_callback` text NOT NULL,
  `response_callback` varchar(100) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_click_callback_201709`
--

CREATE TABLE `c_click_callback_201709` (
  `id` bigint(10) NOT NULL,
  `url_callback` text NOT NULL,
  `response_callback` varchar(100) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_click_callback_201710`
--

CREATE TABLE `c_click_callback_201710` (
  `id` bigint(10) NOT NULL,
  `url_callback` text NOT NULL,
  `response_callback` varchar(100) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_click_callback_201711`
--

CREATE TABLE `c_click_callback_201711` (
  `id` bigint(10) NOT NULL,
  `url_callback` text NOT NULL,
  `response_callback` varchar(100) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_click_callback_201712`
--

CREATE TABLE `c_click_callback_201712` (
  `id` bigint(10) NOT NULL,
  `url_callback` text NOT NULL,
  `response_callback` varchar(100) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_click_log201701`
--

CREATE TABLE `c_click_log201701` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(10) NOT NULL,
  `referer` text NOT NULL,
  `filename` text NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `user_agent` text NOT NULL,
  `traceid` text NOT NULL,
  `session_id` varchar(100) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_click_log201702`
--

CREATE TABLE `c_click_log201702` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(10) NOT NULL,
  `referer` text NOT NULL,
  `filename` text NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `user_agent` text NOT NULL,
  `traceid` text NOT NULL,
  `session_id` varchar(100) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_click_log201703`
--

CREATE TABLE `c_click_log201703` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(10) NOT NULL,
  `referer` text NOT NULL,
  `filename` text NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `user_agent` text NOT NULL,
  `traceid` text NOT NULL,
  `session_id` varchar(100) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_click_log201704`
--

CREATE TABLE `c_click_log201704` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(10) NOT NULL,
  `referer` text NOT NULL,
  `filename` text NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `user_agent` text NOT NULL,
  `traceid` text NOT NULL,
  `session_id` varchar(100) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_click_log201704`
--

INSERT INTO `c_click_log201704` (`id`, `campaign_id`, `referer`, `filename`, `ip_address`, `user_agent`, `traceid`, `session_id`, `entry_date`) VALUES
(1, 587, '', '/gamanads/hit/587/212/123ASD/asdd', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '166ffe528e4002994c9fe8709c5d196f', '166ffe528e4002994c9fe8709c5d196f', '2017-04-05 15:54:35'),
(2, 589, '', '/gamanads/hit/589/212/123ASD/asdd', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '59df42a09ed7e7d356fbd3540b85b211', '59df42a09ed7e7d356fbd3540b85b211', '2017-04-05 15:54:50'),
(3, 589, '', '/gamanads/hit/589/212/123ASD/asdd', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'fc4489b6eb14732725d557f544ec5260', 'fc4489b6eb14732725d557f544ec5260', '2017-04-05 16:22:13'),
(4, 589, '', '/gamanads/hit/589/212/123ASD/asdd', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '24cacdc4a052c1bcd3ed6b0d3d3313e8', '24cacdc4a052c1bcd3ed6b0d3d3313e8', '2017-04-05 16:23:26'),
(5, 589, '', '/gamanads/hit/589/212/123ASD/asdd', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'e9ccdfed876acb55adb0046805c5c811', 'e9ccdfed876acb55adb0046805c5c811', '2017-04-05 16:23:29'),
(6, 589, '', '/gamanads/hit/589/212/123ASD/123', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'abd18f8a7147ebfc151bdb2990ef964d', 'abd18f8a7147ebfc151bdb2990ef964d', '2017-04-05 16:25:31'),
(7, 587, '', '/gamanads/hit/587/212/123ASD/123', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'b3774f85329ebcfb92d0b16eb2787310', 'b3774f85329ebcfb92d0b16eb2787310', '2017-04-05 16:25:42'),
(8, 334, '', '/gamanads/hit/334/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '03d833bcf9ecf15224841494da23abfc', '03d833bcf9ecf15224841494da23abfc', '2017-04-05 20:54:12'),
(9, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '321020f1eb86c5087ee96e88ebca375a', '321020f1eb86c5087ee96e88ebca375a', '2017-04-06 14:09:51'),
(10, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '1a40b53135a3c7fe8b89b189dbf05a78', '1a40b53135a3c7fe8b89b189dbf05a78', '2017-04-06 14:14:00'),
(11, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '7f05d5708e4afcd560ff437948e89ffe', '7f05d5708e4afcd560ff437948e89ffe', '2017-04-13 09:58:19'),
(12, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '5434854d6f2ea22439845d17c51bc99b', '5434854d6f2ea22439845d17c51bc99b', '2017-04-13 09:59:38'),
(13, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'ee0dbe644eaebfa59de07d783be6eaba', 'ee0dbe644eaebfa59de07d783be6eaba', '2017-04-13 10:04:59'),
(14, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '65c31e0672126d9f86d4772ab6d630f6', '65c31e0672126d9f86d4772ab6d630f6', '2017-04-13 10:05:12'),
(15, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'c4ef60678fd6911e335e20ed31095637', 'c4ef60678fd6911e335e20ed31095637', '2017-04-13 10:06:56'),
(16, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'c909415bf05243958f3bf228cd11ec18', 'c909415bf05243958f3bf228cd11ec18', '2017-04-13 10:12:31'),
(17, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '10a5d3f52c391a4ec62a7f2df102728e', '10a5d3f52c391a4ec62a7f2df102728e', '2017-04-13 10:12:39'),
(18, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'd6da5df8f5070abe039c848c74a64bdb', 'd6da5df8f5070abe039c848c74a64bdb', '2017-04-13 10:16:41'),
(19, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '343fea292463e030d7fae1926ec0a9a3', '343fea292463e030d7fae1926ec0a9a3', '2017-04-17 14:52:00'),
(20, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'ce423c1a1df433bc3f80adcab6f32f96', 'ce423c1a1df433bc3f80adcab6f32f96', '2017-04-17 14:52:38'),
(21, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'e17dafe94bf8a3ae7a03330eadb43c0b', 'e17dafe94bf8a3ae7a03330eadb43c0b', '2017-04-17 14:52:39'),
(22, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '5176d95f036af04a60085a82d3b4dc5a', '5176d95f036af04a60085a82d3b4dc5a', '2017-04-18 10:26:56'),
(23, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'cc8bf9a2fefb15744e423e97044a0bc9', 'cc8bf9a2fefb15744e423e97044a0bc9', '2017-04-18 12:04:21'),
(24, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '8268d20d62395c21446fc6f246527cf8', '8268d20d62395c21446fc6f246527cf8', '2017-04-18 14:33:46'),
(25, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'ac36c0193d818ef80dd6d6acb3dc5905', 'ac36c0193d818ef80dd6d6acb3dc5905', '2017-04-19 09:29:46'),
(26, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '8fce34bf356529dc15e085ab2af697bc', '8fce34bf356529dc15e085ab2af697bc', '2017-04-19 09:31:30'),
(27, 587, '', '/gamanads/hit/587/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'a1fa9ab63631ba8070b258e17984ab5e', 'a1fa9ab63631ba8070b258e17984ab5e', '2017-04-19 09:31:45'),
(28, 587, '', '/gamanads/hit/587/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '3767cabdf0dcfa77503f20ca706f1aff', '3767cabdf0dcfa77503f20ca706f1aff', '2017-04-19 09:32:00'),
(29, 587, '', '/gamanads/hit/587/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '5d2839c9d3dea5e8bf00c6232e94d23a', '5d2839c9d3dea5e8bf00c6232e94d23a', '2017-04-19 09:32:02'),
(30, 587, '', '/gamanads/hit/587/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '3f67a62a856467186e219f7ca226f1a5', '3f67a62a856467186e219f7ca226f1a5', '2017-04-19 09:32:05'),
(31, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '157be7a59c05e6a6ead3faba2b731dd0', '157be7a59c05e6a6ead3faba2b731dd0', '2017-04-19 09:32:08'),
(32, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '7e292eae164ce022dfd266b989cdc534', '7e292eae164ce022dfd266b989cdc534', '2017-04-19 09:32:10'),
(33, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '32601d81395247cc67b16d6008a89de1', '32601d81395247cc67b16d6008a89de1', '2017-04-19 09:32:23'),
(34, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'd310a0ef95141cc58ba2c7343a3930af', 'd310a0ef95141cc58ba2c7343a3930af', '2017-04-19 09:32:24'),
(35, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '6815cf91a58040b0b3eb250bc1c11402', '6815cf91a58040b0b3eb250bc1c11402', '2017-04-19 09:32:25'),
(36, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'b9172aa79e862dbaee7b057af3adadad', 'b9172aa79e862dbaee7b057af3adadad', '2017-04-19 09:32:25'),
(37, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '12c6475c98534284cc5d1a251d7c3bfa', '12c6475c98534284cc5d1a251d7c3bfa', '2017-04-19 09:32:26'),
(38, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'c7188254c92acf7d1a3ed639a0840acf', 'c7188254c92acf7d1a3ed639a0840acf', '2017-04-19 09:32:26'),
(39, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'b0c475f49594e795b7b082096d4f794c', 'b0c475f49594e795b7b082096d4f794c', '2017-04-19 09:32:26'),
(40, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '91e9e732615ab2a427aff831f485b4f4', '91e9e732615ab2a427aff831f485b4f4', '2017-04-19 09:32:26'),
(41, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'd3c0789b129302c224cbd2550edb4724', 'd3c0789b129302c224cbd2550edb4724', '2017-04-19 09:32:27'),
(42, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'b512f3828b1a8e490cd42b7f87ed638f', 'b512f3828b1a8e490cd42b7f87ed638f', '2017-04-19 09:32:27'),
(43, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '9b77ee883fba622cf414e7fee8b6a3a6', '9b77ee883fba622cf414e7fee8b6a3a6', '2017-04-19 09:32:27'),
(44, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'eaa45f8cfe4bb86ce8c54ef9cfc7f195', 'eaa45f8cfe4bb86ce8c54ef9cfc7f195', '2017-04-19 09:32:27'),
(45, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '230881d5bb9a126d0133f35fc37935e1', '230881d5bb9a126d0133f35fc37935e1', '2017-04-19 09:32:28'),
(46, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '98772076a1faec5af179346a73370108', '98772076a1faec5af179346a73370108', '2017-04-19 09:32:28'),
(47, 587, '', '/gamanads/hit/587/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '597ce47b1d0dd4e6c7dd8fe238e9125c', '597ce47b1d0dd4e6c7dd8fe238e9125c', '2017-04-20 11:06:07'),
(48, 587, '', '/gamanads/hit/587/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'f766201be6c145e00353bfb2b7bfd810', 'f766201be6c145e00353bfb2b7bfd810', '2017-04-20 11:06:15'),
(49, 587, '', '/gamanads/hit/587/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '3e18848e03bdd6201ae9e4576911cfaa', '3e18848e03bdd6201ae9e4576911cfaa', '2017-04-20 11:07:17'),
(50, 587, '', '/gamanads/hit/587/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '01b9b12fb3451e517d90c45cc7d7159a', '01b9b12fb3451e517d90c45cc7d7159a', '2017-04-25 09:55:59'),
(51, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '92a5f7e19be485772c75e3fc420daaa5', '92a5f7e19be485772c75e3fc420daaa5', '2017-04-25 09:56:03'),
(52, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '94f3da5e3aceeeffa7357eb680fb2565', '94f3da5e3aceeeffa7357eb680fb2565', '2017-04-25 10:35:22'),
(53, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '092983a314d0bfa26bf6fca45f79ef3d', '092983a314d0bfa26bf6fca45f79ef3d', '2017-04-25 10:40:22'),
(54, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '36a23ecb0b4fbcb23b137c50399c4be7', '36a23ecb0b4fbcb23b137c50399c4be7', '2017-04-25 10:40:51'),
(55, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '400176ea97b9a52702a8de01e263d77a', '400176ea97b9a52702a8de01e263d77a', '2017-04-25 10:42:50'),
(56, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '28cdfb810ca9bcc2e26fbd75015906fb', '28cdfb810ca9bcc2e26fbd75015906fb', '2017-04-25 10:44:08'),
(57, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '1a221c452e4bccb7d8a7c34354349c8f', '1a221c452e4bccb7d8a7c34354349c8f', '2017-04-25 10:54:49'),
(58, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'fb019e8c1876abb34fac693d6adff0b7', 'fb019e8c1876abb34fac693d6adff0b7', '2017-04-25 10:59:28'),
(59, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'a0d06a16b1c24632233c444857031c79', 'a0d06a16b1c24632233c444857031c79', '2017-04-25 11:10:02'),
(60, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'bfff8b519b116ff22aa2e13569590e0b', 'bfff8b519b116ff22aa2e13569590e0b', '2017-04-25 11:11:11'),
(61, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '423d02efe4d1703f91c5805f6fe66ea5', '423d02efe4d1703f91c5805f6fe66ea5', '2017-04-25 11:13:30'),
(62, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'cd182c89eddf691e59b8c005ab981914', 'cd182c89eddf691e59b8c005ab981914', '2017-04-25 11:18:59'),
(63, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '77f449fe4c0bba54c79211969b17b501', '77f449fe4c0bba54c79211969b17b501', '2017-04-25 11:19:18'),
(64, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '372a58530516b978e784e966ab85a787', '372a58530516b978e784e966ab85a787', '2017-04-25 11:19:57'),
(65, 587, '', '/gamanads/hit/587/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '0ba64ec572cfa798dc430dff238cfe70', '0ba64ec572cfa798dc430dff238cfe70', '2017-04-25 16:02:47'),
(66, 587, '', '/gamanads/hit/587/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'bd6cf8e1f52633a6e74a89b1448a1ddd', 'bd6cf8e1f52633a6e74a89b1448a1ddd', '2017-04-27 09:15:23'),
(67, 587, '', '/gamanads/hit/587/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '08d9ffa0a7552a3bc3be415080779574', '08d9ffa0a7552a3bc3be415080779574', '2017-04-27 09:15:34'),
(68, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'fa3c4cd3116bc3eb65ec91d584c37422', 'fa3c4cd3116bc3eb65ec91d584c37422', '2017-04-27 09:15:43'),
(69, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'fea528d4222a777d8118255f19f6c6a2', 'fea528d4222a777d8118255f19f6c6a2', '2017-04-27 09:15:47'),
(70, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '54b5820d20ee74d248089ece3457e0a6', '54b5820d20ee74d248089ece3457e0a6', '2017-04-27 09:15:55'),
(71, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '29034c7668d26ee69db9da0f2e1672ad', '29034c7668d26ee69db9da0f2e1672ad', '2017-04-27 09:16:03'),
(72, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'c37873b426c495ff9a28ce40f16f59ea', 'c37873b426c495ff9a28ce40f16f59ea', '2017-04-27 09:17:24');

-- --------------------------------------------------------

--
-- Table structure for table `c_click_log201705`
--

CREATE TABLE `c_click_log201705` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(10) NOT NULL,
  `referer` text NOT NULL,
  `filename` text NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `user_agent` text NOT NULL,
  `traceid` text NOT NULL,
  `session_id` varchar(100) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_click_log201705`
--

INSERT INTO `c_click_log201705` (`id`, `campaign_id`, `referer`, `filename`, `ip_address`, `user_agent`, `traceid`, `session_id`, `entry_date`) VALUES
(1, 587, '', '/gamanads/hit/587/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '939204cb901ec280f786ac67161523c4', '939204cb901ec280f786ac67161523c4', '2017-05-01 09:37:03'),
(2, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '099542a1338465ce3c1156b07fe82c5e', '099542a1338465ce3c1156b07fe82c5e', '2017-05-01 09:37:07'),
(3, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'd89f171e6152b1a51ae222009f82c05b', 'd89f171e6152b1a51ae222009f82c05b', '2017-05-01 09:38:48'),
(4, 587, '', '/gamanads/hit/587/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '331da1d736dc83ff11279183aed43eef', '331da1d736dc83ff11279183aed43eef', '2017-05-02 11:16:16'),
(5, 587, '', '/gamanads/hit/587/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '7212f364532c262096f551ce994c153c', '7212f364532c262096f551ce994c153c', '2017-05-02 16:52:33'),
(6, 587, '', '/gamanads/hit/587/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '1d522dd7ebb39b7f832e375f0ad302c7', '1d522dd7ebb39b7f832e375f0ad302c7', '2017-05-02 16:52:36'),
(7, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '93df7eccfbd1f34b2c89d6a11eb01106', '93df7eccfbd1f34b2c89d6a11eb01106', '2017-05-02 16:52:46'),
(8, 587, '', '/gamanads/hit/587/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '8d2ddb1f267dea48685b53121e1083ba', '8d2ddb1f267dea48685b53121e1083ba', '2017-05-02 21:55:26'),
(9, 587, '', '/gamanads/hit/587/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '60ced9b02b2b9f36e2aaa906d5595a93', '60ced9b02b2b9f36e2aaa906d5595a93', '2017-05-02 21:55:37'),
(10, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'b1f2626ea55ba0eca31e4ba54ea163c4', 'b1f2626ea55ba0eca31e4ba54ea163c4', '2017-05-02 21:55:47'),
(11, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'dee438fa602f3c09a0ffd44ccef3a92c', 'dee438fa602f3c09a0ffd44ccef3a92c', '2017-05-02 21:56:14'),
(12, 587, '', '/gamanads/hit/587/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '3cd8c19daf70f76510c219b64aa4bee1', '3cd8c19daf70f76510c219b64aa4bee1', '2017-05-03 05:53:28'),
(13, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'dedd5d12d4fa43e13ef81c4dc5e18c46', 'dedd5d12d4fa43e13ef81c4dc5e18c46', '2017-05-03 05:53:33'),
(14, 594, '', '/gamanads/hit/594/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'ce34d77b92b44d8480a74841ba6ad676', 'ce34d77b92b44d8480a74841ba6ad676', '2017-05-03 05:54:48'),
(15, 593, '', '/gamanads/hit/593/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '6d8820d3ecf04d430b0b2a0cfe88055b', '6d8820d3ecf04d430b0b2a0cfe88055b', '2017-05-03 05:56:03'),
(16, 592, '', '/gamanads/hit/592/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '791cdd98b07f3abb15a950695e00a73e', '791cdd98b07f3abb15a950695e00a73e', '2017-05-03 05:56:45'),
(17, 591, '', '/gamanads/hit/591/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'e486f56979f1dfc373a0e1b6724caeaa', 'e486f56979f1dfc373a0e1b6724caeaa', '2017-05-03 05:56:52'),
(18, 587, '', '/gamanads/hit/587/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '16839cba329b867b3f02c85d0f4acd75', '16839cba329b867b3f02c85d0f4acd75', '2017-05-03 12:17:56'),
(19, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'fce114dac3db5214eb59359c09462048', 'fce114dac3db5214eb59359c09462048', '2017-05-03 12:18:08'),
(20, 589, '', '/gamanads/hit/589/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '17067a9cc53421261f18f90806fbfbc1', '17067a9cc53421261f18f90806fbfbc1', '2017-05-03 12:20:01'),
(21, 587, '', '/gamanads/hit/587/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'eeb970b0fd5e0ac0e9cbe3ea711b718d', 'eeb970b0fd5e0ac0e9cbe3ea711b718d', '2017-05-03 14:47:48'),
(22, 587, '', '/gamanads/hit/587/asdasd/a12/12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '05df9d8970d29a16e77c895588447ec2', '05df9d8970d29a16e77c895588447ec2', '2017-05-03 19:29:37'),
(23, 589, '', '/gamanads/hit/589/66666/qasdasd/123123213', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '1389829fdae18bb98478d12839be8093', '1389829fdae18bb98478d12839be8093', '2017-05-18 10:44:50'),
(24, 587, '', '/gamanads/hit/587/asdasd/asdasdasd/asdasd', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '9f9d1eb23d8fe77a765a5c7d31d1d29e', '9f9d1eb23d8fe77a765a5c7d31d1d29e', '2017-05-18 15:23:46'),
(25, 595, '', '/gamanads/hit/595/asdasdasd/asdasd/asdasd', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', 'bc26f46a81b8eb3e0def2a5a39d2892c', 'bc26f46a81b8eb3e0def2a5a39d2892c', '2017-05-18 15:47:42'),
(26, 594, '', '/gamanads/hit/594/asdasdasd/asdasd/asdasd', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '833271a71fab660184e918a5e6d16e7e', '833271a71fab660184e918a5e6d16e7e', '2017-05-18 15:48:12'),
(27, 587, '', '/gamanads/hit/587/1/asdasd/asdasd', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', 'ccdead4eb3abae1f9e61eb896905193e', 'ccdead4eb3abae1f9e61eb896905193e', '2017-05-26 10:53:56'),
(28, 587, '', '/gamanads/hit/587/1/asdasd/asdasd', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', 'f6c4878cb4ad8ea65aa614f6fc69c7e9', 'f6c4878cb4ad8ea65aa614f6fc69c7e9', '2017-05-26 10:55:02'),
(29, 587, '', '/gamanads/hit/587/images/ico/favicon.ico', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '0022a91295d62bcb30c552a4dbcfa689', '0022a91295d62bcb30c552a4dbcfa689', '2017-05-26 11:05:21'),
(30, 587, '', '/gamanads/hit/587////images/ico/favicon.ico', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '150ed0ae2c93b4437b2e9188e237f628', '150ed0ae2c93b4437b2e9188e237f628', '2017-05-26 11:05:36'),
(31, 587, '', '/gamanads/hit/587/', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', 'ab6a44e125490ef7867d0e6647adc47c', 'ab6a44e125490ef7867d0e6647adc47c', '2017-05-26 11:05:59'),
(32, 587, '', '/gamanads/hit/587/asdasd/asdasdasd/asdasd', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'f679e9e708e01eba99cc4780fbf57ab1', 'f679e9e708e01eba99cc4780fbf57ab1', '2017-05-26 13:49:35'),
(33, 587, '', '/gamanads/hit/587/1/asdasd/asdasd', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', 'dc0d7aeed334b0daab45986e45bcaf2f', 'dc0d7aeed334b0daab45986e45bcaf2f', '2017-05-26 13:50:05'),
(34, 587, '', '/gamanads/hit/587/asdasd/asdasdasd/asdasd', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '77dfecf8f63b4158b2bab04a3833114d', '77dfecf8f63b4158b2bab04a3833114d', '2017-05-26 13:54:27'),
(35, 587, '', '/gamanads/hit/587/1/asdasd/asdasd', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', 'b79b2388f2d067c4b42eda7bef61bc26', 'b79b2388f2d067c4b42eda7bef61bc26', '2017-05-26 14:01:43'),
(36, 587, '', '/gamanads/hit/587/1/asdasd/asdasd', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', 'f8b8e600d6bb661013b91e2285387d94', 'f8b8e600d6bb661013b91e2285387d94', '2017-05-26 14:02:38'),
(37, 587, '', '/gamanads/hit/587/images/ico/favicon.ico', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '56ff3be5f69f90be0cf3445a5421ef69', '56ff3be5f69f90be0cf3445a5421ef69', '2017-05-26 14:02:50'),
(38, 587, '', '/gamanads/hit/587/1', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', 'cd041e0bd3d4dfe9ea897e4573f1713a', 'cd041e0bd3d4dfe9ea897e4573f1713a', '2017-05-26 14:04:30'),
(39, 587, '', '/gamanads/hit/587/1?nama=denis&mandi=ok', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', 'a83dc8db4f706977af85317acb0342d7', 'a83dc8db4f706977af85317acb0342d7', '2017-05-26 14:07:24'),
(40, 587, '', '/gamanads/hit/587/1?nama=denis&mandi=ok', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '44d5a75bcb4f094712694c706eaf994b', '44d5a75bcb4f094712694c706eaf994b', '2017-05-26 14:10:41'),
(41, 587, '', '/gamanads/hit/587/1?nama=denis&mandi=ok', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '7399892dc29159fed64afb0641c1f3cc', '7399892dc29159fed64afb0641c1f3cc', '2017-05-26 14:10:49'),
(42, 587, '', '/gamanads/hit/587/1?nama=denis&mandi=ok', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '1f379d373aee35b63c79012abdf888cb', '1f379d373aee35b63c79012abdf888cb', '2017-05-26 14:11:01'),
(43, 587, '', '/gamanads/hit/587/1?nama=denis&mandi=ok', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '72b53a3512f1b01bedbfaf8dd46c40e3', '72b53a3512f1b01bedbfaf8dd46c40e3', '2017-05-26 14:15:10'),
(44, 587, '', '/gamanads/hit/587/1?nama=denis&mandi=ok', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '67a0fdba94df8cf7a8cca5d886405638', '67a0fdba94df8cf7a8cca5d886405638', '2017-05-26 14:15:29'),
(45, 587, '', '/gamanads/hit/587/1?nama=denis&mandi=ok', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '499dda2e8e7a9cfd3ffe9e994aedf8a3', '499dda2e8e7a9cfd3ffe9e994aedf8a3', '2017-05-26 14:25:17'),
(46, 587, '', '/gamanads/hit/587/1?nama=denis&mandi=ok', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '85f88fd19520e6863ecb5ced02052bfb', '85f88fd19520e6863ecb5ced02052bfb', '2017-05-26 14:25:31'),
(47, 587, '', '/gamanads/hit/587/1?nama=denis&mandi=ok', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '267ffeb4eb9be1c7ccf32fe54aec0b9a', '267ffeb4eb9be1c7ccf32fe54aec0b9a', '2017-05-26 14:25:42'),
(48, 587, '', '/gamanads/hit/587/1?nama=denis&mandi=ok', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', 'a6d2055b55277af146f1184ddfe3c75b', 'a6d2055b55277af146f1184ddfe3c75b', '2017-05-26 14:25:49'),
(49, 587, '', '/gamanads/hit/587/1?nama=denis&mandi=ok', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '72a31942b9b5ac3ac747db360b913d94', '72a31942b9b5ac3ac747db360b913d94', '2017-05-26 14:35:31'),
(50, 587, '', '/gamanads/hit/587/1?nama=denis&mandi=ok', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '2692e69df004ab62f531c658c7e93258', '2692e69df004ab62f531c658c7e93258', '2017-05-26 14:47:52'),
(51, 587, '', '/gamanads/hit/587/1?nama=denis&mandi=ok', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', 'e1ef15e2e3864d4a370a71c4fba542e0', 'e1ef15e2e3864d4a370a71c4fba542e0', '2017-05-26 14:49:31'),
(52, 587, '', '/gamanads/hit/587/1?nama=denis&mandi=ok', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', 'e91e4d79e4c813001efba0d9ec371737', 'e91e4d79e4c813001efba0d9ec371737', '2017-05-26 14:49:48'),
(53, 587, '', '/gamanads/hit/587/1?nama=denis&mandi=ok', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', 'c48b7221bd4fd1480af57f9e76d78237', 'c48b7221bd4fd1480af57f9e76d78237', '2017-05-26 14:51:16'),
(54, 587, '', '/gamanads/hit/587/1?nama=denis&mandi=ok', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '03229a65ed416ffc5cf7c9f2d701ba89', '03229a65ed416ffc5cf7c9f2d701ba89', '2017-05-26 14:53:01'),
(55, 587, '', '/gamanads/hit/587/1?nama=denis&mandi=ok', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', 'fa9be063f2810af115437c679d547133', 'fa9be063f2810af115437c679d547133', '2017-05-26 14:53:16'),
(56, 587, '', '/gamanads/hit/587?nid=%22%22&trans_id=%22%22&sub_id=%22%22', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '9d4568c009d203ab10e33ea9953a0264', '9d4568c009d203ab10e33ea9953a0264', '2017-05-26 15:11:27'),
(57, 587, '', '/gamanads/hit/587?nid=%221%22&trans_id=%22TRX212%22&sub_id=%22919191%22', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '020c2efa604e00862581cbe2596dc1d8', '020c2efa604e00862581cbe2596dc1d8', '2017-05-26 15:12:10'),
(58, 587, '', '/gamanads/hit/587?nid=%27%27&trans_id=%27%27&sub_id=%27%27', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', 'e6fda0f0d3e0adfff69e334462d1ef6a', 'e6fda0f0d3e0adfff69e334462d1ef6a', '2017-05-26 15:14:06'),
(59, 587, '', '/gamanads/hit/587?nid=&trans_id=&sub_id=', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', 'cff7125652c57cf807fb60cc94833936', 'cff7125652c57cf807fb60cc94833936', '2017-05-26 15:14:59'),
(60, 587, '', '/gamanads/hit/587?nid=&trans_id=&sub_id=', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', 'd844eb8ee8cd94ba1bc899a798c643e5', 'd844eb8ee8cd94ba1bc899a798c643e5', '2017-05-26 15:16:06'),
(61, 587, '', '/gamanads/hit/587?nid=&trans_id=&sub_id=1', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', 'f50601e738e5c9bacf3a624d5a239e18', 'f50601e738e5c9bacf3a624d5a239e18', '2017-05-26 15:16:22'),
(62, 587, '', '/gamanads/hit/587?nid=as&trans_id=&sub_id=1', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '1aac166f3773d70363732eedc08b0aad', '1aac166f3773d70363732eedc08b0aad', '2017-05-26 15:16:35'),
(63, 587, '', '/gamanads/hit/587?nid=as&trans_id=111&sub_id=1', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '698d51a19d8a121ce581499d7b701668', '698d51a19d8a121ce581499d7b701668', '2017-05-26 15:16:42'),
(64, 587, '', '/gamanads/hit/587?nid=as&trans_id=111&sub_id=1121212', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '698d51a19d8a121ce581499d7b701668', '698d51a19d8a121ce581499d7b701668', '2017-05-26 15:18:13'),
(65, 587, '', '/gamanads/hit/587?nid=as&trans_id=111&sub_id=1121212', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '698d51a19d8a121ce581499d7b701668', '698d51a19d8a121ce581499d7b701668', '2017-05-26 15:20:20'),
(66, 587, '', '/gamanads/hit/587?nid=as&trans_id=111&sub_id=1121212', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '698d51a19d8a121ce581499d7b701668', '698d51a19d8a121ce581499d7b701668', '2017-05-26 15:25:27'),
(67, 587, '', '/gamanads/hit?cid=587&nid=as&trans_id=111&sub_id=1121212', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '698d51a19d8a121ce581499d7b701668', '698d51a19d8a121ce581499d7b701668', '2017-05-26 15:38:23'),
(68, 587, '', '/gamanads/hit?cid=587&nid=as&trans_id=111&sub_id=1121212', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '698d51a19d8a121ce581499d7b701668', '698d51a19d8a121ce581499d7b701668', '2017-05-26 15:38:56'),
(69, 587, '', '/gamanads/hit?cid=587&nid=as&trans_id=21&sub_id=coba', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '3c59dc048e8850243be8079a5c74d079', '3c59dc048e8850243be8079a5c74d079', '2017-05-26 15:40:01'),
(70, 587, '', '/gamanads/hit?cid=587&nid=3&trans_id=222&sub_id=123', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', 'bcbe3365e6ac95ea2c0343a2395834dd', 'bcbe3365e6ac95ea2c0343a2395834dd', '2017-05-27 09:33:18'),
(71, 587, '', '/gamanads/hit?cid=587&trans_id=111&sub_id=1121212', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '698d51a19d8a121ce581499d7b701668', '698d51a19d8a121ce581499d7b701668', '2017-05-27 09:36:27'),
(72, 589, '', '/gamanads/hit?cid=589', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', 'da271dc7b2ff01a9335170740227237c', 'da271dc7b2ff01a9335170740227237c', '2017-05-27 17:02:07'),
(73, 596, '', '/gamanads/hit?cid=596&nid=as&trans_id=111&sub_id=1121212', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '698d51a19d8a121ce581499d7b701668', '698d51a19d8a121ce581499d7b701668', '2017-05-27 17:04:27'),
(74, 587, '', '/gamanads/hit?cid=587&nid=3&trans_id=222&sub_id=123', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', 'bcbe3365e6ac95ea2c0343a2395834dd', 'bcbe3365e6ac95ea2c0343a2395834dd', '2017-05-27 17:08:11'),
(75, 587, '', '/gamanads/hit?cid=587&nid=as&trans_id=111&sub_id=1121212', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '698d51a19d8a121ce581499d7b701668', '698d51a19d8a121ce581499d7b701668', '2017-05-27 17:08:28'),
(76, 596, '', '/gamanads/hit?cid=596&nid=3&trans_id=222&sub_id=123', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', 'bcbe3365e6ac95ea2c0343a2395834dd', 'bcbe3365e6ac95ea2c0343a2395834dd', '2017-05-27 17:09:18'),
(77, 596, '', '/gamanads/hit?cid=596&nid=&trans_id=&sub_id=', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', 'ecfc2f0a5d884c466e56f98064f24f68', 'ecfc2f0a5d884c466e56f98064f24f68', '2017-05-27 17:09:38'),
(78, 587, '', '/gamanads/hit?cid=587', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '72b7a9b04b873b8dbef18e2999039712', '72b7a9b04b873b8dbef18e2999039712', '2017-05-30 15:43:44'),
(79, 587, '', '/gamanads/hit?cid=587&nid=as&trans_id=111&sub_id=1121212', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '698d51a19d8a121ce581499d7b701668', '698d51a19d8a121ce581499d7b701668', '2017-05-31 14:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `c_click_log201706`
--

CREATE TABLE `c_click_log201706` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(10) NOT NULL,
  `referer` text NOT NULL,
  `filename` text NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `user_agent` text NOT NULL,
  `traceid` text NOT NULL,
  `session_id` varchar(100) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_click_log201707`
--

CREATE TABLE `c_click_log201707` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(10) NOT NULL,
  `referer` text NOT NULL,
  `filename` text NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `user_agent` text NOT NULL,
  `traceid` text NOT NULL,
  `session_id` varchar(100) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_click_log201708`
--

CREATE TABLE `c_click_log201708` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(10) NOT NULL,
  `referer` text NOT NULL,
  `filename` text NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `user_agent` text NOT NULL,
  `traceid` text NOT NULL,
  `session_id` varchar(100) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_click_log201709`
--

CREATE TABLE `c_click_log201709` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(10) NOT NULL,
  `referer` text NOT NULL,
  `filename` text NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `user_agent` text NOT NULL,
  `traceid` text NOT NULL,
  `session_id` varchar(100) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_click_log201710`
--

CREATE TABLE `c_click_log201710` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(10) NOT NULL,
  `referer` text NOT NULL,
  `filename` text NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `user_agent` text NOT NULL,
  `traceid` text NOT NULL,
  `session_id` varchar(100) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_click_log201711`
--

CREATE TABLE `c_click_log201711` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(10) NOT NULL,
  `referer` text NOT NULL,
  `filename` text NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `user_agent` text NOT NULL,
  `traceid` text NOT NULL,
  `session_id` varchar(100) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_click_log201712`
--

CREATE TABLE `c_click_log201712` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(10) NOT NULL,
  `referer` text NOT NULL,
  `filename` text NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `user_agent` text NOT NULL,
  `traceid` text NOT NULL,
  `session_id` varchar(100) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_cp_log_201701`
--

CREATE TABLE `c_cp_log_201701` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `subs_id` varchar(10) NOT NULL,
  `payout_client` decimal(6,2) NOT NULL DEFAULT '0.00',
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_cp_log_201702`
--

CREATE TABLE `c_cp_log_201702` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `subs_id` varchar(10) NOT NULL,
  `payout_client` decimal(6,2) NOT NULL DEFAULT '0.00',
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_cp_log_201703`
--

CREATE TABLE `c_cp_log_201703` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `subs_id` varchar(10) NOT NULL,
  `payout_client` decimal(6,2) NOT NULL DEFAULT '0.00',
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_cp_log_201704`
--

CREATE TABLE `c_cp_log_201704` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `subs_id` varchar(10) NOT NULL,
  `payout_client` decimal(6,2) NOT NULL DEFAULT '0.00',
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_cp_log_201705`
--

CREATE TABLE `c_cp_log_201705` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `subs_id` varchar(10) NOT NULL,
  `payout_client` decimal(6,2) NOT NULL DEFAULT '0.00',
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_cp_log_201706`
--

CREATE TABLE `c_cp_log_201706` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `subs_id` varchar(10) NOT NULL,
  `payout_client` decimal(6,2) NOT NULL DEFAULT '0.00',
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_cp_log_201707`
--

CREATE TABLE `c_cp_log_201707` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `subs_id` varchar(10) NOT NULL,
  `payout_client` decimal(6,2) NOT NULL DEFAULT '0.00',
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_cp_log_201708`
--

CREATE TABLE `c_cp_log_201708` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `subs_id` varchar(10) NOT NULL,
  `payout_client` decimal(6,2) NOT NULL DEFAULT '0.00',
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_cp_log_201709`
--

CREATE TABLE `c_cp_log_201709` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `subs_id` varchar(10) NOT NULL,
  `payout_client` decimal(6,2) NOT NULL DEFAULT '0.00',
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_cp_log_201710`
--

CREATE TABLE `c_cp_log_201710` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `subs_id` varchar(10) NOT NULL,
  `payout_client` decimal(6,2) NOT NULL DEFAULT '0.00',
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_cp_log_201711`
--

CREATE TABLE `c_cp_log_201711` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `subs_id` varchar(10) NOT NULL,
  `payout_client` decimal(6,2) NOT NULL DEFAULT '0.00',
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_cp_log_201712`
--

CREATE TABLE `c_cp_log_201712` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `subs_id` varchar(10) NOT NULL,
  `payout_client` decimal(6,2) NOT NULL DEFAULT '0.00',
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_cp_201701`
--

CREATE TABLE `c_daily_cp_201701` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_cp_201702`
--

CREATE TABLE `c_daily_cp_201702` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_cp_201703`
--

CREATE TABLE `c_daily_cp_201703` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_cp_201704`
--

CREATE TABLE `c_daily_cp_201704` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_cp_201705`
--

CREATE TABLE `c_daily_cp_201705` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_cp_201706`
--

CREATE TABLE `c_daily_cp_201706` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_cp_201707`
--

CREATE TABLE `c_daily_cp_201707` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_cp_201708`
--

CREATE TABLE `c_daily_cp_201708` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_cp_201709`
--

CREATE TABLE `c_daily_cp_201709` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_cp_201710`
--

CREATE TABLE `c_daily_cp_201710` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_cp_201711`
--

CREATE TABLE `c_daily_cp_201711` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_cp_201712`
--

CREATE TABLE `c_daily_cp_201712` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_hit_201701`
--

CREATE TABLE `c_daily_hit_201701` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_hit_201702`
--

CREATE TABLE `c_daily_hit_201702` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_hit_201703`
--

CREATE TABLE `c_daily_hit_201703` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_hit_201704`
--

CREATE TABLE `c_daily_hit_201704` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_daily_hit_201704`
--

INSERT INTO `c_daily_hit_201704` (`id`, `campaign_id`, `hit_date`, `jumlah`, `entry_date`) VALUES
(1, 587, '2017-04-05', 2, '2017-04-05 15:54:35'),
(2, 589, '2017-04-05', 5, '2017-04-05 15:54:50'),
(3, 334, '2017-04-05', 1, '2017-04-05 20:54:12'),
(4, 589, '2017-04-06', 2, '2017-04-06 14:09:51'),
(5, 589, '2017-04-13', 8, '2017-04-13 09:58:19'),
(6, 589, '2017-04-17', 3, '2017-04-17 14:52:00'),
(7, 589, '2017-04-01', 12, '2017-04-01 00:00:00'),
(8, 589, '2017-04-02', 10, '2017-04-02 00:00:00'),
(9, 589, '2017-04-09', 4, '2017-04-09 00:00:00'),
(10, 589, '2017-04-11', 6, '2017-04-11 00:00:00'),
(11, 589, '2017-04-10', 3, '2017-04-10 00:00:00'),
(12, 589, '2017-04-16', 3, '2017-04-16 00:00:00'),
(13, 589, '2017-04-15', 3, '2017-04-15 00:00:00'),
(14, 589, '2017-04-14', 4, '2017-04-14 00:00:00'),
(15, 589, '2017-04-12', 7, '2017-04-12 00:00:00'),
(16, 589, '2017-04-08', 7, '2017-04-08 00:00:00'),
(17, 589, '2017-04-07', 5, '2017-04-07 00:00:00'),
(19, 589, '2017-04-18', 2, '2017-04-18 12:04:21'),
(20, 589, '2017-04-19', 18, '2017-04-19 09:29:46'),
(21, 587, '2017-04-19', 4, '2017-04-19 09:31:45'),
(23, 587, '2017-04-20', 1, '2017-04-20 11:07:17'),
(24, 587, '2017-04-25', 2, '2017-04-25 09:55:59'),
(25, 589, '2017-04-25', 14, '2017-04-25 09:56:03'),
(26, 587, '2017-04-27', 2, '2017-04-27 09:15:23'),
(27, 589, '2017-04-27', 5, '2017-04-27 09:15:43');

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_hit_201705`
--

CREATE TABLE `c_daily_hit_201705` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_daily_hit_201705`
--

INSERT INTO `c_daily_hit_201705` (`id`, `campaign_id`, `hit_date`, `jumlah`, `entry_date`) VALUES
(1, 587, '2017-05-01', 1, '2017-05-01 09:37:03'),
(2, 589, '2017-05-01', 2, '2017-05-01 09:37:07'),
(3, 587, '2017-05-02', 5, '2017-05-02 11:16:16'),
(4, 589, '2017-05-02', 3, '2017-05-02 16:52:46'),
(5, 587, '2017-05-03', 4, '2017-05-03 05:53:28'),
(6, 589, '2017-05-03', 3, '2017-05-03 05:53:33'),
(7, 594, '2017-05-03', 1, '2017-05-03 05:54:48'),
(8, 593, '2017-05-03', 1, '2017-05-03 05:56:03'),
(9, 592, '2017-05-03', 1, '2017-05-03 05:56:45'),
(10, 591, '2017-05-03', 1, '2017-05-03 05:56:52'),
(11, 589, '2017-05-18', 1, '2017-05-18 10:44:50'),
(12, 587, '2017-05-18', 1, '2017-05-18 15:23:46'),
(13, 595, '2017-05-18', 1, '2017-05-18 15:47:42'),
(14, 594, '2017-05-18', 1, '2017-05-18 15:48:12'),
(15, 587, '2017-05-26', 43, '2017-05-26 10:53:56'),
(16, 587, '2017-05-27', 4, '2017-05-27 09:33:18'),
(17, 589, '2017-05-27', 1, '2017-05-27 17:02:07'),
(18, 596, '2017-05-27', 3, '2017-05-27 17:04:27'),
(19, 587, '2017-05-30', 1, '2017-05-30 15:43:44'),
(20, 587, '2017-05-31', 1, '2017-05-31 14:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_hit_201706`
--

CREATE TABLE `c_daily_hit_201706` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_hit_201707`
--

CREATE TABLE `c_daily_hit_201707` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_hit_201708`
--

CREATE TABLE `c_daily_hit_201708` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_hit_201709`
--

CREATE TABLE `c_daily_hit_201709` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_hit_201710`
--

CREATE TABLE `c_daily_hit_201710` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_hit_201711`
--

CREATE TABLE `c_daily_hit_201711` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_hit_201712`
--

CREATE TABLE `c_daily_hit_201712` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_ip_hit_201701`
--

CREATE TABLE `c_daily_ip_hit_201701` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_ip_hit_201702`
--

CREATE TABLE `c_daily_ip_hit_201702` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_ip_hit_201703`
--

CREATE TABLE `c_daily_ip_hit_201703` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_ip_hit_201704`
--

CREATE TABLE `c_daily_ip_hit_201704` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_daily_ip_hit_201704`
--

INSERT INTO `c_daily_ip_hit_201704` (`id`, `campaign_id`, `ip_address`, `hit_date`, `jumlah`, `entry_date`) VALUES
(1, 587, '::1', '2017-04-05', 2, '2017-04-05 15:54:35'),
(2, 589, '::1', '2017-04-05', 5, '2017-04-05 15:54:50'),
(3, 334, '::1', '2017-04-05', 1, '2017-04-05 20:54:12'),
(4, 589, '::1', '2017-04-06', 2, '2017-04-06 14:09:51'),
(5, 589, '::1', '2017-04-13', 8, '2017-04-13 09:58:19'),
(6, 589, '::1', '2017-04-17', 3, '2017-04-17 14:52:00'),
(7, 589, '::1', '2017-04-18', 3, '2017-04-18 10:26:56'),
(8, 589, '::1', '2017-04-19', 18, '2017-04-19 09:29:46'),
(9, 587, '::1', '2017-04-19', 4, '2017-04-19 09:31:45'),
(10, 587, '::1', '2017-04-20', 3, '2017-04-20 11:06:07'),
(11, 589, '::1', '2017-04-25', 13, '2017-04-25 10:35:22'),
(12, 587, '::1', '2017-04-25', 1, '2017-04-25 16:02:47'),
(13, 587, '::1', '2017-04-27', 2, '2017-04-27 09:15:23'),
(14, 589, '::1', '2017-04-27', 5, '2017-04-27 09:15:43');

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_ip_hit_201705`
--

CREATE TABLE `c_daily_ip_hit_201705` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_daily_ip_hit_201705`
--

INSERT INTO `c_daily_ip_hit_201705` (`id`, `campaign_id`, `ip_address`, `hit_date`, `jumlah`, `entry_date`) VALUES
(1, 587, '::1', '2017-05-01', 1, '2017-05-01 09:37:03'),
(2, 589, '::1', '2017-05-01', 2, '2017-05-01 09:37:07'),
(3, 587, '::1', '2017-05-02', 5, '2017-05-02 11:16:16'),
(4, 589, '::1', '2017-05-02', 3, '2017-05-02 16:52:46'),
(5, 587, '::1', '2017-05-03', 4, '2017-05-03 05:53:28'),
(6, 589, '::1', '2017-05-03', 3, '2017-05-03 05:53:33'),
(7, 594, '::1', '2017-05-03', 1, '2017-05-03 05:54:48'),
(8, 593, '::1', '2017-05-03', 1, '2017-05-03 05:56:03'),
(9, 592, '::1', '2017-05-03', 1, '2017-05-03 05:56:45'),
(10, 591, '::1', '2017-05-03', 1, '2017-05-03 05:56:52'),
(11, 589, '127.0.0.1', '2017-05-18', 1, '2017-05-18 10:44:50'),
(12, 587, '127.0.0.1', '2017-05-18', 1, '2017-05-18 15:23:46'),
(13, 595, '127.0.0.1', '2017-05-18', 1, '2017-05-18 15:47:42'),
(14, 594, '127.0.0.1', '2017-05-18', 1, '2017-05-18 15:48:12'),
(15, 587, '127.0.0.1', '2017-05-26', 43, '2017-05-26 10:53:56'),
(16, 587, '127.0.0.1', '2017-05-27', 4, '2017-05-27 09:33:18'),
(17, 589, '127.0.0.1', '2017-05-27', 1, '2017-05-27 17:02:07'),
(18, 596, '127.0.0.1', '2017-05-27', 3, '2017-05-27 17:04:27'),
(19, 587, '127.0.0.1', '2017-05-30', 1, '2017-05-30 15:43:45'),
(20, 587, '127.0.0.1', '2017-05-31', 1, '2017-05-31 14:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_ip_hit_201706`
--

CREATE TABLE `c_daily_ip_hit_201706` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_ip_hit_201707`
--

CREATE TABLE `c_daily_ip_hit_201707` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_ip_hit_201708`
--

CREATE TABLE `c_daily_ip_hit_201708` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_ip_hit_201709`
--

CREATE TABLE `c_daily_ip_hit_201709` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_ip_hit_201710`
--

CREATE TABLE `c_daily_ip_hit_201710` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_ip_hit_201711`
--

CREATE TABLE `c_daily_ip_hit_201711` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_ip_hit_201712`
--

CREATE TABLE `c_daily_ip_hit_201712` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_referer_hit_201701`
--

CREATE TABLE `c_daily_referer_hit_201701` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_referer_hit_201702`
--

CREATE TABLE `c_daily_referer_hit_201702` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_referer_hit_201703`
--

CREATE TABLE `c_daily_referer_hit_201703` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_referer_hit_201704`
--

CREATE TABLE `c_daily_referer_hit_201704` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_daily_referer_hit_201704`
--

INSERT INTO `c_daily_referer_hit_201704` (`id`, `campaign_id`, `referer`, `hit_date`, `jumlah`, `entry_date`) VALUES
(1, 587, '', '2017-04-05', 2, '2017-04-05 15:54:35'),
(2, 589, '', '2017-04-05', 5, '2017-04-05 15:54:50'),
(3, 334, '', '2017-04-05', 1, '2017-04-05 20:54:12'),
(4, 589, '', '2017-04-06', 2, '2017-04-06 14:09:51'),
(5, 589, '', '2017-04-13', 8, '2017-04-13 09:58:19'),
(6, 589, '', '2017-04-17', 3, '2017-04-17 14:52:00'),
(7, 589, '', '2017-04-18', 3, '2017-04-18 10:26:56'),
(8, 589, '', '2017-04-19', 18, '2017-04-19 09:29:46'),
(9, 587, '', '2017-04-19', 4, '2017-04-19 09:31:45'),
(10, 587, '', '2017-04-20', 3, '2017-04-20 11:06:07'),
(11, 589, '', '2017-04-25', 13, '2017-04-25 10:35:22'),
(12, 587, '', '2017-04-25', 1, '2017-04-25 16:02:47'),
(13, 587, '', '2017-04-27', 2, '2017-04-27 09:15:23'),
(14, 589, '', '2017-04-27', 5, '2017-04-27 09:15:43');

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_referer_hit_201705`
--

CREATE TABLE `c_daily_referer_hit_201705` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_daily_referer_hit_201705`
--

INSERT INTO `c_daily_referer_hit_201705` (`id`, `campaign_id`, `referer`, `hit_date`, `jumlah`, `entry_date`) VALUES
(1, 587, '', '2017-05-01', 1, '2017-05-01 09:37:03'),
(2, 589, '', '2017-05-01', 2, '2017-05-01 09:37:07'),
(3, 587, '', '2017-05-02', 5, '2017-05-02 11:16:16'),
(4, 589, '', '2017-05-02', 3, '2017-05-02 16:52:46'),
(5, 587, '', '2017-05-03', 4, '2017-05-03 05:53:28'),
(6, 589, '', '2017-05-03', 3, '2017-05-03 05:53:33'),
(7, 594, '', '2017-05-03', 1, '2017-05-03 05:54:48'),
(8, 593, '', '2017-05-03', 1, '2017-05-03 05:56:03'),
(9, 592, '', '2017-05-03', 1, '2017-05-03 05:56:45'),
(10, 591, '', '2017-05-03', 1, '2017-05-03 05:56:52'),
(11, 589, '', '2017-05-18', 1, '2017-05-18 10:44:50'),
(12, 587, '', '2017-05-18', 1, '2017-05-18 15:23:46'),
(13, 595, '', '2017-05-18', 1, '2017-05-18 15:47:42'),
(14, 594, '', '2017-05-18', 1, '2017-05-18 15:48:12'),
(15, 587, '', '2017-05-26', 43, '2017-05-26 10:53:56'),
(16, 587, '', '2017-05-27', 4, '2017-05-27 09:33:18'),
(17, 589, '', '2017-05-27', 1, '2017-05-27 17:02:07'),
(18, 596, '', '2017-05-27', 3, '2017-05-27 17:04:27'),
(19, 587, '', '2017-05-30', 1, '2017-05-30 15:43:45'),
(20, 587, '', '2017-05-31', 1, '2017-05-31 14:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_referer_hit_201706`
--

CREATE TABLE `c_daily_referer_hit_201706` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_referer_hit_201707`
--

CREATE TABLE `c_daily_referer_hit_201707` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_referer_hit_201708`
--

CREATE TABLE `c_daily_referer_hit_201708` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_referer_hit_201709`
--

CREATE TABLE `c_daily_referer_hit_201709` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_referer_hit_201710`
--

CREATE TABLE `c_daily_referer_hit_201710` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_referer_hit_201711`
--

CREATE TABLE `c_daily_referer_hit_201711` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_referer_hit_201712`
--

CREATE TABLE `c_daily_referer_hit_201712` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_sms_201701`
--

CREATE TABLE `c_daily_sms_201701` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_sms_201702`
--

CREATE TABLE `c_daily_sms_201702` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_sms_201703`
--

CREATE TABLE `c_daily_sms_201703` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_sms_201704`
--

CREATE TABLE `c_daily_sms_201704` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_sms_201705`
--

CREATE TABLE `c_daily_sms_201705` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_sms_201706`
--

CREATE TABLE `c_daily_sms_201706` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_sms_201707`
--

CREATE TABLE `c_daily_sms_201707` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_sms_201708`
--

CREATE TABLE `c_daily_sms_201708` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_sms_201709`
--

CREATE TABLE `c_daily_sms_201709` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_sms_201710`
--

CREATE TABLE `c_daily_sms_201710` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_sms_201711`
--

CREATE TABLE `c_daily_sms_201711` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_sms_201712`
--

CREATE TABLE `c_daily_sms_201712` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_ua_hit_201701`
--

CREATE TABLE `c_daily_ua_hit_201701` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_ua_hit_201702`
--

CREATE TABLE `c_daily_ua_hit_201702` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_ua_hit_201703`
--

CREATE TABLE `c_daily_ua_hit_201703` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_ua_hit_201704`
--

CREATE TABLE `c_daily_ua_hit_201704` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_daily_ua_hit_201704`
--

INSERT INTO `c_daily_ua_hit_201704` (`id`, `campaign_id`, `user_agent`, `hit_date`, `jumlah`, `entry_date`) VALUES
(1, 587, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-04-05', 2, '2017-04-05 15:54:35'),
(2, 589, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-04-05', 5, '2017-04-05 15:54:50'),
(3, 334, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-04-05', 1, '2017-04-05 20:54:12'),
(4, 589, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-06', 2, '2017-04-06 14:09:51'),
(5, 589, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-13', 8, '2017-04-13 09:58:19'),
(6, 589, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-17', 3, '2017-04-17 14:52:00'),
(7, 589, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-18', 3, '2017-04-18 10:26:56'),
(8, 589, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-19', 18, '2017-04-19 09:29:46'),
(9, 587, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-19', 4, '2017-04-19 09:31:45'),
(10, 587, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-20', 3, '2017-04-20 11:06:07'),
(11, 589, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-25', 13, '2017-04-25 10:35:22'),
(12, 587, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-25', 1, '2017-04-25 16:02:47'),
(13, 587, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-27', 2, '2017-04-27 09:15:23'),
(14, 589, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-27', 5, '2017-04-27 09:15:43');

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_ua_hit_201705`
--

CREATE TABLE `c_daily_ua_hit_201705` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_daily_ua_hit_201705`
--

INSERT INTO `c_daily_ua_hit_201705` (`id`, `campaign_id`, `user_agent`, `hit_date`, `jumlah`, `entry_date`) VALUES
(1, 587, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-05-01', 1, '2017-05-01 09:37:03'),
(2, 589, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-05-01', 2, '2017-05-01 09:37:07'),
(3, 587, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-05-02', 5, '2017-05-02 11:16:16'),
(4, 589, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-05-02', 3, '2017-05-02 16:52:46'),
(5, 587, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-05-03', 4, '2017-05-03 05:53:28'),
(6, 589, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-05-03', 3, '2017-05-03 05:53:33'),
(7, 594, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-05-03', 1, '2017-05-03 05:54:48'),
(8, 593, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-05-03', 1, '2017-05-03 05:56:03'),
(9, 592, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-05-03', 1, '2017-05-03 05:56:45'),
(10, 591, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-05-03', 1, '2017-05-03 05:56:52'),
(11, 589, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-18', 1, '2017-05-18 10:44:50'),
(12, 587, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-18', 1, '2017-05-18 15:23:46'),
(13, 595, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '2017-05-18', 1, '2017-05-18 15:47:42'),
(14, 594, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '2017-05-18', 1, '2017-05-18 15:48:12'),
(15, 587, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '2017-05-26', 41, '2017-05-26 10:53:56'),
(16, 587, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-26', 2, '2017-05-26 13:49:36'),
(17, 587, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '2017-05-27', 4, '2017-05-27 09:33:18'),
(18, 589, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '2017-05-27', 1, '2017-05-27 17:02:07'),
(19, 596, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '2017-05-27', 3, '2017-05-27 17:04:27'),
(20, 587, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-30', 1, '2017-05-30 15:43:45'),
(21, 587, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '2017-05-31', 1, '2017-05-31 14:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_ua_hit_201706`
--

CREATE TABLE `c_daily_ua_hit_201706` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_ua_hit_201707`
--

CREATE TABLE `c_daily_ua_hit_201707` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_ua_hit_201708`
--

CREATE TABLE `c_daily_ua_hit_201708` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_ua_hit_201709`
--

CREATE TABLE `c_daily_ua_hit_201709` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_ua_hit_201710`
--

CREATE TABLE `c_daily_ua_hit_201710` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_ua_hit_201711`
--

CREATE TABLE `c_daily_ua_hit_201711` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_daily_ua_hit_201712`
--

CREATE TABLE `c_daily_ua_hit_201712` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_cp_201701`
--

CREATE TABLE `c_hourly_cp_201701` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_cp_201702`
--

CREATE TABLE `c_hourly_cp_201702` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_cp_201703`
--

CREATE TABLE `c_hourly_cp_201703` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_cp_201704`
--

CREATE TABLE `c_hourly_cp_201704` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_cp_201705`
--

CREATE TABLE `c_hourly_cp_201705` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_cp_201706`
--

CREATE TABLE `c_hourly_cp_201706` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_cp_201707`
--

CREATE TABLE `c_hourly_cp_201707` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_cp_201708`
--

CREATE TABLE `c_hourly_cp_201708` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_cp_201709`
--

CREATE TABLE `c_hourly_cp_201709` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_cp_201710`
--

CREATE TABLE `c_hourly_cp_201710` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_cp_201711`
--

CREATE TABLE `c_hourly_cp_201711` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_cp_201712`
--

CREATE TABLE `c_hourly_cp_201712` (
  `id` int(5) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_hit_201701`
--

CREATE TABLE `c_hourly_hit_201701` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_hit_201702`
--

CREATE TABLE `c_hourly_hit_201702` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_hit_201703`
--

CREATE TABLE `c_hourly_hit_201703` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_hit_201704`
--

CREATE TABLE `c_hourly_hit_201704` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_hourly_hit_201704`
--

INSERT INTO `c_hourly_hit_201704` (`id`, `campaign_id`, `hit_date`, `jam`, `jumlah`, `entry_date`) VALUES
(1, 587, '2017-04-05', 10, 1, '2017-04-05 15:54:35'),
(2, 589, '2017-04-05', 10, 1, '2017-04-05 15:54:50'),
(3, 589, '2017-04-05', 11, 4, '2017-04-05 16:22:13'),
(4, 587, '2017-04-05', 11, 1, '2017-04-05 16:25:42'),
(5, 334, '2017-04-05', 15, 1, '2017-04-05 20:54:12'),
(6, 589, '2017-04-06', 9, 2, '2017-04-06 14:09:51'),
(7, 589, '2017-04-13', 4, 2, '2017-04-13 09:58:19'),
(8, 589, '2017-04-13', 5, 6, '2017-04-13 10:04:59'),
(9, 589, '2017-04-17', 9, 3, '2017-04-17 14:52:00'),
(10, 589, '2017-04-18', 5, 1, '2017-04-18 10:26:56'),
(11, 589, '2017-04-18', 7, 1, '2017-04-18 12:04:21'),
(12, 589, '2017-04-18', 9, 1, '2017-04-18 14:33:46'),
(13, 589, '2017-04-19', 4, 18, '2017-04-19 09:29:46'),
(14, 587, '2017-04-19', 4, 4, '2017-04-19 09:31:45'),
(15, 587, '2017-04-20', 6, 3, '2017-04-20 11:06:07'),
(16, 589, '2017-04-25', 5, 7, '2017-04-25 10:35:22'),
(17, 589, '2017-04-25', 6, 6, '2017-04-25 11:10:02'),
(18, 587, '2017-04-25', 11, 1, '2017-04-25 16:02:47'),
(19, 587, '2017-04-27', 4, 2, '2017-04-27 09:15:23'),
(20, 589, '2017-04-27', 4, 5, '2017-04-27 09:15:43');

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_hit_201705`
--

CREATE TABLE `c_hourly_hit_201705` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_hourly_hit_201705`
--

INSERT INTO `c_hourly_hit_201705` (`id`, `campaign_id`, `hit_date`, `jam`, `jumlah`, `entry_date`) VALUES
(1, 587, '2017-05-01', 4, 1, '2017-05-01 09:37:03'),
(2, 589, '2017-05-01', 4, 2, '2017-05-01 09:37:07'),
(3, 587, '2017-05-02', 6, 1, '2017-05-02 11:16:16'),
(4, 587, '2017-05-02', 11, 2, '2017-05-02 16:52:34'),
(5, 589, '2017-05-02', 11, 1, '2017-05-02 16:52:46'),
(6, 587, '2017-05-02', 16, 2, '2017-05-02 21:55:26'),
(7, 589, '2017-05-02', 16, 2, '2017-05-02 21:55:47'),
(8, 587, '2017-05-03', 0, 1, '2017-05-03 05:53:28'),
(9, 589, '2017-05-03', 0, 1, '2017-05-03 05:53:33'),
(10, 594, '2017-05-03', 0, 1, '2017-05-03 05:54:48'),
(11, 593, '2017-05-03', 0, 1, '2017-05-03 05:56:03'),
(12, 592, '2017-05-03', 0, 1, '2017-05-03 05:56:45'),
(13, 591, '2017-05-03', 0, 1, '2017-05-03 05:56:52'),
(14, 587, '2017-05-03', 7, 1, '2017-05-03 12:17:56'),
(15, 589, '2017-05-03', 7, 2, '2017-05-03 12:18:08'),
(16, 587, '2017-05-03', 9, 1, '2017-05-03 14:47:48'),
(17, 587, '2017-05-03', 14, 1, '2017-05-03 19:29:37'),
(18, 589, '2017-05-18', 10, 1, '2017-05-18 10:44:50'),
(19, 587, '2017-05-18', 15, 1, '2017-05-18 15:23:46'),
(20, 595, '2017-05-18', 15, 1, '2017-05-18 15:47:42'),
(21, 594, '2017-05-18', 15, 1, '2017-05-18 15:48:12'),
(22, 587, '2017-05-26', 10, 2, '2017-05-26 10:53:56'),
(23, 587, '2017-05-26', 11, 3, '2017-05-26 11:05:21'),
(24, 587, '2017-05-26', 13, 3, '2017-05-26 13:49:36'),
(25, 587, '2017-05-26', 14, 21, '2017-05-26 14:01:43'),
(26, 587, '2017-05-26', 15, 14, '2017-05-26 15:11:27'),
(27, 587, '2017-05-27', 9, 2, '2017-05-27 09:33:18'),
(28, 589, '2017-05-27', 17, 1, '2017-05-27 17:02:07'),
(29, 596, '2017-05-27', 17, 3, '2017-05-27 17:04:27'),
(30, 587, '2017-05-27', 17, 2, '2017-05-27 17:08:11'),
(31, 587, '2017-05-30', 15, 1, '2017-05-30 15:43:45'),
(32, 587, '2017-05-31', 14, 1, '2017-05-31 14:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_hit_201706`
--

CREATE TABLE `c_hourly_hit_201706` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_hit_201707`
--

CREATE TABLE `c_hourly_hit_201707` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_hit_201708`
--

CREATE TABLE `c_hourly_hit_201708` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_hit_201709`
--

CREATE TABLE `c_hourly_hit_201709` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_hit_201710`
--

CREATE TABLE `c_hourly_hit_201710` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_hit_201711`
--

CREATE TABLE `c_hourly_hit_201711` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_hit_201712`
--

CREATE TABLE `c_hourly_hit_201712` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_ip_hit_201701`
--

CREATE TABLE `c_hourly_ip_hit_201701` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_ip_hit_201702`
--

CREATE TABLE `c_hourly_ip_hit_201702` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_ip_hit_201703`
--

CREATE TABLE `c_hourly_ip_hit_201703` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_ip_hit_201704`
--

CREATE TABLE `c_hourly_ip_hit_201704` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_hourly_ip_hit_201704`
--

INSERT INTO `c_hourly_ip_hit_201704` (`id`, `campaign_id`, `ip_address`, `hit_date`, `jam`, `jumlah`, `entry_date`) VALUES
(1, 587, '::1', '2017-04-05', 10, 1, '2017-04-05 15:54:35'),
(2, 589, '::1', '2017-04-05', 10, 1, '2017-04-05 15:54:50'),
(3, 589, '::1', '2017-04-05', 11, 4, '2017-04-05 16:22:13'),
(4, 587, '::1', '2017-04-05', 11, 1, '2017-04-05 16:25:42'),
(5, 334, '::1', '2017-04-05', 15, 1, '2017-04-05 20:54:12'),
(6, 589, '::1', '2017-04-06', 9, 2, '2017-04-06 14:09:51'),
(7, 589, '::1', '2017-04-13', 4, 2, '2017-04-13 09:58:19'),
(8, 589, '::1', '2017-04-13', 5, 6, '2017-04-13 10:04:59'),
(9, 589, '::1', '2017-04-17', 9, 3, '2017-04-17 14:52:00'),
(10, 589, '::1', '2017-04-18', 5, 1, '2017-04-18 10:26:56'),
(11, 589, '::1', '2017-04-18', 7, 1, '2017-04-18 12:04:21'),
(12, 589, '::1', '2017-04-18', 9, 1, '2017-04-18 14:33:46'),
(13, 589, '::1', '2017-04-19', 4, 18, '2017-04-19 09:29:46'),
(14, 587, '::1', '2017-04-19', 4, 4, '2017-04-19 09:31:45'),
(15, 587, '::1', '2017-04-20', 6, 3, '2017-04-20 11:06:07'),
(16, 589, '::1', '2017-04-25', 5, 7, '2017-04-25 10:35:22'),
(17, 589, '::1', '2017-04-25', 6, 6, '2017-04-25 11:10:02'),
(18, 587, '::1', '2017-04-25', 11, 1, '2017-04-25 16:02:47'),
(19, 587, '::1', '2017-04-27', 4, 2, '2017-04-27 09:15:23'),
(20, 589, '::1', '2017-04-27', 4, 5, '2017-04-27 09:15:43');

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_ip_hit_201705`
--

CREATE TABLE `c_hourly_ip_hit_201705` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_hourly_ip_hit_201705`
--

INSERT INTO `c_hourly_ip_hit_201705` (`id`, `campaign_id`, `ip_address`, `hit_date`, `jam`, `jumlah`, `entry_date`) VALUES
(1, 587, '::1', '2017-05-01', 4, 1, '2017-05-01 09:37:03'),
(2, 589, '::1', '2017-05-01', 4, 2, '2017-05-01 09:37:07'),
(3, 587, '::1', '2017-05-02', 6, 1, '2017-05-02 11:16:16'),
(4, 587, '::1', '2017-05-02', 11, 2, '2017-05-02 16:52:34'),
(5, 589, '::1', '2017-05-02', 11, 1, '2017-05-02 16:52:46'),
(6, 587, '::1', '2017-05-02', 16, 2, '2017-05-02 21:55:26'),
(7, 589, '::1', '2017-05-02', 16, 2, '2017-05-02 21:55:47'),
(8, 587, '::1', '2017-05-03', 0, 1, '2017-05-03 05:53:28'),
(9, 589, '::1', '2017-05-03', 0, 1, '2017-05-03 05:53:33'),
(10, 594, '::1', '2017-05-03', 0, 1, '2017-05-03 05:54:48'),
(11, 593, '::1', '2017-05-03', 0, 1, '2017-05-03 05:56:03'),
(12, 592, '::1', '2017-05-03', 0, 1, '2017-05-03 05:56:45'),
(13, 591, '::1', '2017-05-03', 0, 1, '2017-05-03 05:56:52'),
(14, 587, '::1', '2017-05-03', 7, 1, '2017-05-03 12:17:56'),
(15, 589, '::1', '2017-05-03', 7, 2, '2017-05-03 12:18:08'),
(16, 587, '::1', '2017-05-03', 9, 1, '2017-05-03 14:47:48'),
(17, 587, '::1', '2017-05-03', 14, 1, '2017-05-03 19:29:37'),
(18, 589, '127.0.0.1', '2017-05-18', 10, 1, '2017-05-18 10:44:50'),
(19, 587, '127.0.0.1', '2017-05-18', 15, 1, '2017-05-18 15:23:46'),
(20, 595, '127.0.0.1', '2017-05-18', 15, 1, '2017-05-18 15:47:42'),
(21, 594, '127.0.0.1', '2017-05-18', 15, 1, '2017-05-18 15:48:12'),
(22, 587, '127.0.0.1', '2017-05-26', 10, 2, '2017-05-26 10:53:56'),
(23, 587, '127.0.0.1', '2017-05-26', 11, 3, '2017-05-26 11:05:21'),
(24, 587, '127.0.0.1', '2017-05-26', 13, 3, '2017-05-26 13:49:36'),
(25, 587, '127.0.0.1', '2017-05-26', 14, 21, '2017-05-26 14:01:43'),
(26, 587, '127.0.0.1', '2017-05-26', 15, 14, '2017-05-26 15:11:27'),
(27, 587, '127.0.0.1', '2017-05-27', 9, 2, '2017-05-27 09:33:18'),
(28, 589, '127.0.0.1', '2017-05-27', 17, 1, '2017-05-27 17:02:07'),
(29, 596, '127.0.0.1', '2017-05-27', 17, 3, '2017-05-27 17:04:27'),
(30, 587, '127.0.0.1', '2017-05-27', 17, 2, '2017-05-27 17:08:11'),
(31, 587, '127.0.0.1', '2017-05-30', 15, 1, '2017-05-30 15:43:45'),
(32, 587, '127.0.0.1', '2017-05-31', 14, 1, '2017-05-31 14:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_ip_hit_201706`
--

CREATE TABLE `c_hourly_ip_hit_201706` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_ip_hit_201707`
--

CREATE TABLE `c_hourly_ip_hit_201707` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_ip_hit_201708`
--

CREATE TABLE `c_hourly_ip_hit_201708` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_ip_hit_201709`
--

CREATE TABLE `c_hourly_ip_hit_201709` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_ip_hit_201710`
--

CREATE TABLE `c_hourly_ip_hit_201710` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_ip_hit_201711`
--

CREATE TABLE `c_hourly_ip_hit_201711` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_ip_hit_201712`
--

CREATE TABLE `c_hourly_ip_hit_201712` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_referer_hit_201701`
--

CREATE TABLE `c_hourly_referer_hit_201701` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_referer_hit_201702`
--

CREATE TABLE `c_hourly_referer_hit_201702` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_referer_hit_201703`
--

CREATE TABLE `c_hourly_referer_hit_201703` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_referer_hit_201704`
--

CREATE TABLE `c_hourly_referer_hit_201704` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_hourly_referer_hit_201704`
--

INSERT INTO `c_hourly_referer_hit_201704` (`id`, `campaign_id`, `referer`, `hit_date`, `jam`, `jumlah`, `entry_date`) VALUES
(1, 587, '', '2017-04-05', 10, 1, '2017-04-05 15:54:35'),
(2, 589, '', '2017-04-05', 10, 1, '2017-04-05 15:54:50'),
(3, 589, '', '2017-04-05', 11, 4, '2017-04-05 16:22:13'),
(4, 587, '', '2017-04-05', 11, 1, '2017-04-05 16:25:42'),
(5, 334, '', '2017-04-05', 15, 1, '2017-04-05 20:54:12'),
(6, 589, '', '2017-04-06', 9, 2, '2017-04-06 14:09:51'),
(7, 589, '', '2017-04-13', 4, 2, '2017-04-13 09:58:19'),
(8, 589, '', '2017-04-13', 5, 6, '2017-04-13 10:04:59'),
(9, 589, '', '2017-04-17', 9, 3, '2017-04-17 14:52:00'),
(10, 589, '', '2017-04-18', 5, 1, '2017-04-18 10:26:56'),
(11, 589, '', '2017-04-18', 7, 1, '2017-04-18 12:04:21'),
(12, 589, '', '2017-04-18', 9, 1, '2017-04-18 14:33:46'),
(13, 589, '', '2017-04-19', 4, 18, '2017-04-19 09:29:46'),
(14, 587, '', '2017-04-19', 4, 4, '2017-04-19 09:31:45'),
(15, 587, '', '2017-04-20', 6, 3, '2017-04-20 11:06:07'),
(16, 589, '', '2017-04-25', 5, 7, '2017-04-25 10:35:22'),
(17, 589, '', '2017-04-25', 6, 6, '2017-04-25 11:10:02'),
(18, 587, '', '2017-04-25', 11, 1, '2017-04-25 16:02:47'),
(19, 587, '', '2017-04-27', 4, 2, '2017-04-27 09:15:23'),
(20, 589, '', '2017-04-27', 4, 5, '2017-04-27 09:15:43');

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_referer_hit_201705`
--

CREATE TABLE `c_hourly_referer_hit_201705` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_hourly_referer_hit_201705`
--

INSERT INTO `c_hourly_referer_hit_201705` (`id`, `campaign_id`, `referer`, `hit_date`, `jam`, `jumlah`, `entry_date`) VALUES
(1, 587, '', '2017-05-01', 4, 1, '2017-05-01 09:37:03'),
(2, 589, '', '2017-05-01', 4, 2, '2017-05-01 09:37:07'),
(3, 587, '', '2017-05-02', 6, 1, '2017-05-02 11:16:16'),
(4, 587, '', '2017-05-02', 11, 2, '2017-05-02 16:52:34'),
(5, 589, '', '2017-05-02', 11, 1, '2017-05-02 16:52:46'),
(6, 587, '', '2017-05-02', 16, 2, '2017-05-02 21:55:26'),
(7, 589, '', '2017-05-02', 16, 2, '2017-05-02 21:55:47'),
(8, 587, '', '2017-05-03', 0, 1, '2017-05-03 05:53:28'),
(9, 589, '', '2017-05-03', 0, 1, '2017-05-03 05:53:33'),
(10, 594, '', '2017-05-03', 0, 1, '2017-05-03 05:54:48'),
(11, 593, '', '2017-05-03', 0, 1, '2017-05-03 05:56:03'),
(12, 592, '', '2017-05-03', 0, 1, '2017-05-03 05:56:45'),
(13, 591, '', '2017-05-03', 0, 1, '2017-05-03 05:56:52'),
(14, 587, '', '2017-05-03', 7, 1, '2017-05-03 12:17:56'),
(15, 589, '', '2017-05-03', 7, 2, '2017-05-03 12:18:08'),
(16, 587, '', '2017-05-03', 9, 1, '2017-05-03 14:47:48'),
(17, 587, '', '2017-05-03', 14, 1, '2017-05-03 19:29:37'),
(18, 589, '', '2017-05-18', 10, 1, '2017-05-18 10:44:50'),
(19, 587, '', '2017-05-18', 15, 1, '2017-05-18 15:23:46'),
(20, 595, '', '2017-05-18', 15, 1, '2017-05-18 15:47:42'),
(21, 594, '', '2017-05-18', 15, 1, '2017-05-18 15:48:12'),
(22, 587, '', '2017-05-26', 10, 2, '2017-05-26 10:53:56'),
(23, 587, '', '2017-05-26', 11, 3, '2017-05-26 11:05:21'),
(24, 587, '', '2017-05-26', 13, 3, '2017-05-26 13:49:36'),
(25, 587, '', '2017-05-26', 14, 21, '2017-05-26 14:01:43'),
(26, 587, '', '2017-05-26', 15, 14, '2017-05-26 15:11:27'),
(27, 587, '', '2017-05-27', 9, 2, '2017-05-27 09:33:18'),
(28, 589, '', '2017-05-27', 17, 1, '2017-05-27 17:02:07'),
(29, 596, '', '2017-05-27', 17, 3, '2017-05-27 17:04:27'),
(30, 587, '', '2017-05-27', 17, 2, '2017-05-27 17:08:11'),
(31, 587, '', '2017-05-30', 15, 1, '2017-05-30 15:43:45'),
(32, 587, '', '2017-05-31', 14, 1, '2017-05-31 14:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_referer_hit_201706`
--

CREATE TABLE `c_hourly_referer_hit_201706` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_referer_hit_201707`
--

CREATE TABLE `c_hourly_referer_hit_201707` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_referer_hit_201708`
--

CREATE TABLE `c_hourly_referer_hit_201708` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_referer_hit_201709`
--

CREATE TABLE `c_hourly_referer_hit_201709` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_referer_hit_201710`
--

CREATE TABLE `c_hourly_referer_hit_201710` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_referer_hit_201711`
--

CREATE TABLE `c_hourly_referer_hit_201711` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_referer_hit_201712`
--

CREATE TABLE `c_hourly_referer_hit_201712` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `referer` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_sms_201701`
--

CREATE TABLE `c_hourly_sms_201701` (
  `id` bigint(10) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_sms_201702`
--

CREATE TABLE `c_hourly_sms_201702` (
  `id` bigint(10) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_sms_201703`
--

CREATE TABLE `c_hourly_sms_201703` (
  `id` bigint(10) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_sms_201704`
--

CREATE TABLE `c_hourly_sms_201704` (
  `id` bigint(10) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_sms_201705`
--

CREATE TABLE `c_hourly_sms_201705` (
  `id` bigint(10) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_sms_201706`
--

CREATE TABLE `c_hourly_sms_201706` (
  `id` bigint(10) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_sms_201707`
--

CREATE TABLE `c_hourly_sms_201707` (
  `id` bigint(10) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_sms_201708`
--

CREATE TABLE `c_hourly_sms_201708` (
  `id` bigint(10) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_sms_201709`
--

CREATE TABLE `c_hourly_sms_201709` (
  `id` bigint(10) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_sms_201710`
--

CREATE TABLE `c_hourly_sms_201710` (
  `id` bigint(10) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_sms_201711`
--

CREATE TABLE `c_hourly_sms_201711` (
  `id` bigint(10) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_sms_201712`
--

CREATE TABLE `c_hourly_sms_201712` (
  `id` bigint(10) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `sms_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_ua_hit_201701`
--

CREATE TABLE `c_hourly_ua_hit_201701` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_ua_hit_201702`
--

CREATE TABLE `c_hourly_ua_hit_201702` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_ua_hit_201703`
--

CREATE TABLE `c_hourly_ua_hit_201703` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_ua_hit_201704`
--

CREATE TABLE `c_hourly_ua_hit_201704` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_hourly_ua_hit_201704`
--

INSERT INTO `c_hourly_ua_hit_201704` (`id`, `campaign_id`, `user_agent`, `hit_date`, `jam`, `jumlah`, `entry_date`) VALUES
(1, 587, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-04-05', 10, 1, '2017-04-05 15:54:35'),
(2, 589, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-04-05', 10, 1, '2017-04-05 15:54:50'),
(3, 589, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-04-05', 11, 4, '2017-04-05 16:22:13'),
(4, 587, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-04-05', 11, 1, '2017-04-05 16:25:42'),
(5, 334, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2017-04-05', 15, 1, '2017-04-05 20:54:12'),
(6, 589, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-06', 9, 2, '2017-04-06 14:09:51'),
(7, 589, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-13', 4, 2, '2017-04-13 09:58:19'),
(8, 589, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-13', 5, 6, '2017-04-13 10:04:59'),
(9, 589, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-17', 9, 3, '2017-04-17 14:52:00'),
(10, 589, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-18', 5, 1, '2017-04-18 10:26:56'),
(11, 589, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-18', 7, 1, '2017-04-18 12:04:21'),
(12, 589, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-18', 9, 1, '2017-04-18 14:33:46'),
(13, 589, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-19', 4, 18, '2017-04-19 09:29:46'),
(14, 587, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-19', 4, 4, '2017-04-19 09:31:45'),
(15, 587, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-20', 6, 3, '2017-04-20 11:06:08'),
(16, 589, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-25', 5, 7, '2017-04-25 10:35:22'),
(17, 589, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-25', 6, 6, '2017-04-25 11:10:02'),
(18, 587, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-25', 11, 1, '2017-04-25 16:02:47'),
(19, 587, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-27', 4, 2, '2017-04-27 09:15:23'),
(20, 589, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-04-27', 4, 5, '2017-04-27 09:15:43');

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_ua_hit_201705`
--

CREATE TABLE `c_hourly_ua_hit_201705` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_hourly_ua_hit_201705`
--

INSERT INTO `c_hourly_ua_hit_201705` (`id`, `campaign_id`, `user_agent`, `hit_date`, `jam`, `jumlah`, `entry_date`) VALUES
(1, 587, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-05-01', 4, 1, '2017-05-01 09:37:03'),
(2, 589, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-05-01', 4, 2, '2017-05-01 09:37:07'),
(3, 587, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-05-02', 6, 1, '2017-05-02 11:16:16'),
(4, 587, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-05-02', 11, 2, '2017-05-02 16:52:34'),
(5, 589, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-05-02', 11, 1, '2017-05-02 16:52:46'),
(6, 587, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-05-02', 16, 2, '2017-05-02 21:55:26'),
(7, 589, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-05-02', 16, 2, '2017-05-02 21:55:47'),
(8, 587, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-05-03', 0, 1, '2017-05-03 05:53:28'),
(9, 589, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-05-03', 0, 1, '2017-05-03 05:53:33'),
(10, 594, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-05-03', 0, 1, '2017-05-03 05:54:48'),
(11, 593, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-05-03', 0, 1, '2017-05-03 05:56:03'),
(12, 592, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-05-03', 0, 1, '2017-05-03 05:56:45'),
(13, 591, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-05-03', 0, 1, '2017-05-03 05:56:52'),
(14, 587, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-05-03', 7, 1, '2017-05-03 12:17:56'),
(15, 589, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-05-03', 7, 2, '2017-05-03 12:18:08'),
(16, 587, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-05-03', 9, 1, '2017-05-03 14:47:48'),
(17, 587, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', '2017-05-03', 14, 1, '2017-05-03 19:29:37'),
(18, 589, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-18', 10, 1, '2017-05-18 10:44:50'),
(19, 587, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-18', 15, 1, '2017-05-18 15:23:47'),
(20, 595, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '2017-05-18', 15, 1, '2017-05-18 15:47:42'),
(21, 594, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '2017-05-18', 15, 1, '2017-05-18 15:48:12'),
(22, 587, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '2017-05-26', 10, 2, '2017-05-26 10:53:56'),
(23, 587, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '2017-05-26', 11, 3, '2017-05-26 11:05:21'),
(24, 587, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-26', 13, 2, '2017-05-26 13:49:36'),
(25, 587, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '2017-05-26', 13, 1, '2017-05-26 13:50:05'),
(26, 587, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '2017-05-26', 14, 21, '2017-05-26 14:01:43'),
(27, 587, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '2017-05-26', 15, 14, '2017-05-26 15:11:27'),
(28, 587, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '2017-05-27', 9, 2, '2017-05-27 09:33:18'),
(29, 589, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '2017-05-27', 17, 1, '2017-05-27 17:02:07'),
(30, 596, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '2017-05-27', 17, 3, '2017-05-27 17:04:27'),
(31, 587, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '2017-05-27', 17, 2, '2017-05-27 17:08:11'),
(32, 587, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-05-30', 15, 1, '2017-05-30 15:43:45'),
(33, 587, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0', '2017-05-31', 14, 1, '2017-05-31 14:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_ua_hit_201706`
--

CREATE TABLE `c_hourly_ua_hit_201706` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_ua_hit_201707`
--

CREATE TABLE `c_hourly_ua_hit_201707` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_ua_hit_201708`
--

CREATE TABLE `c_hourly_ua_hit_201708` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_ua_hit_201709`
--

CREATE TABLE `c_hourly_ua_hit_201709` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_ua_hit_201710`
--

CREATE TABLE `c_hourly_ua_hit_201710` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_ua_hit_201711`
--

CREATE TABLE `c_hourly_ua_hit_201711` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_hourly_ua_hit_201712`
--

CREATE TABLE `c_hourly_ua_hit_201712` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `hit_date` date NOT NULL,
  `jam` int(2) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_sms_log_201701`
--

CREATE TABLE `c_sms_log_201701` (
  `id` bigint(10) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `subs_id` varchar(10) NOT NULL,
  `url_postback` text NOT NULL,
  `response_postback` text NOT NULL,
  `payout` decimal(6,2) NOT NULL DEFAULT '0.00',
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_sms_log_201702`
--

CREATE TABLE `c_sms_log_201702` (
  `id` bigint(10) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `subs_id` varchar(10) NOT NULL,
  `url_postback` text NOT NULL,
  `response_postback` text NOT NULL,
  `payout` decimal(6,2) NOT NULL DEFAULT '0.00',
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_sms_log_201703`
--

CREATE TABLE `c_sms_log_201703` (
  `id` bigint(10) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `subs_id` varchar(10) NOT NULL,
  `url_postback` text NOT NULL,
  `response_postback` text NOT NULL,
  `payout` decimal(6,2) NOT NULL DEFAULT '0.00',
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_sms_log_201704`
--

CREATE TABLE `c_sms_log_201704` (
  `id` bigint(10) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `subs_id` varchar(10) NOT NULL,
  `url_postback` text NOT NULL,
  `response_postback` text NOT NULL,
  `payout` decimal(6,2) NOT NULL DEFAULT '0.00',
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_sms_log_201705`
--

CREATE TABLE `c_sms_log_201705` (
  `id` bigint(10) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `subs_id` varchar(10) NOT NULL,
  `url_postback` text NOT NULL,
  `response_postback` text NOT NULL,
  `payout` decimal(6,2) NOT NULL DEFAULT '0.00',
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_sms_log_201706`
--

CREATE TABLE `c_sms_log_201706` (
  `id` bigint(10) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `subs_id` varchar(10) NOT NULL,
  `url_postback` text NOT NULL,
  `response_postback` text NOT NULL,
  `payout` decimal(6,2) NOT NULL DEFAULT '0.00',
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_sms_log_201707`
--

CREATE TABLE `c_sms_log_201707` (
  `id` bigint(10) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `subs_id` varchar(10) NOT NULL,
  `url_postback` text NOT NULL,
  `response_postback` text NOT NULL,
  `payout` decimal(6,2) NOT NULL DEFAULT '0.00',
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_sms_log_201708`
--

CREATE TABLE `c_sms_log_201708` (
  `id` bigint(10) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `subs_id` varchar(10) NOT NULL,
  `url_postback` text NOT NULL,
  `response_postback` text NOT NULL,
  `payout` decimal(6,2) NOT NULL DEFAULT '0.00',
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_sms_log_201709`
--

CREATE TABLE `c_sms_log_201709` (
  `id` bigint(10) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `subs_id` varchar(10) NOT NULL,
  `url_postback` text NOT NULL,
  `response_postback` text NOT NULL,
  `payout` decimal(6,2) NOT NULL DEFAULT '0.00',
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_sms_log_201710`
--

CREATE TABLE `c_sms_log_201710` (
  `id` bigint(10) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `subs_id` varchar(10) NOT NULL,
  `url_postback` text NOT NULL,
  `response_postback` text NOT NULL,
  `payout` decimal(6,2) NOT NULL DEFAULT '0.00',
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_sms_log_201711`
--

CREATE TABLE `c_sms_log_201711` (
  `id` bigint(10) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `subs_id` varchar(10) NOT NULL,
  `url_postback` text NOT NULL,
  `response_postback` text NOT NULL,
  `payout` decimal(6,2) NOT NULL DEFAULT '0.00',
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_sms_log_201712`
--

CREATE TABLE `c_sms_log_201712` (
  `id` bigint(10) NOT NULL,
  `cp_id` int(5) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `subs_id` varchar(10) NOT NULL,
  `url_postback` text NOT NULL,
  `response_postback` text NOT NULL,
  `payout` decimal(6,2) NOT NULL DEFAULT '0.00',
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_traceid_log_201701`
--

CREATE TABLE `c_traceid_log_201701` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `traceid` varchar(255) NOT NULL,
  `traceid_ads` varchar(255) NOT NULL,
  `sub_id` varchar(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_traceid_log_201702`
--

CREATE TABLE `c_traceid_log_201702` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `traceid` varchar(255) NOT NULL,
  `traceid_ads` varchar(255) NOT NULL,
  `sub_id` varchar(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_traceid_log_201703`
--

CREATE TABLE `c_traceid_log_201703` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `traceid` varchar(255) NOT NULL,
  `traceid_ads` varchar(255) NOT NULL,
  `sub_id` varchar(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_traceid_log_201704`
--

CREATE TABLE `c_traceid_log_201704` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `traceid` varchar(255) NOT NULL,
  `traceid_ads` varchar(255) NOT NULL,
  `sub_id` varchar(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_traceid_log_201704`
--

INSERT INTO `c_traceid_log_201704` (`id`, `campaign_id`, `traceid`, `traceid_ads`, `sub_id`, `entry_date`) VALUES
(1, 587, '166ffe528e4002994c9fe8709c5d196f', '18e15ccc5cbc23989ea60a1737c4a1b7', '1', '2017-04-05 15:54:34'),
(2, 589, '59df42a09ed7e7d356fbd3540b85b211', 'f2a5f3c9188a474c304b128c2583a7ad', '1', '2017-04-05 15:54:50'),
(3, 589, 'fc4489b6eb14732725d557f544ec5260', 'e32be5b5699efba9218b742fc77fdeba', '1', '2017-04-05 16:22:13'),
(4, 589, '24cacdc4a052c1bcd3ed6b0d3d3313e8', '11b8804ec71158fb52a226060e209ee4', '1', '2017-04-05 16:23:26'),
(5, 589, 'e9ccdfed876acb55adb0046805c5c811', '52e3ca827946931b87678ff3f32f54a9', '1', '2017-04-05 16:23:29'),
(6, 589, 'abd18f8a7147ebfc151bdb2990ef964d', 'ce2fc672d00ba8ed0c6939f073a337b0', '1', '2017-04-05 16:25:31'),
(7, 587, 'b3774f85329ebcfb92d0b16eb2787310', '40c5deebe0eed0f949eb2286aa35fedb', '1', '2017-04-05 16:25:42'),
(8, 334, '03d833bcf9ecf15224841494da23abfc', '921740ffa006f52f8d7dd77e8b35d044', '1', '2017-04-05 20:54:12'),
(9, 589, '321020f1eb86c5087ee96e88ebca375a', '1f38ab0d3ee542dea42985bab3c8110e', '1', '2017-04-06 14:09:51'),
(10, 589, '1a40b53135a3c7fe8b89b189dbf05a78', 'e2fa585eeb2f1c2a2dbb77fafe8abe8d', '1', '2017-04-06 14:14:00'),
(11, 589, '7f05d5708e4afcd560ff437948e89ffe', '8ebc0167617efef316cb3cc46fed8ced', '1', '2017-04-13 09:58:19'),
(12, 589, '5434854d6f2ea22439845d17c51bc99b', '24e86171517f3cbba5c3b6f33df78384', '1', '2017-04-13 09:59:38'),
(13, 589, 'ee0dbe644eaebfa59de07d783be6eaba', 'faefbc3fc5026fb84b99378700e247dd', '1', '2017-04-13 10:04:59'),
(14, 589, '65c31e0672126d9f86d4772ab6d630f6', '8990127576041bd246ba440fb36a285e', '1', '2017-04-13 10:05:12'),
(15, 589, 'c4ef60678fd6911e335e20ed31095637', 'f0f7f75fb0385261ad6aba711c9b1a2e', '1', '2017-04-13 10:06:56'),
(16, 589, 'c909415bf05243958f3bf228cd11ec18', '2ac101d40afdffbb799e261198a8a426', '1', '2017-04-13 10:12:31'),
(17, 589, '10a5d3f52c391a4ec62a7f2df102728e', '869f092b222cf07949457215cb7840ad', '1', '2017-04-13 10:12:39'),
(18, 589, 'd6da5df8f5070abe039c848c74a64bdb', 'a3faa1e9cb377b5cce78ce98bab8ae99', '1', '2017-04-13 10:16:41'),
(19, 589, '343fea292463e030d7fae1926ec0a9a3', '793083538e6c7b60df97b0c782604f75', '1', '2017-04-17 14:52:00'),
(20, 589, 'ce423c1a1df433bc3f80adcab6f32f96', 'e5c790e8475e0bd34ddd547389881cc9', '1', '2017-04-17 14:52:38'),
(21, 589, 'e17dafe94bf8a3ae7a03330eadb43c0b', 'dc04ee97dc12f0d46e1a6747eae0481f', '1', '2017-04-17 14:52:39'),
(22, 589, '5176d95f036af04a60085a82d3b4dc5a', '5f593f3a817b9fa6f85033862273831e', '1', '2017-04-18 10:26:56'),
(23, 589, 'cc8bf9a2fefb15744e423e97044a0bc9', '8b26830ae9c99a41d0f43e8182cd421d', '1', '2017-04-18 12:04:21'),
(24, 589, '8268d20d62395c21446fc6f246527cf8', '1f82adf44d2a1e1ce9781ca8126a1a4f', '1', '2017-04-18 14:33:46'),
(25, 589, 'ac36c0193d818ef80dd6d6acb3dc5905', 'e2ad060f26718cb7902c5dd5a6d7ae08', '1', '2017-04-19 09:29:46'),
(26, 589, '8fce34bf356529dc15e085ab2af697bc', 'b83d300caae73da5e522e90ed01d7bde', '1', '2017-04-19 09:31:30'),
(27, 587, 'a1fa9ab63631ba8070b258e17984ab5e', '69a5d8d197439a4cd25da948674c84d7', '1', '2017-04-19 09:31:45'),
(28, 587, '3767cabdf0dcfa77503f20ca706f1aff', '752cedb3cfa491876b540de7097b7650', '1', '2017-04-19 09:32:00'),
(29, 587, '5d2839c9d3dea5e8bf00c6232e94d23a', '45237908556186d72684dd4096aeaa2e', '1', '2017-04-19 09:32:02'),
(30, 587, '3f67a62a856467186e219f7ca226f1a5', 'ce86e14f7ce834cb760cfc8e2d7c3f9d', '1', '2017-04-19 09:32:05'),
(31, 589, '157be7a59c05e6a6ead3faba2b731dd0', '0c67023b39d1727ea7e6dc3e52e8f847', '1', '2017-04-19 09:32:08'),
(32, 589, '7e292eae164ce022dfd266b989cdc534', '728806a6a4040e4a5470ec62f4cab092', '1', '2017-04-19 09:32:10'),
(33, 589, '32601d81395247cc67b16d6008a89de1', '824c7913484c612c57a7d8e3f7bdc7b9', '1', '2017-04-19 09:32:23'),
(34, 589, 'd310a0ef95141cc58ba2c7343a3930af', '4d4882e318f2fbc8408bf1424be09dee', '1', '2017-04-19 09:32:24'),
(35, 589, '6815cf91a58040b0b3eb250bc1c11402', '9cf8a5393c1953df2840b4e2563bdb6a', '1', '2017-04-19 09:32:25'),
(36, 589, 'b9172aa79e862dbaee7b057af3adadad', 'bc14d0ce9dadd179cb93292230c9392e', '1', '2017-04-19 09:32:25'),
(37, 589, '12c6475c98534284cc5d1a251d7c3bfa', '79c6412c339c9c26f8ceaffad3e3df7a', '1', '2017-04-19 09:32:26'),
(38, 589, 'c7188254c92acf7d1a3ed639a0840acf', 'ee4e752f39a9aa3ca39031910bf1adfe', '1', '2017-04-19 09:32:26'),
(39, 589, 'b0c475f49594e795b7b082096d4f794c', 'ab04637a860995773c8973780e2da6d8', '1', '2017-04-19 09:32:26'),
(40, 589, '91e9e732615ab2a427aff831f485b4f4', '1d84fb9130bea701d162eab0794c39a5', '1', '2017-04-19 09:32:26'),
(41, 589, 'd3c0789b129302c224cbd2550edb4724', '686cbb4d48a7fe4c7b9ae46155710d05', '1', '2017-04-19 09:32:27'),
(42, 589, 'b512f3828b1a8e490cd42b7f87ed638f', 'ab78d91146a0348568eba559f279a1c4', '1', '2017-04-19 09:32:27'),
(43, 589, '9b77ee883fba622cf414e7fee8b6a3a6', '945158cec5245349c886a9c460e3dd8e', '1', '2017-04-19 09:32:27'),
(44, 589, 'eaa45f8cfe4bb86ce8c54ef9cfc7f195', '1f3ed7ef37419e9004b0d4e13f4aa91b', '1', '2017-04-19 09:32:27'),
(45, 589, '230881d5bb9a126d0133f35fc37935e1', 'ea34b6da8aba0c1268e9eb8f88099d11', '1', '2017-04-19 09:32:28'),
(46, 589, '98772076a1faec5af179346a73370108', 'edcfa4fa025c432e4a5006dfd4af8fc5', '1', '2017-04-19 09:32:28'),
(47, 587, '597ce47b1d0dd4e6c7dd8fe238e9125c', '78181edb5c3b8329cb20b65730407070', '1', '2017-04-20 11:06:07'),
(48, 587, 'f766201be6c145e00353bfb2b7bfd810', '6767146b2b5a3bc0e9846cee2ed7335f', '1', '2017-04-20 11:06:15'),
(49, 587, '3e18848e03bdd6201ae9e4576911cfaa', 'fabbd1189cfca162d5a5fe96071b67ce', '1', '2017-04-20 11:07:17'),
(50, 587, '01b9b12fb3451e517d90c45cc7d7159a', '9d428cc5361923833536d58af5af7d22', '1', '2017-04-25 09:55:59'),
(51, 589, '92a5f7e19be485772c75e3fc420daaa5', 'b75104dd6fc732bff4a30a7227919d44', '1', '2017-04-25 09:56:03'),
(52, 589, '94f3da5e3aceeeffa7357eb680fb2565', 'ebde3580810adb41c39b620056069a08', '1', '2017-04-25 10:35:22'),
(53, 589, '092983a314d0bfa26bf6fca45f79ef3d', '39c208021c3e10b1b6ff4b198c49ecd9', '1', '2017-04-25 10:40:22'),
(54, 589, '36a23ecb0b4fbcb23b137c50399c4be7', 'aa10bd6b77d6691949810a0e47b63079', '1', '2017-04-25 10:40:51'),
(55, 589, '400176ea97b9a52702a8de01e263d77a', 'b81a0175b2d675dadacc58f6d79971a5', '1', '2017-04-25 10:42:50'),
(56, 589, '28cdfb810ca9bcc2e26fbd75015906fb', 'f39e8e6f70923edd98535997ffe63c95', '1', '2017-04-25 10:44:08'),
(57, 589, '1a221c452e4bccb7d8a7c34354349c8f', '0c9c2d9a2d9c2d1cb505d06b479bc876', '1', '2017-04-25 10:54:49'),
(58, 589, 'fb019e8c1876abb34fac693d6adff0b7', 'bb724d91c61ace2d51eab5272c7a7616', '1', '2017-04-25 10:59:28'),
(59, 589, 'a0d06a16b1c24632233c444857031c79', '6cc0d67bdb485d590ce6a8aca8e4c1f9', '1', '2017-04-25 11:10:02'),
(60, 589, 'bfff8b519b116ff22aa2e13569590e0b', 'e3272b3dc710943185deb5a4ce1101cb', '1', '2017-04-25 11:11:11'),
(61, 589, '423d02efe4d1703f91c5805f6fe66ea5', '9470e3d822de934d648455166d105695', '1', '2017-04-25 11:13:30'),
(62, 589, 'cd182c89eddf691e59b8c005ab981914', 'feb55dba8a5b7f3800e703599901aa81', '1', '2017-04-25 11:18:59'),
(63, 589, '77f449fe4c0bba54c79211969b17b501', '7c67bf1328a909b2fafb88db4ef6c6c1', '1', '2017-04-25 11:19:18'),
(64, 589, '372a58530516b978e784e966ab85a787', '6c613bc30432b22f1a07f484f0142f95', '1', '2017-04-25 11:19:57'),
(65, 587, '0ba64ec572cfa798dc430dff238cfe70', '896d23c6503a0340f287a6cd2b3f710f', '1', '2017-04-25 16:02:47'),
(66, 587, 'bd6cf8e1f52633a6e74a89b1448a1ddd', '7c7b525d14a1a0b605d4f0ed713195e9', '1', '2017-04-27 09:15:23'),
(67, 587, '08d9ffa0a7552a3bc3be415080779574', 'bb85a46c6e8c14528c59c4c96238a829', '1', '2017-04-27 09:15:34'),
(68, 589, 'fa3c4cd3116bc3eb65ec91d584c37422', '27958cf83318cfcf687337ca6671a5aa', '1', '2017-04-27 09:15:43'),
(69, 589, 'fea528d4222a777d8118255f19f6c6a2', 'fe47125b0cdc4e8355d0e806c06e2db3', '1', '2017-04-27 09:15:47'),
(70, 589, '54b5820d20ee74d248089ece3457e0a6', '5c8ec13f01ae9591aee1f0a78e7a58c3', '1', '2017-04-27 09:15:55'),
(71, 589, '29034c7668d26ee69db9da0f2e1672ad', 'd8ff807d8ba17c7b56a2f1d724ce88dd', '1', '2017-04-27 09:16:03'),
(72, 589, 'c37873b426c495ff9a28ce40f16f59ea', '23be66dd9eb3a5ece7d3b418f678ef81', '1', '2017-04-27 09:17:24');

-- --------------------------------------------------------

--
-- Table structure for table `c_traceid_log_201705`
--

CREATE TABLE `c_traceid_log_201705` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `traceid` varchar(255) NOT NULL,
  `traceid_ads` varchar(255) NOT NULL,
  `sub_id` varchar(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_traceid_log_201705`
--

INSERT INTO `c_traceid_log_201705` (`id`, `campaign_id`, `traceid`, `traceid_ads`, `sub_id`, `entry_date`) VALUES
(1, 587, '939204cb901ec280f786ac67161523c4', '1f9caf59e7c6a9d24e4710f7d416797c', '1', '2017-05-01 09:37:03'),
(2, 589, '099542a1338465ce3c1156b07fe82c5e', '8344793623aadd7baed9c8954c5918f1', '1', '2017-05-01 09:37:07'),
(3, 589, 'd89f171e6152b1a51ae222009f82c05b', 'a1be0923c2c9381f33be08d8656d9956', '1', '2017-05-01 09:38:48'),
(4, 587, '331da1d736dc83ff11279183aed43eef', '2d843123ad85f55429f002645641a8a8', '1', '2017-05-02 11:16:16'),
(5, 587, '7212f364532c262096f551ce994c153c', '9768ffb7697efe9ee90392293ab1d84c', '1', '2017-05-02 16:52:33'),
(6, 587, '1d522dd7ebb39b7f832e375f0ad302c7', '7208bb44067a16d41acc3e5233dcf85f', '1', '2017-05-02 16:52:36'),
(7, 589, '93df7eccfbd1f34b2c89d6a11eb01106', '0f485b76acd184e68d6d72eddecbe7b1', '1', '2017-05-02 16:52:46'),
(8, 587, '8d2ddb1f267dea48685b53121e1083ba', '0922a5280c119cc833dde9784ab9b5ff', '1', '2017-05-02 21:55:26'),
(9, 587, '60ced9b02b2b9f36e2aaa906d5595a93', '5c8821f38539175b335f00bebec5e3c8', '1', '2017-05-02 21:55:37'),
(10, 589, 'b1f2626ea55ba0eca31e4ba54ea163c4', 'ff2c03c9e7653fd9c4eb9954fcad319c', '1', '2017-05-02 21:55:47'),
(11, 589, 'dee438fa602f3c09a0ffd44ccef3a92c', '3efdebe7ccfc645b47324ac9760b879a', '1', '2017-05-02 21:56:14'),
(12, 587, '3cd8c19daf70f76510c219b64aa4bee1', '699ae22c5d65a8a64e9b617134660353', '1', '2017-05-03 05:53:28'),
(13, 589, 'dedd5d12d4fa43e13ef81c4dc5e18c46', 'f9e910933e62e8ddfaa8daff4153fa99', '1', '2017-05-03 05:53:33'),
(14, 594, 'ce34d77b92b44d8480a74841ba6ad676', 'be3682cb7c0f4cbc32e86b82c9f44a2e', '1', '2017-05-03 05:54:48'),
(15, 593, '6d8820d3ecf04d430b0b2a0cfe88055b', '9bf7399ef1e5fa17f575295d1b912e78', '1', '2017-05-03 05:56:03'),
(16, 592, '791cdd98b07f3abb15a950695e00a73e', '4ce1844b1c01f9ee524b09fd645fe3ff', '1', '2017-05-03 05:56:45'),
(17, 591, 'e486f56979f1dfc373a0e1b6724caeaa', '1170daf0fcf8ee53bc9fa95f8c675f51', '1', '2017-05-03 05:56:52'),
(18, 587, '16839cba329b867b3f02c85d0f4acd75', '046412c1db047a47381cfc48e57e0a41', '1', '2017-05-03 12:17:56'),
(19, 589, 'fce114dac3db5214eb59359c09462048', '3a9490d89a4b83b6e826208a8081b451', '1', '2017-05-03 12:18:08'),
(20, 589, '17067a9cc53421261f18f90806fbfbc1', '7c7d8a6915640ff6a560259e17a3f957', '1', '2017-05-03 12:20:01'),
(21, 587, 'eeb970b0fd5e0ac0e9cbe3ea711b718d', '4f0e0781e41460c9213f2664a0b380be', '1', '2017-05-03 14:47:48'),
(22, 587, '05df9d8970d29a16e77c895588447ec2', '14dad34b7ed594fa00b1a5fa64db820d', '1', '2017-05-03 19:29:37'),
(23, 589, '1389829fdae18bb98478d12839be8093', 'aaaa72f65225d72180bfddbd05388fd4', '1', '2017-05-18 10:44:50'),
(24, 587, '9f9d1eb23d8fe77a765a5c7d31d1d29e', '90def68ca630af96e8b9c9b3e960d4c4', '1', '2017-05-18 15:23:46'),
(25, 595, 'bc26f46a81b8eb3e0def2a5a39d2892c', 'b64293872d6ea1dc2a6cf09d42307b9b', '1', '2017-05-18 15:47:42'),
(26, 594, '833271a71fab660184e918a5e6d16e7e', '2127a6240a8fb35e7d69878ceea40ce8', '1', '2017-05-18 15:48:12'),
(27, 587, 'ccdead4eb3abae1f9e61eb896905193e', '1711a20ba57c9a97cce5b1ed33cbaf89', '1', '2017-05-26 10:53:56'),
(28, 587, 'f6c4878cb4ad8ea65aa614f6fc69c7e9', '5580c4653ab714b395db33bcffd3c99d', '1', '2017-05-26 10:55:02'),
(29, 587, '0022a91295d62bcb30c552a4dbcfa689', 'ab1f41f63764cbe1c46b5936affc2c25', '1', '2017-05-26 11:05:21'),
(30, 587, '150ed0ae2c93b4437b2e9188e237f628', '2155e412855a0eec58246e0a3fc5d23e', '1', '2017-05-26 11:05:36'),
(31, 587, 'ab6a44e125490ef7867d0e6647adc47c', '61e9dcd043078b9958a39709d6d9f00b', '1', '2017-05-26 11:05:59'),
(32, 587, 'f679e9e708e01eba99cc4780fbf57ab1', 'f7db3ad346f001cf9052203e1343186d', '1', '2017-05-26 13:49:35'),
(33, 587, 'dc0d7aeed334b0daab45986e45bcaf2f', '4c7837bca3e73e48a04a75f9c1c1d0af', '1', '2017-05-26 13:50:05'),
(34, 587, '77dfecf8f63b4158b2bab04a3833114d', '161f7eaf7f2e16213092b2eb18ef120e', '1', '2017-05-26 13:54:27'),
(35, 587, 'b79b2388f2d067c4b42eda7bef61bc26', '68db90a5e898b4198e4d0da7d20c7900', '1', '2017-05-26 14:01:43'),
(36, 587, 'f8b8e600d6bb661013b91e2285387d94', '2a299b192d9d647c83c8455cc13fec84', '1', '2017-05-26 14:02:38'),
(37, 587, '56ff3be5f69f90be0cf3445a5421ef69', '72e78f8e20bf0174f7c5a69b2387e245', '1', '2017-05-26 14:02:50'),
(38, 587, 'cd041e0bd3d4dfe9ea897e4573f1713a', '9e43fd646d87e166e3326945ba9763b5', '1', '2017-05-26 14:04:30'),
(39, 587, 'a83dc8db4f706977af85317acb0342d7', '280453106da0692c50cfe79192cec9b3', '1', '2017-05-26 14:07:24'),
(40, 587, '44d5a75bcb4f094712694c706eaf994b', 'd1e5367d3c7fab1e49761c4d0622d2d1', '1', '2017-05-26 14:10:41'),
(41, 587, '7399892dc29159fed64afb0641c1f3cc', '04d46907aa1a9970179a045c936601be', '1', '2017-05-26 14:10:49'),
(42, 587, '1f379d373aee35b63c79012abdf888cb', '93923f243cc1a3f55621fb7d03f26ab9', '1', '2017-05-26 14:11:01'),
(43, 587, '72b53a3512f1b01bedbfaf8dd46c40e3', 'dcf8c231e2f7084581b495e7f0956c57', '1', '2017-05-26 14:15:10'),
(44, 587, '67a0fdba94df8cf7a8cca5d886405638', 'bef8855c94e41fa31f8b2b533b994b29', '1', '2017-05-26 14:15:29'),
(45, 587, '499dda2e8e7a9cfd3ffe9e994aedf8a3', '50b99ed5185fabddc4b5c920d00b6a14', '1', '2017-05-26 14:25:17'),
(46, 587, '85f88fd19520e6863ecb5ced02052bfb', '6b79525587e7fb7bdeafed06730646f6', '1', '2017-05-26 14:25:31'),
(47, 587, '267ffeb4eb9be1c7ccf32fe54aec0b9a', '9b6dc3f721bdc54df3600d987f02b38a', '1', '2017-05-26 14:25:42'),
(48, 587, 'a6d2055b55277af146f1184ddfe3c75b', '00e0c406858556a5907df32005ef55a3', '1', '2017-05-26 14:25:49'),
(49, 587, '72a31942b9b5ac3ac747db360b913d94', 'b7ac4e05b2019d97b664c47048482f8c', '1', '2017-05-26 14:35:31'),
(50, 587, '2692e69df004ab62f531c658c7e93258', '71388bdc59db7c8a64ebb0759d80d215', '1', '2017-05-26 14:47:52'),
(51, 587, 'e1ef15e2e3864d4a370a71c4fba542e0', 'bff224b481621ad49b05b68b803aaa6d', '1', '2017-05-26 14:49:31'),
(52, 587, 'e91e4d79e4c813001efba0d9ec371737', '1b41bcf4e33f1903ab7eae2a10e52542', '1', '2017-05-26 14:49:48'),
(53, 587, 'c48b7221bd4fd1480af57f9e76d78237', '75658188869af3969c3bd6501c9713a9', '1', '2017-05-26 14:51:16'),
(54, 587, '03229a65ed416ffc5cf7c9f2d701ba89', 'e0bccc5636908b701de3c23186118ce6', '1', '2017-05-26 14:53:01'),
(55, 587, 'fa9be063f2810af115437c679d547133', '30f06aa27895c5e72fb13daf70e5a71e', '1', '2017-05-26 14:53:16'),
(56, 587, '9d4568c009d203ab10e33ea9953a0264', '""', '""', '2017-05-26 15:11:27'),
(57, 587, '020c2efa604e00862581cbe2596dc1d8', '"TRX212"', '"919191"', '2017-05-26 15:12:10'),
(58, 587, 'e6fda0f0d3e0adfff69e334462d1ef6a', '\'', '\'', '2017-05-26 15:14:06'),
(59, 587, 'cff7125652c57cf807fb60cc94833936', '0f868106948a1cb8781321aa1120fc41', '1', '2017-05-26 15:14:59'),
(60, 587, 'd844eb8ee8cd94ba1bc899a798c643e5', '3aadd4e25dc1773ba680971fdf554bb7', '1', '2017-05-26 15:16:06'),
(61, 587, 'f50601e738e5c9bacf3a624d5a239e18', '56b703bc5473293d0b33f53dc4238456', '1', '2017-05-26 15:16:22'),
(62, 587, '1aac166f3773d70363732eedc08b0aad', 'c8d55b6660b40c50870d3e7d46b4122b', '1', '2017-05-26 15:16:35'),
(63, 587, '698d51a19d8a121ce581499d7b701668', '111', '1', '2017-05-26 15:16:42'),
(64, 587, '698d51a19d8a121ce581499d7b701668', '111', '1121212', '2017-05-26 15:18:13'),
(65, 587, '698d51a19d8a121ce581499d7b701668', '111', '1121212', '2017-05-26 15:20:20'),
(66, 587, '698d51a19d8a121ce581499d7b701668', '111', '1121212', '2017-05-26 15:25:27'),
(67, 587, '698d51a19d8a121ce581499d7b701668', '111', '1121212', '2017-05-26 15:38:23'),
(68, 587, '698d51a19d8a121ce581499d7b701668', '111', '1121212', '2017-05-26 15:38:56'),
(69, 587, '3c59dc048e8850243be8079a5c74d079', '21', 'coba', '2017-05-26 15:40:01'),
(70, 587, 'bcbe3365e6ac95ea2c0343a2395834dd', '222', '123', '2017-05-27 09:33:18'),
(71, 587, '698d51a19d8a121ce581499d7b701668', '111', '1121212', '2017-05-27 09:36:27'),
(72, 589, 'da271dc7b2ff01a9335170740227237c', '53221899ee81d848de5c4d24fba53f1b', '1', '2017-05-27 17:02:07'),
(73, 596, '698d51a19d8a121ce581499d7b701668', '111', '1121212', '2017-05-27 17:04:27'),
(74, 587, 'bcbe3365e6ac95ea2c0343a2395834dd', '222', '123', '2017-05-27 17:08:11'),
(75, 587, '698d51a19d8a121ce581499d7b701668', '111', '1121212', '2017-05-27 17:08:28'),
(76, 596, 'bcbe3365e6ac95ea2c0343a2395834dd', '222', '123', '2017-05-27 17:09:18'),
(77, 596, 'ecfc2f0a5d884c466e56f98064f24f68', '06cf28056e0840ad54c9fafd5472fe42', '1', '2017-05-27 17:09:38'),
(78, 587, '72b7a9b04b873b8dbef18e2999039712', 'a6391a7fb47331bd91b505e6ade710c8', '1', '2017-05-30 15:43:44'),
(79, 587, '698d51a19d8a121ce581499d7b701668', '111', '1121212', '2017-05-31 14:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `c_traceid_log_201706`
--

CREATE TABLE `c_traceid_log_201706` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `traceid` varchar(255) NOT NULL,
  `traceid_ads` varchar(255) NOT NULL,
  `sub_id` varchar(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_traceid_log_201707`
--

CREATE TABLE `c_traceid_log_201707` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `traceid` varchar(255) NOT NULL,
  `traceid_ads` varchar(255) NOT NULL,
  `sub_id` varchar(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_traceid_log_201708`
--

CREATE TABLE `c_traceid_log_201708` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `traceid` varchar(255) NOT NULL,
  `traceid_ads` varchar(255) NOT NULL,
  `sub_id` varchar(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_traceid_log_201709`
--

CREATE TABLE `c_traceid_log_201709` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `traceid` varchar(255) NOT NULL,
  `traceid_ads` varchar(255) NOT NULL,
  `sub_id` varchar(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_traceid_log_201710`
--

CREATE TABLE `c_traceid_log_201710` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `traceid` varchar(255) NOT NULL,
  `traceid_ads` varchar(255) NOT NULL,
  `sub_id` varchar(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_traceid_log_201711`
--

CREATE TABLE `c_traceid_log_201711` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `traceid` varchar(255) NOT NULL,
  `traceid_ads` varchar(255) NOT NULL,
  `sub_id` varchar(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_traceid_log_201712`
--

CREATE TABLE `c_traceid_log_201712` (
  `id` bigint(10) NOT NULL,
  `campaign_id` int(5) NOT NULL,
  `traceid` varchar(255) NOT NULL,
  `traceid_ads` varchar(255) NOT NULL,
  `sub_id` varchar(10) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_transaction_log_201701`
--

CREATE TABLE `c_transaction_log_201701` (
  `id` bigint(10) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_transaction_log_201702`
--

CREATE TABLE `c_transaction_log_201702` (
  `id` bigint(10) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_transaction_log_201703`
--

CREATE TABLE `c_transaction_log_201703` (
  `id` bigint(10) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_transaction_log_201704`
--

CREATE TABLE `c_transaction_log_201704` (
  `id` bigint(10) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_transaction_log_201705`
--

CREATE TABLE `c_transaction_log_201705` (
  `id` bigint(10) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_transaction_log_201706`
--

CREATE TABLE `c_transaction_log_201706` (
  `id` bigint(10) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_transaction_log_201707`
--

CREATE TABLE `c_transaction_log_201707` (
  `id` bigint(10) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_transaction_log_201708`
--

CREATE TABLE `c_transaction_log_201708` (
  `id` bigint(10) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_transaction_log_201709`
--

CREATE TABLE `c_transaction_log_201709` (
  `id` bigint(10) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_transaction_log_201710`
--

CREATE TABLE `c_transaction_log_201710` (
  `id` bigint(10) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_transaction_log_201711`
--

CREATE TABLE `c_transaction_log_201711` (
  `id` bigint(10) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_transaction_log_201712`
--

CREATE TABLE `c_transaction_log_201712` (
  `id` bigint(10) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_confirmations`
--

CREATE TABLE `email_confirmations` (
  `id` int(10) UNSIGNED NOT NULL,
  `usersId` int(10) UNSIGNED NOT NULL,
  `code` char(32) NOT NULL,
  `createdAt` int(10) UNSIGNED NOT NULL,
  `modifiedAt` int(10) UNSIGNED DEFAULT NULL,
  `confirmed` char(1) DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_confirmations`
--

INSERT INTO `email_confirmations` (`id`, `usersId`, `code`, `createdAt`, `modifiedAt`, `confirmed`) VALUES
(1, 5, 'WMLePZuXb9Cf2nSfuByROJtzMrFCBgIB', 1485943253, NULL, 'N'),
(2, 6, 'Bu5WpqpGtDAmrA9CcswG7G2F4ILv6sN', 1485943283, NULL, 'N'),
(3, 7, 'f425rtd88TLNh7NPukXoRIxCDtzRWJn', 1485943409, NULL, 'N'),
(4, 8, 'uSszmWeEEnhP1G7ANamlCFu1kK2NVx', 1485944187, NULL, 'N'),
(5, 9, 'D0aKWpq3KJB7wkMKt0AEEGiQUKQAtu', 1485945086, NULL, 'N'),
(6, 10, 'TznSdZlQc9XPopauTGxgEM9EiGNSwqAy', 1485945587, NULL, 'N'),
(7, 11, 'pRCrfeElEPOBtJfIH0VRW16GubAj3t', 1485945694, NULL, 'N'),
(8, 12, 'VBEQvtiXVlfCriTQ2eUk820c231FxAF', 1485945954, NULL, 'N'),
(9, 13, 'q5I2kWATbj8Rhc9mfYcgRGvRSchZVUS', 1486002594, NULL, 'N'),
(10, 14, 'nMyeJ1umdqRhU3XHIET2AowIJQUBpCn', 1486003458, NULL, 'N'),
(11, 15, 'oJlBi8DUQoFObn2ys8j7lR1HIhKWsR', 1486004249, NULL, 'N'),
(12, 16, 'WFdMEOKocQ0IrTw7eIGEMhNoHgtdZWvG', 1486004972, 1486004982, 'Y'),
(13, 17, 'LZCeHHTHQJMWPtaoSjLL6tPIUnFqoM8', 1486005082, NULL, 'N'),
(14, 18, 'LRh3zas28rSeuByZCJlXzwuLc63EUo7', 1486005167, 1486005177, 'Y'),
(15, 19, 'FQGzSgY3RXY3KEOv3g8qtEZBUUP4OcfP', 1486613776, NULL, 'N'),
(16, 20, 'PVh0rJBybzaj6LMZEGfdr8ndQa2RUA', 1486738379, 1486738432, 'Y'),
(17, 21, 'uUOI7r9VSK0pzYb2vIRSyzZQcTGn3b', 1486795939, NULL, 'N'),
(18, 22, 'NtFmEOizKYp5xwyVlLIIUzuCYd64kRZ', 1487052980, 1487053005, 'Y'),
(19, 23, 'f4y5aw26Mq1nTzRLGd3C8ko92eTObFR', 1487053979, NULL, 'N'),
(20, 24, 'drZHCAxuaZA3xLacCsxuPp1KrpvrQj', 1487054040, NULL, 'N'),
(21, 25, 'TuzhmSceYHDhpCbrKULC6CphHKtQpfLJ', 1487054216, NULL, 'N'),
(22, 26, 'n6nYFipq2CGC7sJcWKmwiKiU4iTvmCS', 1487054339, NULL, 'N'),
(23, 27, 'N3jIe7Ij74ym8oYPyHMfumUWWAGjW4N', 1487054451, NULL, 'N'),
(24, 28, 'nhJh8r930KJQ6HjBlFTBNXyT7LKqzM', 1487054551, NULL, 'N'),
(25, 29, 'CbgX3v2aXu5dGguXgZIk89XzWesbj25', 1487241029, 1487241050, 'Y'),
(26, 30, '1hGVNEBDy2s8q3X6utGl4TOLnuWr', 1487422647, 1487422692, 'Y'),
(27, 31, 're20EwOmkjOSySwsSnUMAIrAvn61BaNa', 1487490706, NULL, 'N'),
(28, 32, '9OdCYvZXFBQsArlQG47KYo2KggjHvRJo', 1487501005, NULL, 'N'),
(29, 33, 'evhERqVgpXB3rdO3rRzFdVpN09eGmb', 1487502712, NULL, 'N'),
(30, 35, 'SHzvZz8urOaaWnmgkS7XkSqbriO4ay6', 1489393107, 1489393161, 'Y'),
(31, 36, 'jcJH3nx7pQF2ArapEnNhuSk4S7limJ6', 1489393335, 1489393342, 'Y'),
(32, 37, 'RIHTxPZpSGjVEaEzJNqDKf6KvsGr2Q5', 1489393469, 1489393475, 'Y'),
(33, 38, 'Rv0OxXQlvK9BBdeJm2qKG1MmnvFmInPh', 1489393627, 1489393633, 'Y'),
(34, 39, 'uelWw0zg8thr5Nbf3O2aqyDg3yso9Jw', 1489488580, 1489488593, 'Y'),
(35, 40, 'pb8hqlRpAsgu21yGrh0YVkGnTqQeMLMr', 1489984679, NULL, 'N'),
(36, 41, 'h1BCnf2rAwUyUc0C9figGOq8pxRobQ9I', 1491116792, NULL, 'N'),
(37, 42, 'iQD6PmQj8wtXLpDrBVmF37f68vl4ZY', 1491116831, NULL, 'N'),
(38, 43, 'EtipFFqzQY2sElHa5Cy8w54ONCJKLR', 1491116895, 1491116987, 'Y'),
(39, 44, '7DhcVZ0LtmXJbExFPMiceBBM9GmPShj', 1491118341, 1491118972, 'Y'),
(40, 45, 'T6TluVOYwIk3MyflKRCe6dwlTzLeYFgM', 1491118393, 1491118936, 'Y'),
(41, 46, 'esRgbDxpRwaPQG5xnlzR9305z1rE9D', 1491118500, 1491118890, 'Y'),
(42, 47, 'KzVZN2Vof4SxIt3CtddkpOkPTWHPAV6', 1491118627, 1491118642, 'Y'),
(43, 48, 'TDmeKjbNxpimh1VHiufqPWxoz1t7ZL', 1491128089, NULL, 'N'),
(44, 49, 'hlhy3sQ1yXOHPRCZIcdco8WUQUDBrT8G', 1491128141, NULL, 'N'),
(45, 50, 'mbdymHuxRIQJfT7DbsEbsTgg2qcVlb', 1491128198, NULL, 'N'),
(46, 51, 'jnIaasaIshAxjOxPlzx3JyPxoj6IIz', 1491130511, NULL, 'N'),
(47, 52, 'Nxnil0mNcLcohL22XriaDHKJE3GLD0P9', 1491130858, NULL, 'N'),
(48, 53, 'iDc0oXtIRjAVuWuXLpgPuPCf2Dn05gP', 1491132614, NULL, 'N'),
(49, 54, 'E29b5kCuWLbldXchuBJf23ecjpxxT3', 1491132979, NULL, 'N'),
(50, 55, 'o4euRuo0bDkyJPg1hPERTCbQm8tfaucM', 1491133019, NULL, 'N'),
(51, 56, 'kX2d9MZD0EM9Qnmljsinu3uOrykJy85', 1491133188, NULL, 'N'),
(52, 57, 'wrM2l6s5CuRHonx2tanKmfEUefWmMVSL', 1491133330, NULL, 'N'),
(53, 58, 'qRKV0ReEbUosO2jXZHzljbGkm900Dz2', 1491133464, 1491133738, 'Y'),
(54, 59, 'fFuR2HShdPag4tmDipIvT3izn8s7iaA', 1491134860, 1491135619, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `failed_logins`
--

CREATE TABLE `failed_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `usersId` int(10) UNSIGNED DEFAULT NULL,
  `ipAddress` char(15) NOT NULL,
  `attempted` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `failed_logins`
--

INSERT INTO `failed_logins` (`id`, `usersId`, `ipAddress`, `attempted`) VALUES
(1, 17, '::1', 1486005099),
(2, 17, '::1', 1486005103),
(3, 18, '::1', 1486015153),
(4, 18, '::1', 1486015159),
(5, 18, '::1', 1486015165),
(6, 18, '::1', 1486953114),
(7, 18, '::1', 1486953574),
(8, 18, '::1', 1486953579),
(9, 18, '::1', 1486953587),
(10, 29, '::1', 1488605349),
(11, 18, '::1', 1488611858),
(12, 18, '::1', 1488767216),
(13, 18, '::1', 1488774493),
(14, 29, '::1', 1488876253),
(15, 18, '::1', 1489371036),
(16, 18, '::1', 1489632156),
(17, 18, '::1', 1489809459),
(18, 18, '::1', 1490067283),
(19, 18, '::1', 1490079895),
(20, 18, '::1', 1490099286),
(21, 18, '::1', 1490105922),
(22, 18, '::1', 1490151064),
(23, 0, '::1', 1493093983),
(24, 18, '127.0.0.1', 1496027624),
(25, 18, '127.0.0.1', 1496115522),
(26, 18, '127.0.0.1', 1496122780),
(27, 18, '127.0.0.1', 1496202017);

-- --------------------------------------------------------

--
-- Table structure for table `password_changes`
--

CREATE TABLE `password_changes` (
  `id` int(10) UNSIGNED NOT NULL,
  `usersId` int(10) UNSIGNED NOT NULL,
  `ipAddress` char(15) NOT NULL,
  `userAgent` text NOT NULL,
  `createdAt` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `password_changes`
--

INSERT INTO `password_changes` (`id`, `usersId`, `ipAddress`, `userAgent`, `createdAt`) VALUES
(1, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleW', 1486015138),
(2, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleW', 1490100067),
(3, 59, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 1491433352),
(4, 59, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 1491433860),
(5, 59, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 1491434057),
(6, 59, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 1491434652);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `profilesId` int(10) UNSIGNED NOT NULL,
  `resource` varchar(16) NOT NULL,
  `action` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `profilesId`, `resource`, `action`) VALUES
(453, 3, 'users', 'changePassword'),
(454, 3, 'users', 'accountInfo'),
(711, 4, 'users', 'changePassword'),
(712, 4, 'users', 'accountInfo'),
(2020, 1, 'users', 'index'),
(2021, 1, 'users', 'search'),
(2022, 1, 'users', 'edit'),
(2023, 1, 'users', 'create'),
(2024, 1, 'users', 'delete'),
(2025, 1, 'users', 'changePassword'),
(2026, 1, 'users', 'accountInfo'),
(2027, 1, 'profiles', 'index'),
(2028, 1, 'profiles', 'search'),
(2029, 1, 'profiles', 'edit'),
(2030, 1, 'profiles', 'create'),
(2031, 1, 'profiles', 'delete'),
(2032, 1, 'permissions', 'index'),
(2033, 1, 'campaign', 'index'),
(2034, 1, 'campaign', 'search'),
(2035, 1, 'campaign', 'edit'),
(2036, 1, 'campaign', 'create'),
(2037, 1, 'campaign', 'delete'),
(2038, 1, 'campaign', 'new'),
(2039, 1, 'campaign', 'save'),
(2040, 1, 'campaign', 'view'),
(2041, 1, 'campaign', 'deletegbr120x600'),
(2042, 1, 'campaign', 'deletegbr160x600'),
(2043, 1, 'campaign', 'deletegbr250x250'),
(2044, 1, 'campaign', 'deletegbr300x50'),
(2045, 1, 'campaign', 'deletegbr300x100'),
(2046, 1, 'campaign', 'deletegbr300x250'),
(2047, 1, 'campaign', 'deletegbr300x600'),
(2048, 1, 'campaign', 'deletegbr305x99'),
(2049, 1, 'campaign', 'deletegbr315x300'),
(2050, 1, 'campaign', 'deletegbr320x50'),
(2051, 1, 'campaign', 'deletegbr320x100'),
(2052, 1, 'campaign', 'deletegbr320x250'),
(2053, 1, 'campaign', 'deletegbr320x416'),
(2054, 1, 'campaign', 'deletegbr320x480'),
(2055, 1, 'campaign', 'deletegbr336x280'),
(2056, 1, 'campaign', 'deletegbr468x60'),
(2057, 1, 'campaign', 'deletegbr640x960'),
(2058, 1, 'campaign', 'deletegbr728x90'),
(2059, 1, 'campaign', 'deletegbr800x440'),
(2060, 1, 'campaign', 'deletegbr1024x7'),
(2061, 1, 'campaign', 'downgbr1024x768'),
(2062, 1, 'campaign', 'downgbr800x440'),
(2063, 1, 'campaign', 'downgbr728x90'),
(2064, 1, 'campaign', 'downgbr640x960'),
(2065, 1, 'campaign', 'downgbr468x60'),
(2066, 1, 'campaign', 'downgbr336x280'),
(2067, 1, 'campaign', 'downgbr320x480'),
(2068, 1, 'campaign', 'downgbr320x416'),
(2069, 1, 'campaign', 'downgbr320x250'),
(2070, 1, 'campaign', 'downgbr320x100'),
(2071, 1, 'campaign', 'downgbr320x50'),
(2072, 1, 'campaign', 'downgbr315x300'),
(2073, 1, 'campaign', 'downgbr305x99'),
(2074, 1, 'campaign', 'downgbr300x600'),
(2075, 1, 'campaign', 'downgbr300x100'),
(2076, 1, 'campaign', 'downgbr300x250'),
(2077, 1, 'campaign', 'downgbr300x50'),
(2078, 1, 'campaign', 'downgbr250x250'),
(2079, 1, 'campaign', 'downgbr160x600'),
(2080, 1, 'campaign', 'downgbr120x600'),
(2081, 1, 'campaign', 'downgbrloop'),
(2082, 1, 'campaign', 'activateout'),
(2083, 1, 'campaign', 'activateview'),
(2084, 1, 'campaign', 'viewdownload'),
(2085, 1, 'campaign', 'dailyreport'),
(2086, 1, 'campaign', 'dashboardcamp'),
(2087, 1, 'campaign', 'dailyrptdw'),
(2088, 1, 'adspace', 'index'),
(2089, 1, 'adspace', 'search'),
(2090, 1, 'adspace', 'edit'),
(2091, 1, 'adspace', 'create'),
(2092, 1, 'adspace', 'delete'),
(2093, 1, 'adspace', 'new'),
(2094, 1, 'adspace', 'save'),
(2095, 1, 'adspace', 'view'),
(2096, 1, 'adspace', 'activate'),
(2097, 1, 'confirm', 'index'),
(2098, 1, 'confirm', 'create'),
(2099, 1, 'confirm', 'search'),
(2100, 1, 'confirm', 'approve'),
(2101, 1, 'confirm', 'unapprove'),
(2102, 2, 'users', 'changePassword'),
(2103, 2, 'users', 'accountInfo'),
(2104, 2, 'campaign', 'index'),
(2105, 2, 'campaign', 'search'),
(2106, 2, 'campaign', 'edit'),
(2107, 2, 'campaign', 'create'),
(2108, 2, 'campaign', 'delete'),
(2109, 2, 'campaign', 'new'),
(2110, 2, 'campaign', 'save'),
(2111, 2, 'campaign', 'deletegbr120x600'),
(2112, 2, 'campaign', 'deletegbr160x600'),
(2113, 2, 'campaign', 'deletegbr250x250'),
(2114, 2, 'campaign', 'deletegbr300x50'),
(2115, 2, 'campaign', 'deletegbr300x100'),
(2116, 2, 'campaign', 'deletegbr300x250'),
(2117, 2, 'campaign', 'deletegbr300x600'),
(2118, 2, 'campaign', 'deletegbr305x99'),
(2119, 2, 'campaign', 'deletegbr315x300'),
(2120, 2, 'campaign', 'deletegbr320x50'),
(2121, 2, 'campaign', 'deletegbr320x100'),
(2122, 2, 'campaign', 'deletegbr320x250'),
(2123, 2, 'campaign', 'deletegbr320x416'),
(2124, 2, 'campaign', 'deletegbr320x480'),
(2125, 2, 'campaign', 'deletegbr336x280'),
(2126, 2, 'campaign', 'deletegbr468x60'),
(2127, 2, 'campaign', 'deletegbr640x960'),
(2128, 2, 'campaign', 'deletegbr728x90'),
(2129, 2, 'campaign', 'deletegbr800x440'),
(2130, 2, 'campaign', 'deletegbr1024x7'),
(2131, 2, 'campaign', 'dailyreport'),
(2132, 2, 'campaign', 'dashboardcamp'),
(2133, 2, 'campaign', 'dailyrptdw'),
(2134, 2, 'adspace', 'index'),
(2135, 2, 'adspace', 'search'),
(2136, 2, 'adspace', 'edit'),
(2137, 2, 'adspace', 'create'),
(2138, 2, 'adspace', 'delete'),
(2139, 2, 'adspace', 'new'),
(2140, 2, 'adspace', 'save'),
(2141, 2, 'confirm', 'index'),
(2142, 2, 'confirm', 'create'),
(2143, 2, 'confirm', 'search');

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

CREATE TABLE `picture` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `120x600` varchar(255) DEFAULT NULL,
  `160x600` varchar(255) DEFAULT NULL,
  `250x250` varchar(255) DEFAULT NULL,
  `300x50` varchar(255) DEFAULT NULL,
  `300x100` varchar(255) DEFAULT NULL,
  `300x250` varchar(255) DEFAULT NULL,
  `300x600` varchar(255) DEFAULT NULL,
  `305x99` int(255) DEFAULT NULL,
  `315x300` varchar(255) DEFAULT NULL,
  `320x50` varchar(255) DEFAULT NULL,
  `320x100` varchar(255) DEFAULT NULL,
  `320x250` varchar(255) DEFAULT NULL,
  `320x416` varchar(255) DEFAULT NULL,
  `320x480` varchar(255) DEFAULT NULL,
  `336x280` varchar(255) DEFAULT NULL,
  `468x60` varchar(255) DEFAULT NULL,
  `640x960` varchar(255) DEFAULT NULL,
  `728x90` varchar(255) DEFAULT NULL,
  `800x440` varchar(255) DEFAULT NULL,
  `1024x768` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `name`, `active`) VALUES
(1, 'Administrators', 'Y'),
(2, 'Users', 'Y'),
(3, 'Read-Only', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `remember_tokens`
--

CREATE TABLE `remember_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `usersId` int(10) UNSIGNED NOT NULL,
  `token` char(32) NOT NULL,
  `userAgent` varchar(120) NOT NULL,
  `createdAt` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `remember_tokens`
--

INSERT INTO `remember_tokens` (`id`, `usersId`, `token`, `userAgent`, `createdAt`) VALUES
(1, 18, '352aeca7184cf4ddbc5f84b609ccc64e', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 1486014980),
(2, 18, 'f5d19b39806717b0653ee42ebbe6c452', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 1489155763),
(3, 29, '2d2734b57a86654d56912ae5c04f660b', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 1489205009),
(4, 18, 'f5d19b39806717b0653ee42ebbe6c452', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 1489205815);

-- --------------------------------------------------------

--
-- Table structure for table `reset_passwords`
--

CREATE TABLE `reset_passwords` (
  `id` int(10) UNSIGNED NOT NULL,
  `usersId` int(10) UNSIGNED NOT NULL,
  `code` varchar(48) NOT NULL,
  `createdAt` int(10) UNSIGNED NOT NULL,
  `modifiedAt` int(10) UNSIGNED DEFAULT NULL,
  `reset` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reset_passwords`
--

INSERT INTO `reset_passwords` (`id`, `usersId`, `code`, `createdAt`, `modifiedAt`, `reset`) VALUES
(1, 18, 'yZRUDoUnNIK7LPQ9Ru59XHaBNnhoMvu', 1486015104, 1486015123, 'Y'),
(2, 18, 'b6MMhEi0yPZDILqwZCzytfMFbDiCWJj', 1486015190, 1486015196, 'Y'),
(3, 18, '0axGUZWhuchEOuIQBvxhDLqhjsLNX29', 1486015218, 1486015233, 'Y'),
(4, 18, 'flRXkR9LruqDQAUmCMjAHETX6RfW6Y5', 1486015428, 1486015434, 'Y'),
(5, 18, '5wrTlmqfxoO5GlNyLfyQyKOGoHFnkeY', 1486015518, 1486015528, 'Y'),
(6, 59, 'dEer7XO3lXQoIzr3twrApJT9gvu9aD', 1491432455, NULL, 'N'),
(7, 59, 'yWLQo4ZmXBYjlpSw34fClwu8HppEoZc', 1491432801, 1491433339, 'Y'),
(8, 59, 'DENYA0o0uLQMGm0DksrOiBmWJgJcZRZ', 1491433480, 1491433586, 'Y'),
(9, 59, 'aFy85GWDIg4bFsNus4e45DV3OcBW8pF', 1491433650, 1491433825, 'Y'),
(10, 59, '1ZiRfMrMUYLeei5fqARcqOf6uBeo64WZ', 1491433942, 1491434045, 'Y'),
(11, 59, 'o80TOwci1nDtZ6HZ5ZoCOtgL3GuXmAK', 1491434200, 1491434637, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `saldo`
--

CREATE TABLE `saldo` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cur_saldo` text NOT NULL,
  `currency` varchar(25) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `upddate_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saldo`
--

INSERT INTO `saldo` (`id`, `user_id`, `cur_saldo`, `currency`, `created_at`, `upddate_at`) VALUES
(1, 18, '1199975.96', 'IDR', '2017-05-31 07:53:24', '2017-03-22 05:42:53'),
(15, 39, '508.9', 'USD', '2017-05-27 10:09:38', '2017-04-26 04:04:57');

-- --------------------------------------------------------

--
-- Table structure for table `success_logins`
--

CREATE TABLE `success_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `usersId` int(10) UNSIGNED NOT NULL,
  `ipAddress` char(15) NOT NULL,
  `userAgent` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `success_logins`
--

INSERT INTO `success_logins` (`id`, `usersId`, `ipAddress`, `userAgent`) VALUES
(1, 16, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36'),
(2, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36'),
(3, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(4, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(5, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(6, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(7, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(8, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(9, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36'),
(10, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(11, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36'),
(12, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36'),
(13, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(14, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko'),
(15, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(16, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36'),
(17, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36'),
(18, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(19, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(20, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36'),
(21, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(22, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36'),
(23, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(24, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(25, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(26, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(27, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(28, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(29, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(30, 20, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(31, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(32, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(33, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(34, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(35, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(36, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(37, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(38, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(39, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(40, 20, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(41, 20, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(42, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(43, 20, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(44, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(45, 20, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(46, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(47, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(48, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(49, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(50, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(51, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(52, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(53, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(54, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(55, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(56, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(57, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(58, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(59, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(60, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(61, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(62, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(63, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(64, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(65, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(66, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(67, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(68, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(69, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(70, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(71, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(72, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(73, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(74, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(75, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(76, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(77, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(78, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(79, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(80, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(81, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(82, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(83, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(84, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(85, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(86, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(87, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(88, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(89, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(90, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(91, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(92, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(93, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(94, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(95, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(96, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(97, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(98, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(99, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(100, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(101, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(102, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(103, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(104, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(105, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(106, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(107, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(108, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(109, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(110, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(111, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(112, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(113, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(114, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(115, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(116, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(117, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(118, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(119, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(120, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(121, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(122, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(123, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(124, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(125, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(126, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(127, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(128, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(129, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(130, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(131, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(132, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(133, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(134, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(135, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(136, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(137, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(138, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(139, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(140, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(141, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(142, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(143, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(144, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(145, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(146, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(147, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(148, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(149, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(150, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(151, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(152, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(153, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(154, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(155, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(156, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(157, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(158, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(159, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(160, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(161, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(162, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(163, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(164, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(165, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(166, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(167, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(168, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(169, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(170, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(171, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(172, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(173, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(174, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(175, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(176, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(177, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(178, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(179, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(180, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(181, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(182, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(183, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(184, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(185, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(186, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(187, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(188, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(189, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(190, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(191, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(192, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(193, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(194, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(195, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(196, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(197, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(198, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(199, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(200, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(201, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(202, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(203, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(204, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(205, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(206, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(207, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(208, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(209, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(210, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(211, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(212, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(213, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(214, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(215, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(216, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(217, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(218, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(219, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(220, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(221, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(222, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(223, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(224, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(225, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(226, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(227, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(228, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(229, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(230, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(231, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(232, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(233, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(234, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(235, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(236, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(237, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(238, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0'),
(239, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(240, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(241, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(242, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(243, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(244, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(245, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(246, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(247, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(248, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(249, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(250, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(251, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(252, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(253, 29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(254, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(255, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(256, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(257, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(258, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(259, 58, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(260, 59, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(261, 18, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Mobile'),
(262, 18, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Mobile'),
(263, 39, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Mobile'),
(264, 18, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Mobile'),
(265, 18, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Mobile'),
(266, 18, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Mobile'),
(267, 18, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Mobile'),
(268, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(269, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(270, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(271, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(272, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(273, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(274, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(275, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(276, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(277, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(278, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(279, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(280, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(281, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(282, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(283, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(284, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(285, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(286, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(287, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(288, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(289, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(290, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(291, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(292, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(293, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(294, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(295, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(296, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(297, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(298, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(299, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(300, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(301, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(302, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(303, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(304, 39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(305, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(306, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(307, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(308, 18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36'),
(309, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(310, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(311, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(312, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(313, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(314, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(315, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(316, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(317, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(318, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(319, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(320, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(321, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(322, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(323, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(324, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(325, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(326, 39, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(327, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(328, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(329, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(330, 39, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(331, 39, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(332, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(333, 39, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(334, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(335, 39, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(336, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(337, 39, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(338, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(339, 39, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(340, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(341, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(342, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(343, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(344, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(345, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(346, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(347, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(348, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(349, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(350, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(351, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(352, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(353, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(354, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(355, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(356, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(357, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(358, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36'),
(359, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(360, 39, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(361, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(362, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(363, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(364, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(365, 39, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(366, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(367, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(368, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(369, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(370, 18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0'),
(371, 39, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` char(60) NOT NULL,
  `mustChangePassword` char(1) DEFAULT NULL,
  `profilesId` int(10) UNSIGNED NOT NULL,
  `banned` char(1) NOT NULL,
  `suspended` char(1) NOT NULL,
  `active` char(1) DEFAULT NULL,
  `type` varchar(5) NOT NULL,
  `skype` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `company` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `password`, `mustChangePassword`, `profilesId`, `banned`, `suspended`, `active`, `type`, `skype`, `phone`, `company`, `address`, `city`, `country`) VALUES
(18, 'admindenis superadmin', 'ganteng', 'denis.setianto@gmail.com', '$2y$08$KzhEbVVLYlhBWklPb1haNu3mv1GhW.AnYq6vvGU4lr60gEMskexq.', 'N', 1, 'N', 'N', 'Y', 'A', 'admindenis', '+62929292992', 'dimanan', 'aku', 'disini', 'asdasdas'),
(19, 'ajaib', '', 'ajaib@gmail.com', '$2y$08$Z3UxRHBaVzA4N3Y3V240auFNNAeqRiHsn21SNqTGmWHHi0q.73XnO', 'N', 2, 'N', 'N', 'N', '', '', '', NULL, NULL, NULL, NULL),
(20, 'coba ya', '', 'asdasd@klalalal.com', '$2y$08$T3FabjJBM1dvVUZBaTRJYuolr7T5.zYRO1Z8ngicLnGnyG/CC7nXG', 'N', 3, 'N', 'N', 'Y', 'A', '', '', NULL, NULL, NULL, NULL),
(25, 'kakakakak', 'kalalall', 'gaman@gamanads.com', '$2y$08$bjZsUE5hMHRyNEZXMWd0ZOfQ9W2XXxHmvxKaTv4BoBviPRaT8jqg6', 'N', 2, 'N', 'N', 'N', 'A', 'akakakakk', 'kakakakakakk', 'asdas', 'dasda', 'sdasd', 'asdasd'),
(26, 'lagideh', 'asdasd', 'asdasd@mgmgm.co', '$2y$08$RXl0MVlVTk1ZaTlGSDdod.3ru4jOy2.lBGVeOweF4CXrsl5eFFDmC', 'N', 2, 'N', 'N', 'N', 'A', 'asdasdasd', 'asdasdasd', 'asdasdas', 'asdasdasd', 'asdasd', 'asdasdasd'),
(27, 'asdasda auaaaamam', 'asdasd', 'asdasda@asdas.co', '$2y$08$c3dRYVhYamZ3eDRnSXhBSOTcYUToXCKzJi5e9Q3cLLX7FUIw2zSNC', 'N', 2, 'N', 'N', 'N', 'A', 'asdasdasd', 'asdasdas', '', '', '', ''),
(28, 'lalal', 'akajajj', 'ajajj@alala.co', '$2y$08$RmVGcHRnTGphWjFDeWp3dO5H6g0.fc/nAlPGOf0wwHbBC3ULlkcAW', 'N', 2, 'N', 'N', 'N', 'A', 'asdasdasd', 'asdasdasd', 'asdasdasd', 'asdasdasd', 'asdasd', 'asdasd'),
(29, 'clientbaru', 'baruclient 212', 'clientbaru@gmail.com', '$2y$08$OW8yY0N1VCtGaUp2VGdaW..AB1S4hbnk4BAFjdN1tBz329eCD/Q7C', 'N', 1, 'N', 'N', 'Y', 'A', 'asdasdasd', 'asdasdasd', 'asdasdqsadd', 'asdasdasd', 'asdas', 'dasdasd'),
(30, 'Hokya', 'Hokya', 'Hokya@gamanads.com', '$2y$08$bnZ1L00weVdJbzM0eEhzR.Ufh3kDkeMhs//aRllLPUKyq711p9mZm', 'N', 2, 'N', 'N', 'Y', 'A', 'asdasdasd', 'asdasdasd', 'asdasdasd', 'asd', 'asd', 'asdasd'),
(31, 'coba gabon', 'asdasdasd', 'asdasd@kakakak.com', '$2y$08$c0ErcXI4eU43QmtBajVnM.mpHM5nezmEWR6SAqwOu2VWABMvMk9ly', 'N', 2, 'N', 'N', 'N', 'A', 'asdasdasd', 'asdasdasd', '', '', '', 'GABON'),
(32, 'asdas', 'asda', 'sdasdasd@asdasd.com', '$2y$08$RXh0QVppeE1qREV6aWp6RunGl6ksmmmH3Kx3BMGYLcPIouenwglGO', 'N', 2, 'N', 'N', 'N', 'A', 'asdasdasd', 'asdasdasd', '', '', '', 'AFGHANISTAN'),
(33, 'asdasd', 'asd', 'asd@asdasd.co', '$2y$08$MHlKK3hrcE13QmxNR0tSN.VLY4iHu4vuTR6XBXvKD0phTVSfibPOq', 'N', 2, 'N', 'N', 'N', 'A', 'asdasdasd', 'asdasdas', 'asdasd', 'asdasd', 'asdasdasd', 'AFGHANISTAN'),
(35, 'coba yagan', 'asdasdqs', '23asda@mfmfm.com', '$2y$08$ZXhYOVF6d2xSVTJtakhYLuqKzl/Hln3EbRDTCTuDtlAjW0gjqOOB6', 'N', 2, 'N', 'N', 'Y', 'A', 'asdasdasd', 'asdasdasd', 'asdasd', 'asdasdas', 'asdasdasd', 'AFGHANISTAN'),
(36, 'asdasdasd', 'asdasdasd', 'asdasd@ffjjf.com', '$2y$08$YXFIdnFKc1Y4SFZYOFFzQOQy3qRIosy4JPKwnR7AblPXwfQYaKNCe', 'N', 2, 'N', 'N', 'Y', 'A', 'asdasdasd', 'asdasdasd', 'asdasd', 'asda', 'sdasd', 'AFGHANISTAN'),
(37, 'ulululu18', 'asdasd', 'kakakk@mfffjf.com', '$2y$08$c3Q2MHYzSUJHdmsxaHBWQOsOV1DFWUYpjim2azyLzItT4SOviC4ku', 'N', 2, 'N', 'N', 'Y', 'A', 'asdasdasd', 'asdasdasd', 'asdasd', 'asdasd', 'asdasd', 'AFGHANISTAN'),
(38, 'testnasakmdlasmd', 'lkmasldmas,', 'askmdkamsdk@ammama.com', '$2y$08$dW5YMmhEaHZ0TUxURHBsUu8LcqYMIMXY9RSmCZYpBvDpOfGDYjVAW', 'N', 2, 'N', 'N', 'Y', 'A', 'asdasd', 'asdasd', 'asdasd', 'asdas', 'asdasd', 'AFGHANISTAN'),
(39, 'wina', 'winursari', 'wina@winur.com', '$2y$08$S3VVdTA1Q2c3TWRvUXVNc.pu2FsI8Bj.CPvt3Z7QQIq3100/Ch.sK', 'N', 2, 'N', 'N', 'Y', 'A', 'asdasdasd', 'asdasdasd', 'asdasdasd', 'asdasdasd', 'asdasdasd', 'KOREA'),
(40, 'asdasd', 'asdasd', 'asdasd@gmail.com', '$2y$08$d2xPTWZrTVNZbnNTS0xzbeSn1VJWwLjKwyANXs7O4qK8lJukO3cC2', 'N', 2, 'N', 'N', 'N', 'A', 'asds123', 'sdasdasd', '', '', 'asdasdasd', 'BAHAMAS'),
(41, 'wakawaka', 'wakawaka', 'waka@waka.com', '$2y$08$RThXNEdLTWFGMDRzV0pNW.49DIIKSnCWlUglhJG8gJMiMrnZpWofe', 'N', 2, 'N', 'N', 'N', 'A', 'asdasdasd', '+9191919191', 'askdaskdaskdk', 'kasdnaksdnk', 'asdknaskdnaskdn', 'AFGHANISTAN'),
(42, 'ASDASDASD', 'swawaw', 'asd212@gm.com', '$2y$08$amI5SlZENUcxc0d4QWJIeexOq4OjrnMpTnAUVpWc5kIz4iiI2ukNO', 'N', 2, 'N', 'N', 'N', 'A', 'asdasdasd', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'AFGHANISTAN'),
(43, 'alalalal', 'alalala', 'lala@lala.com', '$2y$08$Wko5dHRvcU1ROHRkTVZMa.rmMZmLIUBP4rd829AjNtlQwYGG6TMy6', 'N', 2, 'N', 'N', 'Y', 'A', 'asdasdasd', 'asdasdasd', 'asdasdasd', 'asdasdasd', 'asdasdasd', 'AFGHANISTAN'),
(44, 'salimgerysalim', 'asdasdasd', 'asdsalim@gmail.com', '$2y$08$cVpoU1hKS2pDODlqMVhzauLVSS9K7OvjK/xw3NVZLtbpRhpFnnce.', 'N', 2, 'N', 'N', 'Y', 'A', 'asdasdasd', '+62626262', 'asdasdasd', 'asdasdasd', 'asdasdasd', 'AFGHANISTAN'),
(45, 'moncrot1212', 'asdasdad', 'moncrot212@mm.com', '$2y$08$MWwrNldKUGtVSnN5aGZLbOR8Lf/lQ0BoP3K.rGqHOt/eZ14qWZNBm', 'N', 2, 'N', 'N', 'Y', 'A', 'asdasdasd', 'asdasdasd', 'asdasd', 'asdasd', 'asdasd', 'AFGHANISTAN'),
(46, 'hahahah212', 'aajjaaj', 'lala212@gmail.com', '$2y$08$QzFUaWNzb2U2R1Z1bGxlVeU2Hqng67XOPSCUOaNDrlihwMoKoaQvS', 'N', 2, 'N', 'N', 'Y', 'A', 'asdasdasd', 'asdasdasd', 'asdasdasd', 'asdasdasd', 'asdasdasd', 'AFGHANISTAN'),
(47, 'tampemail', 'sskksk', 'tampemail@gmail.com', '$2y$08$TVdSUXBlVHA2MDRvTmhGV.6vaxWXGS3ZEJULEv9Ny0knmMbprAF1S', 'N', 2, 'N', 'N', 'Y', 'A', 'asdasdasd', 'asdasdasd', 'asdasdasd', 'asdasdas', 'dasdasdasd', 'AFGHANISTAN'),
(48, 'yuyukangkang', 'yuyu', 'yuyu@gmail.com', '$2y$08$UzBlRWFXUEtoQXhubVNGWe2f55W1TIanFmFw0BlN9sI7bpVu8Rq5u', 'N', 2, 'N', 'N', 'N', 'A', 'asdasdasd', 'asdasdasd', 'asdasdasd', 'asdasdasd', 'asdasdasd', 'AFGHANISTAN'),
(49, 'yuyukangkang', 'yuyu', 'yuyukang@gmail.com', '$2y$08$Z3VVNVVucmE4UWFGd21uTOFCnPrsHOppqzCrpepXo/2YO2ZjWRpfS', 'N', 2, 'N', 'N', 'N', 'A', 'asdasdasd', 'asdasdasd', 'asdasdasd', 'asdasdasd', 'asdasdasd', 'AFGHANISTAN'),
(50, 'asdasd', 'jajajaja', 'ioioioi@gmail.com', '$2y$08$L0ZvZEFCNVhGSmVYMlAxZOAsEs/XaTG3V8Y7EeQJDL4pAd.tO/SWu', 'N', 2, 'N', 'N', 'N', 'A', 'asdasdad', 'asdasd', 'asdasdasd', 'asdasda', 'asdasd', 'AFGHANISTAN'),
(59, 'asdasd', 'moncrot 212', 'shotokhaw213@gmail.com', '$2y$08$TSs3VjUrMXZ2c0NZWHlKcO6qvBBzXvoJHabPbAq03GPKua.wHM/h.', 'N', 2, 'N', 'N', 'Y', 'A', 'asdasdasd', 'asdasdasd', 'asdasdasd', 'asdasdasd', 'asdasdasd', 'AFGHANISTAN');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adspace`
--
ALTER TABLE `adspace`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign`
--
ALTER TABLE `campaign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirmation`
--
ALTER TABLE `confirmation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_click_callback_201701`
--
ALTER TABLE `c_click_callback_201701`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_click_callback_201702`
--
ALTER TABLE `c_click_callback_201702`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_click_callback_201703`
--
ALTER TABLE `c_click_callback_201703`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_click_callback_201704`
--
ALTER TABLE `c_click_callback_201704`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_click_callback_201705`
--
ALTER TABLE `c_click_callback_201705`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_click_callback_201706`
--
ALTER TABLE `c_click_callback_201706`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_click_callback_201707`
--
ALTER TABLE `c_click_callback_201707`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_click_callback_201708`
--
ALTER TABLE `c_click_callback_201708`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_click_callback_201709`
--
ALTER TABLE `c_click_callback_201709`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_click_callback_201710`
--
ALTER TABLE `c_click_callback_201710`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_click_callback_201711`
--
ALTER TABLE `c_click_callback_201711`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_click_callback_201712`
--
ALTER TABLE `c_click_callback_201712`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_click_log201701`
--
ALTER TABLE `c_click_log201701`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`);

--
-- Indexes for table `c_click_log201702`
--
ALTER TABLE `c_click_log201702`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`);

--
-- Indexes for table `c_click_log201703`
--
ALTER TABLE `c_click_log201703`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`);

--
-- Indexes for table `c_click_log201704`
--
ALTER TABLE `c_click_log201704`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`);

--
-- Indexes for table `c_click_log201705`
--
ALTER TABLE `c_click_log201705`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`);

--
-- Indexes for table `c_click_log201706`
--
ALTER TABLE `c_click_log201706`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`);

--
-- Indexes for table `c_click_log201707`
--
ALTER TABLE `c_click_log201707`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`);

--
-- Indexes for table `c_click_log201708`
--
ALTER TABLE `c_click_log201708`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`);

--
-- Indexes for table `c_click_log201709`
--
ALTER TABLE `c_click_log201709`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`);

--
-- Indexes for table `c_click_log201710`
--
ALTER TABLE `c_click_log201710`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`);

--
-- Indexes for table `c_click_log201711`
--
ALTER TABLE `c_click_log201711`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`);

--
-- Indexes for table `c_click_log201712`
--
ALTER TABLE `c_click_log201712`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`);

--
-- Indexes for table `c_cp_log_201701`
--
ALTER TABLE `c_cp_log_201701`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_cp_log_201702`
--
ALTER TABLE `c_cp_log_201702`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_cp_log_201703`
--
ALTER TABLE `c_cp_log_201703`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_cp_log_201704`
--
ALTER TABLE `c_cp_log_201704`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_cp_log_201705`
--
ALTER TABLE `c_cp_log_201705`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_cp_log_201706`
--
ALTER TABLE `c_cp_log_201706`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_cp_log_201707`
--
ALTER TABLE `c_cp_log_201707`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_cp_log_201708`
--
ALTER TABLE `c_cp_log_201708`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_cp_log_201709`
--
ALTER TABLE `c_cp_log_201709`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_cp_log_201710`
--
ALTER TABLE `c_cp_log_201710`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_cp_log_201711`
--
ALTER TABLE `c_cp_log_201711`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_cp_log_201712`
--
ALTER TABLE `c_cp_log_201712`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_daily_cp_201701`
--
ALTER TABLE `c_daily_cp_201701`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`);

--
-- Indexes for table `c_daily_cp_201702`
--
ALTER TABLE `c_daily_cp_201702`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`);

--
-- Indexes for table `c_daily_cp_201703`
--
ALTER TABLE `c_daily_cp_201703`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`);

--
-- Indexes for table `c_daily_cp_201704`
--
ALTER TABLE `c_daily_cp_201704`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`);

--
-- Indexes for table `c_daily_cp_201705`
--
ALTER TABLE `c_daily_cp_201705`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`);

--
-- Indexes for table `c_daily_cp_201706`
--
ALTER TABLE `c_daily_cp_201706`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`);

--
-- Indexes for table `c_daily_cp_201707`
--
ALTER TABLE `c_daily_cp_201707`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`);

--
-- Indexes for table `c_daily_cp_201708`
--
ALTER TABLE `c_daily_cp_201708`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`);

--
-- Indexes for table `c_daily_cp_201709`
--
ALTER TABLE `c_daily_cp_201709`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`);

--
-- Indexes for table `c_daily_cp_201710`
--
ALTER TABLE `c_daily_cp_201710`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`);

--
-- Indexes for table `c_daily_cp_201711`
--
ALTER TABLE `c_daily_cp_201711`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`);

--
-- Indexes for table `c_daily_cp_201712`
--
ALTER TABLE `c_daily_cp_201712`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`);

--
-- Indexes for table `c_daily_hit_201701`
--
ALTER TABLE `c_daily_hit_201701`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`hit_date`);

--
-- Indexes for table `c_daily_hit_201702`
--
ALTER TABLE `c_daily_hit_201702`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`hit_date`);

--
-- Indexes for table `c_daily_hit_201703`
--
ALTER TABLE `c_daily_hit_201703`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`hit_date`);

--
-- Indexes for table `c_daily_hit_201704`
--
ALTER TABLE `c_daily_hit_201704`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`hit_date`);

--
-- Indexes for table `c_daily_hit_201705`
--
ALTER TABLE `c_daily_hit_201705`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`hit_date`);

--
-- Indexes for table `c_daily_hit_201706`
--
ALTER TABLE `c_daily_hit_201706`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`hit_date`);

--
-- Indexes for table `c_daily_hit_201707`
--
ALTER TABLE `c_daily_hit_201707`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`hit_date`);

--
-- Indexes for table `c_daily_hit_201708`
--
ALTER TABLE `c_daily_hit_201708`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`hit_date`);

--
-- Indexes for table `c_daily_hit_201709`
--
ALTER TABLE `c_daily_hit_201709`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`hit_date`);

--
-- Indexes for table `c_daily_hit_201710`
--
ALTER TABLE `c_daily_hit_201710`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`hit_date`);

--
-- Indexes for table `c_daily_hit_201711`
--
ALTER TABLE `c_daily_hit_201711`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`hit_date`);

--
-- Indexes for table `c_daily_hit_201712`
--
ALTER TABLE `c_daily_hit_201712`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`hit_date`);

--
-- Indexes for table `c_daily_ip_hit_201701`
--
ALTER TABLE `c_daily_ip_hit_201701`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`ip_address`,`hit_date`);

--
-- Indexes for table `c_daily_ip_hit_201702`
--
ALTER TABLE `c_daily_ip_hit_201702`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`ip_address`,`hit_date`);

--
-- Indexes for table `c_daily_ip_hit_201703`
--
ALTER TABLE `c_daily_ip_hit_201703`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`ip_address`,`hit_date`);

--
-- Indexes for table `c_daily_ip_hit_201704`
--
ALTER TABLE `c_daily_ip_hit_201704`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`ip_address`,`hit_date`);

--
-- Indexes for table `c_daily_ip_hit_201705`
--
ALTER TABLE `c_daily_ip_hit_201705`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`ip_address`,`hit_date`);

--
-- Indexes for table `c_daily_ip_hit_201706`
--
ALTER TABLE `c_daily_ip_hit_201706`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`ip_address`,`hit_date`);

--
-- Indexes for table `c_daily_ip_hit_201707`
--
ALTER TABLE `c_daily_ip_hit_201707`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`ip_address`,`hit_date`);

--
-- Indexes for table `c_daily_ip_hit_201708`
--
ALTER TABLE `c_daily_ip_hit_201708`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`ip_address`,`hit_date`);

--
-- Indexes for table `c_daily_ip_hit_201709`
--
ALTER TABLE `c_daily_ip_hit_201709`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`ip_address`,`hit_date`);

--
-- Indexes for table `c_daily_ip_hit_201710`
--
ALTER TABLE `c_daily_ip_hit_201710`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`ip_address`,`hit_date`);

--
-- Indexes for table `c_daily_ip_hit_201711`
--
ALTER TABLE `c_daily_ip_hit_201711`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`ip_address`,`hit_date`);

--
-- Indexes for table `c_daily_ip_hit_201712`
--
ALTER TABLE `c_daily_ip_hit_201712`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`ip_address`,`hit_date`);

--
-- Indexes for table `c_daily_referer_hit_201701`
--
ALTER TABLE `c_daily_referer_hit_201701`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`referer`,`hit_date`);

--
-- Indexes for table `c_daily_referer_hit_201702`
--
ALTER TABLE `c_daily_referer_hit_201702`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`referer`,`hit_date`);

--
-- Indexes for table `c_daily_referer_hit_201703`
--
ALTER TABLE `c_daily_referer_hit_201703`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`referer`,`hit_date`);

--
-- Indexes for table `c_daily_referer_hit_201704`
--
ALTER TABLE `c_daily_referer_hit_201704`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`referer`,`hit_date`);

--
-- Indexes for table `c_daily_referer_hit_201705`
--
ALTER TABLE `c_daily_referer_hit_201705`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`referer`,`hit_date`);

--
-- Indexes for table `c_daily_referer_hit_201706`
--
ALTER TABLE `c_daily_referer_hit_201706`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`referer`,`hit_date`);

--
-- Indexes for table `c_daily_referer_hit_201707`
--
ALTER TABLE `c_daily_referer_hit_201707`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`referer`,`hit_date`);

--
-- Indexes for table `c_daily_referer_hit_201708`
--
ALTER TABLE `c_daily_referer_hit_201708`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`referer`,`hit_date`);

--
-- Indexes for table `c_daily_referer_hit_201709`
--
ALTER TABLE `c_daily_referer_hit_201709`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`referer`,`hit_date`);

--
-- Indexes for table `c_daily_referer_hit_201710`
--
ALTER TABLE `c_daily_referer_hit_201710`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`referer`,`hit_date`);

--
-- Indexes for table `c_daily_referer_hit_201711`
--
ALTER TABLE `c_daily_referer_hit_201711`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`referer`,`hit_date`);

--
-- Indexes for table `c_daily_referer_hit_201712`
--
ALTER TABLE `c_daily_referer_hit_201712`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`referer`,`hit_date`);

--
-- Indexes for table `c_daily_sms_201701`
--
ALTER TABLE `c_daily_sms_201701`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`);

--
-- Indexes for table `c_daily_sms_201702`
--
ALTER TABLE `c_daily_sms_201702`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`);

--
-- Indexes for table `c_daily_sms_201703`
--
ALTER TABLE `c_daily_sms_201703`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`);

--
-- Indexes for table `c_daily_sms_201704`
--
ALTER TABLE `c_daily_sms_201704`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`);

--
-- Indexes for table `c_daily_sms_201705`
--
ALTER TABLE `c_daily_sms_201705`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`);

--
-- Indexes for table `c_daily_sms_201706`
--
ALTER TABLE `c_daily_sms_201706`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`);

--
-- Indexes for table `c_daily_sms_201707`
--
ALTER TABLE `c_daily_sms_201707`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`);

--
-- Indexes for table `c_daily_sms_201708`
--
ALTER TABLE `c_daily_sms_201708`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`);

--
-- Indexes for table `c_daily_sms_201709`
--
ALTER TABLE `c_daily_sms_201709`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`);

--
-- Indexes for table `c_daily_sms_201710`
--
ALTER TABLE `c_daily_sms_201710`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`);

--
-- Indexes for table `c_daily_sms_201711`
--
ALTER TABLE `c_daily_sms_201711`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`);

--
-- Indexes for table `c_daily_sms_201712`
--
ALTER TABLE `c_daily_sms_201712`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`);

--
-- Indexes for table `c_daily_ua_hit_201701`
--
ALTER TABLE `c_daily_ua_hit_201701`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`user_agent`,`hit_date`);

--
-- Indexes for table `c_daily_ua_hit_201702`
--
ALTER TABLE `c_daily_ua_hit_201702`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`user_agent`,`hit_date`);

--
-- Indexes for table `c_daily_ua_hit_201703`
--
ALTER TABLE `c_daily_ua_hit_201703`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`user_agent`,`hit_date`);

--
-- Indexes for table `c_daily_ua_hit_201704`
--
ALTER TABLE `c_daily_ua_hit_201704`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`user_agent`,`hit_date`);

--
-- Indexes for table `c_daily_ua_hit_201705`
--
ALTER TABLE `c_daily_ua_hit_201705`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`user_agent`,`hit_date`);

--
-- Indexes for table `c_daily_ua_hit_201706`
--
ALTER TABLE `c_daily_ua_hit_201706`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`user_agent`,`hit_date`);

--
-- Indexes for table `c_daily_ua_hit_201707`
--
ALTER TABLE `c_daily_ua_hit_201707`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`user_agent`,`hit_date`);

--
-- Indexes for table `c_daily_ua_hit_201708`
--
ALTER TABLE `c_daily_ua_hit_201708`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`user_agent`,`hit_date`);

--
-- Indexes for table `c_daily_ua_hit_201709`
--
ALTER TABLE `c_daily_ua_hit_201709`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`user_agent`,`hit_date`);

--
-- Indexes for table `c_daily_ua_hit_201710`
--
ALTER TABLE `c_daily_ua_hit_201710`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`user_agent`,`hit_date`);

--
-- Indexes for table `c_daily_ua_hit_201711`
--
ALTER TABLE `c_daily_ua_hit_201711`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`user_agent`,`hit_date`);

--
-- Indexes for table `c_daily_ua_hit_201712`
--
ALTER TABLE `c_daily_ua_hit_201712`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`user_agent`,`hit_date`);

--
-- Indexes for table `c_hourly_cp_201701`
--
ALTER TABLE `c_hourly_cp_201701`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`,`jam`) USING BTREE;

--
-- Indexes for table `c_hourly_cp_201702`
--
ALTER TABLE `c_hourly_cp_201702`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`,`jam`) USING BTREE;

--
-- Indexes for table `c_hourly_cp_201703`
--
ALTER TABLE `c_hourly_cp_201703`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`,`jam`) USING BTREE;

--
-- Indexes for table `c_hourly_cp_201704`
--
ALTER TABLE `c_hourly_cp_201704`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`,`jam`) USING BTREE;

--
-- Indexes for table `c_hourly_cp_201705`
--
ALTER TABLE `c_hourly_cp_201705`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`,`jam`) USING BTREE;

--
-- Indexes for table `c_hourly_cp_201706`
--
ALTER TABLE `c_hourly_cp_201706`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`,`jam`) USING BTREE;

--
-- Indexes for table `c_hourly_cp_201707`
--
ALTER TABLE `c_hourly_cp_201707`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`,`jam`) USING BTREE;

--
-- Indexes for table `c_hourly_cp_201708`
--
ALTER TABLE `c_hourly_cp_201708`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`,`jam`) USING BTREE;

--
-- Indexes for table `c_hourly_cp_201709`
--
ALTER TABLE `c_hourly_cp_201709`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`,`jam`) USING BTREE;

--
-- Indexes for table `c_hourly_cp_201710`
--
ALTER TABLE `c_hourly_cp_201710`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`,`jam`) USING BTREE;

--
-- Indexes for table `c_hourly_cp_201711`
--
ALTER TABLE `c_hourly_cp_201711`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`,`jam`) USING BTREE;

--
-- Indexes for table `c_hourly_cp_201712`
--
ALTER TABLE `c_hourly_cp_201712`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`,`jam`) USING BTREE;

--
-- Indexes for table `c_hourly_hit_201701`
--
ALTER TABLE `c_hourly_hit_201701`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_hit_201702`
--
ALTER TABLE `c_hourly_hit_201702`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_hit_201703`
--
ALTER TABLE `c_hourly_hit_201703`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_hit_201704`
--
ALTER TABLE `c_hourly_hit_201704`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_hit_201705`
--
ALTER TABLE `c_hourly_hit_201705`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_hit_201706`
--
ALTER TABLE `c_hourly_hit_201706`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_hit_201707`
--
ALTER TABLE `c_hourly_hit_201707`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_hit_201708`
--
ALTER TABLE `c_hourly_hit_201708`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_hit_201709`
--
ALTER TABLE `c_hourly_hit_201709`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_hit_201710`
--
ALTER TABLE `c_hourly_hit_201710`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_hit_201711`
--
ALTER TABLE `c_hourly_hit_201711`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_hit_201712`
--
ALTER TABLE `c_hourly_hit_201712`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_ip_hit_201701`
--
ALTER TABLE `c_hourly_ip_hit_201701`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`ip_address`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_ip_hit_201702`
--
ALTER TABLE `c_hourly_ip_hit_201702`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`ip_address`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_ip_hit_201703`
--
ALTER TABLE `c_hourly_ip_hit_201703`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`ip_address`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_ip_hit_201704`
--
ALTER TABLE `c_hourly_ip_hit_201704`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`ip_address`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_ip_hit_201705`
--
ALTER TABLE `c_hourly_ip_hit_201705`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`ip_address`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_ip_hit_201706`
--
ALTER TABLE `c_hourly_ip_hit_201706`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`ip_address`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_ip_hit_201707`
--
ALTER TABLE `c_hourly_ip_hit_201707`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`ip_address`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_ip_hit_201708`
--
ALTER TABLE `c_hourly_ip_hit_201708`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`ip_address`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_ip_hit_201709`
--
ALTER TABLE `c_hourly_ip_hit_201709`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`ip_address`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_ip_hit_201710`
--
ALTER TABLE `c_hourly_ip_hit_201710`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`ip_address`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_ip_hit_201711`
--
ALTER TABLE `c_hourly_ip_hit_201711`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`ip_address`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_ip_hit_201712`
--
ALTER TABLE `c_hourly_ip_hit_201712`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`ip_address`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_referer_hit_201701`
--
ALTER TABLE `c_hourly_referer_hit_201701`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`referer`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_referer_hit_201702`
--
ALTER TABLE `c_hourly_referer_hit_201702`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`referer`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_referer_hit_201703`
--
ALTER TABLE `c_hourly_referer_hit_201703`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`referer`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_referer_hit_201704`
--
ALTER TABLE `c_hourly_referer_hit_201704`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`referer`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_referer_hit_201705`
--
ALTER TABLE `c_hourly_referer_hit_201705`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`referer`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_referer_hit_201706`
--
ALTER TABLE `c_hourly_referer_hit_201706`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`referer`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_referer_hit_201707`
--
ALTER TABLE `c_hourly_referer_hit_201707`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`referer`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_referer_hit_201708`
--
ALTER TABLE `c_hourly_referer_hit_201708`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`referer`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_referer_hit_201709`
--
ALTER TABLE `c_hourly_referer_hit_201709`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`referer`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_referer_hit_201710`
--
ALTER TABLE `c_hourly_referer_hit_201710`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`referer`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_referer_hit_201711`
--
ALTER TABLE `c_hourly_referer_hit_201711`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`referer`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_referer_hit_201712`
--
ALTER TABLE `c_hourly_referer_hit_201712`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`referer`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_sms_201701`
--
ALTER TABLE `c_hourly_sms_201701`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`,`jam`);

--
-- Indexes for table `c_hourly_sms_201702`
--
ALTER TABLE `c_hourly_sms_201702`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`,`jam`);

--
-- Indexes for table `c_hourly_sms_201703`
--
ALTER TABLE `c_hourly_sms_201703`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`,`jam`);

--
-- Indexes for table `c_hourly_sms_201704`
--
ALTER TABLE `c_hourly_sms_201704`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`,`jam`);

--
-- Indexes for table `c_hourly_sms_201705`
--
ALTER TABLE `c_hourly_sms_201705`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`,`jam`);

--
-- Indexes for table `c_hourly_sms_201706`
--
ALTER TABLE `c_hourly_sms_201706`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`,`jam`);

--
-- Indexes for table `c_hourly_sms_201707`
--
ALTER TABLE `c_hourly_sms_201707`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`,`jam`);

--
-- Indexes for table `c_hourly_sms_201708`
--
ALTER TABLE `c_hourly_sms_201708`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`,`jam`);

--
-- Indexes for table `c_hourly_sms_201709`
--
ALTER TABLE `c_hourly_sms_201709`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`,`jam`);

--
-- Indexes for table `c_hourly_sms_201710`
--
ALTER TABLE `c_hourly_sms_201710`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`,`jam`);

--
-- Indexes for table `c_hourly_sms_201711`
--
ALTER TABLE `c_hourly_sms_201711`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`,`jam`);

--
-- Indexes for table `c_hourly_sms_201712`
--
ALTER TABLE `c_hourly_sms_201712`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_id` (`cp_id`,`campaign_id`,`sms_date`,`jam`);

--
-- Indexes for table `c_hourly_ua_hit_201701`
--
ALTER TABLE `c_hourly_ua_hit_201701`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`user_agent`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_ua_hit_201702`
--
ALTER TABLE `c_hourly_ua_hit_201702`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`user_agent`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_ua_hit_201703`
--
ALTER TABLE `c_hourly_ua_hit_201703`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`user_agent`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_ua_hit_201704`
--
ALTER TABLE `c_hourly_ua_hit_201704`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`user_agent`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_ua_hit_201705`
--
ALTER TABLE `c_hourly_ua_hit_201705`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`user_agent`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_ua_hit_201706`
--
ALTER TABLE `c_hourly_ua_hit_201706`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`user_agent`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_ua_hit_201707`
--
ALTER TABLE `c_hourly_ua_hit_201707`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`user_agent`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_ua_hit_201708`
--
ALTER TABLE `c_hourly_ua_hit_201708`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`user_agent`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_ua_hit_201709`
--
ALTER TABLE `c_hourly_ua_hit_201709`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`user_agent`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_ua_hit_201710`
--
ALTER TABLE `c_hourly_ua_hit_201710`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`user_agent`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_ua_hit_201711`
--
ALTER TABLE `c_hourly_ua_hit_201711`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`user_agent`,`hit_date`,`jam`);

--
-- Indexes for table `c_hourly_ua_hit_201712`
--
ALTER TABLE `c_hourly_ua_hit_201712`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campaign_id` (`campaign_id`,`user_agent`,`hit_date`,`jam`);

--
-- Indexes for table `c_sms_log_201701`
--
ALTER TABLE `c_sms_log_201701`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_sms_log_201702`
--
ALTER TABLE `c_sms_log_201702`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_sms_log_201703`
--
ALTER TABLE `c_sms_log_201703`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_sms_log_201704`
--
ALTER TABLE `c_sms_log_201704`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_sms_log_201705`
--
ALTER TABLE `c_sms_log_201705`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_sms_log_201706`
--
ALTER TABLE `c_sms_log_201706`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_sms_log_201707`
--
ALTER TABLE `c_sms_log_201707`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_sms_log_201708`
--
ALTER TABLE `c_sms_log_201708`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_sms_log_201709`
--
ALTER TABLE `c_sms_log_201709`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_sms_log_201710`
--
ALTER TABLE `c_sms_log_201710`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_sms_log_201711`
--
ALTER TABLE `c_sms_log_201711`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_sms_log_201712`
--
ALTER TABLE `c_sms_log_201712`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_traceid_log_201701`
--
ALTER TABLE `c_traceid_log_201701`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`,`traceid`,`traceid_ads`);

--
-- Indexes for table `c_traceid_log_201702`
--
ALTER TABLE `c_traceid_log_201702`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`,`traceid`,`traceid_ads`);

--
-- Indexes for table `c_traceid_log_201703`
--
ALTER TABLE `c_traceid_log_201703`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`,`traceid`,`traceid_ads`);

--
-- Indexes for table `c_traceid_log_201704`
--
ALTER TABLE `c_traceid_log_201704`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`,`traceid`,`traceid_ads`);

--
-- Indexes for table `c_traceid_log_201705`
--
ALTER TABLE `c_traceid_log_201705`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`,`traceid`,`traceid_ads`);

--
-- Indexes for table `c_traceid_log_201706`
--
ALTER TABLE `c_traceid_log_201706`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`,`traceid`,`traceid_ads`);

--
-- Indexes for table `c_traceid_log_201707`
--
ALTER TABLE `c_traceid_log_201707`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`,`traceid`,`traceid_ads`);

--
-- Indexes for table `c_traceid_log_201708`
--
ALTER TABLE `c_traceid_log_201708`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`,`traceid`,`traceid_ads`);

--
-- Indexes for table `c_traceid_log_201709`
--
ALTER TABLE `c_traceid_log_201709`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`,`traceid`,`traceid_ads`);

--
-- Indexes for table `c_traceid_log_201710`
--
ALTER TABLE `c_traceid_log_201710`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`,`traceid`,`traceid_ads`);

--
-- Indexes for table `c_traceid_log_201711`
--
ALTER TABLE `c_traceid_log_201711`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`,`traceid`,`traceid_ads`);

--
-- Indexes for table `c_traceid_log_201712`
--
ALTER TABLE `c_traceid_log_201712`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`,`traceid`,`traceid_ads`);

--
-- Indexes for table `c_transaction_log_201701`
--
ALTER TABLE `c_transaction_log_201701`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_transaction_log_201702`
--
ALTER TABLE `c_transaction_log_201702`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_transaction_log_201703`
--
ALTER TABLE `c_transaction_log_201703`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_transaction_log_201704`
--
ALTER TABLE `c_transaction_log_201704`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_transaction_log_201705`
--
ALTER TABLE `c_transaction_log_201705`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_transaction_log_201706`
--
ALTER TABLE `c_transaction_log_201706`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_transaction_log_201707`
--
ALTER TABLE `c_transaction_log_201707`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_transaction_log_201708`
--
ALTER TABLE `c_transaction_log_201708`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_transaction_log_201709`
--
ALTER TABLE `c_transaction_log_201709`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_transaction_log_201710`
--
ALTER TABLE `c_transaction_log_201710`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_transaction_log_201711`
--
ALTER TABLE `c_transaction_log_201711`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_transaction_log_201712`
--
ALTER TABLE `c_transaction_log_201712`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_confirmations`
--
ALTER TABLE `email_confirmations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_logins`
--
ALTER TABLE `failed_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usersId` (`usersId`);

--
-- Indexes for table `password_changes`
--
ALTER TABLE `password_changes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usersId` (`usersId`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profilesId` (`profilesId`);

--
-- Indexes for table `picture`
--
ALTER TABLE `picture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `remember_tokens`
--
ALTER TABLE `remember_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `token` (`token`);

--
-- Indexes for table `reset_passwords`
--
ALTER TABLE `reset_passwords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usersId` (`usersId`);

--
-- Indexes for table `saldo`
--
ALTER TABLE `saldo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `success_logins`
--
ALTER TABLE `success_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usersId` (`usersId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profilesId` (`profilesId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adspace`
--
ALTER TABLE `adspace`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `campaign`
--
ALTER TABLE `campaign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=598;
--
-- AUTO_INCREMENT for table `confirmation`
--
ALTER TABLE `confirmation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `c_click_callback_201701`
--
ALTER TABLE `c_click_callback_201701`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_click_callback_201702`
--
ALTER TABLE `c_click_callback_201702`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_click_callback_201703`
--
ALTER TABLE `c_click_callback_201703`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_click_callback_201704`
--
ALTER TABLE `c_click_callback_201704`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_click_callback_201705`
--
ALTER TABLE `c_click_callback_201705`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_click_callback_201706`
--
ALTER TABLE `c_click_callback_201706`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_click_callback_201707`
--
ALTER TABLE `c_click_callback_201707`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_click_callback_201708`
--
ALTER TABLE `c_click_callback_201708`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_click_callback_201709`
--
ALTER TABLE `c_click_callback_201709`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_click_callback_201710`
--
ALTER TABLE `c_click_callback_201710`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_click_callback_201711`
--
ALTER TABLE `c_click_callback_201711`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_click_callback_201712`
--
ALTER TABLE `c_click_callback_201712`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_click_log201701`
--
ALTER TABLE `c_click_log201701`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_click_log201702`
--
ALTER TABLE `c_click_log201702`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_click_log201703`
--
ALTER TABLE `c_click_log201703`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_click_log201704`
--
ALTER TABLE `c_click_log201704`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `c_click_log201705`
--
ALTER TABLE `c_click_log201705`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `c_click_log201706`
--
ALTER TABLE `c_click_log201706`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_click_log201707`
--
ALTER TABLE `c_click_log201707`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_click_log201708`
--
ALTER TABLE `c_click_log201708`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_click_log201709`
--
ALTER TABLE `c_click_log201709`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_click_log201710`
--
ALTER TABLE `c_click_log201710`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_click_log201711`
--
ALTER TABLE `c_click_log201711`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_click_log201712`
--
ALTER TABLE `c_click_log201712`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_cp_log_201701`
--
ALTER TABLE `c_cp_log_201701`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_cp_log_201702`
--
ALTER TABLE `c_cp_log_201702`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_cp_log_201703`
--
ALTER TABLE `c_cp_log_201703`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_cp_log_201704`
--
ALTER TABLE `c_cp_log_201704`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_cp_log_201705`
--
ALTER TABLE `c_cp_log_201705`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_cp_log_201706`
--
ALTER TABLE `c_cp_log_201706`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_cp_log_201707`
--
ALTER TABLE `c_cp_log_201707`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_cp_log_201708`
--
ALTER TABLE `c_cp_log_201708`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_cp_log_201709`
--
ALTER TABLE `c_cp_log_201709`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_cp_log_201710`
--
ALTER TABLE `c_cp_log_201710`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_cp_log_201711`
--
ALTER TABLE `c_cp_log_201711`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_cp_log_201712`
--
ALTER TABLE `c_cp_log_201712`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_cp_201701`
--
ALTER TABLE `c_daily_cp_201701`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_cp_201702`
--
ALTER TABLE `c_daily_cp_201702`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_cp_201703`
--
ALTER TABLE `c_daily_cp_201703`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_cp_201704`
--
ALTER TABLE `c_daily_cp_201704`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_cp_201705`
--
ALTER TABLE `c_daily_cp_201705`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_cp_201706`
--
ALTER TABLE `c_daily_cp_201706`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_cp_201707`
--
ALTER TABLE `c_daily_cp_201707`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_cp_201708`
--
ALTER TABLE `c_daily_cp_201708`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_cp_201709`
--
ALTER TABLE `c_daily_cp_201709`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_cp_201710`
--
ALTER TABLE `c_daily_cp_201710`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_cp_201711`
--
ALTER TABLE `c_daily_cp_201711`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_cp_201712`
--
ALTER TABLE `c_daily_cp_201712`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_hit_201701`
--
ALTER TABLE `c_daily_hit_201701`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_hit_201702`
--
ALTER TABLE `c_daily_hit_201702`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_hit_201703`
--
ALTER TABLE `c_daily_hit_201703`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_hit_201704`
--
ALTER TABLE `c_daily_hit_201704`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `c_daily_hit_201705`
--
ALTER TABLE `c_daily_hit_201705`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `c_daily_hit_201706`
--
ALTER TABLE `c_daily_hit_201706`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_hit_201707`
--
ALTER TABLE `c_daily_hit_201707`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_hit_201708`
--
ALTER TABLE `c_daily_hit_201708`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_hit_201709`
--
ALTER TABLE `c_daily_hit_201709`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_hit_201710`
--
ALTER TABLE `c_daily_hit_201710`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_hit_201711`
--
ALTER TABLE `c_daily_hit_201711`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_hit_201712`
--
ALTER TABLE `c_daily_hit_201712`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_ip_hit_201701`
--
ALTER TABLE `c_daily_ip_hit_201701`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_ip_hit_201702`
--
ALTER TABLE `c_daily_ip_hit_201702`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_ip_hit_201703`
--
ALTER TABLE `c_daily_ip_hit_201703`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_ip_hit_201704`
--
ALTER TABLE `c_daily_ip_hit_201704`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `c_daily_ip_hit_201705`
--
ALTER TABLE `c_daily_ip_hit_201705`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `c_daily_ip_hit_201706`
--
ALTER TABLE `c_daily_ip_hit_201706`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_ip_hit_201707`
--
ALTER TABLE `c_daily_ip_hit_201707`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_ip_hit_201708`
--
ALTER TABLE `c_daily_ip_hit_201708`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_ip_hit_201709`
--
ALTER TABLE `c_daily_ip_hit_201709`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_ip_hit_201710`
--
ALTER TABLE `c_daily_ip_hit_201710`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_ip_hit_201711`
--
ALTER TABLE `c_daily_ip_hit_201711`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_ip_hit_201712`
--
ALTER TABLE `c_daily_ip_hit_201712`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_referer_hit_201701`
--
ALTER TABLE `c_daily_referer_hit_201701`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_referer_hit_201702`
--
ALTER TABLE `c_daily_referer_hit_201702`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_referer_hit_201703`
--
ALTER TABLE `c_daily_referer_hit_201703`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_referer_hit_201704`
--
ALTER TABLE `c_daily_referer_hit_201704`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `c_daily_referer_hit_201705`
--
ALTER TABLE `c_daily_referer_hit_201705`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `c_daily_referer_hit_201706`
--
ALTER TABLE `c_daily_referer_hit_201706`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_referer_hit_201707`
--
ALTER TABLE `c_daily_referer_hit_201707`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_referer_hit_201708`
--
ALTER TABLE `c_daily_referer_hit_201708`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_referer_hit_201709`
--
ALTER TABLE `c_daily_referer_hit_201709`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_referer_hit_201710`
--
ALTER TABLE `c_daily_referer_hit_201710`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_referer_hit_201711`
--
ALTER TABLE `c_daily_referer_hit_201711`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_referer_hit_201712`
--
ALTER TABLE `c_daily_referer_hit_201712`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_sms_201701`
--
ALTER TABLE `c_daily_sms_201701`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_sms_201702`
--
ALTER TABLE `c_daily_sms_201702`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_sms_201703`
--
ALTER TABLE `c_daily_sms_201703`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_sms_201704`
--
ALTER TABLE `c_daily_sms_201704`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_sms_201705`
--
ALTER TABLE `c_daily_sms_201705`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_sms_201706`
--
ALTER TABLE `c_daily_sms_201706`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_sms_201707`
--
ALTER TABLE `c_daily_sms_201707`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_sms_201708`
--
ALTER TABLE `c_daily_sms_201708`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_sms_201709`
--
ALTER TABLE `c_daily_sms_201709`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_sms_201710`
--
ALTER TABLE `c_daily_sms_201710`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_sms_201711`
--
ALTER TABLE `c_daily_sms_201711`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_sms_201712`
--
ALTER TABLE `c_daily_sms_201712`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_ua_hit_201701`
--
ALTER TABLE `c_daily_ua_hit_201701`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_ua_hit_201702`
--
ALTER TABLE `c_daily_ua_hit_201702`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_ua_hit_201703`
--
ALTER TABLE `c_daily_ua_hit_201703`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_ua_hit_201704`
--
ALTER TABLE `c_daily_ua_hit_201704`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `c_daily_ua_hit_201705`
--
ALTER TABLE `c_daily_ua_hit_201705`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `c_daily_ua_hit_201706`
--
ALTER TABLE `c_daily_ua_hit_201706`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_ua_hit_201707`
--
ALTER TABLE `c_daily_ua_hit_201707`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_ua_hit_201708`
--
ALTER TABLE `c_daily_ua_hit_201708`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_ua_hit_201709`
--
ALTER TABLE `c_daily_ua_hit_201709`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_ua_hit_201710`
--
ALTER TABLE `c_daily_ua_hit_201710`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_ua_hit_201711`
--
ALTER TABLE `c_daily_ua_hit_201711`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_daily_ua_hit_201712`
--
ALTER TABLE `c_daily_ua_hit_201712`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_cp_201701`
--
ALTER TABLE `c_hourly_cp_201701`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_cp_201702`
--
ALTER TABLE `c_hourly_cp_201702`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_cp_201703`
--
ALTER TABLE `c_hourly_cp_201703`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_cp_201704`
--
ALTER TABLE `c_hourly_cp_201704`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_cp_201705`
--
ALTER TABLE `c_hourly_cp_201705`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_cp_201706`
--
ALTER TABLE `c_hourly_cp_201706`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_cp_201707`
--
ALTER TABLE `c_hourly_cp_201707`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_cp_201708`
--
ALTER TABLE `c_hourly_cp_201708`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_cp_201709`
--
ALTER TABLE `c_hourly_cp_201709`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_cp_201710`
--
ALTER TABLE `c_hourly_cp_201710`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_cp_201711`
--
ALTER TABLE `c_hourly_cp_201711`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_cp_201712`
--
ALTER TABLE `c_hourly_cp_201712`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_hit_201701`
--
ALTER TABLE `c_hourly_hit_201701`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_hit_201702`
--
ALTER TABLE `c_hourly_hit_201702`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_hit_201703`
--
ALTER TABLE `c_hourly_hit_201703`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_hit_201704`
--
ALTER TABLE `c_hourly_hit_201704`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `c_hourly_hit_201705`
--
ALTER TABLE `c_hourly_hit_201705`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `c_hourly_hit_201706`
--
ALTER TABLE `c_hourly_hit_201706`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_hit_201707`
--
ALTER TABLE `c_hourly_hit_201707`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_hit_201708`
--
ALTER TABLE `c_hourly_hit_201708`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_hit_201709`
--
ALTER TABLE `c_hourly_hit_201709`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_hit_201710`
--
ALTER TABLE `c_hourly_hit_201710`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_hit_201711`
--
ALTER TABLE `c_hourly_hit_201711`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_hit_201712`
--
ALTER TABLE `c_hourly_hit_201712`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_ip_hit_201701`
--
ALTER TABLE `c_hourly_ip_hit_201701`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_ip_hit_201702`
--
ALTER TABLE `c_hourly_ip_hit_201702`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_ip_hit_201703`
--
ALTER TABLE `c_hourly_ip_hit_201703`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_ip_hit_201704`
--
ALTER TABLE `c_hourly_ip_hit_201704`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `c_hourly_ip_hit_201705`
--
ALTER TABLE `c_hourly_ip_hit_201705`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `c_hourly_ip_hit_201706`
--
ALTER TABLE `c_hourly_ip_hit_201706`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_ip_hit_201707`
--
ALTER TABLE `c_hourly_ip_hit_201707`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_ip_hit_201708`
--
ALTER TABLE `c_hourly_ip_hit_201708`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_ip_hit_201709`
--
ALTER TABLE `c_hourly_ip_hit_201709`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_ip_hit_201710`
--
ALTER TABLE `c_hourly_ip_hit_201710`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_ip_hit_201711`
--
ALTER TABLE `c_hourly_ip_hit_201711`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_ip_hit_201712`
--
ALTER TABLE `c_hourly_ip_hit_201712`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_referer_hit_201701`
--
ALTER TABLE `c_hourly_referer_hit_201701`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_referer_hit_201702`
--
ALTER TABLE `c_hourly_referer_hit_201702`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_referer_hit_201703`
--
ALTER TABLE `c_hourly_referer_hit_201703`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_referer_hit_201704`
--
ALTER TABLE `c_hourly_referer_hit_201704`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `c_hourly_referer_hit_201705`
--
ALTER TABLE `c_hourly_referer_hit_201705`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `c_hourly_referer_hit_201706`
--
ALTER TABLE `c_hourly_referer_hit_201706`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_referer_hit_201707`
--
ALTER TABLE `c_hourly_referer_hit_201707`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_referer_hit_201708`
--
ALTER TABLE `c_hourly_referer_hit_201708`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_referer_hit_201709`
--
ALTER TABLE `c_hourly_referer_hit_201709`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_referer_hit_201710`
--
ALTER TABLE `c_hourly_referer_hit_201710`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_referer_hit_201711`
--
ALTER TABLE `c_hourly_referer_hit_201711`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_referer_hit_201712`
--
ALTER TABLE `c_hourly_referer_hit_201712`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_sms_201701`
--
ALTER TABLE `c_hourly_sms_201701`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_sms_201702`
--
ALTER TABLE `c_hourly_sms_201702`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_sms_201703`
--
ALTER TABLE `c_hourly_sms_201703`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_sms_201704`
--
ALTER TABLE `c_hourly_sms_201704`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_sms_201705`
--
ALTER TABLE `c_hourly_sms_201705`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_sms_201706`
--
ALTER TABLE `c_hourly_sms_201706`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_sms_201707`
--
ALTER TABLE `c_hourly_sms_201707`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_sms_201708`
--
ALTER TABLE `c_hourly_sms_201708`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_sms_201709`
--
ALTER TABLE `c_hourly_sms_201709`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_sms_201710`
--
ALTER TABLE `c_hourly_sms_201710`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_sms_201711`
--
ALTER TABLE `c_hourly_sms_201711`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_sms_201712`
--
ALTER TABLE `c_hourly_sms_201712`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_ua_hit_201701`
--
ALTER TABLE `c_hourly_ua_hit_201701`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_ua_hit_201702`
--
ALTER TABLE `c_hourly_ua_hit_201702`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_ua_hit_201703`
--
ALTER TABLE `c_hourly_ua_hit_201703`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_ua_hit_201704`
--
ALTER TABLE `c_hourly_ua_hit_201704`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `c_hourly_ua_hit_201705`
--
ALTER TABLE `c_hourly_ua_hit_201705`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `c_hourly_ua_hit_201706`
--
ALTER TABLE `c_hourly_ua_hit_201706`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_ua_hit_201707`
--
ALTER TABLE `c_hourly_ua_hit_201707`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_ua_hit_201708`
--
ALTER TABLE `c_hourly_ua_hit_201708`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_ua_hit_201709`
--
ALTER TABLE `c_hourly_ua_hit_201709`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_ua_hit_201710`
--
ALTER TABLE `c_hourly_ua_hit_201710`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_ua_hit_201711`
--
ALTER TABLE `c_hourly_ua_hit_201711`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_hourly_ua_hit_201712`
--
ALTER TABLE `c_hourly_ua_hit_201712`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_sms_log_201701`
--
ALTER TABLE `c_sms_log_201701`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_sms_log_201702`
--
ALTER TABLE `c_sms_log_201702`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_sms_log_201703`
--
ALTER TABLE `c_sms_log_201703`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_sms_log_201704`
--
ALTER TABLE `c_sms_log_201704`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_sms_log_201705`
--
ALTER TABLE `c_sms_log_201705`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_sms_log_201706`
--
ALTER TABLE `c_sms_log_201706`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_sms_log_201707`
--
ALTER TABLE `c_sms_log_201707`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_sms_log_201708`
--
ALTER TABLE `c_sms_log_201708`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_sms_log_201709`
--
ALTER TABLE `c_sms_log_201709`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_sms_log_201710`
--
ALTER TABLE `c_sms_log_201710`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_sms_log_201711`
--
ALTER TABLE `c_sms_log_201711`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_sms_log_201712`
--
ALTER TABLE `c_sms_log_201712`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_traceid_log_201701`
--
ALTER TABLE `c_traceid_log_201701`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_traceid_log_201702`
--
ALTER TABLE `c_traceid_log_201702`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_traceid_log_201703`
--
ALTER TABLE `c_traceid_log_201703`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_traceid_log_201704`
--
ALTER TABLE `c_traceid_log_201704`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `c_traceid_log_201705`
--
ALTER TABLE `c_traceid_log_201705`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `c_traceid_log_201706`
--
ALTER TABLE `c_traceid_log_201706`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_traceid_log_201707`
--
ALTER TABLE `c_traceid_log_201707`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_traceid_log_201708`
--
ALTER TABLE `c_traceid_log_201708`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_traceid_log_201709`
--
ALTER TABLE `c_traceid_log_201709`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_traceid_log_201710`
--
ALTER TABLE `c_traceid_log_201710`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_traceid_log_201711`
--
ALTER TABLE `c_traceid_log_201711`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_traceid_log_201712`
--
ALTER TABLE `c_traceid_log_201712`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_transaction_log_201701`
--
ALTER TABLE `c_transaction_log_201701`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_transaction_log_201702`
--
ALTER TABLE `c_transaction_log_201702`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_transaction_log_201703`
--
ALTER TABLE `c_transaction_log_201703`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_transaction_log_201704`
--
ALTER TABLE `c_transaction_log_201704`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_transaction_log_201705`
--
ALTER TABLE `c_transaction_log_201705`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_transaction_log_201706`
--
ALTER TABLE `c_transaction_log_201706`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_transaction_log_201707`
--
ALTER TABLE `c_transaction_log_201707`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_transaction_log_201708`
--
ALTER TABLE `c_transaction_log_201708`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_transaction_log_201709`
--
ALTER TABLE `c_transaction_log_201709`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_transaction_log_201710`
--
ALTER TABLE `c_transaction_log_201710`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_transaction_log_201711`
--
ALTER TABLE `c_transaction_log_201711`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_transaction_log_201712`
--
ALTER TABLE `c_transaction_log_201712`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `email_confirmations`
--
ALTER TABLE `email_confirmations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `failed_logins`
--
ALTER TABLE `failed_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `password_changes`
--
ALTER TABLE `password_changes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2144;
--
-- AUTO_INCREMENT for table `picture`
--
ALTER TABLE `picture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `remember_tokens`
--
ALTER TABLE `remember_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `reset_passwords`
--
ALTER TABLE `reset_passwords`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `saldo`
--
ALTER TABLE `saldo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `success_logins`
--
ALTER TABLE `success_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=372;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

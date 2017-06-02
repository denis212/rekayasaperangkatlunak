
<?php
/**
 * @var \Phalcon\Mvc\View\Engine\Php $this
 */
?>
<?php 

$export_file = 'dailyreport-'.date("Y-m-d").".xls";
ob_end_clean();
ini_set('zlib.output_compression','Off');

header('Pragma: public');
header("Expires: Sat, 26 Jul 1997 05:00:00 GMT");                  // Date in the past
header('Last-Modified: '.gmdate('D, d M Y H:i:s') . ' GMT');
header('Cache-Control: no-store, no-cache, must-revalidate');     // HTTP/1.1
header('Cache-Control: pre-check=0, post-check=0, max-age=0');    // HTTP/1.1
header ("Pragma: no-cache");
header("Expires: 0");
header('Content-Transfer-Encoding: none');
header('Content-Type: application/vnd.ms-excel;');                 // This should work for IE & Opera
header("Content-type: application/x-msexcel");                    // This should work for the rest
header('Content-Disposition: attachment; filename="'.basename($export_file).'"');
?>
<html xmlns:v="urn:schemas-microsoft-com:vml"
xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:x="urn:schemas-microsoft-com:office:excel"
xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=Content-Type content="text/html; charset=windows-1252">
<meta name=ProgId content=Excel.Sheet>
<meta name=Generator content="Microsoft Excel 12">
<!-- <link id=Main-File rel=Main-File href="../rpt_daily_gaman.htm">
<link rel=File-List href=filelist.xml> -->

<style>
<!--table
	{mso-displayed-decimal-separator:"\.";
	mso-displayed-thousand-separator:"\,";}
@page
	{margin:.75in .7in .75in .7in;
	mso-header-margin:.3in;
	mso-footer-margin:.3in;}
-->
tr
	{mso-height-source:auto;}
col
	{mso-width-source:auto;}
br
	{mso-data-placement:same-cell;}
.style0
	{mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	white-space:nowrap;
	mso-rotate:0;
	mso-background-source:auto;
	mso-pattern:auto;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	border:none;
	mso-protection:locked visible;
	mso-style-name:Normal;
	mso-style-id:0;}
td
	{mso-style-parent:style0;
	padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	border:none;
	mso-background-source:auto;
	mso-pattern:auto;
	mso-protection:locked visible;
	white-space:nowrap;
	mso-rotate:0;}
.xl65
	{mso-style-parent:style0;
	border:.5pt solid windowtext;}
.xl66
	{mso-style-parent:style0;
	text-align:center;
	vertical-align:middle;
	border:.5pt solid windowtext;}


</style>
</head>

<body link=blue vlink=purple>

<table border=0 cellpadding=0 cellspacing=0 width=1423 style='border-collapse:
 collapse;table-layout:fixed;width:1069pt'>
 <col width=41 style='mso-width-source:userset;mso-width-alt:1499;width:31pt'>
 <col width=89 style='mso-width-source:userset;mso-width-alt:3254;width:67pt'>
 <col width=110 style='mso-width-source:userset;mso-width-alt:4022;width:83pt'>
 <col width=158 style='mso-width-source:userset;mso-width-alt:5778;width:119pt'>
 <col width=144 style='mso-width-source:userset;mso-width-alt:5266;width:108pt'>
 <col width=180 style='mso-width-source:userset;mso-width-alt:6582;width:135pt'>
 <col width=84 style='mso-width-source:userset;mso-width-alt:3072;width:63pt'>
 <col width=64 span=3 style='width:48pt'>
 <col width=101 style='mso-width-source:userset;mso-width-alt:3693;width:76pt'>
 <col width=93 style='mso-width-source:userset;mso-width-alt:3401;width:70pt'>
 <col width=95 style='mso-width-source:userset;mso-width-alt:3474;width:71pt'>
 <col width=136 style='mso-width-source:userset;mso-width-alt:4973;width:102pt'>
 <tr height=20 style='height:15.0pt'>
  <td height=20 class=xl66 width=41 style='height:15.0pt;width:31pt'>No</td>
  <td class=xl66 width=89 style='border-left:none;width:67pt'>Date Click</td>
  <td class=xl66 width=110 style='border-left:none;width:83pt'>Client Name</td>
  <td class=xl66 width=158 style='border-left:none;width:119pt'>Campaign Name</td>
  <td class=xl66 width=144 style='border-left:none;width:108pt'>Impression</td>
  <td class=xl66 width=180 style='border-left:none;width:135pt'>Total Click</td>
  <td class=xl66 width=84 style='border-left:none;width:63pt'>Conversion</td>
  <td class=xl66 width=64 style='border-left:none;width:48pt'>CTR</td>
  <td class=xl66 width=64 style='border-left:none;width:48pt'>ECPC</td>
  <td class=xl66 width=64 style='border-left:none;width:48pt'>ECPM</td>
  <td class=xl66 width=101 style='border-left:none;width:76pt'>CPM Price</td>
  <td class=xl66 width=93 style='border-left:none;width:70pt'>CPC Price</td>
  <td class=xl66 width=95 style='border-left:none;width:71pt'>Budget</td>
  <td class=xl66 width=136 style='border-left:none;width:102pt'>Spending ($)</td>
 </tr>
 <?php echo $tampil; ?>
 <![if supportMisalignedColumns]>
 <tr height=0 style='display:none'>
  <td width=41 style='width:31pt'></td>
  <td width=89 style='width:67pt'></td>
  <td width=110 style='width:83pt'></td>
  <td width=158 style='width:119pt'></td>
  <td width=144 style='width:108pt'></td>
  <td width=180 style='width:135pt'></td>
  <td width=84 style='width:63pt'></td>
  <td width=64 style='width:48pt'></td>
  <td width=64 style='width:48pt'></td>
  <td width=64 style='width:48pt'></td>
  <td width=101 style='width:76pt'></td>
  <td width=93 style='width:70pt'></td>
  <td width=95 style='width:71pt'></td>
  <td width=136 style='width:102pt'></td>
 </tr>
 <![endif]>
</table>

</body>

</html>

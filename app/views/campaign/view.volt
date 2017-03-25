<title>Search Campaign - GamanAds</title>

<?php
/**
 * @var \Phalcon\Mvc\View\Engine\Php $this
 */
?>

<?php use Phalcon\Tag; ?>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<div class="container">
<div class="row">
    <nav>
        <ul class="pager">
            <li class="previous"><?php echo $this->tag->linkTo(["campaign/search?page=".$frompage, "Go Back"]); ?></li>
            <li class="next"><?php echo $this->tag->linkTo(["campaign/create", "Create "]); ?></li>
        </ul>
    </nav>
</div>

<div class="page-header">
    <h1>View Detail Campaign</h1>
</div>

<?php echo $this->getContent(); ?>

<html xmlns:v="urn:schemas-microsoft-com:vml"
xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:x="urn:schemas-microsoft-com:office:excel"
xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=Content-Type content="text/html; charset=windows-1252">
<meta name=ProgId content=Excel.Sheet>
<meta name=Generator content="Microsoft Excel 12">
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
	vertical-align:center;
	white-space:nowrap;
	mso-rotate:0;
	mso-background-source:auto;
	mso-pattern:auto;
	color:black;
	font-size:12.0pt;
	font-weight:600;
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
	padding-top:5px;
	padding-right:5px;
	padding-left:5px;
	mso-ignore:padding;
	color:black;
	font-size:14.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	mso-font-charset:0;
	mso-number-format:General;
	text-align:general;
	vertical-align:center;
	border:none;
	mso-background-source:auto;
	mso-pattern:auto;
	mso-protection:locked visible;
	white-space:nowrap;
	mso-rotate:0;}
.xl65
	{mso-style-parent:style0;
	border:0.5pt solid windowtext;
  text-align:center;
  font-size:14.0pt;}
.xl66
	{mso-style-parent:style0;
	font-size:12.0pt;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	text-align:center;
	border:.5pt solid windowtext;}
.xl67
	{mso-style-parent:style0;
	font-size:12.0pt;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	text-align:center;}
</style>

</head>
<?php if($this->auth->getProfilesId() == 1){?>
  <!-- region admin -->
<body link=blue vlink=purple>
<div class="row" style='overflow-x:scroll'>
<table border=0 cellpadding=0 cellspacing=0 width=3335 style='border-collapse:
 collapse;table-layout:auto;width:2502pt'>
 <col width=64 span=2 style='width:48pt'>
 <col width=128 style='mso-width-source:userset;mso-width-alt:4681;width:96pt'>
 <col width=175 style='mso-width-source:userset;mso-width-alt:6400;width:131pt'>
 <col width=113 style='mso-width-source:userset;mso-width-alt:4132;width:85pt'>
 <col width=229 style='mso-width-source:userset;mso-width-alt:8374;width:172pt'>
 <col width=182 style='mso-width-source:userset;mso-width-alt:6656;width:137pt'>
 <col width=387 style='mso-width-source:userset;mso-width-alt:14153;width:290pt'>
 <col width=103 style='mso-width-source:userset;mso-width-alt:3766;width:77pt'>
 <col width=107 style='mso-width-source:userset;mso-width-alt:3913;width:80pt'>
 <col width=113 style='mso-width-source:userset;mso-width-alt:4132;width:85pt'>
 <col width=144 style='mso-width-source:userset;mso-width-alt:5266;width:108pt'>
 <col width=101 style='mso-width-source:userset;mso-width-alt:3693;width:76pt'>
 <col width=126 style='mso-width-source:userset;mso-width-alt:4608;width:95pt'>
 <col width=226 style='mso-width-source:userset;mso-width-alt:8265;width:170pt'>
 <col width=273 style='mso-width-source:userset;mso-width-alt:9984;width:205pt'>
 <col width=171 style='mso-width-source:userset;mso-width-alt:6253;width:128pt'>
 <col width=104 style='mso-width-source:userset;mso-width-alt:3803;width:78pt'>
 <col width=162 style='mso-width-source:userset;mso-width-alt:5924;width:122pt'>
 <col width=139 style='mso-width-source:userset;mso-width-alt:5083;width:104pt'>
 <col width=68 span=2 style='mso-width-source:userset;mso-width-alt:2486;
 width:51pt'>
 <tr class=xl67 height=20 style='height:15.0pt'>
  <td height=20 class=xl66 width=64 style='height:15.0pt;width:48pt'>Id</td>
  <td class=xl66 width=64 style='border-left:none;width:48pt'>Status</td>
  <td class=xl66 width=64 style='border-left:none;width:48pt'>Client ID</td>
  <td class=xl66 width=64 style='border-left:none;width:48pt'>Client Name</td>
  <td class=xl66 width=175 style='border-left:none;width:131pt'>Campaign Name</td>
  <td class=xl66 width=113 style='border-left:none;width:85pt'>Price Model</td>
  <td class=xl66 width=229 style='border-left:none;width:172pt'>Target Url</td>
  <td class=xl66 width=182 style='border-left:none;width:137pt'>Start - End
  Date</td>
  <td class=xl66 width=387 style='border-left:none;width:290pt'>Country</td>
  <td class=xl66 width=103 style='border-left:none;width:77pt'>CPA / CPM</td>
  <td class=xl66 width=103 style='border-left:none;width:77pt'>Daily Budget</td>
  <td class=xl66 width=107 style='border-left:none;width:80pt'>Total Budget</td>
  <td class=xl66 width=113 style='border-left:none;width:85pt'>Schedule Ads</td>
  <td class=xl66 width=144 style='border-left:none;width:108pt'>Delivery Method</td>
  <td class=xl66 width=101 style='border-left:none;width:76pt'>Target</td>
  <td class=xl66 width=126 style='border-left:none;width:95pt'>Tag</td>
  <td class=xl66 width=226 style='border-left:none;width:170pt'>Zone</td>
  <td class=xl66 width=273 style='border-left:none;width:205pt'>Get Traffic
  (Anti AdBlock)</td>
  <td class=xl66 width=171 style='border-left:none;width:128pt'>Guarantees
  Guidelines</td>
  <td class=xl66 width=104 style='border-left:none;width:78pt'>Test Budget</td>
  <td class=xl66 width=162 style='border-left:none;width:122pt'>Mobile Limit</td>
  <td class=xl66 width=139 style='border-left:none;width:104pt'>Desktop Limit</td>
  <td class=xl66 width=162 style='border-left:none;width:122pt'>120x600</td>
  <td class=xl66 width=139 style='border-left:none;width:104pt'>160x600</td>
  <td class=xl66 width=139 style='border-left:none;width:104pt'>250x250</td>
  <td class=xl66 width=139 style='border-left:none;width:104pt'>300x50</td>
  <td class=xl66 width=139 style='border-left:none;width:104pt'>300x250</td>
  <td class=xl66 width=139 style='border-left:none;width:104pt'>300x100</td>
  <td class=xl66 width=139 style='border-left:none;width:104pt'>300x600</td>
  <td class=xl66 width=139 style='border-left:none;width:104pt'>305x99</td>
  <td class=xl66 width=139 style='border-left:none;width:104pt'>315x300</td>
  <td class=xl66 width=139 style='border-left:none;width:104pt'>320x50</td>
  <td class=xl66 width=139 style='border-left:none;width:104pt'>320x100</td>
  <td class=xl66 width=139 style='border-left:none;width:104pt'>320x250</td>
  <td class=xl66 width=139 style='border-left:none;width:104pt'>320x416</td>
  <td class=xl66 width=139 style='border-left:none;width:104pt'>320x480</td>
  <td class=xl66 width=139 style='border-left:none;width:104pt'>336x280</td>
  <td class=xl66 width=139 style='border-left:none;width:104pt'>468x60</td>
  <td class=xl66 width=139 style='border-left:none;width:104pt'>640x960</td>
  <td class=xl66 width=139 style='border-left:none;width:104pt'>728x90</td>
  <td class=xl66 width=139 style='border-left:none;width:104pt'>800x440</td>
  <td class=xl66 width=139 style='border-left:none;width:104pt'>1024x768</td>
  <td class=xl66 width=68 style='border-left:none;width:51pt'>&nbsp;</td>
 </tr>
  <?php foreach ($page->items as $campaign): ?>
     <tr>
     <td height=20 class=xl65 style='height:150.0pt;border-top:none'><?php echo $campaign->id ?></td>
      <td height=20 class=xl65 style='height:15.0pt;border-top:none' >
        <?php
            if($campaign->status == 'N')
              echo "Inactive";
            elseif($campaign->status == "A")
              echo "Active";
            elseif($campaign->status == "D")
              echo "Draft";
          ?>
      </td>
     <td height=20 class=xl65 style='height:15.0pt;border-top:none' ><?php echo $campaign->client_id ?></td>
     <td class=xl65 style='border-top:none;border-left:none'>
       <?php
       echo $campaign->client_name;
       ?>
     </td>
     <td class=xl65 style='border-top:none;border-left:none'><?php echo $campaign->cp_name ?></td>
     <td class=xl65 style='border-top:none;border-left:none'><?php echo $campaign->cp_pricemodel ?></td>
     <td class=xl65 style='border-top:none;border-left:none'><?php echo $campaign->cp_targeturl ?></td>
     <td class=xl65 style='border-top:none;border-left:none'><?php echo $campaign->cp_startenddate ?></td>
     <td class=xl65 style='border-top:none;border-left:none'>
       <?php
         $input = $campaign->cp_country ;
         echo $output =str_replace(',', ',<br />', $input);
       ?>
     </td>
     <td class=xl65 style='border-top:none;border-left:none'><?php echo $campaign->cp_cpmcpa ?></td>
     <td class=xl65 style='border-top:none;border-left:none'><?php echo $campaign->cp_dailybudget ?></td>
     <td class=xl65 style='border-top:none;border-left:none'><?php echo $campaign->cp_totalbudget ?></td>
     <td class=xl65 style='border-top:none;border-left:none'><?php echo $campaign->cp_schedule ?></td>
     <td class=xl65 style='border-top:none;border-left:none'><?php echo $campaign->cp_delivmethod ?></td>
     <td class=xl65 style='border-top:none;border-left:none'><?php echo $campaign->cp_target ?></td>
     <td class=xl65 style='border-top:none;border-left:none'><?php echo $campaign->cp_tag ?></td>
     <td class=xl65 style='border-top:none;border-left:none'><?php echo $campaign->cp_zone ?></td>
     <td class=xl65 style='border-top:none;border-left:none'><?php echo $campaign->cp_gettraffic ?></td>
     <td class=xl65 style='border-top:none;border-left:none'><?php echo $campaign->cp_guarantee ?></td>
     <td class=xl65 style='border-top:none;border-left:none'><?php echo $campaign->cp_testbudget ?></td>
     <td class=xl65 style='border-top:none;border-left:none'><?php echo $campaign->cp_mblimit ?></td>
     <td class=xl65 style='border-top:none;border-left:none'><?php echo $campaign->cp_dsktplimit ?></td>
     <td class=xl65 style='border-top:none;border-left:none'>
       <?php
       if($campaign->gbr120x600 != null)
       {
       echo $this->tag->image([$campaign->gbr120x600,'width'=>'50px','id'=>'gbr120x600']);
       echo "<br><br>";
       echo $this->tag->linkTo(["campaign/downgbr120x600/" . $campaign->id, "Download Image", "class"=>"btn btn-default","id"=>"link20"]);
       }else {
         echo "<a id='link20/' href=''></a>";
       }
       ?>
     </td>
     <td class=xl65 style='border-top:none;border-left:none'>
       <?php
       if($campaign->gbr160x600 != null)
       {
       echo $this->tag->image([$campaign->gbr160x600,'width'=>'50px','id'=>'gbr160x600']);
       echo "<br><br>";
       echo $this->tag->linkTo(["campaign/downgbr160x600/" . $campaign->id, "Download Image", "class"=>"btn btn-default","id"=>"link19"]);
       }else {
         echo "<a id='link19' href=''></a>";
       }
       ?>
     </td>
     <td class=xl65 style='border-top:none;border-left:none'>
       <?php
       if($campaign->gbr250x250 != null)
       {
         echo $this->tag->image([$campaign->gbr250x250,'width'=>'50px','id'=>'gbr250x250']);
         echo "<br><br>";
         echo $this->tag->linkTo(["campaign/downgbr250x250/" . $campaign->id, "Download Image", "class"=>"btn btn-default","id"=>"link18"]);
       }else {
         echo "<a id='link18' href=''></a>";
       }
       ?>
     </td>
     <td class=xl65 style='border-top:none;border-left:none'>
       <?php
       if($campaign->gbr300x50 != null)
       {
         echo $this->tag->image([$campaign->gbr300x50,'width'=>'50px','id'=>'gbr300x50']);
         echo "<br><br>";
         echo $this->tag->linkTo(["campaign/downgbr300x50/" . $campaign->id, "Download Image", "class"=>"btn btn-default","id"=>"link17"]);
       }else {
         echo "<a id='link17' href=''></a>";
       }
       ?>
     </td>
     <td class=xl65 style='border-top:none;border-left:none'>
       <?php
       if($campaign->gbr300x250 != null)
       {
         echo $this->tag->image([$campaign->gbr300x250,'width'=>'50px','id'=>'gbr300x250']);
         echo "<br><br>";
         echo $this->tag->linkTo(["campaign/downgbr300x250/" . $campaign->id, "Download Image", "class"=>"btn btn-default","id"=>"link16"]);
       }else {
         echo "<a id='link16' href=''></a>";
       }
       ?>
     </td>
     <td class=xl65 style='border-top:none;border-left:none'>
       <?php
       if($campaign->gbr300x100 != null)
       {
       echo $this->tag->image([$campaign->gbr300x100,'width'=>'50px','id'=>'gbr300x100']);
       echo "<br><br>";
       echo $this->tag->linkTo(["campaign/downgbr300x100/" . $campaign->id, "Download Image", "class"=>"btn btn-default","id"=>"link15"]);
       }else {
         echo "<a id='link15' href=''></a>";
       }
       ?>
     </td>
     <td class=xl65 style='border-top:none;border-left:none'>
       <?php
       if($campaign->gbr300x600 != null)
       {
         echo $this->tag->image([$campaign->gbr300x600,'width'=>'50px','id'=>'gbr300x600']);
         echo "<br><br>";
         echo $this->tag->linkTo(["campaign/downgbr300x600/" . $campaign->id, "Download Image", "class"=>"btn btn-default","id"=>"link14"]);
       }else {
         echo "<a id='link14' href=''></a>";
       }
       ?>
     </td>
     <td class=xl65 style='border-top:none;border-left:none'>
       <?php
       if($campaign->gbr305x99 != null)
       {
         echo $this->tag->image([$campaign->gbr305x99,'width'=>'50px','id'=>'gbr305x99']);
         echo "<br><br>";
         echo $this->tag->linkTo(["campaign/downgbr305x99/" . $campaign->id, "Download Image", "class"=>"btn btn-default","id"=>"link13"]);
       }else {
         echo "<a id='link13' href=''></a>";
       }
       ?>
     </td>
     <td class=xl65 style='border-top:none;border-left:none'>
       <?php
       if($campaign->gbr315x300 != null)
       {
         echo $this->tag->image([$campaign->gbr315x300,'width'=>'50px','id'=>'gbr315x300']);
         echo "<br><br>";
         echo $this->tag->linkTo(["campaign/downgbr315x300/" . $campaign->id, "Download Image", "class"=>"btn btn-default","id"=>"link12"]);
       }else {
         echo "<a id='link12' href=''></a>";
       }
       ?>
     </td>
     <td class=xl65 style='border-top:none;border-left:none'>
       <?php
       if($campaign->gbr320x50 != null)
       {
       echo $this->tag->image([$campaign->gbr320x50,'width'=>'50px','id'=>'gbr320x50']);
       echo "<br><br>";
       echo $this->tag->linkTo(["campaign/downgbr320x50/" . $campaign->id, "Download Image", "class"=>"btn btn-default","id"=>"link11"]);
       }else {
         echo "<a id='link11' href=''></a>";
       }
       ?>
     </td>
     <td class=xl65 style='border-top:none;border-left:none'>
       <?php
       if($campaign->gbr320x100 != null)
       {
       echo $this->tag->image([$campaign->gbr320x100,'width'=>'50px','id'=>'gbr320x100']);
       echo "<br><br>";
       echo $this->tag->linkTo(["campaign/downgbr320x100/" . $campaign->id, "Download Image", "class"=>"btn btn-default","id"=>"link10"]);
       }else {
         echo "<a id='link10' href=''></a>";
       }
       ?>
     </td>
     <td class=xl65 style='border-top:none;border-left:none'>
       <?php
       if($campaign->gbr320x250 != null)
       {
       echo $this->tag->image([$campaign->gbr320x250,'width'=>'50px','id'=>'gbr320x250']);
       echo "<br><br>";
       echo $this->tag->linkTo(["campaign/downgbr320x250/" . $campaign->id, "Download Image", "class"=>"btn btn-default","id"=>"link9"]);
       }else {
         echo "<a id='link9' href=''></a>";
       }
       ?>
     </td>
     <td class=xl65 style='border-top:none;border-left:none'>
       <?php
       if($campaign->gbr320x416 != null)
       {
       echo $this->tag->image([$campaign->gbr320x416,'width'=>'50px','id'=>'gbr320x416']);echo "<br><br>";
       echo $this->tag->linkTo(["campaign/downgbr320x416/" . $campaign->id, "Download Image", "class"=>"btn btn-default","id"=>"link8"]);
       }else {
         echo "<a id='link8' href=''></a>";
       }
       ?>
     </td>
     <td class=xl65 style='border-top:none;border-left:none'>
       <?php
       if($campaign->gbr320x480 != null)
       {
       echo $this->tag->image([$campaign->gbr320x480,'width'=>'50px','id'=>'gbr320x480']);echo "<br><br>";
       echo $this->tag->linkTo(["campaign/downgbr320x480/" . $campaign->id, "Download Image", "class"=>"btn btn-default","id"=>"link7"]);
       }else {
         echo "<a id='link7' href=''></a>";
       }
       ?>
     </td>
     <td class=xl65 style='border-top:none;border-left:none'>
       <?php
       if($campaign->gbr336x280 != null)
       {
       echo $this->tag->image([$campaign->gbr336x280,'width'=>'50px','id'=>'gbr336x280']);echo "<br><br>";
       echo $this->tag->linkTo(["campaign/downgbr336x280/" . $campaign->id, "Download Image", "class"=>"btn btn-default","id"=>"link6"]);
       }else {
         echo "<a id='link6' href=''></a>";
       }
       ?>
     </td>
     <td class=xl65 style='border-top:none;border-left:none'>
       <?php
       if($campaign->gbr468x60 != null)
       {
       echo $this->tag->image([$campaign->gbr468x60,'width'=>'50px','id'=>'gbr468x60']);echo "<br><br>";
       echo $this->tag->linkTo(["campaign/downgbr468x60/" . $campaign->id, "Download Image", "class"=>"btn btn-default","id"=>"link5"]);
       }else {
         echo "<a id='link5' href=''></a>";
       }
       ?>
     </td>
     <td class=xl65 style='border-top:none;border-left:none'>
       <?php
       if($campaign->gbr640x960 != null)
       {
         echo $this->tag->image([$campaign->gbr640x960,'width'=>'50px','id'=>'gbr640x960']);echo "<br><br>";
         echo $this->tag->linkTo(["campaign/downgbr640x960/" . $campaign->id, "Download Image", "class"=>"btn btn-default","id"=>"link4"]);
       }else {
         echo "<a id='link4' href=''></a>";
       }
       ?>
     </td>
     <td class=xl65 style='border-top:none;border-left:none'>
       <?php
       if($campaign->gbr728x90 != null)
       {
         echo $this->tag->image([$campaign->gbr728x90,'width'=>'50px','id'=>'gbr728x90']);echo "<br><br>";
         echo $this->tag->linkTo(["campaign/downgbr728x90/" . $campaign->id, "Download Image", "class"=>"btn btn-default","id"=>"link3"]);
       }
       else {
         echo "<a id='link3' href=''></a>";
       }
       ?>
     </td>
     <td class=xl65 style='border-top:none;border-left:none'>
       <?php
       if($campaign->gbr800x440 != null)
       {
         echo $this->tag->image([$campaign->gbr800x440,'width'=>'50px','id'=>'gbr800x440']);echo "<br><br>";
         echo $this->tag->linkTo(["campaign/downgbr800x440/" . $campaign->id, "Download Image", "class"=>"btn btn-default","id"=>"link2"]);
       }
       else {
         echo "<a id='link2' href=''></a>";
       }
       ?>
     </td>
     <td class=xl65 style='border-top:none;border-left:none'>
       <?php
       if($campaign->gbr1024x768 != null)
       {
         echo $this->tag->image([$campaign->gbr1024x768,'width'=>'50px','id'=>'gbr1024x768']); echo "<br><br>";
         echo $this->tag->linkTo(["campaign/downgbr1024x768/" . $campaign->id, "Download Image", "class"=>"btn btn-default","id"=>"link1"]);
       }else {
         echo "<a id='link1' href=''></a>";
       }
       ?>

     </td>

     <td class=xl65 style='border-top:none;border-left:none'>
       <!-- <php echo $this->tag->linkTo(["campaign/view/" . $campaign->id, "View", "class"=>"btn btn-default"]); ?> -->

       <?php echo $this->tag->linkTo(["campaign/edit/" . $campaign->id."/view", "<i class='glyphicon glyphicon-edit'></i> Edit", "class"=>"btn btn-default"]); ?>
       <?php echo $this->tag->linkTo(["campaign/delete/" . $campaign->id."/".$page->current, "<i class='glyphicon glyphicon-remove'></i> Delete", "class"=>"btn btn-default"]); ?>
       <?php
        if($campaign->status == "N")
          {
             echo $this->tag->linkTo(["campaign/activateview/" . $campaign->id, "<i class='glyphicon glyphicon-play'></i> Activate", "class"=>"btn btn-default"]);
           }
          elseif($campaign->status == "A")
           {
             echo $this->tag->linkTo(["campaign/activateview/" . $campaign->id,   "<i class='glyphicon glyphicon-stop'></i> Deactivate", "class"=>"btn btn-default"]);

           }
         ?>
     </td>
     </tr>
 <?php endforeach; ?>

 <tr height=0 style='display:none'>
  <td width=64 style='width:48pt'></td>
  <td width=64 style='width:48pt'></td>
  <td width=128 style='width:96pt'></td>
  <td width=175 style='width:131pt'></td>
  <td width=113 style='width:85pt'></td>
  <td width=229 style='width:172pt'></td>
  <td width=182 style='width:137pt'></td>
  <td width=387 style='width:290pt'></td>
  <td width=103 style='width:77pt'></td>
  <td width=107 style='width:80pt'></td>
  <td width=113 style='width:85pt'></td>
  <td width=144 style='width:108pt'></td>
  <td width=101 style='width:76pt'></td>
  <td width=126 style='width:95pt'></td>
  <td width=226 style='width:170pt'></td>
  <td width=273 style='width:205pt'></td>
  <td width=171 style='width:128pt'></td>
  <td width=104 style='width:78pt'></td>
  <td width=162 style='width:122pt'></td>
  <td width=139 style='width:104pt'></td>
  <td width=68 style='width:51pt'></td>
  <td width=68 style='width:51pt'></td>
 </tr>
 <![endif]>
</table>
<?php
 echo '<br>'.$this->tag->linkTo(["campaign/viewdownload/" . $campaign->id.'/'.$campaign->client_name.'/'.$campaign->client_id,   "Download Excel", "class"=>"btn btn-default"]).'<br>';
 ?>
<!-- <button id="donlot">Donlot All</button> -->
</div>

<!-- <div class="row">
    <div class="col-sm-1">
        <p class="pagination" style="line-height: 1.42857;padding: 6px 12px;">
        </php echo $page->current, "/", $page->total_pages ?>
        </p>
    </div>
    <table>
      <tbody>
          <tr>
              <td colspan="10" align="right">
                  <div class="btn-group">
                      {{ link_to("campaign/search", '<i class="icon-fast-backward"></i> First', "class": "btn btn-default") }}
                      {{ link_to("campaign/search?page=" ~ page.before, '<i class="icon-step-backward"></i> Previous', "class": "btn ") }}
                      {{ link_to("campaign/search?page=" ~ page.next, '<i class="icon-step-forward"></i> Next', "class": "btn btn-default") }}
                      {{ link_to("campaign/search?page=" ~ page.last, '<i class="icon-fast-forward"></i> Last', "class": "btn btn-default") }}
                      <span class="help-inline">{{ page.current }}/{{ page.total_pages }}</span>
                  </div>
              </td>
          </tr>
      <tbody>
    </table>
</div> -->
</body>
<?php
}else { ?>
  <!-- region not admin -->
  <body link=blue vlink=purple>
  <div class="row" style='overflow-x:scroll'>
  <table border=0 cellpadding=0 cellspacing=0 width=3335 style='border-collapse:
   collapse;table-layout:auto;width:2502pt'>
   <col width=64 span=2 style='width:48pt'>
   <col width=128 style='mso-width-source:userset;mso-width-alt:4681;width:96pt'>
   <col width=175 style='mso-width-source:userset;mso-width-alt:6400;width:131pt'>
   <col width=113 style='mso-width-source:userset;mso-width-alt:4132;width:85pt'>
   <col width=229 style='mso-width-source:userset;mso-width-alt:8374;width:172pt'>
   <col width=182 style='mso-width-source:userset;mso-width-alt:6656;width:137pt'>
   <col width=387 style='mso-width-source:userset;mso-width-alt:14153;width:290pt'>
   <col width=103 style='mso-width-source:userset;mso-width-alt:3766;width:77pt'>
   <col width=107 style='mso-width-source:userset;mso-width-alt:3913;width:80pt'>
   <col width=113 style='mso-width-source:userset;mso-width-alt:4132;width:85pt'>
   <col width=144 style='mso-width-source:userset;mso-width-alt:5266;width:108pt'>
   <col width=101 style='mso-width-source:userset;mso-width-alt:3693;width:76pt'>
   <col width=126 style='mso-width-source:userset;mso-width-alt:4608;width:95pt'>
   <col width=226 style='mso-width-source:userset;mso-width-alt:8265;width:170pt'>
   <col width=273 style='mso-width-source:userset;mso-width-alt:9984;width:205pt'>
   <col width=171 style='mso-width-source:userset;mso-width-alt:6253;width:128pt'>
   <col width=104 style='mso-width-source:userset;mso-width-alt:3803;width:78pt'>
   <col width=162 style='mso-width-source:userset;mso-width-alt:5924;width:122pt'>
   <col width=139 style='mso-width-source:userset;mso-width-alt:5083;width:104pt'>
   <col width=68 span=2 style='mso-width-source:userset;mso-width-alt:2486;
   width:51pt'>
   <tr class=xl67 height=20 style='height:15.0pt'>
    <td height=20 class=xl66 width=64 style='height:15.0pt;width:48pt'>Id</td>
    <td class=xl66 width=64 style='border-left:none;width:48pt'>Status</td>
    <!-- <td class=xl66 width=64 style='border-left:none;width:48pt'>Client</td> -->
    <!-- <td height=20 class=xl66 width=64 style='height:15.0pt;width:48pt'>Client Name</td> -->
    <td class=xl66 width=113 style='border-left:none;width:85pt'>Campaign Name</td>
    <!-- <td class=xl66 width=113 style='border-left:none;width:85pt'>Price Model</td> -->
    <!-- <td class=xl66 width=229 style='border-left:none;width:172pt'>Target Url</td> -->
    <td class=xl66 width=182 style='border-left:none;width:137pt'>Start - End
    Date</td>
    <td class=xl66 width=387 style='border-left:none;width:290pt'>Impression</td>
    <td class=xl66 width=387 style='border-left:none;width:290pt'>Conversion</td>
    <!-- <td class=xl66 width=387 style='border-left:none;width:290pt'>Country</td> -->
    <td class=xl66 width=387 style='border-left:none;width:290pt'>Conv/Clicks</td>
    <td class=xl66 width=387 style='border-left:none;width:290pt'>CPA/CPM</td>
    <td class=xl66 width=103 style='border-left:none;width:77pt'>Cost</td>
    <td class=xl66 width=103 style='border-left:none;width:77pt'>Type</td>
    <!-- <td class=xl66 width=103 style='border-left:none;width:77pt'>Daily Budget</td> -->
    <!-- <td class=xl66 width=107 style='border-left:none;width:80pt'>Total Budget</td>
    <td class=xl66 width=113 style='border-left:none;width:85pt'>Schedule Ads</td>
    <td class=xl66 width=144 style='border-left:none;width:108pt'>Delivery Method</td>
    <td class=xl66 width=101 style='border-left:none;width:76pt'>Target</td>
    <td class=xl66 width=126 style='border-left:none;width:95pt'>Tag</td>
    <td class=xl66 width=226 style='border-left:none;width:170pt'>Zone</td>
    <td class=xl66 width=273 style='border-left:none;width:205pt'>Get Traffic
    (Anti AdBlock)</td>
    <td class=xl66 width=171 style='border-left:none;width:128pt'>Guarantees
    Guidelines</td>
    <td class=xl66 width=104 style='border-left:none;width:78pt'>Test Budget</td>
    <td class=xl66 width=162 style='border-left:none;width:122pt'>Mobile Limit</td>
    <td class=xl66 width=139 style='border-left:none;width:104pt'>Desktop Limit</td> -->
    <td class=xl66 width=68 style='border-left:none;border-right:none;width:51pt;text-align:center;'></td>
    <td class=xl66 width=68 style='border-left:none;border-right:none;width:51pt'>Action</td>
    <td class=xl66 width=68 style='border-left:none;width:51pt'>&nbsp;</td>
   </tr>
    <?php foreach ($page->items as $campaign): ?>
       <tr>
       <!-- <td height=20 class=xl65 style='height:15.0pt;border-top:none'></td> -->
       <td height=20 class=xl65 style='height:15.0pt;border-top:none'><?php echo $campaign->id ?></td>
       <td class=xl65 style='border-top:none;border-left:none'>
        <?php
            if($campaign->status == 'N')
              echo "Inactive";
            elseif($campaign->status == "A")
              echo "Active";
            elseif($campaign->status == "D")
              echo "Draft";
          ?>
       </td>
       <!-- <td height=20 class=xl65 style='height:15.0pt;border-top:none'>
         <php
         echo $campaign->client_name;
         ?>
       </td> -->
       <td class=xl65 style='border-top:none;border-left:none'><?php echo $campaign->cp_name ?></td>
       <!-- <td class=xl65 style='border-top:none;border-left:none'><php echo $campaign->cp_pricemodel ?></td> -->
       <!-- <td class=xl65 style='border-top:none;border-left:none'><php echo $campaign->cp_targeturl ?></td> -->
       <td class=xl65 style='border-top:none;border-left:none'><?php echo $campaign->cp_startenddate ?></td>

       <td class=xl65 style='border-top:none;border-left:none'> 0 <!--impression--></td>
       <td class=xl65 style='border-top:none;border-left:none'> 0 <!--conversion--></td>
       <!-- <td class=xl65 style='border-top:none;border-left:none'>
          <php
            $input = $campaign->cp_country ;
            echo $output =str_replace(',', ',<br />', $input);
          ?>
       </td> -->
       <td class=xl65 style='border-top:none;border-left:none'> 0.00<!--conv/clicks--></td>
       <td class=xl65 style='border-top:none;border-left:none'><?php echo "$ " . $campaign->cp_cpmcpa;?><!--CPA/CPM--></td>
       <td class=xl65 style='border-top:none;border-left:none'> $<!--cost yang sudah di expand--></td>
       <td class=xl65 style='border-top:none;border-left:none'><?php echo $campaign->cp_pricemodel;?><!--Type--></td>
       <!-- <td class=xl65 style='border-top:none;border-left:none'><php echo $campaign->cp_dailybudget ?></td> -->
       <!-- <td class=xl65 style='border-top:none;border-left:none'><php echo $campaign->cp_totalbudget ?></td>
       <td class=xl65 style='border-top:none;border-left:none'><php echo $campaign->cp_schedule ?></td>
       <td class=xl65 style='border-top:none;border-left:none'><php echo $campaign->cp_delivmethod ?></td>
       <td class=xl65 style='border-top:none;border-left:none'><php echo $campaign->cp_target ?></td>
       <td class=xl65 style='border-top:none;border-left:none'><php echo $campaign->cp_tag ?></td>
       <td class=xl65 style='border-top:none;border-left:none'><php echo $campaign->cp_zone ?></td>
       <td class=xl65 style='border-top:none;border-left:none'><php echo $campaign->cp_gettraffic ?></td>
       <td class=xl65 style='border-top:none;border-left:none'><php echo $campaign->cp_guarantee ?></td>
       <td class=xl65 style='border-top:none;border-left:none'><php echo $campaign->cp_testbudget ?></td>
       <td class=xl65 style='border-top:none;border-left:none'><php echo $campaign->cp_mblimit ?></td>
       <td class=xl65 style='border-top:none;border-left:none'><php echo $campaign->cp_dsktplimit ?></td> -->

       <!-- <td class=xl65 style='border-top:none;border-left:none' width="12%"><php echo $this->tag->linkTo(["campaign/view/" . $campaign->id, "View", "class"=>"btn btn-default"]); ?></td> -->
       <?php echo $this->tag->linkTo(["campaign/edit/" . $campaign->id."/".$page->current, "<i class='glyphicon glyphicon-edit'></i> Edit", "class"=>"btn btn-default"]); ?>
       <?php echo $this->tag->linkTo(["campaign/delete/" . $campaign->id."/".$page->current, "<i class='glyphicon glyphicon-remove'></i> Delete", "class"=>"btn btn-default"]); ?>
       <!-- <php
        if($campaign->status == "N")
          {
             echo $this->tag->linkTo(["campaign/activateview/" . $campaign->id ."/".$page->current, "Activate", "class"=>"btn btn-default"]);
           }
          elseif($campaign->status == "A")
           {
             echo $this->tag->linkTo(["campaign/activatview/" . $campaign->id ."/".$page->current, "Deactivate", "class"=>"btn btn-default"]);

           }
         ?> -->
       </tr>
   <?php endforeach; ?>

   <tr height=0 style='display:none'>
    <td width=64 style='width:48pt'></td>
    <td width=64 style='width:48pt'></td>
    <td width=128 style='width:96pt'></td>
    <td width=175 style='width:131pt'></td>
    <td width=113 style='width:85pt'></td>
    <td width=229 style='width:172pt'></td>
    <td width=182 style='width:137pt'></td>
    <td width=387 style='width:290pt'></td>
    <td width=103 style='width:77pt'></td>
    <td width=107 style='width:80pt'></td>
    <td width=113 style='width:85pt'></td>
    <td width=144 style='width:108pt'></td>
    <td width=101 style='width:76pt'></td>
    <td width=126 style='width:95pt'></td>
    <td width=226 style='width:170pt'></td>
    <td width=273 style='width:205pt'></td>
    <td width=171 style='width:128pt'></td>
    <td width=104 style='width:78pt'></td>
    <td width=162 style='width:122pt'></td>
    <td width=139 style='width:104pt'></td>
    <td width=68 style='width:51pt'></td>
    <td width=68 style='width:51pt'></td>
   </tr>
   <![endif]>
  </table>
  </div>

  <div class="row">
      <div class="col-sm-1">
          <p class="pagination" style="line-height: 1.42857;padding: 6px 12px;">
              <?php echo $page->current, "/", $page->total_pages ?>
          </p>
      </div>
      <table>
        <tbody>
            <tr>
                <td colspan="10" align="right">
                    <div class="btn-group">
                        {{ link_to("campaign/search", '<i class="icon-fast-backward"></i> First', "class": "btn btn-default") }}
                        {{ link_to("campaign/search?page=" ~ page.before, '<i class="icon-step-backward"></i> Previous', "class": "btn btn-default") }}
                        {{ link_to("campaign/search?page=" ~ page.next, '<i class="icon-step-forward"></i> Next', "class": "btn btn-default") }}
                        {{ link_to("campaign/search?page=" ~ page.last, '<i class="icon-fast-forward"></i> Last', "class": "btn btn-default") }}
                        <span class="help-inline">{{ page.current }}/{{ page.total_pages }}</span>
                    </div>
                </td>
            </tr>
        <tbody>
      </table>
  </div>

  </body>
<?php
}

?>

</html>


<script type="text/javascript">

   $('#donlot').click(function() {
      download(document.getElementById('link1').href,
              document.getElementById('link2').href,
              document.getElementById('link3').href,
              document.getElementById('link4').href,
              document.getElementById('link5').href,
              document.getElementById('link6').href,
              document.getElementById('link7').href,
              document.getElementById('link8').href,
              document.getElementById('link9').href,
            );
        coba(document.getElementById('link10').href,
              document.getElementById('link11').href,
              document.getElementById('link12').href,
              document.getElementById('link13').href,
              document.getElementById('link14').href,
              document.getElementById('link15').href,
              document.getElementById('link16').href,
              document.getElementById('link17').href,
              document.getElementById('link18').href,
              document.getElementById('link19').href,
              document.getElementById('link20').href,
            );
    });

   var download = function() {
     for(var i=0; i<arguments.length; i++) {
       var iframe = $('<iframe style="visibility: collapse;"></iframe>');
       $('body').append(iframe);
       var content = iframe[0].contentDocument;
       var form = '<form action="' + arguments[i] + '" method="GET"></form>';
       content.write(form);
       $('form', content).submit();
       setTimeout((function(iframe)
       {
         return function() {
           iframe.remove();
         }
       })(iframe), 5000);
     }
   }

   var coba = function() {
     for(var i=0; i<arguments.length; i++) {
       var iframe = $('<iframe style="visibility: collapse;"></iframe>');
       $('body').append(iframe);
       var content = iframe[0].contentDocument;
       var form = '<form action="' + arguments[i] + '" method="GET"></form>';
       content.write(form);
       $('form', content).submit();
       setTimeout((function(iframe)
       {
         return function() {
           iframe.remove();
         }
       })(iframe), 3000);
     }
   }
</script>
</div>

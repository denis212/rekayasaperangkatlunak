<title>Search Doctor Account - CMS Doctor</title>
 <?php $this->assets->outputCss(); ?>
<?php

// $url_campaign = "http://122.248.32.27:8089/hit?";
// $url_campaign = "localhost/gamanads/hit?";
// $url_camp_test = "localhost/gamanads/hittest?";
/**
 * @var \Phalcon\Mvc\View\Engine\Php $this
 */

use Phalcon\Mvc\Url;

?>

<?php use Phalcon\Tag; ?>
<!-- <div class="container" style="background-color:#f5f5f5; margin-top: 25px; margin-bottom:20px; border:1px solid #e3e3e3"> -->
<div style="margin-right:25px;margin-left:25px;">
  <div class="row">
      <nav>
          <ul class="pager">
              <li class="previous"><?php echo $this->tag->linkTo(["doctor/search?page=".$frompage, "Go Back"]); ?></li>
              <li class="next"><?php echo $this->tag->linkTo(["doctor/create", "Create "]); ?></li>
          </ul>
      </nav>
  </div>
<div class="page-header" style="border-bottom: 1px solid #e4e2e0;">
    <h1>List Search Doctor result</h1>
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


.xl65
	{mso-style-parent:style0;
	border:0.5pt solid windowtext;
  text-align:center;
  font-size:12.0pt;}
.xl66
	{mso-style-parent:style0;
	font-size:12.0pt;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	text-align:center;
	border:.5pt solid windowtext;
  background-color: #bcbaba;}
.xl67
	{mso-style-parent:style0;
	font-size:12.0pt;
	font-family:Arial, sans-serif;
	mso-font-charset:0;
	text-align:center;}
.xl88
{mso-style-parent:style0;
border:0.5pt solid windowtext;
text-align:center;
font-size:12.0pt;
background-color: #d6d9ff;}

</style>

</head>
<body link=blue vlink=purple>

<div class="row" style='overflow-x:scroll;overflow-y:hidden;'>
<br>
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
  <td height=20 class=xl66 width=64 style='height:20.0pt;width:48pt'>Doctor Email</td>
  <td class=xl66 width=64 style='border-left:none;width:65pt'>No Handphone</td>
  <td class=xl66 width=64 style='border-left:none;width:48pt'>Doctor Name<td
  <td class=xl66 width=175 style='border-left:none;width:131pt'>Doctor Address</td>
  <td class=xl66 width=175 style='border-left:none;width:131pt'>Doctor Salt</td>
  <td class=xl66 width=113 style='border-left:none;width:85pt'>Doctor Status</td>
  <td class=xl66 width=229 style='border-left:none;width:172pt'>Created</td>
  <td class=xl66 width=229 style='border-left:none;width:172pt'>Updated</td>
  <td class=xl66 width=229 style='border-left:none;width:172pt'>Doctor Photo</td>
  <td class=xl66 width=182 style='border-left:none;width:137pt'>Doctor KTP</td>
  <td class=xl66 width=387 style='border-left:none;width:290pt'>Doctor SIM</td>
  <td class=xl66 width=387 style='border-left:none;width:290pt'>Doctor KK</td>
  <td class=xl66 width=68 style='border-left:none;width:51pt'>&nbsp;</td>
 </tr>
 <?php $i = 0; ?>
  <?php foreach ($page->items as $doctor): ?>
  <?php $i++;
        $sisa=$i%2;

        if($sisa == 0)
        {
            $css = 'xl88';
        }else {
          $css = 'xl65';
        }
  ?>
     <tr>
     <td height=20 class=<?php echo $css; ?> style='height:15.0pt;border-top:none'><?php echo $doctor->doctor_email ?></td>
     <td height=20 class=<?php echo $css; ?> style='height:15.0pt;border-top:none' ><?php echo $doctor->doctor_msisdn ?></td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'><?php echo $doctor->doctor_name?></td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'><?php echo $doctor->doctor_address ?></td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'><?php echo $doctor->doctor_salt ?></td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'>
       <?php if($doctor->doctor_status == "1")
              echo "Active";
             else
              echo "Inactive";
        ?>
     </td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'><?php echo $doctor->doctor_created ?></td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'><?php echo $doctor->doctor_updated ?></td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'>
       <?php
       if($doctor->doctor_photo != null)
       {
       echo $this->tag->image([$doctor->doctor_photo,'width'=>'50px','id'=>'doctor_photo']);

        }else {
         echo "<a id='linkphoto' href=''></a>";
       }
       ?>
     </td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'>
       <?php
       if($doctor->doctor_ktp != null)
       {
       echo $this->tag->image([$doctor->doctor_ktp,'width'=>'100px','id'=>'doctor_ktp']);

        }else {
         echo "<a id='linkktp' href=''></a>";
       }
       ?>
     </td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'>
       <?php
       if($doctor->doctor_sim != null)
       {
       echo $this->tag->image([$doctor->doctor_sim,'width'=>'100px','id'=>'doctor_sim']);
      //  echo $doctor->doctor_sim;

        }else {
         echo "<a id='linksim' href=''></a>";
       }
       ?>
     </td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'>
       <?php
       if($doctor->doctor_kk != null)
       {
       echo $this->tag->image([$doctor->doctor_kk,'width'=>'100px','id'=>'doctor_kk']);

        }else {
         echo "<a id='linkkk' href=''></a>";
       }
       ?>
     </td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none' width="12%">
       <?php echo $this->tag->linkTo(["doctor/view/" . $doctor->doctor_id ."/".$page->current, "<i class='glyphicon glyphicon-eye-open'></i> View", "class"=>"btn btn-info"]); ?>
       <?php echo $this->tag->linkTo(["doctor/edit/" . $doctor->doctor_id."/".$page->current, "<i class='glyphicon glyphicon-edit'></i> Edit", "class"=>"btn btn-primary"]); ?>
       <?php echo $this->tag->linkTo(["doctor/delete/" . $doctor->doctor_id."/".$page->current, "<i class='glyphicon glyphicon-remove'></i> Delete", "class"=>"btn btn-warning"]); ?>
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
</div>

</body>

</div>
</html>
<?php $this->assets->outputJs(); ?>

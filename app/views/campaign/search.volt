<title>Search Campaign - GamanAds</title>
 <?php $this->assets->outputCss(); ?>
<?php
/**
 * @var \Phalcon\Mvc\View\Engine\Php $this
 */

use Vokuro\Models\Campaign;
use Vokuro\Models\Users;

?>

<?php use Phalcon\Tag; ?>
<div class="container" style="background-color:#f5f5f5; margin-top: 25px; margin-bottom:20px; border:1px solid #e3e3e3">
<div class="row">
    <nav>
        <ul class="pager">
            <li class="previous"><?php echo $this->tag->linkTo(["campaign/create", "Go Back", "style"=>"background-color:#c52d2f; color: #fff;"]); ?></li>
            <li class="next"><?php echo $this->tag->linkTo(["campaign/create", "Create ","style"=>"background-color:#c52d2f; color: #fff;"]); ?></li>
        </ul>
    </nav>
</div>

<div class="page-header" style="border-bottom: 1px solid #e4e2e0;">
    <h1>List Campaign result</h1>
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
  	font-size:12.0pt;
  	font-family:Arial, sans-serif;
  	mso-font-charset:0;
  	text-align:center;
  	border:.5pt solid windowtext;
    background-color: #d6d9ff;}
</style>

</head>
<?php if($this->auth->getProfilesId() == 1){?>
<body link=blue vlink=purple>
  <div>
    <form method='post'>
      <table>
        <tr>
          <td>
            {{form.label('cp_namesearch')}}
          </td>
          <td>{{form.label('client_search')}}</td>
          <td>
            {{form.label('cp_status')}}
          </td>
        </tr>
         <tr>
           <td>
             {{form.render('cp_namesearch',['class':'form-control'])}}
           </td>
           <td>
              {{form.render('client_search',['class':'form-control'])}}
           </td>
           <td>
             {{form.render('cp_status',['class':'form-control'])}}
           </td>
           <td></td>
         </tr>
         <tr>
           <td>{{form.render('Search',['class':'btn btn-primary btn-success'])}}</td>
         </tr>
      </table>
    </form>
  </div>
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
  <td height=20 class=xl66 width=64 style='height:15.0pt;width:48pt'>Id</td>
  <td class=xl66 width=64 style='border-left:none;width:48pt'>Status</td>
  <td class=xl66 width=64 style='border-left:none;width:48pt'>Client ID</td>
  <td height=20 class=xl66 width=64 style='height:15.0pt;width:48pt'>Client Name</td>
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
  <td class=xl66 width=139 style='border-left:none;width:104pt'>Created</td>
  <td class=xl66 width=139 style='border-left:none;width:104pt'>Updated</td>
  <td class=xl66 width=68 style='border-left:none;width:51pt'>&nbsp;</td>
 </tr>
 <?php $i = 0; ?>
  <?php foreach ($page->items as $campaign): ?>
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
     <td height=20 class=<?php echo $css; ?> style='height:15.0pt;border-top:none'><?php echo $campaign->id ?></td>
     <td height=20 class=<?php echo $css; ?> style='height:15.0pt;border-top:none' >
       <?php
          if($campaign->status == 'N')
            echo "Inactive";
          elseif($campaign->status == "A")
            echo "Active";
          elseif($campaign->status == "D")
            echo "Draft";
        ?>
     </td>
     <td height=20 class=<?php echo $css; ?> style='height:15.0pt;border-top:none' ><?php echo $campaign->client_id ?></td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'>
       <?php
       echo $campaign->client_name;
       ?>
     </td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'><?php echo $campaign->cp_name ?></td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'><?php echo $campaign->cp_pricemodel ?></td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'><?php echo $campaign->cp_targeturl ?></td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'><?php echo $campaign->cp_startenddate ?></td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'>
       <?php
         $input = $campaign->cp_country ;
         echo $output =str_replace(',', ',<br />', $input);
       ?>
     </td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'><?php echo $campaign->cp_cpmcpa ?></td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'><?php echo $campaign->cp_dailybudget ?></td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'><?php echo $campaign->cp_totalbudget ?></td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'><?php echo $campaign->cp_schedule ?></td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'><?php echo $campaign->cp_delivmethod ?></td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'><?php echo $campaign->cp_target ?></td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'><?php echo $campaign->cp_tag ?></td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'><?php echo $campaign->cp_zone ?></td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'><?php echo $campaign->cp_gettraffic ?></td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'><?php echo $campaign->cp_guarantee ?></td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'><?php echo $campaign->cp_testbudget ?></td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'><?php echo $campaign->cp_mblimit ?></td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'><?php echo $campaign->cp_dsktplimit ?></td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'><?php echo $campaign->created_at ?></td>
     <td class=<?php echo $css; ?> style='border-top:none;border-left:none'><?php echo $campaign->upddate_at ?></td>

     <td class=<?php echo $css; ?> style='border-top:none;border-left:none' width="12%">
       <?php echo $this->tag->linkTo(["campaign/view/" . $campaign->id ."/".$page->current, "<i class='glyphicon glyphicon-eye-open'></i> View", "class"=>"btn btn-default"]); ?>
       <?php echo $this->tag->linkTo(["campaign/edit/" . $campaign->id."/".$page->current, "<i class='glyphicon glyphicon-edit'></i> Edit", "class"=>"btn btn-default"]); ?>
       <?php echo $this->tag->linkTo(["campaign/delete/" . $campaign->id."/".$page->current, "<i class='glyphicon glyphicon-remove'></i> Delete", "class"=>"btn btn-default"]); ?>
       <?php
        if($campaign->status == "N")
          {
             echo $this->tag->linkTo(["campaign/activateout/" . $campaign->id ."/".$page->current, "<i class='glyphicon glyphicon-play'></i> Activate", "class"=>"btn btn-default"]);
           }
          elseif($campaign->status == "A")
           {
             echo $this->tag->linkTo(["campaign/activateout/" . $campaign->id ."/".$page->current, "<i class='glyphicon glyphicon-stop'></i> Deactivate", "class"=>"btn btn-default"]);

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
</div>
<br>
<div class="row">
    <div class="col-md-9">
    </div>
    <div class="col-md-3">
      <div class="btn-group">
          {{ link_to("campaign/search", '<i class="icon-fast-backward"></i> First', "class": "btn btn-default") }}
          {{ link_to("campaign/search?page=" ~ page.before, '<i class="icon-step-backward"></i> Previous', "class": "btn btn-default") }}
          {{ link_to("campaign/search?page=" ~ page.next, '<i class="icon-step-forward"></i> Next', "class": "btn btn-default") }}
          {{ link_to("campaign/search?page=" ~ page.last, '<i class="icon-fast-forward"></i> Last', "class": "btn btn-default") }}
          <span class="help-inline">{{ page.current }}/{{ page.total_pages }}</span>
      </div>
    </div>
</div>

</body>
<?php
}else { ?>
  <body link=blue vlink=purple>
  <div class="row" style='overflow-x:scroll'>
    <div>
      <form method='post'>
        <table>
          <tr>
            <td>
              {{form.label('cp_namesearch')}}
            </td>
            <td></td>
            <td>
              {{form.label('cp_status')}}
            </td>
          </tr>
           <tr>
             <td>
               {{form.render('cp_namesearch',['class':'form-control'])}}
             </td>
             <td>
             </td>
             <td>
               {{form.render('cp_status',['class':'form-control'])}}
             </td>
             <td>
              </td>
           </tr>
           <tr>
             <td>
                 {{form.render('Search',['class':'btn btn-primary btn-success'])}}
             </td>
           </tr>
        </table>

            <?php
            $user = Users::find(['order'=>'id','client_id'=> $selfId]);
            ?>

      </form>
    </div>
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
    <td height=20 class=xl66 width=64 style='height:15.0pt;width:48pt'>Id</td>
    <!-- <td class=xl66 width=64 style='border-left:none;width:48pt'>Client</td> -->
    <td class=xl66 width=113 style='border-left:none;width:85pt'>Status</td>
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
    <td class=xl66 width=103 style='border-left:none;width:77pt'>Created</td>
    <td class=xl66 width=103 style='border-left:none;width:77pt'>Updated</td>
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
    <!-- <td class=xl66 width=68 style='border-left:none;border-right:none;width:51pt;text-align:center;'></td> -->
    <!-- <td class=xl66 width=68 style='border-left:none;border-right:none;width:51pt'>Action</td> -->
    <td class=xl66 width=68 style='border-left:none;width:51pt'>&nbsp;</td>
   </tr>
    <?php foreach ($page->items as $campaign): ?>
       <tr>
       <!-- <td height=20 class=xl65 style='height:15.0pt;border-top:none'></td> -->
       <td height=20 class=xl65 style='height:15.0pt;border-top:none'><?php echo $campaign->id ?></td>
       <!-- <td height=20 class=xl65 style='height:15.0pt;border-top:none'>
         <php
         echo $campaign->client_name;
         ?>
       </td> -->
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
       <td class=xl65 style='border-top:none;border-left:none'><?php echo $campaign->created_at ?></td>
       <td class=xl65 style='border-top:none;border-left:none'><?php echo $campaign->upddate_at ?></td>
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

       <!-- <td class=xl65 style='border-top:none;border-left:none' width="12%"><php echo $this->tag->linkTo(["campaign/view/" . $campaign->id, "View", "class"=>"btn"]); ?></td> -->
       <td class=xl65 style='border-top:none;border-left:none' width="12%">
         <?php echo $this->tag->linkTo(["campaign/edit/" . $campaign->id."/".$page->current, "<i class='glyphicon glyphicon-edit'></i> Edit", "class"=>"btn btn-default"]); ?>
         <?php echo $this->tag->linkTo(["campaign/delete/" . $campaign->id."/".$page->current, "<i class='glyphicon glyphicon-remove'></i> Delete", "class"=>"btn btn-default"]); ?>
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
  <br>
  <div class="row">
      <div class="col-md-9">
      </div>
      <div class="col-md-3">
        <div class="btn-group">
            {{ link_to("campaign/search", '<i class="icon-fast-backward"></i> First', "class": "btn btn-default") }}
            {{ link_to("campaign/search?page=" ~ page.before, '<i class="icon-step-backward"></i> Previous', "class": "btn btn-default") }}
            {{ link_to("campaign/search?page=" ~ page.next, '<i class="icon-step-forward"></i> Next', "class": "btn btn-default") }}
            {{ link_to("campaign/search?page=" ~ page.last, '<i class="icon-fast-forward"></i> Last', "class": "btn btn-default") }}
            <span class="help-inline">{{ page.current }}/{{ page.total_pages }}</span>
        </div>
      </div>
  </div>

  </body>
<?php
}

?>
</div>
</html>
<?php $this->assets->outputJs(); ?>

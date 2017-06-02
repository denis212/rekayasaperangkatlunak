
<title>Daily Report - GamanAds</title>
<?php $this->assets->outputCss(); ?>
<?php
/**
 * @var \Phalcon\Mvc\View\Engine\Php $this
 */

?>
<?php use Phalcon\Tag; ?>

<style>
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

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 <!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

 <!-- <div class="container" style="background-color:#f5f5f5; margin-top: 25px; margin-bottom:20px; border:1px solid #e3e3e3"> -->
<div class="container" style="background-color:#fff; width:auto;" style="margin-right:25px;margin-left:90px;">
<div class="page-header">
    <h1>Daily Report</h1>
</div>


<div class="row" style='overflow-x:scroll;overflow-y:hidden;'>
  <div>
    <form method='post'>
      <table style="width:auto;">
        <tr>
          <th style="padding:5px;">{{form.label('rpt_startdate')}}</th>
          <th style="padding:5px;">{{form.label('rpt_enddate')}}</th>
          <th style="padding:5px;">{{form.label('rpt_cp_name')}}</th>
        </tr>
         <tr>
           <td style="padding:5px;">{{form.render('rpt_startdate',['class':'form-control'])}}</td>
           <td style="padding:5px;">{{form.render('rpt_enddate',['class':'form-control'])}}</td>
           <td style="padding:5px;">{{form.render('rpt_cp_name',['class':'form-control'])}}</td>
           <td></td>
         </tr>
         <tr>
           <td style="padding:5px;">{{form.render('Search',['class':'btn btn-primary btn-success'])}}</td>
           <td style="padding:5px;width:300px;">
             <?php
             echo $this->tag->linkTo(["campaign/dailyrptdw/".$s_startdate."/".$s_enddate.'/'.$s_campaignname,   "Download Excel", "class"=>"btn btn-primary btn-success"]).'<br>';
            ?></td>
         </tr>
         <tr>
           <td>* Click Search first then Download Excel</td>
         </tr>
      </table>
    </form>
  </div>

  <br>
    <table class="table table-bordered">
      <thead>
          <tr class="xl67">
          <td class="xl66">No</th>
          <td class="xl66">Date Click</th>
          <td class="xl66">Client Name</th>
          <td class="xl66">Campaign Name</th>
          <td class="xl66">Impression</th>
          <td class="xl66">Total Click</th>
          <td class="xl66">Conversion</th>
          <td class="xl66">CTR</th>
          <td class="xl66">ECPC</th>
          <td class="xl66">ECPM</th>
          <td class="xl66">CPM Price</th>
          <td class="xl66">CPC Price</th>
          <td class="xl66">Budget</th>
          <td class="xl66">Spending ($)</th>
          </tr>
      </thead>
        <?php echo $tampil; echo $jumlahnya.' Display Rows'; echo ', from Total '.$rownya.' data.';?>
    </table>
</div>
<br>
<div class="row">
    <div class="col-md-9">
    </div>
    <div class="col-md-3">
      <div class="btn-group">
        <!-- {{ link_to("adspace/search", '<i class="icon-fast-backward"></i> First', "class": "btn btn-default") }} -->
        <!-- {{ link_to("adspace/search?page=" ~ page.before, '<i class="icon-step-backward"></i> Previous', "class": "btn btn-default ") }}
        {{ link_to("adspace/search?page=" ~ page.next, '<i class="icon-step-forward"></i> Next', "class": "btn btn-default") }}
        {{ link_to("adspace/search?page=" ~ page.last, '<i class="icon-fast-forward"></i> Last', "class": "btn btn-default") }}
        <span class="help-inline">{{ page.current }}/{{ page.total_pages }}</span> -->
      </div>
    </div>
</div>
<script type="text/javascript">
var dateFormat = "yy-mm-dd",
    from = $( "#rpt_startdate" )
      .datepicker({
        defaultDate: "+1w",
        changeMonth: true,
        numberOfMonths: 2
      })
      .on( "change", function() {
        to.datepicker( "option", "minDate", getDate( this ) );
      }),
    to = $( "#rpt_enddate" ).datepicker({
      defaultDate: "+1w",
      changeMonth: true,
      numberOfMonths: 2
    })
    .on( "change", function() {
      from.datepicker( "option", "maxDate", getDate( this ) );
    });

  function getDate( element ) {
    var date;
    try {
      date = $.datepicker.parseDate( dateFormat, element.value );
    } catch( error ) {
      date = null;
    }

    return date;
  }

</script>

</div>
<?php $this->assets->outputJs(); ?>


<title>Daily Report - GamanAds</title>
<?php $this->assets->outputCss(); ?>
<?php
/**
 * @var \Phalcon\Mvc\View\Engine\Php $this
 */

?>
<?php use Phalcon\Tag; ?>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 <!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<div class="container">

<div class="page-header">
    <h1>Search result</h1>
</div>

<div class="row"  class="row" style='overflow-x:scroll;overflow-y:hidden;'>
  <div>
    <form method='post'>
      <table>
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
          <tr>
          <th>No</th>
          <th>Date Click</th>
          <th>Client Name</th>
          <th>Campaign Name</th>
          <th>Impression</th>
          <th>Total Click</th>
          <th>Conversion</th>
          <th>CTR</th>
          <th>ECPC</th>
          <th>ECPM</th>
          <th>CPM Price</th>
          <th>CPC Price</th>
          <th>Budget</th>
          <th>Spending</th>
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

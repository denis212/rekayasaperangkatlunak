<title>Reporting Referal - ADMINJPU</title>
<?php $this->assets->outputCss(); ?>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
{{ content() }}
<div class="container" style="background-color:#f5f5f5; margin-right: 25px; margin-left:25px; width:auto;">
<ul class="pager" style="margin-top:50px;">
    <li class="previous pull-left">
        <!-- {{ link_to("users/createref", "&larr; Go Back", "class": "btn btn-primary", "style":"background-color:#c52d2f; color: #fff;") }} -->
    </li>
    <li class="pull-right">
        <!-- {{ link_to("users/create", "Create users", "class": "btn btn-primary", "style":"background-color:#c52d2f; color: #fff;") }} -->
    </li>
</ul>

<div>
  <form method='post'>
    <table style="width:auto;">
      <tr>
        <th style="padding:5px;">{{form.label('startdate')}}</th>
        <th style="padding:5px;">{{form.label('enddate')}}</th>
        <th style="padding:5px;">{{form.label('referal')}}</th>
        <th style="padding:5px;">{{form.label('reseller')}}</th>
      </tr>
       <tr>
         <td style="padding:5px;">{{form.render('startdate',['class':'form-control'])}}</td>
         <td style="padding:5px;">{{form.render('enddate',['class':'form-control'])}}</td>
         <td style="padding:5px;">{{form.render('referal',['class':'form-control'])}}</td>
         <td style="padding:5px;">{{form.render('reseller',['class':'form-control'])}}</td>
         <td></td>
       </tr>
       <tr>
         <td style="padding:5px;">{{form.render('Submit',['class':'btn btn-primary btn-success'])}}</td>
       </tr>
    </table>
  </form>
</div>
<div class="row" style='overflow-x:hidden;overflow-y:scroll; height:350px;'>
<table class="table table-bordered table-striped" align="center" style="margin-top: 70px;">
    <thead>
        <tr>
            <th>Tanggal Transaksi</th>
            <th>Nama Referal</th>
            <th>Nama Reseller</th>
            <th>Penjualan</th>
            <th>Pendapatan</th>
            <th>Komisi</th>
            <th>Total Komisi</th>
        </tr>
    </thead>

    <?php echo $tampil; ?>
    <tbody>
      <tr>
      <td>Total</td>
      <td></td>
      <td></td>
      <td><?php echo $tot_penjualan; ?></td>
      <td><?php echo $tot_pendapatan; ?></td>
      <td><?php echo $tot_komisi; ?></td>
      <td><?php echo $tot_komisikom; ?></td>
      </tr>
    </tbody>
    <tbody>
      <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      </tr>
    </tbody>

</table>
</div>
<script type="text/javascript">
  $(function () {
    $('#startdate').datepicker({
      autoclose: true,
      format: "yyyy-m-dd"
    });

    $('#enddate').datepicker({
      autoclose: true,
      format: "yyyy-m-dd"
    });


  } );

</script>
</div>
 <?php $this->assets->outputJs(); ?>

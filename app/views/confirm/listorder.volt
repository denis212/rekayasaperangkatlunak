<title>Search Order - ADMINJPU</title>
<?php $this->assets->outputCss(); ?>
<?php use \Phalcon\Tag; ?>
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
<div class="col-lg-8">
<legend>PENJUALAN AKUN</legend>
</div>
<br>
<div class="col-lg-4">
<legend style="align:right;">AKUN TERSEDIA => <?php echo $jumlah; ?> PCS</legend>
</div>
<table class="table table-bordered table-striped" align="center" style="margin-top: 70px;">
    <thead>
        <tr>
            <th>ORDER</th>
            <!-- <th>USERNAME</th>
            <th>PASSWORD</th> -->
            <th>ID</th>
            <th>NO HP PELANGGAN</th>
            <!-- <th>TERJUAL?</th> -->
            <th>STATUS?</th>
        </tr>
    </thead>
  <?php foreach ($page->items as $result): ?>
    <tbody>
        <tr>
            <td width="12%">{{ link_to("confirm/beli?id=" ~ result.id ~ "&stock=" ~ jumlah,'<i class="fa fa-edit"></i> BELI',"class": "btn btn-success")}}</td>
            <!-- <td><php echo $result->username ; ?></td>
            <td><php echo $result->pass; ?></td> -->
            <td><?php echo $result->id ; ?></td>
            <td><?php echo $result->msisdn ; ?></td>
            <!-- <td><php if($result->terjual == "N")
                        echo "BELUM";
                      else
                        echo "TERJUAL";
                 ?>
            </td> -->
            <td><?php
                  if($result->status == "N")
                  echo "BELUM AKTIF";
                  else
                  echo "READY";
               ?>
            </td>
        </tr>
    </tbody>
    <?php endforeach; ?>
    <tbody>
        <tr>
            <td colspan="10" align="right">
                <div class="btn-group">
                    {{ link_to("confirm/listorder", '<i class="icon-fast-backward"></i> First', "class": "btn btn-primary") }}
                    {{ link_to("confirm/listorder?page=" ~ page.before, '<i class="icon-step-backward"></i> Previous', "class": "btn btn-primary") }}
                    {{ link_to("confirm/listorder?page=" ~ page.next, '<i class="icon-step-forward"></i> Next', "class": "btn btn-primary") }}
                    {{ link_to("confirm/listorder?page=" ~ page.last, '<i class="icon-fast-forward"></i> Last', "class": "btn btn-primary") }}
                    <span class="help-inline">{{ page.current }}/{{ page.total_pages }}</span>
                </div>
            </td>
        </tr>
    <tbody>
</table>
</div>
 <?php $this->assets->outputJs(); ?>

<title>Search RESELLER - ADMINJPU</title>
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
<legend>DAFTAR RESELLER ANDA</legend>
</div>
<br>
<div class="col-lg-4">
</div>
<table class="table table-bordered table-striped" align="center" style="margin-top: 70px;">
    <thead>
        <tr>
            <th>NAME</th>
            <th>EMAIL</th>
            <th>PHONE</th>
            <th>CODE REFERAL?</th>
        </tr>
    </thead>
  <?php foreach ($page->items as $result): ?>
    <tbody>
        <tr>
            <td><?php echo $result->name; ?></td>
            <td><?php echo $result->email; ?></td>
            <td><?php echo $result->phone; ?></td>
            <td><?php echo $result->coderef; ?></td>

        </tr>
    </tbody>
    <?php endforeach; ?>
    <tbody>
        <tr>
            <td colspan="10" align="right">
                <div class="btn-group">
                    {{ link_to("users/viewres", '<i class="icon-fast-backward"></i> First', "class": "btn btn-primary") }}
                    {{ link_to("users/viewres?page=" ~ page.before, '<i class="icon-step-backward"></i> Previous', "class": "btn btn-primary") }}
                    {{ link_to("users/viewres?page=" ~ page.next, '<i class="icon-step-forward"></i> Next', "class": "btn btn-primary") }}
                    {{ link_to("users/viewres?page=" ~ page.last, '<i class="icon-fast-forward"></i> Last', "class": "btn btn-primary") }}
                    <span class="help-inline">{{ page.current }}/{{ page.total_pages }}</span>
                </div>
            </td>
        </tr>
    <tbody>
</table>
</div>
 <?php $this->assets->outputJs(); ?>

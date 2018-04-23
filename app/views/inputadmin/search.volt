<title>Search Payment - GamanAds</title>
<?php $this->assets->outputCss(); ?>
<?php
/**
 * @var \Phalcon\Mvc\View\Engine\Php $this
 */
?>
<p><?php $this->flashSess->output() ?></p>

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

<!-- <div class="container" style="background-color:#f5f5f5; margin-top: 25px; margin-bottom:20px; border:1px solid #e3e3e3"> -->
<div class="container" style="background-color:#f5f5f5; margin-top: -10px; margin-right: 25px; margin-left:25px; width:auto;">
<div class="row">
    <nav>
        <ul class="pager">
					<li class="next"><?php echo $this->tag->linkTo(["inputadmin/create", "Create Data","style"=>"background-color:#c52d2f; color: #fff;"]); ?></li>
        </ul>
    </nav>
</div>

<div class="page-header">
    <h1>List Data Iklan</h1>
</div>

<?php echo $this->getContent(); ?>

<div class="row" style='overflow-x:scroll;overflow-y:hidden;'>
    <table class="table table-bordered">
        <thead>
            <tr class=xl67>
            <td class=xl66>Id</th>
						<td class=xl66>Status Iklan</th>
            <td class=xl66>Nama Klien</th>
            <td class=xl66>Title Iklan</th>
            <td class=xl66>Url Klik</th>
            <td class=xl66 >Start Date</th>
						<td class=xl66 >End Date</th>
            <td class=xl66>Url Gambar</th>
            <td class=xl66>Page Iklan</th>
            <td class=xl66>Created At</th>
            <td class=xl66>Updated At</th>
                <td class=xl66></th>
                <!-- <th></th> -->
            </tr>
        </thead>
        <tbody>
        <?php $i = 0; ?>
        <?php foreach ($page->items as $input): ?>
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
            <td height=20 class=<?php echo $css; ?>><?php echo $input->id ?></td>
            <td height=20 class=<?php echo $css; ?>><?php
                    if($input->iklan_aktif == 'n')
                    echo "Inactive";
                    else
                    echo "Active";
                    ?></td>
            <td height=20 class=<?php echo $css; ?>><?php echo $input->nama_klien ?></td>
            <td height=20 class=<?php echo $css; ?>><?php echo $input->title_iklan ?></td>
            <td height=20 class=<?php echo $css; ?>><?php echo $input->url_klik ?></td>
            <td height=20 class=<?php echo $css; ?>><?php echo $input->start_date?></td>
					  <td height=20 class=<?php echo $css; ?>><?php echo $input->end_date?></td>
            <td height=20 class=<?php echo $css; ?>><?php echo $input->url_gambar ?></td>
            <td height=20 class=<?php echo $css; ?>><?php echo $input->page_iklan ?></td>
            <td height=20 class=<?php echo $css; ?>><?php echo $input->created_at ?></td>
            <td height=20 class=<?php echo $css; ?>><?php echo $input->updated_at ?></td>
            <!-- <td height=20 class=<php echo $css; ?>><php echo $this->tag->linkTo(["confirm/approve/".$input->id."/".$page->current, "<i class='glyphicon glyphicon-edit'></i> Approve Payment", "class"=>"btn btn-default"]); ?></td> -->
            <td><?php echo $this->tag->linkTo(["inputadmin/edit/" . $input->id, "<i class='glyphicon glyphicon-edit'></i> Edit", "class"=>"btn btn-default"]); ?></td>
            </tr>
        <?php endforeach; ?>
        </tbody>
    </table>
</div>
<br>
<div class="row">
    <div class="col-md-8">
    </div>
    <div class="col-md-4">
      <div class="btn-group">
        {{ link_to("confirm/search", '<i class="icon-fast-backward"></i> First', "class": "btn btn-default") }}
        {{ link_to("confirm/search?page=" ~ page.before, '<i class="icon-step-backward"></i> Previous', "class": "btn btn-default ") }}
        {{ link_to("confirm/search?page=" ~ page.next, '<i class="icon-step-forward"></i> Next', "class": "btn btn-default") }}
        {{ link_to("confirm/search?page=" ~ page.last, '<i class="icon-fast-forward"></i> Last', "class": "btn btn-default") }}
        <span class="help-inline">{{ page.current }}/{{ page.total_pages }}</span>
      </div>
    </div>
</div>
</div>
 <?php $this->assets->outputJs(); ?>

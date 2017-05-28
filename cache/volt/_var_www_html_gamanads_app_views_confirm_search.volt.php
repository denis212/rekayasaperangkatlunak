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

<div class="container" style="background-color:#f5f5f5; margin-top: 25px; margin-bottom:20px; border:1px solid #e3e3e3">
<div class="row">
    <nav>
        <ul class="pager">

        </ul>
    </nav>
</div>

<div class="page-header">
    <h1>List Payment Result</h1>
</div>

<?php echo $this->getContent(); ?>

<div class="row"  class="row" style='overflow-x:scroll;overflow-y:hidden;'>
    <table class="table table-bordered">
        <thead>
            <tr class=xl67>
            <td class=xl66>Client Id</th>
            <td class=xl66>Status</th>
            <td class=xl66>Username</th>
            <td class=xl66>Bank Name</th>
            <td class=xl66>Branch</th>
            <td class=xl66>Acc Number</th>
            <td class=xl66>Acc Name</th>
            <td class=xl66>Nominal</th>
            <td class=xl66>Phone</th>
            <td class=xl66>Email</th>
            <td class=xl66>Currency</th>
            <td class=xl66>Created At</th>
            <td class=xl66>Upddate At</th>
                <td class=xl66></th>
                <!-- <th></th> -->
            </tr>
        </thead>
        <tbody>
        <?php $i = 0; ?>
        <?php foreach ($page->items as $confirm): ?>
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
            <td height=20 class=<?php echo $css; ?>><?php echo $confirm->user_id ?></td>
            <td height=20 class=<?php echo $css; ?>><?php
                    if($confirm->status == 'N')
                    echo "Unapprove";
                    else
                    echo "Approved";
                    ?></td>
            <td height=20 class=<?php echo $css; ?>><?php echo $confirm->username ?></td>
            <td height=20 class=<?php echo $css; ?>><?php echo $confirm->bankname ?></td>
            <td height=20 class=<?php echo $css; ?>><?php echo $confirm->branch ?></td>
            <td height=20 class=<?php echo $css; ?>><?php echo $confirm->accountnumber ?></td>
            <td height=20 class=<?php echo $css; ?>><?php echo $confirm->accountname ?></td>
            <td height=20 class=<?php echo $css; ?>><?php echo $confirm->nominal ?></td>
            <td height=20 class=<?php echo $css; ?>><?php echo $confirm->phone ?></td>
            <td height=20 class=<?php echo $css; ?>><?php echo $confirm->email ?></td>
            <td height=20 class=<?php echo $css; ?>><?php echo $confirm->currency ?></td>
            <td height=20 class=<?php echo $css; ?>><?php echo $confirm->created_at ?></td>
            <td height=20 class=<?php echo $css; ?>><?php echo $confirm->upddate_at ?></td>

            <td height=20 class=<?php echo $css; ?>><?php echo $this->tag->linkTo(["confirm/approve/".$confirm->id."/".$page->current, "<i class='glyphicon glyphicon-edit'></i> Approve Payment", "class"=>"btn btn-default"]); ?></td>
            <!-- <td><php echo $this->tag->linkTo(["confirm/unapprove/" . $confirm->id, "<i class='glyphicon glyphicon-edit'></i> Unapprove Payment", "class"=>"btn btn-default"]); ?></td> -->
            </tr>
        <?php endforeach; ?>
        </tbody>
    </table>
</div>
<br>
<div class="row">
    <div class="col-md-9">
    </div>
    <div class="col-md-3">
      <div class="btn-group">
        <?= $this->tag->linkTo(['confirm/search', '<i class="icon-fast-backward"></i> First', 'class' => 'btn btn-default']) ?>
        <?= $this->tag->linkTo(['confirm/search?page=' . $page->before, '<i class="icon-step-backward"></i> Previous', 'class' => 'btn btn-default ']) ?>
        <?= $this->tag->linkTo(['confirm/search?page=' . $page->next, '<i class="icon-step-forward"></i> Next', 'class' => 'btn btn-default']) ?>
        <?= $this->tag->linkTo(['confirm/search?page=' . $page->last, '<i class="icon-fast-forward"></i> Last', 'class' => 'btn btn-default']) ?>
        <span class="help-inline"><?= $page->current ?>/<?= $page->total_pages ?></span>
      </div>
    </div>
</div>
</div>
 <?php $this->assets->outputJs(); ?>

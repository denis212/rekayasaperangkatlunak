<title>Search Ad Space - GamanAds</title>
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
<div class="container" style="background-color:#f5f5f5; margin-top: 25px; margin-bottom:20px; border:1px solid #e3e3e3">
<div class="row">
    <nav>
        <ul class="pager">
            <li class="previous"><?php echo $this->tag->linkTo(["adspace/create", "Go Back", "style"=>"background-color:#c52d2f; color: #fff;"]); ?></li>
            <li class="next"><?php echo $this->tag->linkTo(["adspace/create", "Create ", "style"=>"background-color:#c52d2f; color: #fff;"]); ?></li>
        </ul>
    </nav>
</div>

<div class="page-header" style="border-bottom: 1px solid #e4e2e0;">
    <h1>List Adspace</h1>
</div>

<?php echo $this->getContent(); ?>


<div class="row"  class="row" style='overflow-x:scroll;overflow-y:hidden;'>
  <div>
    <form method='post'>
      <table>
        <tr>
          <?php if($this->auth->getProfilesId() == 1){?>
          <th><?= $form->label('client_search') ?></th>
          <?php } ?>
          <th><?= $form->label('ad_typesearch') ?></th>
          <th>
            <?= $form->label('cp_status') ?>
          </th>
        </tr>
         <tr>
           <?php if($this->auth->getProfilesId() == 1){?>
           <td style="padding:5px;">
             <?= $form->render('client_search', ['class' => 'form-control']) ?>
           </td>
           <?php } ?>
           <td style="padding:5px;"><?= $form->render('ad_typesearch', ['class' => 'form-control']) ?></td>
           <td style="padding:5px;">
             <?= $form->render('cp_status', ['class' => 'form-control']) ?>
           </td>
           <td></td>
         </tr>
         <tr>
           <td style="padding:5px;"><?= $form->render('Search', ['class' => 'btn btn-primary btn-success']) ?></td>
         </tr>
      </table>
    </form>
  </div>

  <br>
    <table class="table table-bordered">
        <thead>
            <tr class=xl67>
            <td class=xl66>Id</th>
            <td class=xl66>Status</th>
            <td class=xl66>Client Name</th>
            <td class=xl66>Ad Url</th>
            <td class=xl66>Ad Type</th>
            <td class=xl66>Ad Guarantee</th>
            <td class=xl66>Active After Post</th>
            <td class=xl66>Created</th>
            <td class=xl66>Updated</th>
                <td class=xl66></th>
                <td class=xl66></th>
                <td class=xl66></th>
            </tr>
        </thead>
        <tbody>
        <?php $i = 0; ?>
        <?php foreach ($page->items as $adspace): ?>
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
            <td height=20 class=<?php echo $css; ?>><?php echo $adspace->id ?></td>
            <td height=20 class=<?php echo $css; ?>>
              <?php
                if($adspace->status == 'a')
                  echo "Active";
                elseif ($adspace->status == 'n') {
                  echo "Inactive";
                }

              ?>
            </td height=20 class=<?php echo $css; ?>>
            <td height=20 class=<?php echo $css; ?>><?php echo $adspace->client_name ?></td>
            <td height=20 class=<?php echo $css; ?>><?php echo $adspace->ad_url ?></td>
            <td height=20 class=<?php echo $css; ?>><?php echo $adspace->ad_type ?></td>
            <td height=20 class=<?php echo $css; ?>>
              <?php
                if($adspace->ad_guarantee == 'yes')
                  echo "Yes";
                else
                  echo "No";
              ?>
            </td>
            <td height=20 class=<?php echo $css; ?>>
              <?php
                if($adspace->ad_status == 'yes')
                  echo "Yes";
                else
                  echo "No";
              ?>
            </td>
            <td height=20 class=<?php echo $css; ?>><?php echo $adspace->created_at ?></td>
            <td height=20 class=<?php echo $css; ?>><?php echo $adspace->updated_at ?></td>

                <td height=20 class=<?php echo $css; ?>><?php echo $this->tag->linkTo(["adspace/edit/" . $adspace->id, "<i class='glyphicon glyphicon-edit'></i> Edit", "class"=>"btn btn-default"]); ?></td>
                <td height=20 class=<?php echo $css; ?>><?php echo $this->tag->linkTo(["adspace/delete/" . $adspace->id, "<i class='glyphicon glyphicon-remove'></i> Delete", "class"=>"btn btn-default"]); ?></td>
                <?php if($this->auth->getProfilesId() == 1){?>
                <td height=20 class=<?php echo $css; ?>>
                  <?php
                  if($adspace->status == 'n')
                    echo $this->tag->linkTo(["adspace/activate/" . $adspace->id.'/'.$page->current, "<i class='glyphicon glyphicon-play'></i> Activate", "class"=>"btn btn-default"]);
                  else
                  echo $this->tag->linkTo(["adspace/activate/" . $adspace->id.'/'.$page->current, "<i class='glyphicon glyphicon-stop'></i> Deactivate", "class"=>"btn btn-default"]);
                  ?>
                </td>
                <?php } else { ?>
                <td height=20 class=<?php echo $css; ?>>
                </td>
                <?php } ?>
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
        <?= $this->tag->linkTo(['adspace/search', '<i class="icon-fast-backward"></i> First', 'class' => 'btn btn-default']) ?>
        <?= $this->tag->linkTo(['adspace/search?page=' . $page->before, '<i class="icon-step-backward"></i> Previous', 'class' => 'btn btn-default ']) ?>
        <?= $this->tag->linkTo(['adspace/search?page=' . $page->next, '<i class="icon-step-forward"></i> Next', 'class' => 'btn btn-default']) ?>
        <?= $this->tag->linkTo(['adspace/search?page=' . $page->last, '<i class="icon-fast-forward"></i> Last', 'class' => 'btn btn-default']) ?>
        <span class="help-inline"><?= $page->current ?>/<?= $page->total_pages ?></span>
      </div>
    </div>
</div>
</div>
<?php $this->assets->outputJs(); ?>

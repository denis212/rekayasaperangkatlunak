<title>Create Ad Space - GamanAds</title>
<?php $this->assets->outputCss(); ?>
<?= $this->getContent() ?>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 <!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- <div class="container" style="background-color:#f5f5f5; margin-top: 25px; margin-bottom:20px; border:1px solid #e3e3e3"> -->
<div class="container" style=" margin-right: 25px; margin-left:25px; width:auto;">
<div class="col-md-12">
<div class="box box-primary" style="margin-top:20px;">
<div class="row" style="margin-right:20px;">
    <nav>
        <ul class="pager">
          <li class="next"><?php echo $this->tag->linkTo(["adspace/search", "Search Ad Space","style"=>"background-color:#c52d2f; color: #fff;"]); ?></li>
        </ul>
    </nav>
</div>

<legend>Create Ad Space</legend>

<div align="center">

<form method='post' enctype='multipart/form-data' class="form-horizontal" autocomplete="off">
    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput"><?= $form->label('client_name') ?></label>
      <div class="col-md-4">
        <?= $form->render('client_name', ['class' => 'form-control']) ?>
        <?= $form->messages('client_name') ?>
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput"><?= $form->label('ad_url') ?></label>
      <div class="col-md-4">
        <?= $form->render('ad_url', ['class' => 'form-control']) ?>
        <?= $form->messages('ad_url') ?>
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput"><?= $form->label('ad_type') ?></label>
      <div class="col-md-4">
        <?= $form->render('ad_type', ['class' => 'form-control']) ?>
        <?= $form->messages('ad_type') ?>
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">
        <?= $form->render('ad_guarantee') ?>
      </label>
      <div class="col-lg-4">
        <?= $form->label('ad_guarantee') ?>
        <?= $form->messages('ad_guarantee') ?>
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput"><?= $form->render('ad_status') ?></label>
      <div class="col-lg-3">
        <?= $form->label('ad_status') ?>
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput"></label>
      <div class="col-md-4">
        <?= $form->render('Save') ?>
      </div>
    </div>
    <?= $form->render('client_id') ?>

    <input type="hidden" name="<?php echo $this->security->getTokenKey() ?>" value="<?php echo $this->security->getToken() ?>"/>

  </form>

</div>

</div>
</div>
</div>
<?php $this->assets->outputJs(); ?>

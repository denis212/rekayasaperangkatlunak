<title>Confirmation - GamanAds</title>
<?php $this->assets->outputCss(); ?>
<?= $this->getContent() ?>

<!-- <div class="container" style="background-color:#f5f5f5; margin-top: 25px; margin-bottom:20px; border:1px solid #e3e3e3"> -->
<div class="container" style=" margin-right: 25px; margin-left:25px; width:auto;">
<div class="col-md-12">
<div class="box box-primary" style="margin-top:20px;">
<div class="page-header">
    <h1>Confirm Payment</h1>
</div>
<div class="site-contact" style="margin-left:20px;">
    <div class="row">
        <div class="col-lg-5">
          <form method='post' class="form-horizontal" autocomplete="off">
          <?= $form->render('user_id') ?>
          <?= $form->label('username') ?>
          <?= $form->render('username', ['class' => 'form-control']) ?>
          <?= $form->messages('username') ?>
          <?= $form->label('bankname') ?>
          <?= $form->render('bankname', ['class' => 'form-control']) ?>
          <?= $form->messages('bankname') ?>
          <?= $form->label('branch') ?>
          <?= $form->render('branch', ['class' => 'form-control']) ?>
          <?= $form->messages('branch') ?>
          <?= $form->label('accountnumber') ?>
          <?= $form->render('accountnumber', ['class' => 'form-control']) ?>
          <?= $form->messages('accountnumber') ?>
          <?= $form->label('accountname') ?>
          <?= $form->render('accountname', ['class' => 'form-control']) ?>
          <?= $form->messages('accountname') ?>
          <?= $form->label('phone') ?>
          <?= $form->render('phone', ['class' => 'form-control']) ?>
          <?= $form->messages('phone') ?>
          <?= $form->label('email') ?>
          <?= $form->render('email', ['class' => 'form-control']) ?>
          <?= $form->messages('email') ?>
          <?= $form->label('nominal') ?>
          <?= $form->render('nominal', ['class' => 'form-control']) ?>
          <?= $form->messages('nominal') ?>
          <?= $form->label('currency') ?>
          <?= $form->render('currency', ['class' => 'form-control']) ?>
          <?= $form->messages('currency') ?>
          <br>
          <?= $form->render('Confirm') ?>

          <input type="hidden" name="<?php echo $this->security->getTokenKey() ?>" value="<?php echo $this->security->getToken() ?>"/>

          </form>
        </div>
    </div>

</div>
</div>
</div>
</div>

 <?php $this->assets->outputJs(); ?>

<title>Create Users - GamanAds</title>
 <?php $this->assets->outputCss(); ?>
<div class="container">
<ul class="pager">
    <li class="previous pull-left">
        <?= $this->tag->linkTo(['users', '&larr; Go Back']) ?>
    </li>
    <li class="pull-right">

    </li>
</ul>

<?= $this->getContent() ?>

<form method='post' enctype='multipart/form-data' class="form-horizontal" autocomplete="off">
    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">Name * </label>
      <div class="col-md-4">
        <?= $form->render('name', ['class' => 'form-control']) ?>
        <?= $form->messages('name') ?>
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">Last Name * </label>
      <div class="col-md-4">
        <?= $form->render('lastname', ['class' => 'form-control']) ?>
        <?= $form->messages('lastname') ?>
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">E-Mail * </label>
      <div class="col-md-4">
        <?= $form->render('email', ['class' => 'form-control']) ?>
        <?= $form->messages('email') ?>
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">Profile * </label>
      <div class="col-md-4">
        <?= $form->render('profilesId', ['class' => 'form-control']) ?>
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">Skype * </label>
      <div class="col-md-4">
        <?= $form->render('skype', ['class' => 'form-control']) ?>
        <?= $form->messages('skype') ?>
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">Type Account </label>
      <div class="col-md-4">
        <?= $form->render('type', ['class' => 'form-control']) ?>
        <?= $form->messages('type') ?>
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">Phone * </label>
      <div class="col-md-4">
        <?= $form->render('phone', ['class' => 'form-control']) ?>
        <?= $form->messages('phone') ?>
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">Country </label>
      <div class="col-md-4">
        <?= $form->render('country', ['class' => 'form-control']) ?>
        <?= $form->messages('country') ?>
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-5 control-label">
        <?= $this->tag->submitButton(['Save', 'class' => 'btn btn-success']) ?>
      </label>

    </div>

</form>
<div>
<?php $this->assets->outputJs(); ?>

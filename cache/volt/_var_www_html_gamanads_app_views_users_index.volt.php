<title>Users - GamanAds</title>


<?= $this->getContent() ?>
<div class="container">
<div class="site-signup" style=" margin-left:80px;margin-right:80px;">
<div align="right">
    <?= $this->tag->linkTo(['users/create', '<i class=\'icon-plus-sign\'></i> Create Users', 'class' => 'btn btn-primary']) ?>
</div>

<form class="form-horizontal" method="post" action="<?= $this->url->get('users/search') ?>" autocomplete="off">
<fieldset>

<!-- Form Name -->
<legend>Search Users</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">ID</label>
  <div class="col-md-4">
      <?= $form->render('id', ['class' => 'form-control input-md']) ?>
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Name</label>
  <div class="col-md-4">
    <?= $form->render('name', ['class' => 'form-control input-md']) ?>
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">E-Mail</label>
  <div class="col-md-4">
    <?= $form->render('email', ['class' => 'form-control input-md']) ?>
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Profile</label>
  <div class="col-md-4">
    <?= $form->render('profilesId', ['class' => 'form-control input-md']) ?>
  </div>
</div>
<div class="form-group">
    <div class="col-md-4"></div>
  <div class="col-md-4">
    <?= $this->tag->submitButton(['Search', 'class' => 'btn btn-primary']) ?>
  </div>
</div>
</fieldset>
</form>
</div>
</div>

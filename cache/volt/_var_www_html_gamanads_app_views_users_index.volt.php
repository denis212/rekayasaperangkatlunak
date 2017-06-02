<title>Users - GamanAds</title>


<?= $this->getContent() ?>
<div class="container" style="background-color:#f5f5f5; margin-right: 25px; margin-left:25px; width:auto;">
<div class="site-signup" style=" margin-left:80px;margin-right:80px;">

<div align="right" style="margin-top:20px;">
  <nav>
      <ul class="pager">
        <li class="next"><?= $this->tag->linkTo(['users/create', '<i class=\'icon-plus-sign\'></i> Create Users', 'class' => 'btn btn-primary', 'style' => 'background-color:#c52d2f; color: #fff;']) ?>
        </li>
      </ul>
  </nav>
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

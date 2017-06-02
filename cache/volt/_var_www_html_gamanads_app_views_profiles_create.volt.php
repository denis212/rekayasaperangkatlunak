<title>Create Profiles - GamanAds</title>

<div class="container" style="background-color:#f5f5f5; margin-right: 25px; margin-left:25px; width:auto;">

<form method="post" autocomplete="off">

<ul class="pager" style="margin-right:20px;">
    <li class="previous pull-left">
        <?= $this->tag->linkTo(['profiles', '&larr; Go Back', 'class' => 'btn btn-primary', 'style' => 'background-color:#c52d2f; color: #fff;']) ?>
    </li>
    <li class="pull-right">

    </li>
</ul>

<?= $this->getContent() ?>

<div class="col-lg-5">
    <h2>Create a Profile</h2>

    <div class="clearfix">
        <label for="name">Name</label>
        <?= $form->render('name', ['class' => 'form-control', 'style' => 'width:350px;']) ?>
    </div>

    <div class="clearfix">
        <label for="active">Active?</label>
        <?= $form->render('active', ['class' => 'form-control', 'style' => 'width:350px;']) ?>
    </div>
    <br>
      <?= $this->tag->submitButton(['Save', 'class' => 'btn btn-success']) ?>
</div>

</form>
</div>

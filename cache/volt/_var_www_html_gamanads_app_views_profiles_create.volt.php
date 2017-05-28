<title>Create Profiles - GamanAds</title>

<div class="container">
<form method="post" autocomplete="off">

<ul class="pager">
    <li class="previous pull-left">
        <?= $this->tag->linkTo(['profiles', '&larr; Go Back']) ?>
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

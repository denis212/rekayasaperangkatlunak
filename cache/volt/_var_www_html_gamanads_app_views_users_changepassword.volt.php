 <?php $this->assets->outputCss(); ?>
 
<?= $this->getContent() ?>
<div class="container">
<form method="post" class="form-horizontal" autocomplete="off" action="<?= $this->url->get('users/changePassword') ?>">

    <div>

        <h2>Change Password</h2>

        <div class="form-group">
          <label class="col-md-4 control-label" for="textinput">Password</label>
          <div class="col-md-4">
            <?= $form->render('password', ['class' => 'form-control']) ?>
          </div>
        </div>

        <div class="form-group">
          <label class="col-md-4 control-label" for="textinput">Confirm Password</label>
          <div class="col-md-4">
          <?= $form->render('confirmPassword', ['class' => 'form-control']) ?>
          </div>
        </div>

        <div class="form-group">
          <label class="col-md-4 control-label" for="textinput"></label>
          <div class="col-md-4">
            <?= $this->tag->submitButton(['Save', 'class' => 'btn btn-primary']) ?>
          </div>
        </div>


    </div>

</form>
</div>
<?php $this->assets->outputJs(); ?>

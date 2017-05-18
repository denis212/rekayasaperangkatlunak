<title>Contact - GamanAds</title>
<?= $this->getContent() ?>
<div class="container">
<div class="site-contact">
  <h2>Contact Us</h2>
  <p><b>Address:</b> St. Sudriman, 123123  </p>
  <p><b>Email:</b> Info@gamanads.com</p>

  <p>
      If you have business inquiries or other questions, please fill out the following form to contact us. Thank you.
  </p>
    <div class="row">
        <div class="col-lg-5">
          <form method='post' class="form-horizontal" autocomplete="off">
          <?= $form->label('name') ?>
          <?= $form->render('name', ['class' => 'form-control']) ?>
          <?= $form->messages('name') ?>
          <?= $form->label('email') ?>
          <?= $form->render('email', ['class' => 'form-control']) ?>
          <?= $form->messages('email') ?>
          <?= $form->label('subject') ?>
          <?= $form->render('subject', ['class' => 'form-control']) ?>
          <?= $form->messages('subject') ?>
          <?= $form->label('body') ?>
          <?= $form->render('body', ['class' => 'form-control']) ?>
          <?= $form->messages('body') ?>
          <br>
          <?= $form->render('Send Message') ?>
          <input type="hidden" name="<?php echo $this->security->getTokenKey() ?>" value="<?php echo $this->security->getToken() ?>"/>

          </form>
        </div>
    </div>

</div>
</div>

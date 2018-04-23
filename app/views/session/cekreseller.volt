<title>Cek Reseller - JPU</title>

  <?php $this->assets->outputCss(); ?>

{{ content() }}

<div class="register-box">
  <div class="register-logo">
    <a><b>Admin</b>JPU</a>
  </div>

  <div class="register-box-body">
    <p class="login-box-msg">Register a new membership</p>

    {{ form('class': 'form-search') }}

      <div class="form-group">
        {{ form.render('name',['class':'form-control']) }}
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>

      <div class="form-group has-feedback">
        {{ form.render('phone',['class':'form-control','placeholder':'Your Phone Number']) }}

        <span class="glyphicon glyphicon-phone form-control-feedback"></span>
      </div>

      <div class="form-group has-feedback">
        {{ form.render('coderef',['class':'form-control','placeholder':'Code REFERAL Anda']) }}

        <span class="glyphicon glyphicon-phone form-control-feedback"></span>
      </div>
        <!-- /.col -->
      <div class="row">
        <div class="col-xs-4">
          {{ form.render('Submit',['class':'btn btn-primary btn-block btn-flat']) }}
        </div>
        <!-- /.col -->
      </div>
      <input type="hidden" name="<?php echo $this->security->getTokenKey() ?>" value="<?php echo $this->security->getToken() ?>"/>

    </form>

    <!-- <div class="social-auth-links text-center">
      <p>- OR -</p>
      <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign up using
        Facebook</a>
      <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign up using
        Google+</a>
    </div> -->
  </div>
  <!-- /.form-box -->
</div>
<?php $this->assets->outputJs(); ?>

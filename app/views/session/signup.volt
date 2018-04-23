<title>SignUp - JPU</title>

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
        {{ form.render('name',['class':'form-control','value':request.getQuery('nama')]) }}
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        {{ form.render('email',['class':'form-control','placeholder':'youremail@mail.com']) }}

        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        {{ form.render('password',['class':'form-control','placeholder':'Password']) }}

        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        {{ form.render('confirmPassword',['class':'form-control','placeholder':'Retype Password']) }}

        <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        {{ form.render('phone',['class':'form-control','placeholder':'Your Phone Number','value':request.getQuery('hp')]) }}

        <span class="glyphicon glyphicon-phone form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        {{ form.render('no_ktp',['class':'form-control','placeholder':'Nomor KTP/SIM Anda']) }}

        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        {{ form.render('coderef',['class':'form-control','placeholder':'Code Ref','value':request.getQuery('coderef')]) }}
        {{ form.render('idref',['class':'form-control','value':request.getQuery('idref')]) }}
        <span class="glyphicon glyphicon-barcode form-control-feedback"></span>
      </div>

      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
            {{ form.render('terms') }} {{ form.label('terms') }}

            <!-- <label>
              <input type="checkbox"> I agree to the <a href="#">terms</a>
            </label> -->
          </div>
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
          {{ form.render('Sign Up',['class':'btn btn-primary btn-block btn-flat']) }}
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
    {{ link_to('session/login', 'I already have a membership') }}
  </div>
  <!-- /.form-box -->
</div>
<?php $this->assets->outputJs(); ?>

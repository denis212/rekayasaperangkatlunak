<title>Forgot Password - JPU</title>
<?php $this->assets->outputCss(); ?>
{{ content() }}
<div class="login-box">
<div class="login-logo">
  <a href="#"><b>Admin</b>JPU</a>
</div>
<!-- /.login-logo -->
<div class="login-box-body">
  <p class="login-box-msg">Forgot Password?</p>

  {{ form('class': 'form-search') }}
    <div class="form-group has-feedback">
      {{ form.render('email',['class':'form-control']) }}
      <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
    </div>
    <div class="row">
			<div class="col-xs-4">

      </div>
      <!-- /.col -->
      <div class="col-xs-4">
        <!-- <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button> -->
      	{{ form.render('Send',['class':'btn btn-primary btn-block btn-flat']) }}
      </div>

      <!-- /.col -->
    </div>
		<hr>
		<input type="hidden" name="<?php echo $this->security->getTokenKey() ?>" value="<?php echo $this->security->getToken() ?>"/>
  </form>
  {{ link_to('session/login', 'I already have a membership') }}
</div>
</div>
<?php $this->assets->outputJs(); ?>

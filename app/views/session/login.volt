<title>Login - GamanAds</title>
<?php $this->assets->outputCss(); ?>
<p><?php $this->flashSess->output() ?></p>
{{ content() }}
<!-- <div class="container">
<div class="row">

    <div class="col-md-6">
        <div class="page-header">
            <h2>Log In</h2>
        </div>
        {{ form() }}
            <fieldset>
                <div class="form-group">
                    <label for="email">Email</label>
                    <div class="controls">
												{{ form.render('email',['class':'form-control']) }}
                    </div>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <div class="controls">
												{{ form.render('password', ['class':'form-control']) }}
                    </div>
                </div>
                <div class="form-group">
										{{ form.render('Login', ['class': 'btn btn-primary btn-large']) }}
                </div>
            </fieldset>
						{{ form.render('csrf', ['value': security.getToken()]) }}
        </form>
    </div>

    <div class="col-md-6">

        <div class="page-header">
            <h2>Don't have an account yet?</h2>
        </div>

        <p>Create an account offers the following advantages:</p>
        <ul>
            <li>Create, track and export your invoices online</li>
            <li>Gain critical insights into how your business is doing</li>
            <li>Stay informed about promotions and special packages</li>
        </ul>

        <div class="clearfix center">
            {{ link_to('session/signup', 'Sign Up', 'class': 'btn btn-primary btn-large btn-success') }}
						{{ link_to("session/forgotPassword", "Forgot my password", 'class': 'btn btn-primary btn-large') }}
        </div>
    </div>

</div>

</div> -->
<div class="login-box">
<div class="login-logo">
  <a href="#"><b>CMS</b>JPU</a>
</div>
<!-- /.login-logo -->
<div class="login-box-body">
  <p class="login-box-msg">Sign in to start your session</p>

  {{ form() }}
    <div class="form-group has-feedback">
      {{ form.render('email',['class':'form-control']) }}
      <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
    </div>
    <div class="form-group has-feedback">
      {{ form.render('password', ['class':'form-control']) }}
      <span class="glyphicon glyphicon-lock form-control-feedback"></span>
    </div>
    <div class="row">
      <div class="col-xs-8">
        <div class="checkbox icheck">
          <!-- <label>
            <input type="checkbox"> Remember Me
          </label> -->
        </div>
      </div>
      <!-- /.col -->
      <div class="col-xs-4">
        <!-- <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button> -->
        {{ form.render('Login', ['class': 'btn btn-primary btn-block btn-flat']) }}
      </div>
      {{ form.render('csrf', ['value': security.getToken()]) }}
      <!-- /.col -->
    </div>
  </form>

  <!-- /.social-auth-links -->

  <!-- <a href="#">I forgot my password</a><br> -->
	{{ link_to("session/forgotPassword", "Forgot my password") }}
  <br>
  {{ link_to('session/cekreseller', 'Register a new membership') }}

</div>
</div>
 <?php $this->assets->outputJs(); ?>

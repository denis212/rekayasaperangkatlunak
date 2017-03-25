<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- <link rel="icon" href="../../favicon.ico"> -->

    <!-- <title>Carousel Template for Bootstrap</title> -->

    <!-- Bootstrap core CSS -->
    {{ stylesheet_link("https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css") }}
    {{ stylesheet_link('css/carousel.css') }}
    {{ stylesheet_link('css/ie10-viewport-bug-workaround.css') }}
   {{ javascript_include('js/ie-emulation-modes-warning.js') }}


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Custom styles for this template -->
    <!-- <link href="carousel.css" rel="stylesheet"> -->
  </head>
<!-- NAVBAR
================================================== -->
  <body>
    <div class="navbar-wrapper">
      <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#">Project name</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <?php if($userlevel == 1) { ?>
              <ul class="nav navbar-nav">

                {%- set menus = [
                  'Home': null,
                  'About': 'about',
                  'Users': 'users',
                  'Profiles': 'profiles',
                  'Permissions': 'permissions'
                ] -%}

                {%- for key, value in menus %}
                  {% if value == dispatcher.getControllerName() %}
                  <li class="active">{{ link_to(value, key) }}</li>
                  {% else %}
                  <li>{{ link_to(value, key) }}</li>
                  {% endif %}
                {%- endfor -%}

                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Advertiser<b class="caret"></b></a>
                  <ul class="nav navbar-nav">
                    <li>{{ link_to('campaign/create', 'Create Campaign') }}</li>
                    <li>{{ link_to('campaign/search', 'Search Campaign') }}</li>
                  </ul>
                </li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Publisher<b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li>{{ link_to('adspace/create', 'Create AdSpace') }}</li>
                    <li>{{ link_to('adspace/search', 'Search AdSpace') }}</li>
                  </ul>
                </li>
              </ul>
              <?php }else{ ?>
                <ul class="nav navbar-nav">

                  {%- set menus = [
                    'Home': null,
                    'About': 'about'
                  ] -%}

                  {%- for key, value in menus %}
                    {% if value == dispatcher.getControllerName() %}
                    <li class="active">{{ link_to(value, key) }}</li>
                    {% else %}
                    <li>{{ link_to(value, key) }}</li>
                    {% endif %}
                  {%- endfor -%}

                </ul>
                <?php } ?>
                <ul class="nav navbar-nav navbar-right">
                  {%- if not(logged_in is empty) %}
                  <li>{{ link_to('users', 'Users Panel') }}</li>
                  <li>{{ link_to('session/logout', 'Logout') }}</li>
                  {% else %}
                  <li>{{ link_to('session/signup', 'Sign Up') }}</li>
                  <li>{{ link_to('session/login', 'Login') }}</li>
                  {% endif %}
                </ul>
            </div>
          </div>
        </nav>

      </div>
    </div>
  </div>


    {{ content() }}


      <!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2016 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>

    <!-- /.container


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    {{ javascript_include('https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js') }}
    {{ javascript_include('https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js') }}
    {{ javascript_include('js/holder.min.js') }}
    {{ javascript_include('js/ie10-viewport-bug-workaround.js') }}
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
    <!-- <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script> -->
    <!-- <script src="../../dist/js/bootstrap.min.js"></script> -->
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <!-- <script src="../../assets/js/vendor/holder.min.js"></script> -->
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <!-- <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script> -->
  </body>
</html>

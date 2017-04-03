<!-- <header id="header"> -->


<!-- <div class="top-bar">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-xs-4">
                <div class="top-number"><p><i class="fa fa-phone-square"></i>  +0123 456 70 90</p></div>
            </div>
            <div class="col-sm-6 col-xs-8">
               <div class="social">
                    <ul class="social-share">
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                        <li><a href="#"><i class="fa fa-skype"></i></a></li>
                    </ul>
                    <div class="search">
                        <form role="form">
                            <input type="text" class="search-form" autocomplete="off" placeholder="Search">
                            <i class="fa fa-search"></i>
                        </form>
                   </div>
               </div>
            </div>
        </div>
    </div>
</div> -->


<nav class="navbar navbar-inverse" role="banner">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
              {{ link_to('', 'GamanAds', 'class':'navbar-brand') }}
        </div>
        <div class="collapse navbar-collapse navbar-right">
          <?php if($userlevel == 1) { ?>
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Compay<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li>{{ link_to('', 'Home') }}</li>
                <li>{{ link_to('about/', 'About') }}</li>
                <li>{{ link_to('policy/', 'Policy') }}</li>
                <li>{{ link_to('terms/', 'Terms') }}</li>
              </ul>
            </li>

            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">User & Access<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li>{{ link_to('users/', 'Users') }}</li>
                <li>{{ link_to('profiles/', 'Profiles') }}</li>
                <li>{{ link_to('permissions/', 'Permissions') }}</li>
              </ul>
            </li>

            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Advertiser<b class="caret"></b></a>
              <ul class="dropdown-menu">
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
                'Home': ''
              ] -%}

              {%- set menusdropdown = [
                'About Us': 'about',
                'Privacy Policy': 'policy',
                'Terms & Conditions': 'terms'
              ] -%}

              {%- set menusfaq = [
                'FAQ': 'faq',
                'Contact': 'contact'
              ] -%}

              {%- for key, value in menus %}
                {% if value == dispatcher.getControllerName() %}
                <li class="active">{{ link_to(value, key) }}</li>
                {% else %}
                <li>{{ link_to(value, key) }}</li>
                {% endif %}
              {%- endfor -%}

              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Company <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  {%- for key, value in menusdropdown %}
                    {% if value == dispatcher.getControllerName() %}
                    <li class="active">{{ link_to(value, key) }}</li>
                    {% else %}
                    <li>{{ link_to(value, key) }}</li>
                    {% endif %}
                  {%- endfor -%}
                </ul>
              </li>

              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Help <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  {%- for key, value in menusfaq %}
                    {% if value == dispatcher.getControllerName() %}
                    <li class="active">{{ link_to(value, key) }}</li>
                    {% else %}
                    <li>{{ link_to(value, key) }}</li>
                    {% endif %}
                  {%- endfor -%}
                </ul>
              </li>

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
          <!-- <div class="nav-collapse">

          </div> -->
</nav>

<!-- </header> -->

<section class="no-margin">

<!-- <div class="container"> -->

    {{ content() }}
    <hr>

<!-- </div> -->

</section>

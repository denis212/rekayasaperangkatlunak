<nav class="navbar navbar-default navbar-inverse" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            {{ link_to('', 'GamanAds', 'class':'navbar-brand') }}
        </div>
        <div class="navbar-collapse navbar-right collapse">
          <?php if($userlevel == 1) { ?>

            {%- set menus = [
              'Home': null,
              'About': 'about',
              'Policy': 'policy',
              'Terms': 'terms'
            ] -%}


            {%- set menususers = [
              'Users': 'users',
              'Profiles': 'profiles',
              'Permissions': 'permissions'
            ] -%}

            <ul class="nav navbar-nav">
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Compay <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  {%- for key, value in menus %}
                    {% if value == dispatcher.getControllerName() %}
                    <li class="active">{{ link_to(value, key) }}</li>
                    {% else %}
                    <li>{{ link_to(value, key) }}</li>
                    {% endif %}
                  {%- endfor -%}
                </ul>
              </li>

              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">User & Access<b class="caret"></b></a>
                <ul class="dropdown-menu">
                  {%- for key, value in menususers %}
                    {% if value == dispatcher.getControllerName() %}
                    <li class="active">{{ link_to(value, key) }}</li>
                    {% else %}
                    <li>{{ link_to(value, key) }}</li>
                    {% endif %}
                  {%- endfor -%}
                </ul>
              </li>

              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Advertiser <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li>{{ link_to('campaign/create', 'Create Campaign') }}</li>
                  <li>{{ link_to('campaign/search', 'List Campaign') }}</li>
                  <li>{{ link_to('campaign/dashboardcamp', 'Dashboard Campaign') }}</li>
                  <li>{{ link_to('campaign/dailyreport', 'Daily Report') }}</li>
                  <!-- <li>{{ link_to('campaign/dashboardcamp', 'Dashboard Campaign') }}</li>
                  <li>{{ link_to('campaign/dailyreport', 'Daily Report') }}</li> -->
                </ul>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Publisher <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li>{{ link_to('adspace/create', 'Create AdSpace') }}</li>
                  <li>{{ link_to('adspace/search', 'List AdSpace') }}</li>
                </ul>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Payment <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li>{{ link_to('confirm/create', 'Confirmation') }}</li>
                  <li>{{ link_to('confirm/search', 'List Payment') }}</li>
                </ul>
              </li>
            </ul>
            <?php }else{ ?>

                {%- set menus = [
                  'Home': null,
                  'About': 'about',
                  'Policy': 'policy',
                  'Terms': 'terms'
                ] -%}

                <ul class="nav navbar-nav">
                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Compay <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                      {%- for key, value in menus %}
                        {% if value == dispatcher.getControllerName() %}
                        <li class="active">{{ link_to(value, key) }}</li>
                        {% else %}
                        <li>{{ link_to(value, key) }}</li>
                        {% endif %}
                      {%- endfor -%}
                    </ul>
                  </li>

                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Campaign <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li>{{ link_to('campaign/create', 'Create Campaign') }}</li>
                    <li>{{ link_to('campaign/search', 'List Campaign') }}</li>
                    <li>{{ link_to('campaign/dashboardcamp', 'Dashboard Campaign') }}</li>
                    <li>{{ link_to('campaign/dailyreport', 'Daily Report') }}</li>
                    <!-- <li>{{ link_to('campaign/dashboardcamp', 'Dashboard Campaign') }}</li>
                    <li>{{ link_to('campaign/dailyreport', 'Daily Report') }}</li> -->
                  </ul>
                </li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Publisher <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li>{{ link_to('adspace/create', 'Create AdSpace') }}</li>
                    <li>{{ link_to('adspace/search', 'List AdSpace') }}</li>
                  </ul>
                </li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Payment <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li>{{ link_to('confirm/create', 'Confirmation') }}</li>
                    <li>{{ link_to('confirm/search', 'List Payment') }}</li>
                  </ul>
                </li>
              </ul>
              <?php } ?>


          <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">{{ auth.getName() }} <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li>{{ link_to('users/accountInfo', 'Account Information') }}</li>
                <li>{{ link_to('users/changePassword', 'Change Password') }}</li>
                <li><a>Your Balance <?php echo $usersaldo ?> </a> </li>
              </ul>
            </li>
            <li>{{ link_to('session/logout', 'Logout') }}</li>
          </ul>
        </div>
</nav>

<section class="no-margin">
<!-- <div class="container"> -->

    {{ content() }}
    <!-- <hr> -->

<!-- </div> -->
</section>

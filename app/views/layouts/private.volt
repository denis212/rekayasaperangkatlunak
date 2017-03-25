<div class="navbar navbar-inverse">
  <div class="navbar-inner">
    <div class="container" style="width: auto;">
      <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>
      {{ link_to(null, 'class': 'brand', 'GamanAds')}}
        <div class="nav-collapse">
          <?php if($userlevel == 1) { ?>
          <ul class="nav">

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

            <ul class="nav">

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

              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Campaign<b class="caret"></b></a>
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
            <?php } ?>


        <ul class="nav pull-right">
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">{{ auth.getName() }} <b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li>{{ link_to('users/accountInfo', 'Account Information') }}</li>
              <li>{{ link_to('users/changePassword', 'Change Password') }}</li>
            </ul>
          </li>
          <li>{{ link_to('session/logout', 'Logout') }}</li>
        </ul>
      </div>
    </div>
  </div>
</div>

<div class="container">
  {{ content() }}
</div>

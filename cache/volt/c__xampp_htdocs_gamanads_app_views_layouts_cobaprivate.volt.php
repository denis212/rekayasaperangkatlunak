<nav class="navbar navbar-default navbar-inverse" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <?= $this->tag->linkTo(['', 'GamanAds', 'class' => 'navbar-brand']) ?>
        </div>
        <div class="navbar-collapse navbar-right collapse">
          <?php if($userlevel == 1) { ?><?php $menus = ['Home' => null, 'About' => 'about', 'Policy' => 'policy', 'Terms' => 'terms']; ?><?php $menususers = ['Users' => 'users', 'Profiles' => 'profiles', 'Permissions' => 'permissions']; ?><ul class="nav navbar-nav">
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Compay <b class="caret"></b></a>
                <ul class="dropdown-menu"><?php foreach ($menus as $key => $value) { ?>
                    <?php if ($value == $this->dispatcher->getControllerName()) { ?>
                    <li class="active"><?= $this->tag->linkTo([$value, $key]) ?></li>
                    <?php } else { ?>
                    <li><?= $this->tag->linkTo([$value, $key]) ?></li>
                    <?php } ?><?php } ?></ul>
              </li>

              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">User & Access<b class="caret"></b></a>
                <ul class="dropdown-menu"><?php foreach ($menususers as $key => $value) { ?>
                    <?php if ($value == $this->dispatcher->getControllerName()) { ?>
                    <li class="active"><?= $this->tag->linkTo([$value, $key]) ?></li>
                    <?php } else { ?>
                    <li><?= $this->tag->linkTo([$value, $key]) ?></li>
                    <?php } ?><?php } ?></ul>
              </li>

              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Advertiser <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><?= $this->tag->linkTo(['campaign/create', 'Create Campaign']) ?></li>
                  <li><?= $this->tag->linkTo(['campaign/search', 'Search Campaign']) ?></li>
                  <li><?= $this->tag->linkTo(['campaign/dashboardcamp', 'Dashboard Campaign']) ?></li>
                  <li><?= $this->tag->linkTo(['campaign/dailyreport', 'Daily Report']) ?></li>
                  <!-- <li><?= $this->tag->linkTo(['campaign/dashboardcamp', 'Dashboard Campaign']) ?></li>
                  <li><?= $this->tag->linkTo(['campaign/dailyreport', 'Daily Report']) ?></li> -->
                </ul>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Publisher <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><?= $this->tag->linkTo(['adspace/create', 'Create AdSpace']) ?></li>
                  <li><?= $this->tag->linkTo(['adspace/search', 'Search AdSpace']) ?></li>
                </ul>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Payment <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><?= $this->tag->linkTo(['confirm/create', 'Confirmation']) ?></li>
                  <li><?= $this->tag->linkTo(['confirm/search', 'Search Payment']) ?></li>
                </ul>
              </li>
            </ul>
            <?php }else{ ?><?php $menus = ['Home' => null, 'About' => 'about', 'Policy' => 'policy', 'Terms' => 'terms']; ?><ul class="nav navbar-nav">
                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Compay <b class="caret"></b></a>
                    <ul class="dropdown-menu"><?php foreach ($menus as $key => $value) { ?>
                        <?php if ($value == $this->dispatcher->getControllerName()) { ?>
                        <li class="active"><?= $this->tag->linkTo([$value, $key]) ?></li>
                        <?php } else { ?>
                        <li><?= $this->tag->linkTo([$value, $key]) ?></li>
                        <?php } ?><?php } ?></ul>
                  </li>

                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Campaign <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><?= $this->tag->linkTo(['campaign/create', 'Create Campaign']) ?></li>
                    <li><?= $this->tag->linkTo(['campaign/search', 'Search Campaign']) ?></li>
                    <li><?= $this->tag->linkTo(['campaign/dashboardcamp', 'Dashboard Campaign']) ?></li>
                    <li><?= $this->tag->linkTo(['campaign/dailyreport', 'Daily Report']) ?></li>
                    <!-- <li><?= $this->tag->linkTo(['campaign/dashboardcamp', 'Dashboard Campaign']) ?></li>
                    <li><?= $this->tag->linkTo(['campaign/dailyreport', 'Daily Report']) ?></li> -->
                  </ul>
                </li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Publisher <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><?= $this->tag->linkTo(['adspace/create', 'Create AdSpace']) ?></li>
                    <li><?= $this->tag->linkTo(['adspace/search', 'Search AdSpace']) ?></li>
                  </ul>
                </li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Payment <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><?= $this->tag->linkTo(['confirm/create', 'Confirmation']) ?></li>
                    <li><?= $this->tag->linkTo(['confirm/search', 'Search Payment']) ?></li>
                  </ul>
                </li>
              </ul>
              <?php } ?>


          <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><?= $this->auth->getName() ?> <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><?= $this->tag->linkTo(['users/accountInfo', 'Account Information']) ?></li>
                <li><?= $this->tag->linkTo(['users/changePassword', 'Change Password']) ?></li>
                <li><a>Your Balance <?php echo $usersaldo ?> </a> </li>
              </ul>
            </li>
            <li><?= $this->tag->linkTo(['session/logout', 'Logout']) ?></li>
          </ul>
        </div>
</nav>

<section class="no-margin">
<!-- <div class="container"> -->

    <?= $this->getContent() ?>
    <!-- <hr> -->

<!-- </div> -->
</section>

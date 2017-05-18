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
              <?= $this->tag->linkTo(['', 'GamanAds', 'class' => 'navbar-brand']) ?>
        </div>
        <div class="collapse navbar-collapse navbar-right">
          <?php if($userlevel == 1) { ?>
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Compay<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><?= $this->tag->linkTo(['', 'Home']) ?></li>
                <li><?= $this->tag->linkTo(['about/', 'About']) ?></li>
                <li><?= $this->tag->linkTo(['policy/', 'Policy']) ?></li>
                <li><?= $this->tag->linkTo(['terms/', 'Terms']) ?></li>
              </ul>
            </li>

            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">User & Access<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><?= $this->tag->linkTo(['users/', 'Users']) ?></li>
                <li><?= $this->tag->linkTo(['profiles/', 'Profiles']) ?></li>
                <li><?= $this->tag->linkTo(['permissions/', 'Permissions']) ?></li>
              </ul>
            </li>

            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Advertiser<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><?= $this->tag->linkTo(['campaign/create', 'Create Campaign']) ?></li>
                <li><?= $this->tag->linkTo(['campaign/search', 'Search Campaign']) ?></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Publisher<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><?= $this->tag->linkTo(['adspace/create', 'Create AdSpace']) ?></li>
                <li><?= $this->tag->linkTo(['adspace/search', 'Search AdSpace']) ?></li>
              </ul>
            </li>
          </ul>
          <?php }else{ ?>
            <ul class="nav navbar-nav"><?php $menus = ['Home' => '']; ?><?php $menusdropdown = ['About Us' => 'about', 'Privacy Policy' => 'policy', 'Terms & Conditions' => 'terms']; ?><?php $menusfaq = ['FAQ' => 'faq', 'Contact' => 'contact']; ?><?php foreach ($menus as $key => $value) { ?>
                <?php if ($value == $this->dispatcher->getControllerName()) { ?>
                <li class="active"><?= $this->tag->linkTo([$value, $key]) ?></li>
                <?php } else { ?>
                <li><?= $this->tag->linkTo([$value, $key]) ?></li>
                <?php } ?><?php } ?><li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Company <b class="caret"></b></a>
                <ul class="dropdown-menu"><?php foreach ($menusdropdown as $key => $value) { ?>
                    <?php if ($value == $this->dispatcher->getControllerName()) { ?>
                    <li class="active"><?= $this->tag->linkTo([$value, $key]) ?></li>
                    <?php } else { ?>
                    <li><?= $this->tag->linkTo([$value, $key]) ?></li>
                    <?php } ?><?php } ?></ul>
              </li>

              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Help <b class="caret"></b></a>
                <ul class="dropdown-menu"><?php foreach ($menusfaq as $key => $value) { ?>
                    <?php if ($value == $this->dispatcher->getControllerName()) { ?>
                    <li class="active"><?= $this->tag->linkTo([$value, $key]) ?></li>
                    <?php } else { ?>
                    <li><?= $this->tag->linkTo([$value, $key]) ?></li>
                    <?php } ?><?php } ?></ul>
              </li>

            </ul>
            <?php } ?>
            <ul class="nav navbar-nav navbar-right"><?php if (!(empty($logged_in))) { ?>
              <li><?= $this->tag->linkTo(['users', 'Users Panel']) ?></li>
              <li><?= $this->tag->linkTo(['session/logout', 'Logout']) ?></li>
              <?php } else { ?>
              <li><?= $this->tag->linkTo(['session/signup', 'Sign Up']) ?></li>
              <li><?= $this->tag->linkTo(['session/login', 'Login']) ?></li>
              <?php } ?>
            </ul>
          </div>
          <!-- <div class="nav-collapse">

          </div> -->
</nav>

<!-- </header> -->

<section class="no-margin">

<!-- <div class="container"> -->

    <?= $this->getContent() ?>
    <hr>

<!-- </div> -->

</section>

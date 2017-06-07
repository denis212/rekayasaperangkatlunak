<?php if($posisi =='out'){ ?>
  <!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- <title>Home | Corlate</title> -->

    <!-- core CSS -->

    <?= $this->tag->stylesheetLink('https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css') ?>
    <!-- { stylesheet_link('css/font-awesome.min.css') }} -->
    <?= $this->tag->stylesheetLink('https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css') ?>
    <?= $this->tag->stylesheetLink('css/animate.min.css') ?>
    <?= $this->tag->stylesheetLink('css/prettyPhoto.css') ?>
    <?= $this->tag->stylesheetLink('css/main.css') ?>
    <?= $this->tag->stylesheetLink('css/responsive.css') ?>
    <!-- <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet"> -->

    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
  </head><!--/head-->

  <body class="homepage">

    <?= $this->getContent() ?>

    <section id="bottom">
      <div class="container wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
        <div class="row">
          <div class="col-md-2 col-sm-6">
            <div class="widget">
              <h3>Advertisers</h3>
              <ul>
                <!-- <li><a href="index.php?r=site/advertiser">Ad Format</a></li> -->
                <li><?= $this->tag->linkTo(['#', 'Ad Format']) ?></li>

                <li><?= $this->tag->linkTo(['#', 'Targeting Features']) ?></li>
              </ul>
            </div>
          </div><!--/.col-md-3-->

          <div class="col-md-2 col-sm-6">
            <div class="widget">
              <h3>Publishers</h3>
              <ul>
                <li><?= $this->tag->linkTo(['#', 'Ad Format']) ?></li>
                <!-- <li><a href="#"></a></li> -->
              </ul>
            </div>
          </div><!--/.col-md-3-->

          <div class="col-md-2 col-sm-6">
            <div class="widget">
              <h3>Company</h3>
              <ul>
                <li><?= $this->tag->linkTo(['about', 'About us']) ?></li>
                <!-- <li><a href="#">We are hiring</a></li> -->
                <!-- <li><a href="#">Meet the team</a></li> -->
                <!-- <li><a href="#">Copyright</a></li> -->
                <li><?= $this->tag->linkTo(['terms', 'Terms and Conditions']) ?></li>
                <li><?= $this->tag->linkTo(['policy', 'Privacy policy']) ?></li>
              </ul>
            </div>
          </div><!--/.col-md-3-->

          <div class="col-md-2 col-sm-6">
            <div class="widget">
              <h3>Help</h3>
              <ul>
                <li><?= $this->tag->linkTo(['faq', 'FAQ']) ?></li>
                <li><?= $this->tag->linkTo(['contact', 'Contact']) ?></li>
                <!-- <li><a href="#">Forum</a></li>
                <li><a href="#">Documentation</a></li>
                <li><a href="#">Refund policy</a></li>
                <li><a href="#">Ticket system</a></li>
                <li><a href="#">Billing system</a></li> -->
              </ul>
            </div>

          </div>
          <!--/.col-md-3-->

          <div class="col-md-2 col-sm-6">
            <div class="widget">
              <h3>Stay In Touch</h3>
              <ul>
                <li><a href="#"><i class="fa fa-facebook"> Facebook</i></a></li>
                <li><a href="#"><i class="fa fa-twitter">Twitter</i></a></li>
                <li><a href="#"><i class="fa fa-linkedin"> LinkedIn</i></a></li>
                <li><a href="#"><i class="fa fa-skype"> Skype</i></a></li>
              </ul>
            </div>
          </div>
          <!--/.col-md-3-->
        </div>
      </div>
    </section><!--/#bottom-->

    <footer id="footer" class="midnight-blue">
      <div class="container">
        <p class="pull-left" style="color:white;">&copy; GamanAds 2016 - <?= date('Y') ?></p>

        <p class="pull-right" style="color:white;"</p>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-sm-4 col-xs-4">
              <div class="top-number"><p><i class="fa fa-phone-square"> +62 21 5010 6377 / Fax : +62 21 5010 6378 </i></p></div>
            </div>
            <div class="col-sm-5 col-xs-10">
              <div class="social">
                <ul class="social-share">
                  <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                  <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                  <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                  <li><a href="#"><i class="fa fa-skype"></i></a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </footer>
    </body>
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="js/jquery.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/wow.min.js"></script> -->

    <!-- Calling jquery first -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script language="JavaScript" type="text/javascript" src="js/jquery.js"></script>
    <script language="JavaScript" type="text/javascript" src="js/bootstrap.min.js"></script>
    <!-- Carousel -->
    <script language="JavaScript" type="text/javascript">
    $(document).ready(function(){
      $('.carousel').carousel({
        interval: 8000
      })
    });
    </script>
    <script src="js/main.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/wow.min.js"></script>

    </html>
    <?php } else if($posisi == 'in') { ?>
      <!-- REGION ADMIN LTE -->
      <!DOCTYPE html>
      <html>
      <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>GAMANADS | Dashboard</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <!-- <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"> -->
        <?= $this->tag->stylesheetLink('bootstrap/css/bootstrap.min.css') ?>
        <!-- Font Awesome -->
        <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css"> -->
        <!-- <?= $this->tag->stylesheetLink('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css') ?> -->
        <?= $this->tag->stylesheetLink('https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css') ?>
        <!-- Ionicons -->
        <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css"> -->
        <?= $this->tag->stylesheetLink('https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css') ?>
        <!-- Theme style -->
        <!-- <link rel="stylesheet" href="css/AdminLTE.min.css"> -->
        <?= $this->tag->stylesheetLink('css/AdminLTE.min.css') ?>
        <!-- AdminLTE Skins. Choose a skin from the css/skins
        folder instead of downloading all of them to reduce the load. -->
        <!-- <link rel="stylesheet" href="css/skins/_all-skins.min.css"> -->
        <?= $this->tag->stylesheetLink('css/skins/_all-skins.min.css') ?>
        <!-- Morris chart -->
        <!-- <link rel="stylesheet" href="plugins/morris/morris.css"> -->
        <?= $this->tag->stylesheetLink('plugins/morris/morris.css') ?>
        <!-- jvectormap -->
        <!-- <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css"> -->
        <?= $this->tag->stylesheetLink('plugins/jvectormap/jquery-jvectormap-1.2.2.css') ?>
        <!-- Date Picker -->
        <!-- <link rel="stylesheet" href="plugins/datepicker/datepicker3.css"> -->
        <?= $this->tag->stylesheetLink('plugins/datepicker/datepicker3.css') ?>
        <!-- Daterange picker -->
        <!-- <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css"> -->
        <?= $this->tag->stylesheetLink('plugins/daterangepicker/daterangepicker.css') ?>
        <!-- bootstrap wysihtml5 - text editor -->
        <!-- <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css"> -->
        <?= $this->tag->stylesheetLink('plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css') ?>

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Google Font -->
        <!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic"> -->
        <?= $this->tag->stylesheetLink('https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic') ?>
      </head>
      <body class="hold-transition skin-blue sidebar-mini">

        <div class="wrapper">

          <header class="main-header">
            <!-- Logo -->

            <?php $action = $this->router->getActionName();
            $ctrlname = $this->router->getControllerName();
            ?>

            <?php echo $this->tag->linkTo(['campaign/dashboardcamp', '<span class="logo-mini"><b>G</b>MDs</span><span class="logo-lg"><b>Gaman</b>Ads</span>',
            'class'=>'logo']) ?>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top">
              <!-- Sidebar toggle button-->
              <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="sr-only">Toggle navigation</span>
              </a>

              <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                  <!-- User Account: style can be found in dropdown.less -->
                  <li class="dropdown user user-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <!-- <img src="images/user2-160x160.jpg" class="user-image" alt="User Image"> -->
                      <?php echo $this->tag->image(['images/avatar5.png', 'class'=>'user-image', 'alt' =>'User Image']) ?>
                      <span class="hidden-xs"><?= $this->auth->getName() ?></span>
                    </a>
                    <ul class="dropdown-menu">
                      <!-- User image -->
                      <li class="user-header">
                        <?php echo $this->tag->image(['images/avatar5.png', 'class'=>'img-circle', 'alt' =>'User Image']) ?>
                        <p>
                          <?= $this->auth->getName() ?>
                        </p>
                        <p>Your Balance <?php echo $usersaldo ?> </p>
                      </li>
                      <!-- Menu Footer-->
                      <li class="user-footer">
                        <div class="pull-left">
                          <!-- <a href="#" class="btn btn-default btn-flat">Account Information</a> -->
                          <?php echo $this->tag->linkTo(['users/accountInfo', 'Account Information', 'class'=>'btn btn-default btn-flat']) ?>

                        </div>
                        <div class="pull-right">
                          <!-- <a href="#" class="btn btn-default btn-flat">Sign out</a> -->
                          <?php echo $this->tag->linkTo(['session/logout', 'Sign out', 'class'=>'btn btn-default btn-flat']) ?>
                        </div>
                      </li>
                    </ul>
                  </li>
                  <!-- Control Sidebar Toggle Button -->
                  <!-- <li>
                  <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                </li> -->
              </ul>
            </div>
          </nav>
        </header>
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="main-sidebar">
          <!-- sidebar: style can be found in sidebar.less -->
          <section class="sidebar">
            <!-- Sidebar user panel -->
            <div class="user-panel">
              <div class="pull-left image">
                <!-- <img src="images/user2-160x160.jpg" class="img-circle" alt="User Image"> -->
                <?php echo $this->tag->image(['images/avatar5.png', 'class'=>'img-circle', 'alt' =>'User Image']) ?>
              </div>
              <div class="pull-left info">
                <p><?= $this->auth->getName() ?></p><br>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
              </div>
            </div>
            <!-- search form -->
            <!-- <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
            <input type="text" name="q" class="form-control" placeholder="Search...">
            <span class="input-group-btn">
            <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
          </button>
        </span>
      </div>
    </form> -->
    <!-- /.search form -->
    <!-- sidebar menu: : style can be found in sidebar.less -->

    <ul class="sidebar-menu" data-widget="tree">
      <br>
      <li class="header">MAIN NAVIGATION</li>
      <!-- <php if($userlevel == 1) { ?> -->
      <li class="<?php if($ctrlname == "campaign" && $action == "dashboardcamp" ) {echo "active treeview";} else {echo "treeview";} ?>">
        <a href="#">
          <i class="fa fa-dashboard"></i> <span>Dashboard</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li class="<?php if($action == "dashboardcamp") { echo "active"; $here = 1; } else { echo null; } ?>">
            <?php echo $this->tag->linkTo(['campaign/dashboardcamp', '<i class="fa fa-area-chart"></i> Dashboard Campaign']) ?>
          </li>
        </ul>
      </li>
      <!-- user & access -->
      <?php if($userlevel == 1) {?>
        <li class="<?php if(($action == "" || $action == "index" || $action == "search"|| $action == "create")
        && ($ctrlname == "users" || $ctrlname == "profiles" ||  $ctrlname == "permissions"))
        {echo "active treeview";} else {echo "treeview";} ?>">
        <a href="#">
          <i class="fa fa-files-o"></i>
          <span>User & Access</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li class="<?php echo ($ctrlname == "users") ? "active" : null; ?>"> <?php echo $this->tag->linkTo(['users', '<i class="fa fa-user"></i> Users']) ?></li>
          <li class="<?php echo ($ctrlname == "profiles") ? "active" : null; ?>"> <?php echo $this->tag->linkTo(['profiles', '<i class="fa fa-address-card-o "></i> Profiles']) ?></li>
          <li class="<?php echo ($ctrlname == "permissions") ? "active" : null; ?>"> <?php echo $this->tag->linkTo(['permissions', '<i class="fa fa-handshake-o"></i> Permissions']) ?></li>
        </ul>
      </li>
      <?php } ?>
      <!-- advertisers -->
      <li class="<?php if($ctrlname == "campaign" && ($action == "create" || $action == "search" || $action == "dailyreport")) {echo "active treeview";} else {echo "treeview";} ?>">
        <a href="#">
          <i class="fa fa-edit"></i>
          <span>Advertiser</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li class="<?php echo ($action == "create") ? "active" : null; ?>"><?= $this->tag->linkTo(['campaign/create', '<i class="fa fa-plus-circle"></i> Create Campaign']) ?></li>
          <li class="<?php echo ($action == "search") ? "active" : null; ?>"><?= $this->tag->linkTo(['campaign/search', '<i class="fa fa-list-ul"></i> List Campaign']) ?></li>
          <li class="<?php echo ($action == "dailyreport") ? "active" : null; ?>"><?= $this->tag->linkTo(['campaign/dailyreport', '<i class="fa fa-book"></i> Daily Report']) ?></li>
        </ul>
      </li>
      <!-- publisher -->
      <li class="<?php if(($ctrlname == "adspace") && ($action == "create" || $action == "search")) {echo "active treeview";} else {echo "treeview";} ?>">
        <a href="#">
          <i class="fa fa-laptop"></i>
          <span>Publisher</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li class="<?php echo ($action == "create") ? "active" : null; ?>"><?= $this->tag->linkTo(['adspace/create', '<i class="fa fa-plus-circle"></i> Create Adspace']) ?></li>
          <li class="<?php echo ($action == "search") ? "active" : null; ?>"><?= $this->tag->linkTo(['adspace/search', '<i class="fa fa-list-ul"></i> List Adspace']) ?></li>
        </ul>
      </li>
      <!-- Payment -->
      <li class="<?php if(($ctrlname == "confirm") && ($action == "create" || $action == "search")) {echo "active treeview";} else {echo "treeview";} ?>">
        <a href="#">
          <i class="fa fa-credit-card"></i>
          <span>Payment</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li class="<?php echo ($action == "create") ? "active" : null; ?>"><?= $this->tag->linkTo(['confirm/create', '<i class="fa fa-check-square-o"></i> Confirmation']) ?></li>
          <li class="<?php echo ($action == "search") ? "active" : null; ?>"><?= $this->tag->linkTo(['confirm/search', '<i class="fa fa-list-ul"></i> List Payment']) ?></li>
        </ul>
      </li>
      <!-- change password -->
      <li class="<?php if($ctrlname == "users" && ($action == "accountInfo" || $action == "changePassword")) {echo "active treeview";} else {echo "treeview";} ?>">
        <a href="#">
          <i class="fa fa-cogs"></i>
          <span>Account Setting</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li class="<?php echo ($action == "accountInfo") ? "active" : null; ?>"><?= $this->tag->linkTo(['users/accountInfo', '<i class="fa fa-user-secret"></i> Account Information']) ?></li>
          <li class="<?php echo ($action == "changePassword") ? "active" : null; ?>"><?= $this->tag->linkTo(['users/changePassword', '<i class="fa fa-key"></i> Change Password']) ?></li>
        </ul>
      </li>
    </ul>
  </section>
  <!-- /.sidebar -->
</aside>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

  <?= $this->getContent() ?>

</div>
<!-- /.content-wrapper -->
<footer class="main-footer">
  <div class="pull-right hidden-xs">
    <b>Version</b> 2.4.0
  </div>
  <strong>Copyright &copy; 2016-<?php echo date("Y") ?> <a href="https://mobiwin.co.id">Mobiwin Corp.</a></strong> All rights
  reserved.
</footer>

<!-- Control Sidebar -->
<aside class="control-sidebar control-sidebar-dark">
  <!-- Create the tabs -->
  <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
    <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
    <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
  </ul>
  <!-- Tab panes -->
  <div class="tab-content">
    <!-- Home tab content -->
    <div class="tab-pane" id="control-sidebar-home-tab">
      <h3 class="control-sidebar-heading">Recent Activity</h3>
      <ul class="control-sidebar-menu">
        <li>
          <a href="javascript:void(0)">
            <i class="menu-icon fa fa-birthday-cake bg-red"></i>

            <div class="menu-info">
              <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

              <p>Will be 23 on April 24th</p>
            </div>
          </a>
        </li>
        <li>
          <a href="javascript:void(0)">
            <i class="menu-icon fa fa-user bg-yellow"></i>

            <div class="menu-info">
              <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>

              <p>New phone +1(800)555-1234</p>
            </div>
          </a>
        </li>
        <li>
          <a href="javascript:void(0)">
            <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

            <div class="menu-info">
              <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>

              <p>nora@example.com</p>
            </div>
          </a>
        </li>
        <li>
          <a href="javascript:void(0)">
            <i class="menu-icon fa fa-file-code-o bg-green"></i>

            <div class="menu-info">
              <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

              <p>Execution time 5 seconds</p>
            </div>
          </a>
        </li>
      </ul>
      <!-- /.control-sidebar-menu -->

      <h3 class="control-sidebar-heading">Tasks Progress</h3>
      <ul class="control-sidebar-menu">
        <li>
          <a href="javascript:void(0)">
            <h4 class="control-sidebar-subheading">
              Custom Template Design
              <span class="label label-danger pull-right">70%</span>
            </h4>

            <div class="progress progress-xxs">
              <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
            </div>
          </a>
        </li>
        <li>
          <a href="javascript:void(0)">
            <h4 class="control-sidebar-subheading">
              Update Resume
              <span class="label label-success pull-right">95%</span>
            </h4>

            <div class="progress progress-xxs">
              <div class="progress-bar progress-bar-success" style="width: 95%"></div>
            </div>
          </a>
        </li>
        <li>
          <a href="javascript:void(0)">
            <h4 class="control-sidebar-subheading">
              Laravel Integration
              <span class="label label-warning pull-right">50%</span>
            </h4>

            <div class="progress progress-xxs">
              <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
            </div>
          </a>
        </li>
        <li>
          <a href="javascript:void(0)">
            <h4 class="control-sidebar-subheading">
              Back End Framework
              <span class="label label-primary pull-right">68%</span>
            </h4>

            <div class="progress progress-xxs">
              <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
            </div>
          </a>
        </li>
      </ul>
      <!-- /.control-sidebar-menu -->

    </div>
    <!-- /.tab-pane -->
    <!-- Stats tab content -->
    <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
    <!-- /.tab-pane -->
    <!-- Settings tab content -->
    <div class="tab-pane" id="control-sidebar-settings-tab">
      <form method="post">
        <h3 class="control-sidebar-heading">General Settings</h3>

        <div class="form-group">
          <label class="control-sidebar-subheading">
            Report panel usage
            <input type="checkbox" class="pull-right" checked>
          </label>

          <p>
            Some information about this general settings option
          </p>
        </div>
        <!-- /.form-group -->

        <div class="form-group">
          <label class="control-sidebar-subheading">
            Allow mail redirect
            <input type="checkbox" class="pull-right" checked>
          </label>

          <p>
            Other sets of options are available
          </p>
        </div>
        <!-- /.form-group -->

        <div class="form-group">
          <label class="control-sidebar-subheading">
            Expose author name in posts
            <input type="checkbox" class="pull-right" checked>
          </label>

          <p>
            Allow the user to show his name in blog posts
          </p>
        </div>
        <!-- /.form-group -->

        <h3 class="control-sidebar-heading">Chat Settings</h3>

        <div class="form-group">
          <label class="control-sidebar-subheading">
            Show me as online
            <input type="checkbox" class="pull-right" checked>
          </label>
        </div>
        <!-- /.form-group -->

        <div class="form-group">
          <label class="control-sidebar-subheading">
            Turn off notifications
            <input type="checkbox" class="pull-right">
          </label>
        </div>
        <!-- /.form-group -->

        <div class="form-group">
          <label class="control-sidebar-subheading">
            Delete chat history
            <a href="javascript:void(0)" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
          </label>
        </div>
        <!-- /.form-group -->
      </form>
    </div>
    <!-- /.tab-pane -->
  </div>
</aside>
<!-- /.control-sidebar -->
<!-- Add the sidebar's background. This div must be placed
immediately after the control sidebar -->
<div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- jQuery 3.1.1 -->
<!-- <script src="plugins/jQuery/jquery-3.1.1.min.js"></script> -->
<?= $this->tag->javascriptInclude('plugins/jQuery/jquery-3.1.1.min.js') ?>
<!-- jQuery UI 1.11.4 -->
<!-- <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script> -->
<?= $this->tag->javascriptInclude('https://code.jquery.com/ui/1.11.4/jquery-ui.min.js') ?>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
$.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.7 -->
<!-- <script src="bootstrap/js/bootstrap.min.js"></script> -->
<?= $this->tag->javascriptInclude('bootstrap/js/bootstrap.min.js') ?>
<!-- Morris.js charts -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script> -->
<?= $this->tag->javascriptInclude('https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js') ?>
<!-- <script src="plugins/morris/morris.min.js"></script> -->
<?= $this->tag->javascriptInclude('plugins/morris/morris.min.js') ?>
<!-- Sparkline -->
<!-- <script src="plugins/sparkline/jquery.sparkline.min.js"></script> -->
<?= $this->tag->javascriptInclude('plugins/sparkline/jquery.sparkline.min.js') ?>
<!-- jvectormap -->
<!-- <script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script> -->
<?= $this->tag->javascriptInclude('plugins/jvectormap/jquery-jvectormap-1.2.2.min.js') ?>
<!-- <script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script> -->
<?= $this->tag->javascriptInclude('plugins/jvectormap/jquery-jvectormap-world-mill-en.js') ?>
<!-- jQuery Knob Chart -->
<!-- <script src="plugins/knob/jquery.knob.js"></script> -->
<?= $this->tag->javascriptInclude('plugins/knob/jquery.knob.js') ?>
<!-- daterangepicker -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script> -->
<?= $this->tag->javascriptInclude('https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js') ?>
<!-- <script src="plugins/daterangepicker/daterangepicker.js"></script> -->
<?= $this->tag->javascriptInclude('plugins/daterangepicker/daterangepicker.js') ?>
<!-- datepicker -->
<!-- <script src="plugins/datepicker/bootstrap-datepicker.js"></script> -->
<?= $this->tag->javascriptInclude('plugins/datepicker/bootstrap-datepicker.js') ?>
<!-- Bootstrap WYSIHTML5 -->
<!-- <script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script> -->
<?= $this->tag->javascriptInclude('plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js') ?>
<!-- Slimscroll -->
<!-- <script src="plugins/slimScroll/jquery.slimscroll.min.js"></script> -->
<?= $this->tag->javascriptInclude('plugins/slimScroll/jquery.slimscroll.min.js') ?>
<!-- FastClick -->
<!-- <script src="plugins/fastclick/fastclick.js"></script> -->
<?= $this->tag->javascriptInclude('plugins/fastclick/fastclick.js') ?>
<!-- AdminLTE App -->
<!-- <script src="js/adminlte.min.js"></script> -->
<?= $this->tag->javascriptInclude('js/adminlte.min.js') ?>

</body>
</html>

<?php }else { ?>

  <!DOCTYPE html>
  <html>
  <head>
    <meta charset="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
  </head>
  <body>

    <div class="wrap">
      <div class="container">
        <?= $this->getContent() ?>
      </div>
    </div>
  </body>
  </html>

  <?php } ?>

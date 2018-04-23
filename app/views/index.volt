<?php if($posisi =='out'){ ?>
  <!DOCTYPE html>
  <html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <title>AdminLTE 2 | Log in</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    {{ stylesheet_link('bootstrap/css/bootstrap.min.css')}}
    <!-- Font Awesome -->
    {{ stylesheet_link('https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css') }}
    <!-- Ionicons -->
    {{ stylesheet_link('https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css')}}

    {{ stylesheet_link('css/AdminLTE.min.css')}}

    {{ stylesheet_link('plugins/iCheck/square/blue.css')}}
    <!-- iCheck -->
      {{ stylesheet_link('https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic')}}
      <link rel="shortcut icon" href="images/ico/favicon.ico">
      <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
      <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
  </head>
  <body class="hold-transition login-page">
  <!-- <div class="login-box"> -->
    {{content()}}
    <!-- /.login-box-body -->
  <!-- </div> -->
  <!-- /.login-box -->

  <!-- jQuery 3.1.1 -->
  {{ javascript_include('plugins/jQuery/jquery-3.1.1.min.js') }}

  <!-- Bootstrap 3.3.7 -->
  {{ javascript_include('bootstrap/js/bootstrap.min.js') }}
  <!-- iCheck -->
  {{ javascript_include('plugins/iCheck/icheck.min.js') }}
  <script>
    $(function () {
      $('input').iCheck({
        checkboxClass: 'icheckbox_square-blue',
        radioClass: 'iradio_square-blue',
        increaseArea: '20%' // optional
      });
    });
  </script>
  </body>
  </html>
    <?php } else if($posisi == 'in') { ?>
      <!-- REGION ADMIN LTE -->
      <!DOCTYPE html>
      <html>
      <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>ADMINJPU | Dashboard</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        {{ stylesheet_link('bootstrap/css/bootstrap.min.css')}}
        {{ stylesheet_link('https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css') }}
        {{ stylesheet_link('https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css')}}
        {{ stylesheet_link('css/AdminLTE.min.css')}}
        {{ stylesheet_link('css/skins/_all-skins.min.css')}}
        {{ stylesheet_link('plugins/morris/morris.css')}}
        {{ stylesheet_link('plugins/jvectormap/jquery-jvectormap-1.2.2.css')}}
        {{ stylesheet_link('plugins/datepicker/datepicker3.css')}}
        {{ stylesheet_link('plugins/daterangepicker/daterangepicker.css')}}
        {{ stylesheet_link('plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css')}}
        {{ stylesheet_link('https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic')}}
      </head>
      <body class="hold-transition skin-blue sidebar-mini">

        <div class="wrapper">

          <header class="main-header">
            <!-- Logo -->

            <?php $action = $this->router->getActionName();
            $ctrlname = $this->router->getControllerName();
            ?>

            <?php echo $this->tag->linkTo(['#', '<span class="logo-mini"><b></b>Doc</span><span class="logo-lg"><b>CMS</b>JPU</span>',
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
                      <span class="hidden-xs">{{ auth.getName() }}</span>
                    </a>
                    <ul class="dropdown-menu">
                      <!-- User image -->
                      <li class="user-header">
                        <?php echo $this->tag->image(['images/avatar5.png', 'class'=>'img-circle', 'alt' =>'User Image']) ?>
                        <p>
                          {{ auth.getName() }}
                        </p>
                      </li>
                      <!-- Menu Footer-->
                      <li class="user-footer">
                        <div class="pull-left">
                          <!-- <a href="#" class="btn btn-default btn-flat">Account Information</a> -->
                          <?php echo $this->tag->linkTo(['users/changePassword', 'Change Password', 'class'=>'btn btn-default btn-flat']) ?>

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
                <p>{{ auth.getName() }}</p><br>
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
      <!-- <li class="<php if($ctrlname == "campaign" && $action == "dashboardcamp" ) {echo "active treeview";} else {echo "treeview";} ?>">
        <a href="#">
          <i class="fa fa-dashboard"></i> <span>Dashboard</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li class="<php if($action == "dashboardcamp") { echo "active"; $here = 1; } else { echo null; } ?>">
            <php echo $this->tag->linkTo(['campaign/dashboardcamp', '<i class="fa fa-area-chart"></i> Dashboard Campaign']) ?>
          </li>
        </ul>
      </li> -->

      <!-- Referal / super agen -->
  <?php if(($userlevel == 1) || ($userlevel == 10)|| ($userlevel == 4)) {?>
      <li class="<?php if(($ctrlname == "users" || $ctrlname == "confirm" ) && ($action == "createref" || $action == "listref"|| $action == "viewres"|| $action == "dashref"|| $action == "rptreferal"|| $action == "editref"|| $action == "deleteref")) {echo "active treeview";} else {echo "treeview";} ?>">
        <a href="#">
          <i class="fa fa-user-secret"></i>
          <span>Referal / Super Agen</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <?php if($userlevel != 4) {?>
          <li class="<?php echo ($action == "dashref") ? "active" : null; ?>">{{ link_to('users/dashref', '<i class="fa fa-tachometer"></i> Dashboard Referal ') }}</li>
          <li class="<?php echo ($action == "rptreferal") ? "active" : null; ?>">{{ link_to('confirm/rptreferal', '<i class="fa fa-tachometer"></i> Reporting Referal ') }}</li>
          <li class="<?php echo ($action == "createref") ? "active" : null; ?>">{{ link_to('users/createref', '<i class="fa fa-plus-circle"></i> Tambah Referal ') }}</li>
          <li class="<?php echo ($action == "listref") ? "active" : null; ?>">{{ link_to('users/listref', '<i class="fa fa-list-ul"></i> List Referal ') }}</li>
          <li class="<?php echo ($action == "viewres"||$action == "deleteref"||$action == "editref") ? "active" : null; ?>">{{ link_to('users/viewres', '<i class="fa fa-list-ul"></i> List Reseller ') }}</li>
          <?php }else { ?>
          <li class="<?php echo ($action == "dashref") ? "active" : null; ?>">{{ link_to('users/dashref', '<i class="fa fa-tachometer"></i> Dashboard Referal ') }}</li>
          <li class="<?php echo ($action == "rptreferal") ? "active" : null; ?>">{{ link_to('confirm/rptreferal', '<i class="fa fa-tachometer"></i> Reporting Referal ') }}</li>
          <li class="<?php echo ($action == "viewres"||$action == "deleteref"||$action == "editref") ? "active" : null; ?>">{{ link_to('users/viewres', '<i class="fa fa-list-ul"></i> List Reseller ') }}</li>
          <?php } ?>
        </ul>
      </li>
    <?php } ?>

    <?php if(($userlevel == 1) || ($userlevel == 8)|| ($userlevel == 7)|| ($userlevel == 5)) {?>
      <!-- Reseller / Agen -->
      <li class="<?php if(($ctrlname == "users" || $ctrlname == "confirm" ) && ($action == "cekreferal" || $action == "insreseller"|| $action == "listactive"
                  || $action == "aktivasi"|| $action == "verifmanual"|| $action == "search"|| $action == "create"
                  || $action == "edit"|| $action == "listverif"|| $action == "listtempreseller"|| $action == "edittempres"
                  || $action == "deletetempres"|| $action == "dashres"|| $action == "rptreseller")) {echo "active treeview";} else {echo "treeview";} ?>">
        <a href="#">
          <i class="fa fa-users"></i>
          <span>Reseller / Agen</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>

        <ul class="treeview-menu">
        <?php if($userlevel == 8) {?>
          <li class="<?php echo ($action == "listverif" || $action == "verifmanual" ) ? "active" : null; ?>">{{ link_to('users/listverif', '<i class="fa fa-list-ul"></i> List Verifikasi Reseller') }}</li>
        <?php } ?>

        <?php if($userlevel == 7) {?>
          <li class="<?php echo ($action == "listactive") ? "active" : null; ?>">{{ link_to('users/listactive', '<i class="fa fa-list-ul"></i> List Aktivasi Reseller') }}</li>
        <?php } ?>

        <?php if($userlevel == 5) {?>
          <li class="<?php echo ($action == "dashres") ? "active" : null; ?>">{{ link_to('users/dashres', '<i class="fa fa-tachometer"></i> Dashboard Reseller') }}</li>
          <li class="<?php echo ($action == "rptreseller") ? "active" : null; ?>">{{ link_to('confirm/rptreseller', '<i class="fa fa-tachometer"></i> Reporting Reseller') }}</li>
        <?php } ?>

        <?php if(($userlevel != 8) && ($userlevel != 7)&& ($userlevel != 5)) { ?>
          <li class="<?php echo ($action == "dashres") ? "active" : null; ?>">{{ link_to('users/dashres', '<i class="fa fa-tachometer"></i> Dashboard Reseller') }}</li>
          <li class="<?php echo ($action == "rptreseller") ? "active" : null; ?>">{{ link_to('confirm/rptreseller', '<i class="fa fa-tachometer"></i> Reporting Reseller') }}</li>
          <li class="<?php echo ($action == "listverif" || $action == "verifmanual" ) ? "active" : null; ?>">{{ link_to('users/listverif', '<i class="fa fa-list-ul"></i> List Verifikasi Reseller') }}</li>
          <li class="<?php echo ($action == "cekreferal") ? "active" : null; ?>">{{ link_to('users/cekreferal', '<i class="fa fa-plus-circle"></i> Tambah Reseller ') }}</li>
          <li class="<?php echo ($action == "listactive") ? "active" : null; ?>">{{ link_to('users/listactive', '<i class="fa fa-list-ul"></i> List Aktivasi Reseller') }}</li>
          <li class="<?php echo ($action == "listtempreseller" || $action == "edittempres" || $action == "deletetempres") ? "active" : null; ?>">{{ link_to('users/listtempreseller', '<i class="fa fa-list-ul"></i> List Data Reseller Sementara') }}</li>
        <?php } ?>
        </ul>
      </li>
    <?php } ?>

    <?php if(($userlevel == 1) || ($userlevel == 5)|| ($userlevel == 7)|| ($userlevel == 8)) {?>
      <!-- halaman confirmation -->
      <li class="<?php if($ctrlname == "confirm" && ($action == "create" || $action == "reqdeposit"|| $action == "search")) {echo "active treeview";} else {echo "treeview";} ?>">
        <a href="#">
          <i class="fa fa-money"></i>
          <span>Deposit & Confirmation</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <?php if(($userlevel == 7) || ($userlevel == 8)) {?>
          <li class="<?php echo ($action == "search") ? "active" : null; ?>">{{ link_to('confirm/search', '<i class="fa fa-check-square-o"></i> Approval Confirmation ') }}</li>
        <?php }else { ?>
          <li class="<?php echo ($action == "create") ? "active" : null; ?>">{{ link_to('confirm/create', '<i class="fa fa-plus-circle"></i> Confirmation') }}</li>
          <li class="<?php echo ($action == "reqdeposit") ? "active" : null; ?>">{{ link_to('confirm/reqdeposit', '<i class="fa fa-plus-circle"></i> Request Deposit ') }}</li>
          <?php if($userlevel != 5){ ?>
          <li class="<?php echo ($action == "search") ? "active" : null; ?>">{{ link_to('confirm/search', '<i class="fa fa-check-square-o"></i> Approval Confirmation ') }}</li>
          <?php } ?>
        <?php } ?>
        </ul>
      </li>
  <?php } ?>

<?php if(($userlevel == 5)) {?>
      <li class="<?php if($ctrlname == "confirm" && ($action == "listorder" || $action == "beli")) {echo "active treeview";} else {echo "treeview";} ?>">
        <a href="#">
          <i class="fa fa-shopping-cart"></i>
          <span>Penjualan Akun</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li class="<?php echo ($action == "listorder" || $action == "beli") ? "active" : null; ?>">{{ link_to('confirm/listorder', '<i class="fa fa-shopping-basket"></i> Order Akun') }}</li>
        </ul>
      </li>
<?php } ?>

<?php if($userlevel == 1) {?>
      <li class="<?php if($ctrlname == "accesspoint" && ($action == "create" || $action == "edit"|| $action == "search"|| $action == "view")) {echo "active treeview";} else {echo "treeview";} ?>">
        <a href="#">
          <i class="fa fa-wifi"></i>
          <span>Access Point</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li class="<?php echo ($action == "create" || $action == "edit") ? "active" : null; ?>">{{ link_to('accesspoint/create', '<i class="fa fa-plus-circle"></i> Create Access Point') }}</li>
          <li class="<?php echo ($action == "search") ? "active" : null; ?>">{{ link_to('accesspoint/search', '<i class="fa fa-list-ul"></i> List Access Point ') }}</li>

        </ul>
      </li>
<?php } ?>

<?php if(($userlevel == 1) || ($userlevel == 6)) {?>
      <li class="<?php if($ctrlname == "confirm" && ($action == "createloopakun")) {echo "active treeview";} else {echo "treeview";} ?>">
        <a href="#">
          <i class="fa fa-address-card-o"></i>
          <span>Generate Password Wifi.Id</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li class="<?php echo ($action == "createloopakun") ? "active" : null; ?>">{{ link_to('confirm/createloopakun', '<i class="fa fa-magic"></i> Generate Akun') }}</li>
        </ul>
      </li>
<?php } ?>

<!-- <php if(($userlevel == 1) || ($userlevel == 6)) {?>
      <li class="<php if($ctrlname == "confirm" && ($action == "uploadexc")) {echo "active treeview";} else {echo "treeview";} ?>">
        <a href="#">
          <i class="fa fa-file-excel-o"></i>
          <span>Import CSV Aktivasi Akun</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li class="<php echo ($action == "uploadexc") ? "active" : null; ?>">{{ link_to('confirm/uploadexc', '<i class="fa fa-upload"></i> Import CSV') }}</li>
        </ul>
      </li>
  <php } ?>

<php if(($userlevel == 1) || ($userlevel == 6)) {?>
      <li class="<php if($ctrlname == "confirm" && ($action == "orderlistdwn")) {echo "active treeview";} else {echo "treeview";} ?>">
        <a href="#">
          <i class="fa fa-file-excel-o"></i>
          <span>Export CSV List Akun</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li class="<php echo ($action == "orderlistdwn") ? "active" : null; ?>">{{ link_to('confirm/orderlistdwn', '<i class="fa fa-download"></i> Export CSV') }}</li>
        </ul>
      </li>
  <php } ?> -->
      <!-- user & access -->
      <?php if($userlevel == 1) {?>
        <li class="<?php if(($action == "" || $action == "index" || $action == "search"|| $action == "create")
        && ($ctrlname == "users" || $ctrlname == "profiles" ||  $ctrlname == "permissions"))
        {echo "active treeview";} else {echo "treeview";} ?>">
        <a href="#">
          <i class="fa fa-user-times"></i>
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

      <?php if($userlevel == 1) {?>
        <li class="<?php if(($action == "" || $action == "index" || $action == "search"|| $action == "create")
        && ($ctrlname == "users" || $ctrlname == "profiles" ||  $ctrlname == "permissions"))
        {echo "active treeview";} else {echo "treeview";} ?>">
        <a href="#">
          <i class="fa fa-user-times"></i>
          <span>Create Table Penjualan</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li class="<?php echo ($ctrlname == "hit") ? "active" : null; ?>"> <?php echo $this->tag->linkTo(['hit/penjualan', '<i class="fa fa-user"></i> Create']) ?></li>
        </ul>
      </li>
      <?php } ?>
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
          <li class="<?php echo ($action == "changePassword") ? "active" : null; ?>">{{ link_to('users/changePassword', '<i class="fa fa-key"></i> Change Password') }}</li>
        </ul>
      </li>
    </ul>
  </section>
  <!-- /.sidebar -->
</aside>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

  {{ content() }}

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
{{ javascript_include('plugins/jQuery/jquery-3.1.1.min.js') }}
<!-- jQuery UI 1.11.4 -->
<!-- <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script> -->
{{ javascript_include('https://code.jquery.com/ui/1.11.4/jquery-ui.min.js') }}
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
$.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.7 -->
<!-- <script src="bootstrap/js/bootstrap.min.js"></script> -->
{{ javascript_include('bootstrap/js/bootstrap.min.js') }}
<!-- Morris.js charts -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script> -->
{{ javascript_include('https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js') }}
<!-- <script src="plugins/morris/morris.min.js"></script> -->
{{ javascript_include('plugins/morris/morris.min.js') }}
<!-- Sparkline -->
<!-- <script src="plugins/sparkline/jquery.sparkline.min.js"></script> -->
{{ javascript_include('plugins/sparkline/jquery.sparkline.min.js') }}
<!-- jvectormap -->
<!-- <script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script> -->
{{ javascript_include('plugins/jvectormap/jquery-jvectormap-1.2.2.min.js') }}
<!-- <script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script> -->
{{ javascript_include('plugins/jvectormap/jquery-jvectormap-world-mill-en.js') }}
<!-- jQuery Knob Chart -->
<!-- <script src="plugins/knob/jquery.knob.js"></script> -->
{{ javascript_include('plugins/knob/jquery.knob.js') }}
<!-- daterangepicker -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script> -->
{{ javascript_include('https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js') }}
<!-- <script src="plugins/daterangepicker/daterangepicker.js"></script> -->
{{ javascript_include('plugins/daterangepicker/daterangepicker.js') }}
<!-- datepicker -->
<!-- <script src="plugins/datepicker/bootstrap-datepicker.js"></script> -->
{{ javascript_include('plugins/datepicker/bootstrap-datepicker.js') }}
<!-- Bootstrap WYSIHTML5 -->
<!-- <script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script> -->
{{ javascript_include('plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js') }}
<!-- Slimscroll -->
<!-- <script src="plugins/slimScroll/jquery.slimscroll.min.js"></script> -->
{{ javascript_include('plugins/slimScroll/jquery.slimscroll.min.js') }}
<!-- FastClick -->
<!-- <script src="plugins/fastclick/fastclick.js"></script> -->
{{ javascript_include('plugins/fastclick/fastclick.js') }}
<!-- AdminLTE App -->
<!-- <script src="js/adminlte.min.js"></script> -->
{{ javascript_include('js/adminlte.min.js') }}

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
        {{ content() }}
      </div>
    </div>
  </body>
  </html>

  <?php } ?>

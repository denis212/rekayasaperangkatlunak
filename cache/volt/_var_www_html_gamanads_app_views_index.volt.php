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
    <?= $this->tag->stylesheetLink('css/font-awesome.min.css') ?>
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

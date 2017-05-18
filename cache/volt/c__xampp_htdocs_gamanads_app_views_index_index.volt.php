 <title>Home - GamanAds</title>

<?= $this->getContent() ?>
<p><?php $this->flashSess->output() ?></p>
<section id="main-slider" class="no-margin">
    <div class="carousel slide">
        <ol class="carousel-indicators">
            <li data-target="#main-slider" data-slide-to="0" class="active"></li>
            <li data-target="#main-slider" data-slide-to="1"></li>
            <li data-target="#main-slider" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">

            <div class="item active" style="background-image: url(images/slider/bg1.jpg)">

                <div class="container">
                    <div class="row slide-margin">
                        <div class="col-sm-6">
                            <div class="carousel-content">
                                <h1 class="animation animated-item-1">Reach million of consumers around the world with a few click</h1>
                                <h2 class="animation animated-item-2">Click Mobile is a global advertising network.
                                                Reach millions of consumers around the world on mobile phones and devices,
                                                and make use of our insights into key markets to drive your mobile internet strategy.</h2>
                                <a class="btn-slide animation animated-item-3" href="#">Learn More to Explore Ads Format</a>
                            </div>
                        </div>
                        <div class="col-sm-6 hidden-xs animation animated-item-4">
                            <div class="slider-img">
                                  <img src="images/slider/img1.png" class="img-responsive">
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="item" style="background-image: url(images/slider/bg2.jpg)">
              <div class="container">
                  <div class="row slide-margin">
                      <div class="col-sm-6">
                          <div class="carousel-content">
                              <h1 class="animation animated-item-1">Reach million of consumers around the world with a few click</h1>
                              <h2 class="animation animated-item-2">Click Mobile is a global advertising network.
                                              Reach millions of consumers around the world on mobile phones and devices,
                                              and make use of our insights into key markets to drive your mobile internet strategy.</h2>
                              <a class="btn-slide animation animated-item-3" href="#">Learn More to Explore Ads Format</a>
                          </div>
                      </div>

                      <div class="col-sm-6 hidden-xs animation animated-item-4">
                          <div class="slider-img">
                              <img src="images/slider/img2.png" class="img-responsive">
                          </div>
                      </div>

                  </div>
              </div>
            </div>

            <div class="item" style="background-image: url(images/slider/bg3.jpg)">
              <div class="container">
                  <div class="row slide-margin">
                      <div class="col-sm-6">
                          <div class="carousel-content">
                              <h1 class="animation animated-item-1">Reach million of consumers around the world with a few click</h1>
                              <h2 class="animation animated-item-2">Click Mobile is a global advertising network.
                                              Reach millions of consumers around the world on mobile phones and devices,
                                              and make use of our insights into key markets to drive your mobile internet strategy.</h2>
                              <a class="btn-slide animation animated-item-3" href="#">Learn More to Explore Ads Format</a>
                          </div>
                      </div>

                      <div class="col-sm-6 hidden-xs animation animated-item-4">
                          <div class="slider-img">
                              <img src="images/slider/img3.png" class="img-responsive">
                          </div>
                      </div>

                  </div>
              </div>
            </div>
        </div>
    </div>
    <a class="prev hidden-xs" href="#main-slider" data-slide="prev">
        <i class="fa fa-chevron-left"></i>
    </a>
    <a class="next hidden-xs" href="#main-slider" data-slide="next">
        <i class="fa fa-chevron-right"></i>
    </a>
</section>

<section id="feature" >
    <div class="container">
       <div class="center wow fadeInDown">
          <div class="col-sm-5 col-md-6" style="margin-top:15px;">
            <img src="images/publishers2x.png" class="img-responsive" style="margin-left:38%;
                height: auto;width: auto; max-width: 100px; max-height: 100px;"><br>
            <h2>Publishers</h2>
          </div>
          <div class="col-sm-5 col-sm-offset-2 col-md-6 col-md-offset-0" style="margin-top:15px;">
            <img src="images/advertisers2x.png" class="img-responsive" style="margin-left:40%;
                  height: auto;width: auto; max-width: 100px; max-height: 100px;"><br>
            <h2>Advertisers</h2>
          </div>
        </div>
    </div><!--/.container-->
</section><!--/#feature-->

<section id="middle">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 wow fadeInDown">
                <div class="skill">
                    <h2>100% traffic monetization</h2>
                    <p>We maximize your income by efficiently monetizing global web and mobile traffic across all devices and platforms with highest eCPM rates.</p>
                    <br>
                    <h2>Best offers from around the world</h2>
                    <p>Combine a comprehensive list of direct advertisers with advanced optimization technology
                      and what do you get? The highest revenue from the most relevant ads for all your online content.</p>
                    <br>
                    <h2>Easy start, quick approve</h2>
                    <p>With our publisher’s dashboard you can monetize your traffic in less than five minutes,
                      track your revenue with in-depth reports, and benefit from ad channel management tools.</p>
                    <br>

                </div>

            </div><!--/.col-sm-6-->

            <div class="col-sm-6 wow fadeInDown">
                <div class="skill">
                  <h2>International publisher network</h2>
                  <p>More than just being the best we are also one of the biggest ad networks, with over 700M
                    daily advertising impressions across the globe.</p>
                  <br>
                  <h2>Experts in performance marketing</h2>
                  <p>We have launched thousands of CPA, CPL, and CPM campaigns since 2011 and we are growing our reach every day.
                    Our team are experts in conversion tracking and results optimization.</p>
                  <br>
                  <h2>Advanced optimization and targeting</h2>
                  <p>We have everything you need for a successful campaign including a wide range of optimized ad units,
                    flexible targeting opportunities, and the best account managers in the business.</p>
                  <br>
                </div>
            </div><!--/.col-sm-6-->
        </div><!--/.row-->
    </div><!--/.container-->
</section><!--/#middle-->
<br>
<section>
    <div class="container">
        <div class="center wow fadeInDown">
            <?= $this->tag->linkTo(['session/signup', 'Become Our Parner', 'class' => 'btn btn-lg btn-success']) ?>
      </div>
</section>

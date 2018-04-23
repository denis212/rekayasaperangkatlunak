<title>Create Access Point</title>
<?php $this->assets->outputCss(); ?>
{{ content() }}

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script   src="https://code.jquery.com/jquery-2.2.3.min.js"   integrity="sha256-a23g1Nt4dtEYOj7bR+vTu7+T8VP13humZFBJNIYoEJo="   crossorigin="anonymous"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.0/js/bootstrap-datepicker.min.js"></script>

<!-- <div class="container" style="background-color:#f5f5f5; margin-top: 25px; margin-bottom:20px; border:1px solid #e3e3e3"> -->
<div class="container" style=" margin-right: 25px; margin-left:25px; width:auto;">
  <div class="col-md-12">
    <div class="box box-primary" style="margin-top:20px;">
      <div class="row" style="margin-right:20px;">
        <nav>
          <ul class="pager">
            <li class="next"><?php echo $this->tag->linkTo(["accesspoint/search", "Search Data","style"=>"background-color:#c52d2f; color: #fff;"]); ?></li>
          </ul>
        </nav>
      </div>

      <legend>Create Data Access Point</legend>

      <div align="center">

        <form method='post' enctype='multipart/form-data' class="form-horizontal" autocomplete="off">
          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('id_reseller') }}</label>
            <div class="col-md-4">
              {{ form.render('id_reseller',['class':'form-control']) }}
              {{ form.messages('id_reseller') }}
            </div>
          </div>

          <!-- <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('nama_agen') }}</label>
            <div class="col-md-4">
              {{ form.render('nama_agen',['class':'form-control']) }}
              {{ form.messages('nama_agen') }}
            </div>
          </div> -->

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('merk') }}</label>
            <div class="col-md-4">
              {{ form.render('merk',['class':'form-control']) }}
              {{ form.messages('merk') }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('serial_number') }}</label>
            <div class="col-md-4">
              {{ form.render('serial_number',['class':'form-control']) }}
              {{ form.messages('serial_number') }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('lokasi') }}</label>
            <div class="col-md-4">
              {{ form.render('lokasi',['class':'form-control']) }}
              {{ form.messages('lokasi') }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('alamat') }}</label>
            <div class="col-md-4">
              {{ form.render('alamat',['class':'form-control']) }}
              {{ form.messages('alamat') }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput"></label>
            <div class="col-md-4">
              {{ form.render('Save') }}
            </div>
          </div>



          <input type="hidden" name="<?php echo $this->security->getTokenKey(); ?>" value="<?php echo $this->security->getToken(); ?>"/>

        </form>

      </div>

    </div>
  </div>
</div>

<?php $this->assets->outputJs(); ?>

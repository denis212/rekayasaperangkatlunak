<title>Create Doctor Account</title>
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
            <li class="next"><?php echo $this->tag->linkTo(["doctor/search", "Search Data","style"=>"background-color:#c52d2f; color: #fff;"]); ?></li>
          </ul>
        </nav>
      </div>

      <legend>Create Data Doctor Account</legend>

      <div align="center">

        <form method='post' enctype='multipart/form-data' class="form-horizontal" autocomplete="off">
          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('doctor_email') }}</label>
            <div class="col-md-4">
              {{ form.render('doctor_email',['class':'form-control']) }}
              {{ form.messages('doctor_email') }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('doctor_msisdn') }}</label>
            <div class="col-md-4">
              {{ form.render('doctor_msisdn',['class':'form-control']) }}
              {{ form.messages('doctor_msisdn') }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('doctor_name') }}</label>
            <div class="col-md-4">
              {{ form.render('doctor_name',['class':'form-control']) }}
              {{ form.messages('doctor_name') }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('doctor_address') }}</label>
            <div class="col-md-4">
              {{ form.render('doctor_address',['class':'form-control']) }}
              {{ form.messages('doctor_address') }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('doctor_salt') }}</label>
            <div class="col-md-4">
              {{ form.render('doctor_salt',['class':'form-control']) }}
              {{ form.messages('doctor_salt') }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('doctor_status') }}</label>
            <div class="col-md-4">
              {{ form.render('doctor_status',['class':'form-control']) }}
              {{ form.messages('doctor_status') }}
            </div>
          </div>

          <div class="form-group">
            <label id="lb_gambar1" class="col-xs-4 control-label" for="file1">Doctor Photo</label></td>
            <div class="col-xs-2">
              <input type="file" name="photo1" id="file1"/>
            </div>
            <div class="col-xs-1">
              <a id="clear1" class="btn btn-warning">Clear</a>
            </div>
          </div>

          <div class="form-group">
            <label id="lb_gambar2" class="col-xs-4 control-label" for="file2">Doctor KTP</label></td>
            <div class="col-xs-2">
              <input type="file" name="photo2" id="file2"/>
            </div>
            <div class="col-xs-1">
              <a id="clear2" class="btn btn-warning">Clear</a>
            </div>
          </div>

          <div class="form-group">
            <label id="lb_gambar3" class="col-xs-4 control-label" for="file3">Doctor SIM</label></td>
            <div class="col-xs-2">
              <input type="file" name="photo3" id="file3"/>
            </div>
            <div class="col-xs-1">
              <a id="clear3" class="btn btn-warning">Clear</a>
            </div>
          </div>

          <div class="form-group">
            <label id="lb_gambar4" class="col-xs-4 control-label" for="file4">Doctor KK</label></td>
            <div class="col-xs-2">
              <input type="file" name="photo4" id="file4"/>
            </div>
            <div class="col-xs-1">
              <a id="clear4" class="btn btn-warning">Clear</a>
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
  <script>
  $( document ).ready(function() {
    // document.getElementById("submit").disabled = true;
    var myTest = new Array();
  });

  var _URL = window.URL || window.webkitURL;
  var tampA = 0;
  var green = 0;

  // if(green<4){
  //   document.getElementById("submit").disabled = true;
  // }else if(green>=4){
    document.getElementById("submit").disabled = false;
  // }

  $("#clear1").click(function(e) {
    $("#file1").val('');
    document.getElementById('lb_gambar1').style.color='';
    if(green>0){
      green-=1;
    }

    // if(green<4){
    //   document.getElementById("submit").disabled = true;
    // }else if(green>=4){
      document.getElementById("submit").disabled = false;
    // }
  });

  $("#file1").change(function(e) {
    var image, file;
    if ((file = this.files[0]))
    {
      var val = $(this).val();

      switch(val.substring(val.lastIndexOf('.') + 1).toLowerCase())
      {
        case 'gif': case 'jpg': case 'png':
        //atas sini
        image = new Image();
        image.onload = function() {

          tampA+=1;
          document.getElementById('lb_gambar1').style.color='green';
          green+=1;

        // if(green>=1)
        //   {
        //     document.getElementById("submit").disabled = false;
        //   }
        };
        image.src = _URL.createObjectURL(file);
        //bawah sini
        break;
        default:
        $(this).val('');
        // error message here
        alert("File is not an image");
        document.getElementById('lb_gambar1').style.color='';
        break;
      }
    }
  });

  $("#clear2").click(function(e) {
    $("#file2").val('');
    document.getElementById('lb_gambar2').style.color='';
    if(green>0){
      green-=1;
    }

    // if(green<4){
    //   document.getElementById("submit").disabled = true;
    // }else if(green>=4){
      document.getElementById("submit").disabled = false;
    // }
  });

  $("#file2").change(function(e) {
    var image, file;
    if ((file = this.files[0]))
    {
      var val = $(this).val();

      switch(val.substring(val.lastIndexOf('.') + 1).toLowerCase())
      {
        case 'gif': case 'jpg': case 'png':
        //atas sini
        image = new Image();
        image.onload = function() {

          tampA+=1;
          document.getElementById('lb_gambar2').style.color='green';
          green+=1;

        // if(green>=1)
        //   {
            document.getElementById("submit").disabled = false;
          // }
        };
        image.src = _URL.createObjectURL(file);
        //bawah sini
        break;
        default:
        $(this).val('');
        // error message here
        alert("File is not an image");
        document.getElementById('lb_gambar2').style.color='';
        break;
      }
    }
  });

  $("#clear3").click(function(e) {
    $("#file3").val('');
    document.getElementById('lb_gambar3').style.color='';
    if(green>0){
      green-=1;
    }

    // if(green<4){
    //   document.getElementById("submit").disabled = true;
    // }else if(green>=4){
      document.getElementById("submit").disabled = false;
    // }
  });

  $("#file3").change(function(e) {
    var image, file;
    if ((file = this.files[0]))
    {
      var val = $(this).val();

      switch(val.substring(val.lastIndexOf('.') + 1).toLowerCase())
      {
        case 'gif': case 'jpg': case 'png':
        //atas sini
        image = new Image();
        image.onload = function() {

          tampA+=1;
          document.getElementById('lb_gambar3').style.color='green';
          green+=1;

        // if(green>=1)
        //   {
            document.getElementById("submit").disabled = false;
          // }
        };
        image.src = _URL.createObjectURL(file);
        //bawah sini
        break;
        default:
        $(this).val('');
        // error message here
        alert("File is not an image");
        document.getElementById('lb_gambar3').style.color='';
        break;
      }
    }
  });

  $("#clear4").click(function(e) {
    $("#file4").val('');
    document.getElementById('lb_gambar4').style.color='';
    if(green>0){
      green-=1;
    }

    // if(green<4){
    //   document.getElementById("submit").disabled = true;
    // }else if(green>=4){
      document.getElementById("submit").disabled = false;
    // }
  });

  $("#file4").change(function(e) {
    var image, file;
    if ((file = this.files[0]))
    {
      var val = $(this).val();

      switch(val.substring(val.lastIndexOf('.') + 1).toLowerCase())
      {
        case 'gif': case 'jpg': case 'png':
        //atas sini
        image = new Image();
        image.onload = function() {

          tampA+=1;
          document.getElementById('lb_gambar4').style.color='green';
          green+=1;

        // if(green>=1)
        //   {
            document.getElementById("submit").disabled = false;
          // }
        };
        image.src = _URL.createObjectURL(file);
        //bawah sini
        break;
        default:
        $(this).val('');
        // error message here
        alert("File is not an image");
        document.getElementById('lb_gambar4').style.color='';
        break;
      }
    }
  });

  </script>
<?php $this->assets->outputJs(); ?>

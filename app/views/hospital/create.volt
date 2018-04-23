<title>Create Data Hospital</title>
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
            <li class="next"><?php echo $this->tag->linkTo(["hospital/search", "Search Data","style"=>"background-color:#c52d2f; color: #fff;"]); ?></li>
          </ul>
        </nav>
      </div>

      <legend>Create Data Hospital</legend>

      <div align="center">

        <form method='post' enctype='multipart/form-data' class="form-horizontal" autocomplete="off">
          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('kode_rs') }}</label>
            <div class="col-md-4">
              {{ form.render('kode_rs',['class':'form-control']) }}
              {{ form.messages('kode_rs') }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('nama_rs') }}</label>
            <div class="col-md-4">
              {{ form.render('nama_rs',['class':'form-control']) }}
              {{ form.messages('nama_rs') }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('alamat_rs') }}</label>
            <div class="col-md-4">
              {{ form.render('alamat_rs',['class':'form-control']) }}
              {{ form.messages('alamat_rs') }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('telp_rs') }}</label>
            <div class="col-md-4">
              {{ form.render('telp_rs',['class':'form-control']) }}
              {{ form.messages('telp_rs') }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('email_rs') }}</label>
            <div class="col-md-4">
              {{ form.render('email_rs',['class':'form-control']) }}
              {{ form.messages('email_rs') }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('status_rs') }}</label>
            <div class="col-md-4">
              {{ form.render('status_rs',['class':'form-control']) }}
              {{ form.messages('status_rs') }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('lat_rs') }}</label>
            <div class="col-md-4">
              {{ form.render('lat_rs',['class':'form-control']) }}
              {{ form.messages('lat_rs') }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('lon_rs') }}</label>
            <div class="col-md-4">
              {{ form.render('lon_rs',['class':'form-control']) }}
              {{ form.messages('lon_rs') }}
            </div>
          </div>

          <div class="form-group">
            <label id="lb_gambar1" class="col-xs-4 control-label" for="file1">Picture RS</label></td>
            <div class="col-xs-2">
              <input type="file" name="photo1" id="file1"/>
            </div>
            <div class="col-xs-1">
              <a id="clear1" class="btn btn-warning">Clear</a>
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
//
// if(green<=){
//   document.getElementById("submit").disabled = true;
// }else if(green>=1){
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

      if(green>=1)
        {
          document.getElementById("submit").disabled = false;
        }
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

</script>
<?php $this->assets->outputJs(); ?>

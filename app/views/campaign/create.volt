<title>Create Campaign - GamanAds</title>
<?php $this->assets->outputCss(); ?>
{{ content() }}

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 <!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script src="https://select2.github.io/dist/js/select2.full.js"></script>
<link href="https://select2.github.io/dist/css/select2.min.css" rel="stylesheet"/>

<div class="container">

<div class="row">
    <nav>
        <ul class="pager">
          <li class="next"><?php echo $this->tag->linkTo(["campaign/search", "Search Campaign"]); ?></li>
        </ul>
    </nav>
</div>

<legend>Create Campaign</legend>

<div align="center">

<form method='post' enctype='multipart/form-data' class="form-horizontal" autocomplete="off">
    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">{{ form.label('client_name') }}</label>
      <div class="col-md-4">
        {{ form.render('client_name',['class':'form-control']) }}
        {{ form.messages('client_name') }}
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">{{ form.label('cp_name') }}</label>
      <div class="col-md-4">
        {{ form.render('cp_name',['class':'form-control']) }}
        {{ form.messages('cp_name') }}
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">{{ form.label('cp_pricemodel') }}</label>
      <div class="col-md-4">
        {{ form.render('cp_pricemodel',['class':'form-control']) }}
        {{ form.messages('cp_pricemodel') }}
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">{{ form.label('cp_targeturl') }}</label>
      <div class="col-md-4">
        {{ form.render('cp_targeturl',['class':'form-control']) }}
        {{ form.messages('cp_targeturl') }}
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">{{ form.label('cp_cpmcpa') }}</label>
      <div class="col-md-4">
        {{ form.render('cp_cpmcpa',['class':'form-control']) }}
        {{ form.messages('cp_cpmcpa') }}
        <span class="help-block">We recommend to choose CPM rate $3.70 for the best result</span>
      </div>
    </div>

    <div class="form-group">
      <label class="col-xs-4 control-label" for="textinput">{{ form.label('cp_startdate') }}</label>
        <div class="col-xs-3">
            {{ form.render('cp_startdate',['class':'form-control']) }}
            {{ form.messages('cp_startdate') }}
        </div>
        <div class="col-xs-2">
            {{ form.render('cp_enddate',['class':'form-control']) }}
            {{ form.messages('cp_enddate') }}
        </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">{{ form.label('cp_country') }}</label>
      <div class="col-md-4">
        {{ form.render('cp_country',['class':'form-control']) }}
        {{ form.messages('cp_country') }}
        {{ form.render('hd_country') }}
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">{{ form.label('cp_dailybudget') }}</label>
      <div class="col-md-4">
        {{ form.render('cp_dailybudget',['class':'form-control']) }}
        {{ form.messages('cp_dailybudget') }}
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">{{ form.label('cp_totalbudget') }}</label>
      <div class="col-md-4">
        {{ form.render('cp_totalbudget',['class':'form-control']) }}
        {{ form.messages('cp_totalbudget') }}
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">{{ form.label('cp_schedule') }}</label>
      <div class="col-md-4">
        {{ form.render('cp_schedule',['class':'form-control']) }}
        {{ form.messages('cp_schedule') }}
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">{{ form.label('cp_delivmethod') }}</label>
      <div class="col-md-4">
        {{ form.render('cp_delivmethod',['class':'form-control']) }}
        {{ form.messages('cp_delivmethod') }}
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">{{ form.label('cp_target') }}</label>
      <div class="col-md-4">
        {{ form.render('cp_target',['class':'form-control']) }}
        {{ form.messages('cp_target') }}
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">{{ form.label('cp_tag') }}</label>
      <div class="col-md-4">
        {{ form.render('cp_tag',['class':'form-control']) }}
        {{ form.messages('cp_tag') }}
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">{{ form.label('cp_zone') }}</label>
      <div class="col-md-4">
        {{ form.render('cp_zone',['class':'form-control']) }}
        {{ form.messages('cp_zone') }}
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">{{ form.render('cp_gettraffic') }}</label>
      <div class="col-md-4">
        {{ form.label('cp_gettraffic',['class':'control-label']) }}
        {{ form.messages('cp_gettraffic') }}
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">{{ form.render('cp_guarantee') }}</label>
      <div class="col-md-4">
        {{ form.label('cp_guarantee',['style':'align:left;']) }}
				{{ form.messages('cp_guarantee') }}
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">{{ form.label('cp_testbudget') }}</label>
      <div class="col-md-4">
        {{ form.render('cp_testbudget',['class':'form-control']) }}
        {{ form.messages('cp_testbudget') }}
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">{{ form.label('cp_mblimit') }}</label>
      <div class="col-md-4">
        {{ form.render('cp_mblimit',['class':'form-control']) }}
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">{{ form.label('cp_dsktplimit') }}</label>
      <div class="col-md-4">
      {{ form.render('cp_dsktplimit',['class':'form-control']) }}
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-7 control-label"><h4>Minimum Upload 6 Image</h4></label>
    </div>

    <div class="form-group">
      <label id="120x600" class="col-xs-4 control-label" for="file1">Image 120x600</label></td>
      <div class="col-xs-2">
        <input type="file" name="photo1" id="file1" value="<?php $_POST['photo1'] ?>"/>
      </div>
      <div class="col-xs-1">
         <a id="clear1" class="btn btn-warning">Clear</a>
      </div>
    </div>

    <div class="form-group">
        <label id="160x600" class="col-xs-4 control-label" for="file2">Image 160x600</label>
      <div class="col-xs-2">
        <input type="file" name="photo2" id="file2"/>
      </div>
      <div class="col-xs-1">
        <a id="clear2" class="btn btn-warning">Clear</a>
      </div>
    </div>

    <div class="form-group">
        <label id='250x250'  class="col-xs-4 control-label" for="file3">Image 250x250</label>
      <div class="col-xs-2">
        <input type="file" name="photo3" id="file3"/>
      </div>
      <div class="col-xs-1">
        <a id="clear3" class="btn btn-warning">Clear</a>
      </div>
    </div>

    <div class="form-group">
        <label id="300x50" class="col-xs-4 control-label" for="file4">Image 300x50</label>
      <div class="col-xs-2">
        <input type="file" name="photo4" id="file4" />
      </div>
      <div class="col-xs-1">
        <a id="clear4" class="btn btn-warning">Clear</a>
      </div>
    </div>

    <div class="form-group">
        <label id="300x100" class="col-xs-4 control-label" for="file5">Image 300x100</label>
      <div class="col-xs-2">
        <input type="file" name="photo5" id="file5" />
      </div>
      <div class="col-xs-1">
        <a id="clear5" class="btn btn-warning">Clear</a><br>
      </div>
    </div>

    <div class="form-group">
          <label id='300x250'  class="col-xs-4 control-label" for="file6">Image 300x250</label>
      <div class="col-xs-2">
        <input type="file" name="photo6" id="file6" />
      </div>
      <div class="col-xs-1">
        <a id="clear6" class="btn btn-warning">Clear</a>
      </div>
    </div>

    <div class="form-group">
        <label id="300x600" class="col-xs-4 control-label" for="file7">Image 300x600</label>
      <div class="col-xs-2">
        <input type="file" name="photo7" id="file7" />
      </div>
      <div class="col-xs-1">
        <a id="clear7" class="btn btn-warning">Clear</a>
      </div>
    </div>

    <div class="form-group">
        <label id="305x99" class="col-xs-4 control-label" for="file8">Image 305x99</label>
      <div class="col-xs-2">
        <input type="file" name="photo8" id="file8" />
      </div>
      <div class="col-xs-1">
        <a id="clear8" class="btn btn-warning">Clear</a>
      </div>
    </div>

    <div class="form-group">
        <label id='315x300'  class="col-xs-4 control-label" for="file9">Image 315x300</label>
      <div class="col-xs-2">
        <input type="file" name="photo9" id="file9" />
      </div>
      <div class="col-xs-1">
        <a id="clear9" class="btn btn-warning">Clear</a>
      </div>
    </div>

    <div class="form-group">
        <label id="320x50" class="col-xs-4 control-label" for="file10">Image 320x50</label>
      <div class="col-xs-2">
        <input type="file" name="photo10" id="file10" />
      </div>
      <div class="col-xs-1">
         <a id="clear10" class="btn btn-warning">Clear</a>
      </div>
    </div>

    <div class="form-group">
        <label id="320x100" class="col-xs-4 control-label" for="file11">Image 320x100</label>
      <div class="col-xs-2">
        <input type="file" name="photo11" id="file11" />
      </div>
      <div class="col-xs-1">
         <a id="clear11" class="btn btn-warning">Clear</a>
      </div>
    </div>

    <div class="form-group">
        <label id='320x250'  class="col-xs-4 control-label" for="file12">Image 320x250</label>
      <div class="col-xs-2">
        <input type="file" name="photo12" id="file12" />
      </div>
      <div class="col-xs-1">
        <a id="clear12" class="btn btn-warning">Clear</a><br>
      </div>
    </div>

    <div class="form-group">
        <label id="320x416" class="col-xs-4 control-label" for="file13">Image 320x416</label>
      <div class="col-xs-2">
        <input type="file" name="photo13" id="file13" />
      </div>
      <div class="col-xs-1">
        <a id="clear13" class="btn btn-warning">Clear</a>
      </div>
    </div>

    <div class="form-group">
        <label id="320x480" class="col-xs-4 control-label" for="file14">Image 320x480</label>
      <div class="col-xs-2">
        <input type="file" name="photo14" id="file14" />
      </div>
      <div class="col-xs-1">
        <a id="clear14" class="btn btn-warning">Clear</a><br>
      </div>
    </div>

    <div class="form-group">
        <label id='336x280'  class="col-xs-4 control-label" for="file15">Image 336x280</label>
      <div class="col-xs-2">
        <input type="file" name="photo15" id="file15" />
      </div>
      <div class="col-xs-1">
        <a id="clear15" class="btn btn-warning">Clear</a>
      </div>
    </div>

    <div class="form-group">
        <label id="468x60" class="col-xs-4 control-label" for="file16">Image 468x60</label>
      <div class="col-xs-2">
        <input type="file" name="photo16" id="file16" />
      </div>
      <div class="col-xs-1">
        <a id="clear16" class="btn btn-warning">Clear</a>
      </div>
    </div>

    <div class="form-group">
        <label id="640x960" class="col-xs-4 control-label" for="file17">Image 640x960</label>
      <div class="col-xs-2">
        <input type="file" name="photo17" id="file17" />
      </div>
      <div class="col-xs-1">
        <a id="clear17" class="btn btn-warning">Clear</a>
      </div>
    </div>

    <div class="form-group">
        <label id='728x90'  class="col-xs-4 control-label" for="file18">Image 728x90</label>
      <div class="col-xs-2">
          <input type="file" name="photo18" id="file18" />
      </div>
      <div class="col-xs-1">
        <a id="clear18" class="btn btn-warning">Clear</a>
      </div>
    </div>

    <div class="form-group">
        <label id="800x440" class="col-xs-4 control-label" for="file19">Image 800x440</label>
      <div class="col-xs-2">
        <input type="file" name="photo19" id="file19" />
      </div>
      <div class="col-xs-1">
        <a id="clear19" class="btn btn-warning">Clear</a>
      </div>
    </div>

    <div class="form-group">
        <label id="1024x768" class="col-md-4 control-label" for="file20">Image 1024x768</label>
      <div class="col-xs-2">
          <input type="file" name="photo20" id="file20" />
      </div>
      <div class="col-xs-1">
        <a id="clear20" class="btn btn-warning">Clear</a>
      </div>
    </div>

    <div class="form-group">
        <label id="1024x768" class="col-md-4 control-label" for="file20">Image 1024x768</label>
      <div class="col-xs-2">
          <input type="file" name="photo20" id="file20" />
      </div>
      <div class="col-xs-1">
        <a id="clear20" class="btn btn-warning">Clear</a>
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput"></label>
      <div class="col-md-1">
        {{ form.render('Save',['class':'btn btn-primary']) }}
      </div>
    </div>

		<table class="signup">
      <tr>
				<td align="right"></td>
				<td></td>
			</tr>
		</table>
    {{ form.render('client_id') }}
    {{ form.render('role') }}
    <input type="hidden" name="<?php echo $this->security->getTokenKey() ?>" value="<?php echo $this->security->getToken() ?>"/>


		<hr>

	</form>

</div>

<script type="text/javascript">
var dateFormat = "yy-mm-dd",
    from = $( "#cp_startdate" )
      .datepicker({
        defaultDate: "+1w",
        changeMonth: true,
        numberOfMonths: 2
      })
      .on( "change", function() {
        to.datepicker( "option", "minDate", getDate( this ) );
      }),
    to = $( "#cp_enddate" ).datepicker({
      defaultDate: "+1w",
      changeMonth: true,
      numberOfMonths: 2
    })
    .on( "change", function() {
      from.datepicker( "option", "maxDate", getDate( this ) );
    });

  function getDate( element ) {
    var date;
    try {
      date = $.datepicker.parseDate( dateFormat, element.value );
    } catch( error ) {
      date = null;
    }

    return date;
  }

</script>
<script>
$( document ).ready(function() {
  document.getElementById("submit").disabled = true;
  var myTest = new Array();
});

var _URL = window.URL || window.webkitURL;
var tampA = 0;var tampF = 0;var tampK = 0;var tampP = 0;
var tampB = 0;var tampG = 0;var tampL = 0;var tampQ = 0;
var tampC = 0;var tampH = 0;var tampM = 0;var tampR = 0;
var tampD = 0;var tampI = 0;var tampN = 0;var tampS = 0;
var tampE = 0;var tampJ = 0;var tampO = 0;var tampT = 0;
var green = 0;

if(green<6){
  document.getElementById("submit").disabled = true;
}else if(green>=6){
  document.getElementById("submit").disabled = false;
}

$("#clear1").click(function(e) {
    $("#file1").val('');
    document.getElementById('120x600').style.color='';
    if(green>0){
      green-=1;
    }

    if(green<6){
      document.getElementById("submit").disabled = true;
    }else if(green>=6){
      document.getElementById("submit").disabled = false;
    }
});
$("#clear2").click(function(e) {
    $("#file2").val('');
    document.getElementById('160x600').style.color='';
    if(green>0){
      green-=1;
    }
    if(green<6){
      document.getElementById("submit").disabled = true;
    }else if(green>=6){
      document.getElementById("submit").disabled = false;
    }
});
$("#clear3").click(function(e) {
    $("#file3").val('');
    document.getElementById('250x250').style.color='';
    if(green>0){
      green-=1;
    }
    if(green<6){
      document.getElementById("submit").disabled = true;
    }else if(green>=6){
      document.getElementById("submit").disabled = false;
    }
});
$("#clear4").click(function(e) {
    $("#file4").val('');
    document.getElementById('300x50').style.color='';
    if(green>0){
      green-=1;
    }
    if(green<6){
      document.getElementById("submit").disabled = true;
    }else if(green>=6){
      document.getElementById("submit").disabled = false;
    }
});
$("#clear5").click(function(e) {
    $("#file5").val('');
    document.getElementById('300x100').style.color='';
    if(green>0){
      green-=1;
    }
    if(green<6){
      document.getElementById("submit").disabled = true;
    }else if(green>=6){
      document.getElementById("submit").disabled = false;
    }
});
$("#clear6").click(function(e) {
    $("#file6").val('');
    document.getElementById('300x250').style.color='';
    if(green>0){
      green-=1;
    }
    if(green<6){
      document.getElementById("submit").disabled = true;
    }else if(green>=6){
      document.getElementById("submit").disabled = false;
    }
});
$("#clear7").click(function(e) {
    $("#file7").val('');
    document.getElementById('300x600').style.color='';
    if(green>0){
      green-=1;
    }
    if(green<6){
      document.getElementById("submit").disabled = true;
    }else if(green>=6){
      document.getElementById("submit").disabled = false;
    }
});
$("#clear8").click(function(e) {
    $("#file8").val('');
    document.getElementById('305x99').style.color='';
    if(green>0){
      green-=1;
    }
    if(green<6){
      document.getElementById("submit").disabled = true;
    }else if(green>=6){
      document.getElementById("submit").disabled = false;
    }
});
$("#clear9").click(function(e) {
    $("#file9").val('');
    document.getElementById('315x300').style.color='';
    if(green>0){
      green-=1;
    }
    if(green<6){
      document.getElementById("submit").disabled = true;
    }else if(green>=6){
      document.getElementById("submit").disabled = false;
    }
});
$("#clear10").click(function(e) {
    $("#file10").val('');
    document.getElementById('320x50').style.color='';
    if(green>0){
      green-=1;
    }
    if(green<6){
      document.getElementById("submit").disabled = true;
    }else if(green>=6){
      document.getElementById("submit").disabled = false;
    }
});
$("#clear11").click(function(e) {
    $("#file11").val('');
    document.getElementById('320x100').style.color='';
    if(green>0){
      green-=1;
    }
    if(green<6){
      document.getElementById("submit").disabled = true;
    }else if(green>=6){
      document.getElementById("submit").disabled = false;
    }
});
$("#clear12").click(function(e) {
    $("#file12").val('');
    document.getElementById('320x250').style.color='';
    if(green>0){
      green-=1;
    }
    if(green<6){
      document.getElementById("submit").disabled = true;
    }else if(green>=6){
      document.getElementById("submit").disabled = false;
    }
});
$("#clear13").click(function(e) {
    $("#file13").val('');
    document.getElementById('320x416').style.color='';
    if(green>0){
      green-=1;
    }
    if(green<6){
      document.getElementById("submit").disabled = true;
    }else if(green>=6){
      document.getElementById("submit").disabled = false;
    }
});
$("#clear14").click(function(e) {
    $("#file14").val('');
    document.getElementById('320x480').style.color='';
    if(green>0){
      green-=1;
    }
    if(green<6){
      document.getElementById("submit").disabled = true;
    }else if(green>=6){
      document.getElementById("submit").disabled = false;
    }
});
$("#clear15").click(function(e) {
    $("#file15").val('');
    document.getElementById('336x280').style.color='';
    if(green>0){
      green-=1;
    }
    if(green<6){
      document.getElementById("submit").disabled = true;
    }else if(green>=6){
      document.getElementById("submit").disabled = false;
    }
});
$("#clear16").click(function(e) {
    $("#file16").val('');
    document.getElementById('468x60').style.color='';
    if(green>0){
      green-=1;
    }
    if(green<6){
      document.getElementById("submit").disabled = true;
    }else if(green>=6){
      document.getElementById("submit").disabled = false;
    }
});
$("#clear17").click(function(e) {
    $("#file17").val('');
    document.getElementById('640x960').style.color='';
    if(green>0){
      green-=1;
    }
    if(green<6){
      document.getElementById("submit").disabled = true;
    }else if(green>=6){
      document.getElementById("submit").disabled = false;
    }
});
$("#clear18").click(function(e) {
    $("#file18").val('');
    document.getElementById('728x90').style.color='';
    if(green>0){
      green-=1;
    }
    if(green<6){
      document.getElementById("submit").disabled = true;
    }else if(green>=6){
      document.getElementById("submit").disabled = false;
    }
});
$("#clear19").click(function(e) {
    $("#file19").val('');
    document.getElementById('800x440').style.color='';
    if(green>0){
      green-=1;
    }
    if(green<6){
      document.getElementById("submit").disabled = true;
    }else if(green>=6){
      document.getElementById("submit").disabled = false;
    }
});
$("#clear20").click(function(e) {
    $("#file20").val('');
    document.getElementById('1024x768').style.color='';
    if(green>0){
      green-=1;
    }
    if(green<6){
      document.getElementById("submit").disabled = true;
    }else if(green>=6){
      document.getElementById("submit").disabled = false;
    }
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
        // alert("The image width is " +this.width + " and image height is " + this.height);
        if(this.width == 120 && this.height == 600)
        {
          tampA+=1;
          document.getElementById('120x600').style.color='green';
          green+=1;
        }else if (this.width != 120 && this.height != 600) {
          if(tampA>0)
          {
            tampA-=1;
          }
          document.getElementById('120x600').style.color='red';
        }
        else {
          document.getElementById('120x600').style.color='red';
        }

        if(green>=6)
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
      document.getElementById('120x600').style.color='';
      break;
    }
  }
});

$("#file2").change(function(e) {

  var image, file;

  if ((file = this.files[0])) {
    var val = $(this).val();

    switch(val.substring(val.lastIndexOf('.') + 1).toLowerCase()){
      case 'gif': case 'jpg': case 'png':
      //atas sini
      image = new Image();

      image.onload = function() {
        // alert("The image width is " +this.width + " and image height is " + this.height);
        if(this.width == 160 && this.height == 600)
        {
          tampB+=1;
          document.getElementById('160x600').style.color='green';
          green+=1;
        }else if (this.width != 160 && this.height != 600) {
          if(tampB>0)
          {
            tampB-=1;
          }
          document.getElementById('160x600').style.color='red';
        }
        else {
          tampB = 0;
          document.getElementById('160x600').style.color='red';
        }

        if(green>=6)
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
      document.getElementById('160x600').style.color='';
      break;
    }
  }
});

$("#file3").change(function(e) {

  var image, file;

  if ((file = this.files[0])) {
    var val = $(this).val();

    switch(val.substring(val.lastIndexOf('.') + 1).toLowerCase()){
      case 'gif': case 'jpg': case 'png':
      //atas sini
      image = new Image();

      image.onload = function() {
        // alert("The image width is " +this.width + " and image height is " + this.height);
        if(this.width == 250 && this.height == 250)
        {
          tampC+=1;
          document.getElementById('250x250').style.color='green';
          green+=1;
        }else if (this.width != 250 && this.height != 250) {
          if(tampC>0)
          {
            tampC-=1;
          }
          document.getElementById('250x250').style.color='red';
        }
        else {
          tampC = 0;
          document.getElementById('250x250').style.color='red';
        }

        if(green>=6)
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
      document.getElementById('250x250').style.color='';
      break;
    }
  }
});

$("#file4").change(function(e) {

  var image, file;

  if ((file = this.files[0])) {
    var val = $(this).val();

    switch(val.substring(val.lastIndexOf('.') + 1).toLowerCase()){
      case 'gif': case 'jpg': case 'png':
      //atas sini
      image = new Image();

      image.onload = function() {
        // alert("The image width is " +this.width + " and image height is " + this.height);
        if(this.width == 300 && this.height == 50)
        {
          tampD+=1;
          document.getElementById('300x50').style.color='green';
          green+=1;
        }else if (this.width != 300 && this.height != 50) {
          if(tampD>0)
          {
            tampD-=1;
          }
          document.getElementById('300x50').style.color='red';
        }
        else {
          tampD = 0;
          document.getElementById('300x50').style.color='red';
        }

        if(green>=6)
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
      document.getElementById('300x50').style.color='';
      break;
    }
  }
});

$("#file5").change(function(e) {

  var image, file;

  if ((file = this.files[0])) {
    var val = $(this).val();

    switch(val.substring(val.lastIndexOf('.') + 1).toLowerCase())
    {
      case 'gif': case 'jpg': case 'png':
      //atas sini
      image = new Image();

      image.onload = function() {
        // alert("The image width is " +this.width + " and image height is " + this.height);
        if(this.width == 300 && this.height == 100)
        {
          tampE+=1;
          document.getElementById('300x100').style.color='green';
          green+=1;
        }else if (this.width != 300 && this.height != 100) {
          if(tampE>0)
          {
            tampE-=1;
          }
          document.getElementById('300x100').style.color='red';
        }
        else {
          tampE = 0;
          document.getElementById('300x100').style.color='red';
        }

        if(green>=6)
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
      document.getElementById('300x100').style.color='';
      break;
    }
  }
});

$("#file6").change(function(e) {

  var image, file;

  if ((file = this.files[0])) {
    var val = $(this).val();

    switch(val.substring(val.lastIndexOf('.') + 1).toLowerCase()){
      case 'gif': case 'jpg': case 'png':
      //atas sini
      image = new Image();

      image.onload = function() {
        // alert("The image width is " +this.width + " and image height is " + this.height);
        if(this.width == 300 && this.height == 250)
        {
          tampF+=1;
          document.getElementById('300x250').style.color='green';
          green+=1;
        }else if (this.width != 300 && this.height != 250) {
          if(tampF>0)
          {
            tampF-=1;
          }
          document.getElementById('300x250').style.color='red';
        }
        else {
          tampF = 0;
          document.getElementById('300x250').style.color='red';
        }

        if(green>=6)
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
      document.getElementById('300x250').style.color='';
      break;
    }
  }
});

$("#file7").change(function(e) {

  var image, file;

  if ((file = this.files[0])) {
    var val = $(this).val();

    switch(val.substring(val.lastIndexOf('.') + 1).toLowerCase()){
      case 'gif': case 'jpg': case 'png':
      //atas sini
      image = new Image();

      image.onload = function() {
        // alert("The image width is " +this.width + " and image height is " + this.height);
        if(this.width == 300 && this.height == 600)
        {
          tampG+=1;
          document.getElementById('300x600').style.color='green';
          green+=1;
        }else if (this.width != 300 && this.height != 600) {
          if(tampG>0)
          {
            tampG-=1;
          }
          document.getElementById('300x600').style.color='red';
        }
        else {
          tampG = 0;
          document.getElementById('300x600').style.color='red';
        }

        if(green>=6)
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
      document.getElementById('300x600').style.color='';
      break;
    }
  }
});

$("#file8").change(function(e) {

  var image, file;

  if ((file = this.files[0])) {
    var val = $(this).val();

    switch(val.substring(val.lastIndexOf('.') + 1).toLowerCase()){
      case 'gif': case 'jpg': case 'png':
      //atas sini
      image = new Image();

      image.onload = function() {
        // alert("The image width is " +this.width + " and image height is " + this.height);
        if(this.width == 305 && this.height == 99)
        {
          tampH+=1;
          document.getElementById('305x99').style.color='green';
          green+=1;
        }else if (this.width != 305 && this.height != 99) {
          if(tampH>0)
          {
            tampH-=1;
          }
          document.getElementById('305x99').style.color='red';
        }
        else {
          tampH = 0;
          document.getElementById('305x99').style.color='red';
        }

        if(green>=6)
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
      document.getElementById('305x99').style.color='';
      break;
    }
  }
});

$("#file9").change(function(e) {

  var image, file;

  if ((file = this.files[0])) {
    var val = $(this).val();

    switch(val.substring(val.lastIndexOf('.') + 1).toLowerCase()){
      case 'gif': case 'jpg': case 'png':
      //atas sini
      image = new Image();

      image.onload = function() {
        // alert("The image width is " +this.width + " and image height is " + this.height);
        if(this.width == 315 && this.height == 300)
        {
          tampI+=1;
          document.getElementById('315x300').style.color='green';
          green+=1;
        }else if (this.width != 315 && this.height != 300) {
          if(tampI>0)
          {
            tampI-=1;
          }
          document.getElementById('315x300').style.color='red';
        }
        else {
          tampI = 0;
          document.getElementById('315x300').style.color='red';
        }

        if(green>=6)
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
      document.getElementById('315x300').style.color='';
      break;
    }
  }
});

$("#file10").change(function(e) {

  var image, file;

  if ((file = this.files[0])) {
    var val = $(this).val();

    switch(val.substring(val.lastIndexOf('.') + 1).toLowerCase()){
      case 'gif': case 'jpg': case 'png':
      //atas sini
      image = new Image();

      image.onload = function() {
        // alert("The image width is " +this.width + " and image height is " + this.height);
        if(this.width == 320 && this.height == 50)
        {
          tampJ+=1;
          document.getElementById('320x50').style.color='green';
          green+=1;
        }else if (this.width != 320 && this.height != 50) {
          if(tampJ>0)
          {
            tampJ-=1;
          }
          document.getElementById('320x50').style.color='red';
        }
        else {
          tampJ = 0;
          document.getElementById('320x50').style.color='red';
        }

        if(green>=6)
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
      document.getElementById('320x50').style.color='';
      break;
    }
  }
});

$("#file11").change(function(e) {

  var image, file;

  if ((file = this.files[0])) {
    var val = $(this).val();

    switch(val.substring(val.lastIndexOf('.') + 1).toLowerCase()){
      case 'gif': case 'jpg': case 'png':
      //atas sini
      image = new Image();

      image.onload = function() {
        // alert("The image width is " +this.width + " and image height is " + this.height);
        if(this.width == 320 && this.height == 100)
        {
          tampK+=1;
          document.getElementById('320x100').style.color='green';
          green+=1;
        }else if (this.width != 320 && this.height != 100) {
          if(tampK>0)
          {
            tampK-=1;
          }
          document.getElementById('320x100').style.color='red';
        }
        else {
          tampK = 0;
          document.getElementById('320x100').style.color='red';
        }

        if(green>=6)
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
      document.getElementById('320x100').style.color='';
      break;
    }
  }
});


$("#file12").change(function(e) {

  var image, file;

  if ((file = this.files[0])) {
    var val = $(this).val();

    switch(val.substring(val.lastIndexOf('.') + 1).toLowerCase()){
      case 'gif': case 'jpg': case 'png':
      //atas sini
      image = new Image();

      image.onload = function() {
        // alert("The image width is " +this.width + " and image height is " + this.height);
        if(this.width == 320 && this.height == 250)
        {
          tampL+=1;
          document.getElementById('320x250').style.color='green';
          green+=1;
        }else if (this.width != 320 && this.height != 250) {
          if(tampL>0)
          {
            tampL-=1;
          }
          document.getElementById('320x250').style.color='red';
        }
        else {
          tampL = 0;
          document.getElementById('320x250').style.color='red';
        }

        if(green>=6)
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
      document.getElementById('320x250').style.color='';
      break;
    }
  }
});

$("#file13").change(function(e) {

  var image, file;

  if ((file = this.files[0])) {
    var val = $(this).val();

    switch(val.substring(val.lastIndexOf('.') + 1).toLowerCase()){
      case 'gif': case 'jpg': case 'png':
      //atas sini
      image = new Image();

      image.onload = function() {
        // alert("The image width is " +this.width + " and image height is " + this.height);
        if(this.width == 320 && this.height == 416)
        {
          tampM+=1;
          document.getElementById('320x416').style.color='green';
          green+=1;
        }else if (this.width != 320 && this.height != 416) {
          if(tampM>0)
          {
            tampM-=1;
          }
          document.getElementById('320x416').style.color='red';
        }
        else {
          tampM = 0;
          document.getElementById('320x416').style.color='red';
        }

        if(green>=6)
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
      document.getElementById('320x416').style.color='';
      break;
    }
  }
});

$("#file14").change(function(e) {

  var image, file;

  if ((file = this.files[0])) {
    var val = $(this).val();

    switch(val.substring(val.lastIndexOf('.') + 1).toLowerCase()){
      case 'gif': case 'jpg': case 'png':
      //atas sini
      image = new Image();

      image.onload = function() {
        // alert("The image width is " +this.width + " and image height is " + this.height);
        if(this.width == 320 && this.height == 480)
        {
          tampN+=1;
          document.getElementById('320x480').style.color='green';
          green+=1;
        }else if (this.width != 320 && this.height != 480) {
          if(tampN>0)
          {
            tampN-=1;
          }
          document.getElementById('320x480').style.color='red';
        }
        else {
          tampN = 0;
          document.getElementById('320x480').style.color='red';
        }

        if(green>=6)
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
      document.getElementById('320x480').style.color='';
      break;
    }
  }
});

$("#file15").change(function(e) {

  var image, file;

  if ((file = this.files[0])) {
    var val = $(this).val();

    switch(val.substring(val.lastIndexOf('.') + 1).toLowerCase()){
      case 'gif': case 'jpg': case 'png':
      //atas sini
      image = new Image();

      image.onload = function() {
        // alert("The image width is " +this.width + " and image height is " + this.height);
        if(this.width == 336 && this.height == 280)
        {
          tampO+=1;
          document.getElementById('336x280').style.color='green';
          green+=1;
        }else if (this.width != 336 && this.height != 280) {
          if(tampO>0)
          {
            tampO-=1;
          }
          document.getElementById('336x280').style.color='red';
        }
        else {
          tampO = 0;
          document.getElementById('336x280').style.color='red';
        }

        if(green>=6)
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
      document.getElementById('336x280').style.color='';
      break;
    }
  }
});

$("#file16").change(function(e) {

  var image, file;

  if ((file = this.files[0])) {
    var val = $(this).val();

    switch(val.substring(val.lastIndexOf('.') + 1).toLowerCase()){
      case 'gif': case 'jpg': case 'png':
      //atas sini
      image = new Image();

      image.onload = function() {
        // alert("The image width is " +this.width + " and image height is " + this.height);
        if(this.width == 468 && this.height == 60)
        {
          tampP+=1;
          document.getElementById('468x60').style.color='green';
          green+=1;
        }else if (this.width != 468 && this.height != 60) {
          if(tampP>0)
          {
            tampP-=1;
          }
          document.getElementById('468x60').style.color='red';
        }
        else {
          tampP = 0;
          document.getElementById('468x60').style.color='red';
        }

        if(green>=6)
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
      document.getElementById('468x60').style.color='';
      break;
    }
  }
});

$("#file17").change(function(e) {

  var image, file;

  if ((file = this.files[0])) {
    var val = $(this).val();

    switch(val.substring(val.lastIndexOf('.') + 1).toLowerCase()){
      case 'gif': case 'jpg': case 'png':
      //atas sini
      image = new Image();

      image.onload = function() {
        // alert("The image width is " +this.width + " and image height is " + this.height);
        if(this.width == 640 && this.height == 960)
        {
          tampQ+=1;
          document.getElementById('640x960').style.color='green';
          green+=1;
        }else if (this.width != 640 && this.height != 960) {
          if(tampQ>0)
          {
            tampQ-=1;
          }
          document.getElementById('640x960').style.color='red';
        }
        else {
          tampQ = 0;
          document.getElementById('640x960').style.color='red';
        }

        if(green>=6)
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
      document.getElementById('640x960').style.color='';
      break;
    }
  }
});

$("#file18").change(function(e) {

  var image, file;

  if ((file = this.files[0])) {
    var val = $(this).val();

    switch(val.substring(val.lastIndexOf('.') + 1).toLowerCase()){
      case 'gif': case 'jpg': case 'png':
      //atas sini
      image = new Image();

      image.onload = function() {
        // alert("The image width is " +this.width + " and image height is " + this.height);
        if(this.width == 728 && this.height == 90)
        {
          tampR+=1;
          document.getElementById('728x90').style.color='green';
          green+=1;
        }else if (this.width != 728 && this.height != 90) {
          if(tampR>0)
          {
            tampR-=1;
          }
          document.getElementById('728x90').style.color='red';
        }
        else {
          tampR = 0;
          document.getElementById('728x90').style.color='red';
        }

        if(green>=6)
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
      document.getElementById('728x90').style.color='';
      break;
    }
  }
});

$("#file19").change(function(e) {

  var image, file;

  if ((file = this.files[0])) {
    var val = $(this).val();

    switch(val.substring(val.lastIndexOf('.') + 1).toLowerCase()){
      case 'gif': case 'jpg': case 'png':
      //atas sini
      image = new Image();

      image.onload = function() {
        // alert("The image width is " +this.width + " and image height is " + this.height);
        if(this.width == 800 && this.height == 440)
        {
          tampS+=1;
          document.getElementById('800x440').style.color='green';
          green+=1;

        }else if (this.width != 800 && this.height != 440) {
          if(tampS>0)
          {
            tampS-=1;
          }
          document.getElementById('800x440').style.color='red';
        }
        else {
          tampS = 0;
          document.getElementById('800x440').style.color='red';
        }

        if(green>=6)
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
      document.getElementById('800x440').style.color='';
      break;
    }
  }
});

$("#file20").change(function(e) {

  var image, file;

  if ((file = this.files[0])) {
    var val = $(this).val();

    switch(val.substring(val.lastIndexOf('.') + 1).toLowerCase()){
      case 'gif': case 'jpg': case 'png':
      //atas sini
      image = new Image();

      image.onload = function() {
        // alert("The image width is " +this.width + " and image height is " + this.height);
        if(this.width == 1024 && this.height == 768)
        {
          tampT+=1;
          document.getElementById('1024x768').style.color='green';
          green+=1;
        }else if (this.width != 1024 && this.height != 768) {
          if(tampT>0)
          {
            tampT-=1;
          }
          document.getElementById('1024x768').style.color='red';
        }
        else {
          tampT = 0;
          document.getElementById('1024x768').style.color='red';
        }

        if(green>=6)
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
      document.getElementById('1024x768').style.color='';
      break;
    }
  }
});

</script>

<script type="text/javascript">
$("#cp_country").select2();
$('#cp_country').on('change', function(){
  myTest = $("#cp_country").val();
  document.getElementById('hd_country').value = myTest;
  });

$("#cp_schedule").select2();
$("#cp_delivmethod").select2();
$("#cp_target").select2();
$("#cp_tag").select2();
</script>
</div>

<?php $this->assets->outputJs(); ?>

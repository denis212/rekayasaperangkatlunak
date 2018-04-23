<title>Pendaftaran Referal</title>
<?php $this->assets->outputCss(); ?>
{{ content() }}

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script   src="https://code.jquery.com/jquery-2.2.3.min.js"   integrity="sha256-a23g1Nt4dtEYOj7bR+vTu7+T8VP13humZFBJNIYoEJo="   crossorigin="anonymous"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.0/js/bootstrap-datepicker.min.js"></script>
<!-- additional -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"> -->
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-treeview/1.2.0/bootstrap-treeview.min.css" /> -->
<!-- <script type="text/javascript" charset="utf8" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-treeview/1.2.0/bootstrap-treeview.min.js"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/jstree.min.js"></script>
<!-- <div class="container" style="background-color:#f5f5f5; margin-top: 25px; margin-bottom:20px; border:1px solid #e3e3e3"> -->

{{ stylesheet_link('dist/bootstrap-treeview.min.css')}}
{{ javascript_include('dist/bootstrap-treeview.min.js') }}

<div class="container" style=" margin-right: 25px; margin-left:25px; width:auto;">
  <div class="col-md-12">
    <br><br>
    <div class="box box-primary" style="margin-top:20px;">
      <div class="row" style="margin-right:20px;">
        <nav>
          <ul class="pager">
            <li class="next"></li>
          </ul>
        </nav>
      </div>

      <legend style="margin-left:15px;">Pendaftaran Referal</legend>
      <br>
      <!-- <div class="well clearfix">
      	<div class="col-md-7">
      		<div class="panel panel-default">
      		 <div class="panel-heading">
      			TREE REFERAL
      		 </div>
      		 <div class="panel-body">
      			<div class="row">
      				<div class="col-lg-7" id="treeview_json">

      				</div>
      			</div>
      		 </div>
      		</div>
      	</div>
      </div> -->
      <div align="center">
        <div class="well clearfix" align="left">
          <div class="col-md-2"></div>
          <div class="col-md-8">
            <div class="panel panel-default">
        		 <div class="panel-heading">
        			Structure Tree Referal
        		 </div>
        		 <div class="panel-body">
        			<div class="row">
        				<div class="col-md-8" id="treeview_json">

        				</div>
        			</div>
        		 </div>
        		</div>
          </div>
        </div>
        <form method='post' enctype='multipart/form-data' class="form-horizontal" autocomplete="off">
          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('name') }}</label>
            <div class="col-md-5">
              {{ form.render('name',['class':'form-control']) }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('email') }}</label>
            <div class="col-md-5">
              {{ form.render('email',['class':'form-control']) }}
            </div>
          </div>

          <!-- <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">form.label('password')</label>
            <div class="col-md-4">
              form.render('password',['class':'form-control','readonly':'readonly'])
            </div>
          </div> -->

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('phone') }}</label>
            <div class="col-md-5">
              {{ form.render('phone',['class':'form-control']) }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('no_ktp') }}</label>
            <div class="col-md-5">
              {{ form.render('no_ktp',['class':'form-control']) }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('level1') }}</label>
            <div class="col-md-4">
              {{ form.render('level1',['class':'form-control']) }}
            </div>
          </div>
          <script>
          $("#level1").change(function() {
            $a = document.getElementById('level1').value;
            if($a == "")
            {
              document.getElementById("coderef").readOnly = false;
            }else {
              document.getElementById("coderef").readOnly = true;
            }

            var value = $(this).val();
            $.ajax({
                type: "POST",
                url: "http://localhost/jpu/users/grabcoderef",
                data: {"id": value},
                success: function(response){
                    parsed = $.parseJSON(response);

                    $.each(parsed, function(){
                        // $("#coderef").append('<option value="'+ this.id +'">'+ this.name +'</option>');
                          $("#coderef").val(this.coderef);
                     });
                }
            });

          });

          </script>
          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('coderef') }}</label>
            <div class="col-md-4">
              {{ form.render('coderef',['class':'form-control']) }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('commision') }}</label>
            <div class="col-md-4">
              {{ form.render('commision',['class':'form-control']) }}
            </div>
          </div>


          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput"></label>
            <div class="col-md-4">
              {{ form.render('Sign Up',['class':'btn btn-primary btn-block btn-flat']) }}
            </div>
          </div>



          <input type="hidden" name="<?php echo $this->security->getTokenKey(); ?>" value="<?php echo $this->security->getToken(); ?>"/>

        </form>

      </div>

    </div>
  </div>
  <script type="text/javascript">
   jQuery(function($) {
  $(document).ready(function(){
  	var treeData;
  	$.ajax({
  	  type: "GET",
  	  url: "http://localhost/jpu/users/experia",
  	  dataType: "json",
  	  success: function(response)
  	  {
  		initTree(response)
  	  }
  	});
    function initTree(treeData) {
      var dataArray = [];
          for (var key in treeData) {
              if (treeData.hasOwnProperty(key)) {
                  dataArray.push(treeData[key]);
              }
          };
      $('#treeview_json').treeview({data: dataArray});

    }

  	});

  });
  </script>
</div>
<?php $this->assets->outputJs(); ?>

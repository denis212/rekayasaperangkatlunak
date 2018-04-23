<title>Create Data Schedule</title>
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
            <li class="next"><?php echo $this->tag->linkTo(["schedule/search", "Search Data","style"=>"background-color:#c52d2f; color: #fff;"]); ?></li>
          </ul>
        </nav>
      </div>

      <legend>Create Data Schedule</legend>

      <div align="center">

        <form method='post' enctype='multipart/form-data' class="form-horizontal" autocomplete="off">
          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('id_doctor') }}</label>
            <div class="col-md-4">
              {{ form.render('id_doctor',['class':'form-control']) }}
              {{ form.messages('id_doctor') }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('id_rs') }}</label>
            <div class="col-md-4">
              {{ form.render('id_rs',['class':'form-control']) }}
              {{ form.messages('id_rs') }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('id_expertise') }}</label>
            <div class="col-md-4">
              {{ form.render('id_expertise',['class':'form-control']) }}
              {{ form.messages('id_expertise') }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('monday') }}</label>
            <div class="col-md-4">
              {{ form.render('monday',['class':'form-control']) }}
              {{ form.messages('monday') }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('tuesday') }}</label>
            <div class="col-md-4">
              {{ form.render('tuesday',['class':'form-control']) }}
              {{ form.messages('tuesday') }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('wednesday') }}</label>
            <div class="col-md-4">
              {{ form.render('wednesday',['class':'form-control']) }}
              {{ form.messages('wednesday') }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('thurday') }}</label>
            <div class="col-md-4">
              {{ form.render('thurday',['class':'form-control']) }}
              {{ form.messages('thurday') }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('friday') }}</label>
            <div class="col-md-4">
              {{ form.render('friday',['class':'form-control']) }}
              {{ form.messages('friday') }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('saturday') }}</label>
            <div class="col-md-4">
              {{ form.render('saturday',['class':'form-control']) }}
              {{ form.messages('saturday') }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('sunday') }}</label>
            <div class="col-md-4">
              {{ form.render('sunday',['class':'form-control']) }}
              {{ form.messages('sunday') }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('status') }}</label>
            <div class="col-md-4">
              {{ form.render('status',['class':'form-control']) }}
              {{ form.messages('status') }}
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

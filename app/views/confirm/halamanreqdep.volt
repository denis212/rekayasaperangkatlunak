<title>Request Deposit</title>
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
    <div class="row" style="margin-right:20px;">
      <nav>
        <ul class="pager">
            <li class="previous pull-left">
                {{ link_to("confirm/reqdeposit", "&larr; Go Back", "class": "btn btn-primary", "style":"background-color:#c52d2f; color: #fff;") }}
            </li>
            <li class="pull-right">
                <!-- {{ link_to("users/create", "Create users", "class": "btn btn-primary", "style":"background-color:#c52d2f; color: #fff;") }} -->
            </li>
        </ul>
      </nav>
    </div>
  <div class="col-md-12">
    <br><br>
    <div class="box box-primary" style="margin-top:20px;">

      <legend style="margin-left:15px;">Silahkan Transfer Ke :</legend>
      <br>
      <div align="center">
        <form method='post' enctype='multipart/form-data' class="form-horizontal" autocomplete="off">
          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('rekening') }}</label>
            <div class="col-md-4">
              {{ form.render('rekening',['class':'form-control','value':request.getQuery('rekening'),'readonly':'readonly']) }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('namaakun') }}</label>
            <div class="col-md-4">
              {{ form.render('namaakun',['class':'form-control','value':request.getQuery('namaakun'),'readonly':'readonly']) }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('cabang') }}</label>
            <div class="col-md-4">
              {{ form.render('cabang',['class':'form-control','value':request.getQuery('cabang'),'readonly':'readonly']) }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('nominal') }}</label>
            <div class="col-md-4">
              {{ form.render('nominal',['class':'form-control','value':request.getQuery('nominal'),'readonly':'readonly']) }}
            </div>
          </div>

          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">{{ form.label('bankname') }}</label>
            <div class="col-md-4">
              {{ form.render('bankname',['class':'form-control','value':request.getQuery('bankname'),'readonly':'readonly']) }}
            </div>
          </div>

        </form>
        <br>

      </div>

    </div>
  </div>
</div>
<?php $this->assets->outputJs(); ?>

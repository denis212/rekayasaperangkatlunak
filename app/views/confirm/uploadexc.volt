<title>Aktivasi User</title>
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
    <br><br>
    <div class="box box-primary" style="margin-top:20px;">
      <div class="row" style="margin-right:20px;">
        <nav>
          <ul class="pager">
            <li class="next"></li>
          </ul>
        </nav>
      </div>

      <legend style="margin-left:15px;">Aktivasi User</legend>
      <br>
      <div align="center">

        <form method='post' enctype='multipart/form-data' class="form-horizontal" autocomplete="off">
          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput">Pilih File Excel :</label>
            <div class="col-md-4">
               <input name="excel" type="file" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-4 control-label" for="textinput"></label>
            <div class="col-md-4">
              <input name="submit" type="submit" value="Import" class="btn btn-primary" />
            </div>
          </div>
          <br>
        </form>

      </div>

    </div>
  </div>
</div>
<?php $this->assets->outputJs(); ?>

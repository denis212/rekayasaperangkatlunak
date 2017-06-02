<title>Create Users - GamanAds</title>
 <?php $this->assets->outputCss(); ?>
<div class="container" style="background-color:#f5f5f5; margin-right: 25px; margin-left:25px; width:auto;">
<ul class="pager">
    <li class="previous pull-left">
        {{ link_to("users", "&larr; Go Back","class": "btn btn-primary", "style":"background-color:#c52d2f; color: #fff;") }}
    </li>
    <li class="pull-right">

    </li>
</ul>

{{ content() }}

<form method='post' enctype='multipart/form-data' class="form-horizontal" autocomplete="off">
    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">Name * </label>
      <div class="col-md-4">
        {{ form.render("name",['class':'form-control']) }}
        {{ form.messages('name') }}
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">Last Name * </label>
      <div class="col-md-4">
        {{ form.render("lastname",['class':'form-control']) }}
        {{ form.messages('lastname') }}
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">E-Mail * </label>
      <div class="col-md-4">
        {{ form.render("email",['class':'form-control']) }}
        {{ form.messages('email') }}
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">Profile * </label>
      <div class="col-md-4">
        {{ form.render("profilesId",['class':'form-control']) }}
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">Skype * </label>
      <div class="col-md-4">
        {{ form.render('skype',['class':'form-control']) }}
        {{ form.messages('skype') }}
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">Type Account </label>
      <div class="col-md-4">
        {{ form.render('type',['class':'form-control']) }}
        {{ form.messages('type') }}
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">Phone * </label>
      <div class="col-md-4">
        {{ form.render('phone',['class':'form-control']) }}
        {{ form.messages('phone') }}
      </div>
    </div>

    <div class="form-group">
      <label class="col-md-4 control-label" for="textinput">Country </label>
      <div class="col-md-4">
        {{ form.render('country',['class':'form-control']) }}
        {{ form.messages('country') }} <br>
        {{ submit_button("Save", "class": "btn btn-success") }}
      </div>
    </div>

</form>

<?php $this->assets->outputJs(); ?>
</div>

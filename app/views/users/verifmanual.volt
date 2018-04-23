<title>Verifikasi Reseller - ADMINJPU</title>

<?php $this->assets->outputCss(); ?>

<div class="container" style="background-color:#f5f5f5; margin-right: 25px; margin-left:25px; width:auto;">
<form method="post" autocomplete="off">

{{ content() }}

<div class="center scaffold">
<ul class="pager">
    <li class="previous pull-left">
        {{ link_to("users/listverif", "&larr; Go Back") }}
    </li>
</ul>

    <h2>DATA RESELLER</h2>

    <ul class="nav nav-tabs">
        <li class="active"><a href="#A" data-toggle="tab">Basic</a></li>
    </ul>

<div class="tabbable">
    <div class="tab-content">
        <div class="tab-pane active" id="A">

            {{ form.render("id") }}

            <div class="col-lg-5">

                <div class="clearfix">
                    <label for="name">Name</label>
                  {{ form.render("name",['class':'form-control','style':'width:350px;','readonly':'readonly']) }}
                    {{ form.messages("name") }}
                </div>

                <div class="clearfix">
                    <label for="profilesId">Profile</label>
                    {{ form.render("profilesId",['class':'form-control','style':'width:350px;','readonly':'readonly']) }}
                </div>

                <div class="clearfix">
                    <label for="suspended">Suspended?</label>
                    {{ form.render("suspended",['class':'form-control','style':'width:350px;','readonly':'readonly']) }}
                </div>
                <div class="clearfix">
                    <label for="phone">Code Referal</label>
                    {{ form.render("codereff",['class':'form-control','style':'width:350px;','readonly':'readonly']) }}
                    {{ form.messages("codereff") }}
                </div>

            </div>

            <div class="col-lg-5">

                <div class="clearfix">
                    <label for="email">E-Mail</label>
                    {{ form.render("email",['class':'form-control','style':'width:350px;','readonly':'readonly']) }}
                    {{ form.messages("email") }}
                </div>

                <div class="clearfix">
                    <label for="banned">Banned?</label>
                    {{ form.render("banned",['class':'form-control','style':'width:350px;','readonly':'readonly']) }}
                </div>

                <div class="clearfix">
                    <label for="active">Confirmed?</label>
                    {{ form.render("active",['class':'form-control','style':'width:350px;','readonly':'readonly']) }}
                </div>

                <div class="clearfix">
                    <label for="phone">Phone Number</label>
                    {{ form.render("phone",['class':'form-control','style':'width:350px;','readonly':'readonly']) }}
                    {{ form.messages("phone") }}
                </div>
            </div>
        </div>



    </div>
</div>

    </form>
</div>

<?php $this->assets->outputJs(); ?>
</div>

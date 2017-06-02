<title>Campaign - GamanAds</title>

<?php
/**
 * @var \Phalcon\Mvc\View\Engine\Php $this
 */
?>

<div class="page-header">
    <h1>
        Search campaign
    </h1>
    <p>
        <?php echo $this->tag->linkTo(["campaign/create", "Create campaign"]) ?>
    </p>
</div>

<?php echo $this->getContent() ?>

<?php
    echo $this->tag->form(
        [
            "campaign/search",
            "autocomplete" => "off",
            "class" => "form-horizontal",
        ]
    );
?>

<div class="form-group">
    <label for="fieldId" class="col-sm-2 control-label">Id</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["id", "type" => "number", "class" => "form-control", "id" => "fieldId"]) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldClientId" class="col-sm-2 control-label">Client</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["client_id", "type" => "number", "class" => "form-control", "id" => "fieldClientId"]) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldClientName" class="col-sm-2 control-label">Client Of Name</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["client_name", "size" => 30, "class" => "form-control", "id" => "fieldClientName"]) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldCpName" class="col-sm-2 control-label">Cp Of Name</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["cp_name", "size" => 30, "class" => "form-control", "id" => "fieldCpName"]) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldCpPricemodel" class="col-sm-2 control-label">Cp Of Pricemodel</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["cp_pricemodel", "size" => 30, "class" => "form-control", "id" => "fieldCpPricemodel"]) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldCpTargeturl" class="col-sm-2 control-label">Cp Of Targeturl</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["cp_targeturl", "size" => 30, "class" => "form-control", "id" => "fieldCpTargeturl"]) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldCpStartenddate" class="col-sm-2 control-label">Cp Of Startenddate</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["cp_startenddate", "size" => 30, "class" => "form-control", "id" => "fieldCpStartenddate"]) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldCpCountry" class="col-sm-2 control-label">Cp Of Country</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["cp_country", "size" => 30, "class" => "form-control", "id" => "fieldCpCountry"]) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldCpDailybudget" class="col-sm-2 control-label">Cp Of Dailybudget</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["cp_dailybudget", "size" => 30, "class" => "form-control", "id" => "fieldCpDailybudget"]) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldCpTotalbudget" class="col-sm-2 control-label">Cp Of Totalbudget</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["cp_totalbudget", "size" => 30, "class" => "form-control", "id" => "fieldCpTotalbudget"]) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldCpSchedule" class="col-sm-2 control-label">Cp Of Schedule</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["cp_schedule", "size" => 30, "class" => "form-control", "id" => "fieldCpSchedule"]) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldCpDelivmethod" class="col-sm-2 control-label">Cp Of Delivmethod</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["cp_delivmethod", "size" => 30, "class" => "form-control", "id" => "fieldCpDelivmethod"]) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldCpTarget" class="col-sm-2 control-label">Cp Of Target</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["cp_target", "size" => 30, "class" => "form-control", "id" => "fieldCpTarget"]) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldCpAdult" class="col-sm-2 control-label">Cp Of Adult</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["cp_adult", "size" => 30, "class" => "form-control", "id" => "fieldCpAdult"]) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldCpTag" class="col-sm-2 control-label">Cp Of Tag</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["cp_tag", "size" => 30, "class" => "form-control", "id" => "fieldCpTag"]) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldCpZone" class="col-sm-2 control-label">Cp Of Zone</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["cp_zone", "size" => 30, "class" => "form-control", "id" => "fieldCpZone"]) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldCpGettraffic" class="col-sm-2 control-label">Cp Of Gettraffic</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["cp_gettraffic", "size" => 30, "class" => "form-control", "id" => "fieldCpGettraffic"]) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldCpGuarantee" class="col-sm-2 control-label">Cp Of Guarantee</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["cp_guarantee", "size" => 30, "class" => "form-control", "id" => "fieldCpGuarantee"]) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldCpTestbudget" class="col-sm-2 control-label">Cp Of Testbudget</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["cp_testbudget", "size" => 30, "class" => "form-control", "id" => "fieldCpTestbudget"]) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldCpMblimit" class="col-sm-2 control-label">Cp Of Mblimit</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["cp_mblimit", "size" => 30, "class" => "form-control", "id" => "fieldCpMblimit"]) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldCpDsktplimit" class="col-sm-2 control-label">Cp Of Dsktplimit</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["cp_dsktplimit", "size" => 30, "class" => "form-control", "id" => "fieldCpDsktplimit"]) ?>
    </div>
</div>


<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
        <?php echo $this->tag->submitButton(["Search", "class" => "btn btn-default"]) ?>
    </div>
</div>

<?php echo $this->tag->endForm(); ?>

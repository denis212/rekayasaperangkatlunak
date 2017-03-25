<?php
/**
 * @var \Phalcon\Mvc\View\Engine\Php $this
 */
?>

<div class="page-header">
    <h1>
        Search adspace
    </h1>
    <p>
        <?php echo $this->tag->linkTo(["adspace/new", "Create adspace"]) ?>
    </p>
</div>

<?php echo $this->getContent() ?>

<?php
    echo $this->tag->form(
        [
            "adspace/search",
            "autocomplete" => "off",
            "class" => "form-horizontal"
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
    <label for="fieldAdUrl" class="col-sm-2 control-label">Ad Of Url</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["ad_url", "size" => 30, "class" => "form-control", "id" => "fieldAdUrl"]) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldAdType" class="col-sm-2 control-label">Ad Of Type</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["ad_type", "size" => 30, "class" => "form-control", "id" => "fieldAdType"]) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldAdGuarantee" class="col-sm-2 control-label">Ad Of Guarantee</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["ad_guarantee", "size" => 30, "class" => "form-control", "id" => "fieldAdGuarantee"]) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldAdStatus" class="col-sm-2 control-label">Ad Of Status</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["ad_status", "size" => 30, "class" => "form-control", "id" => "fieldAdStatus"]) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldCreatedAt" class="col-sm-2 control-label">Created</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["created_at", "size" => 30, "class" => "form-control", "id" => "fieldCreatedAt"]) ?>
    </div>
</div>

<div class="form-group">
    <label for="fieldUpdatedAt" class="col-sm-2 control-label">Updated</label>
    <div class="col-sm-10">
        <?php echo $this->tag->textField(["updated_at", "size" => 30, "class" => "form-control", "id" => "fieldUpdatedAt"]) ?>
    </div>
</div>


<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
        <?php echo $this->tag->submitButton(["Search", "class" => "btn btn-default"]) ?>
    </div>
</div>

<?php echo $this->tag->endForm(); ?>

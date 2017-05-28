<title>Permissions - GamanAds</title>
<?= $this->getContent() ?>
<div class="container">
<form class="form-horizontal" autocomplete="off" method="post">

<h2>Manage Permissions</h2>

<div class="well" align="center">

	<div class="form-group">
	  <label class="col-md-4 control-label" for="textinput">Profile</label>
	  <div class="col-md-4">
	     <?= $this->tag->select(['profileId', $profiles, 'using' => ['id', 'name'], 'useEmpty' => true, 'emptyText' => '...', 'emptyValue' => '', 'class' => 'form-control']) ?>
	  </div>
	</div>

	<div class="form-group">
	    <div class="col-md-4"></div>
	  <div class="col-md-4">
	    <?= $this->tag->submitButton(['Search', 'class' => 'btn btn-primary']) ?>
	  </div>
	</div>

</div>

<?php if ($this->request->isPost() && $profile) { ?>

<?php foreach ($this->acl->getResources() as $resource => $actions) { ?>

	<h3><?= $resource ?></h3>

	<table class="table table-bordered table-striped" align="center">
		<thead>
			<tr>
				<th width="5%"></th>
				<th>Description</th>
			</tr>
		</thead>
		<tbody>
			<?php foreach ($actions as $action) { ?>
			<tr>
				<td align="center"><input type="checkbox" name="permissions[]" value="<?= $resource . '.' . $action ?>"  <?php if (isset($permissions[$resource . '.' . $action])) { ?> checked="checked" <?php } ?>></td>
				<td><?= $this->acl->getActionDescription($action) . ' ' . $resource ?></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>

<?php } ?>

<?php } ?>

</form>

</div>

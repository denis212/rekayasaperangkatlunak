<title>Search Profiles - GamanAds</title>

<?= $this->getContent() ?>
<div class="container" style="background-color:#f5f5f5; margin-right: 25px; margin-left:25px; width:auto;">
<ul class="pager">
    <li class="previous pull-left">
        <?= $this->tag->linkTo(['profiles/index', '&larr; Go Back']) ?>
    </li>
    <li class="pull-right">
        <?= $this->tag->linkTo(['profiles/create', 'Create profiles']) ?>
    </li>
</ul>

<?php $v125997646542894411441iterated = false; ?><?php $v125997646542894411441iterator = $page->items; $v125997646542894411441incr = 0; $v125997646542894411441loop = new stdClass(); $v125997646542894411441loop->self = &$v125997646542894411441loop; $v125997646542894411441loop->length = count($v125997646542894411441iterator); $v125997646542894411441loop->index = 1; $v125997646542894411441loop->index0 = 1; $v125997646542894411441loop->revindex = $v125997646542894411441loop->length; $v125997646542894411441loop->revindex0 = $v125997646542894411441loop->length - 1; ?><?php foreach ($v125997646542894411441iterator as $profile) { ?><?php $v125997646542894411441loop->first = ($v125997646542894411441incr == 0); $v125997646542894411441loop->index = $v125997646542894411441incr + 1; $v125997646542894411441loop->index0 = $v125997646542894411441incr; $v125997646542894411441loop->revindex = $v125997646542894411441loop->length - $v125997646542894411441incr; $v125997646542894411441loop->revindex0 = $v125997646542894411441loop->length - ($v125997646542894411441incr + 1); $v125997646542894411441loop->last = ($v125997646542894411441incr == ($v125997646542894411441loop->length - 1)); ?><?php $v125997646542894411441iterated = true; ?>
<?php if ($v125997646542894411441loop->first) { ?>
<table class="table table-bordered table-striped" align="center">
    <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Active?</th>
        </tr>
    </thead>
<?php } ?>
    <tbody>
        <tr>
            <td><?= $profile->id ?></td>
            <td><?= $profile->name ?></td>
            <td><?= ($profile->active == 'Y' ? 'Yes' : 'No') ?></td>
            <td width="12%"><?= $this->tag->linkTo(['profiles/edit/' . $profile->id, '<i class="icon-pencil"></i> Edit', 'class' => 'btn']) ?></td>
            <td width="12%"><?= $this->tag->linkTo(['profiles/delete/' . $profile->id, '<i class="icon-remove"></i> Delete', 'class' => 'btn']) ?></td>
        </tr>
    </tbody>
<?php if ($v125997646542894411441loop->last) { ?>
    <tbody>
        <tr>
            <td colspan="10" align="right">
                <div class="btn-group">
                    <?= $this->tag->linkTo(['profiles/search', '<i class="icon-fast-backward"></i> First', 'class' => 'btn']) ?>
                    <?= $this->tag->linkTo(['profiles/search?page=' . $page->before, '<i class="icon-step-backward"></i> Previous', 'class' => 'btn ']) ?>
                    <?= $this->tag->linkTo(['profiles/search?page=' . $page->next, '<i class="icon-step-forward"></i> Next', 'class' => 'btn']) ?>
                    <?= $this->tag->linkTo(['profiles/search?page=' . $page->last, '<i class="icon-fast-forward"></i> Last', 'class' => 'btn']) ?>
                    <span class="help-inline"><?= $page->current ?>/<?= $page->total_pages ?></span>
                </div>
            </td>
        </tr>
    <tbody>
</table>
<?php } ?>
<?php $v125997646542894411441incr++; } if (!$v125997646542894411441iterated) { ?>
    No profiles are recorded
<?php } ?>
</div>

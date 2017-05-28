<title>Search Users - GamanAds</title>
<?php $this->assets->outputCss(); ?>
<?= $this->getContent() ?>
<div class="container">
<ul class="pager">
    <li class="previous pull-left">
        <?= $this->tag->linkTo(['users/index', '&larr; Go Back']) ?>
    </li>
    <li class="pull-right">
        <?= $this->tag->linkTo(['users/create', 'Create users']) ?>
    </li>
</ul>

<?php $v123378530834660553661iterated = false; ?><?php $v123378530834660553661iterator = $page->items; $v123378530834660553661incr = 0; $v123378530834660553661loop = new stdClass(); $v123378530834660553661loop->self = &$v123378530834660553661loop; $v123378530834660553661loop->length = count($v123378530834660553661iterator); $v123378530834660553661loop->index = 1; $v123378530834660553661loop->index0 = 1; $v123378530834660553661loop->revindex = $v123378530834660553661loop->length; $v123378530834660553661loop->revindex0 = $v123378530834660553661loop->length - 1; ?><?php foreach ($v123378530834660553661iterator as $user) { ?><?php $v123378530834660553661loop->first = ($v123378530834660553661incr == 0); $v123378530834660553661loop->index = $v123378530834660553661incr + 1; $v123378530834660553661loop->index0 = $v123378530834660553661incr; $v123378530834660553661loop->revindex = $v123378530834660553661loop->length - $v123378530834660553661incr; $v123378530834660553661loop->revindex0 = $v123378530834660553661loop->length - ($v123378530834660553661incr + 1); $v123378530834660553661loop->last = ($v123378530834660553661incr == ($v123378530834660553661loop->length - 1)); ?><?php $v123378530834660553661iterated = true; ?>
<?php if ($v123378530834660553661loop->first) { ?>
<table class="table table-bordered table-striped" align="center">
    <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>LastName</th>
            <th>Email</th>
            <th>Profile</th>
            <th>Banned?</th>
            <th>Suspended?</th>
            <th>Confirmed?</th>

        </tr>
    </thead>
<?php } ?>
    <tbody>
        <tr>
            <td><?= $user->id ?></td>
            <td><?= $user->name ?></td>
            <td><?= $user->lastname ?></td>
            <td><?= $user->email ?></td>
            <td><?= $user->profile->name ?></td>
            <td><?= ($user->banned == 'Y' ? 'Yes' : 'No') ?></td>
            <td><?= ($user->suspended == 'Y' ? 'Yes' : 'No') ?></td>
            <td><?= ($user->active == 'Y' ? 'Yes' : 'No') ?></td>
            <td width="12%"><?= $this->tag->linkTo(['users/edit/' . $user->id, '<i class="icon-pencil"></i> Edit', 'class' => 'btn']) ?></td>
            <td width="12%"><?= $this->tag->linkTo(['users/delete/' . $user->id, '<i class="icon-remove"></i> Delete', 'class' => 'btn']) ?></td>
        </tr>
    </tbody>
<?php if ($v123378530834660553661loop->last) { ?>
    <tbody>
        <tr>
            <td colspan="10" align="right">
                <div class="btn-group">
                    <?= $this->tag->linkTo(['users/search', '<i class="icon-fast-backward"></i> First', 'class' => 'btn']) ?>
                    <?= $this->tag->linkTo(['users/search?page=' . $page->before, '<i class="icon-step-backward"></i> Previous', 'class' => 'btn ']) ?>
                    <?= $this->tag->linkTo(['users/search?page=' . $page->next, '<i class="icon-step-forward"></i> Next', 'class' => 'btn']) ?>
                    <?= $this->tag->linkTo(['users/search?page=' . $page->last, '<i class="icon-fast-forward"></i> Last', 'class' => 'btn']) ?>
                    <span class="help-inline"><?= $page->current ?>/<?= $page->total_pages ?></span>
                </div>
            </td>
        </tr>
    <tbody>
</table>
<?php } ?>
<?php $v123378530834660553661incr++; } if (!$v123378530834660553661iterated) { ?>
    No users are recorded
<?php } ?>
</div>
 <?php $this->assets->outputJs(); ?>

<title>Search Payment - GamanAds</title>
<?php $this->assets->outputCss(); ?>
<?php
/**
 * @var \Phalcon\Mvc\View\Engine\Php $this
 */
?>
<p><?php $this->flashSess->output() ?></p>

<?php use Phalcon\Tag; ?>
<div class="container">
<div class="row">
    <nav>
        <ul class="pager">

        </ul>
    </nav>
</div>

<div class="page-header">
    <h1>Search Payment Result</h1>
</div>

<?php echo $this->getContent(); ?>

<div class="row"  class="row" style='overflow-x:scroll;overflow-y:hidden;'>
    <table class="table table-bordered">
        <thead>
            <tr>
            <th>Client Id</th>
            <th>Status</th>
            <th>Username</th>
            <th>Bank Name</th>
            <th>Branch</th>
            <th>Acc Number</th>
            <th>Acc Name</th>
            <th>Nominal</th>
            <th>Phone</th>
            <th>Email</th>
            <th>Currency</th>
            <th>Created At</th>
            <th>Upddate At</th>
                <th></th>
                <!-- <th></th> -->
            </tr>
        </thead>
        <tbody>
        <?php foreach ($page->items as $confirm): ?>
            <tr>
            <td><?php echo $confirm->user_id ?></td>
            <td><?php
                    if($confirm->status == 'N')
                    echo "Unapprove";
                    else
                    echo "Approved";
                    ?></td>
            <td><?php echo $confirm->username ?></td>
            <td><?php echo $confirm->bankname ?></td>
            <td><?php echo $confirm->branch ?></td>
            <td><?php echo $confirm->accountnumber ?></td>
            <td><?php echo $confirm->accountname ?></td>
            <td><?php echo $confirm->nominal ?></td>
            <td><?php echo $confirm->phone ?></td>
            <td><?php echo $confirm->email ?></td>
            <td><?php echo $confirm->currency ?></td>
            <td><?php echo $confirm->created_at ?></td>
            <td><?php echo $confirm->upddate_at ?></td>

            <td><?php echo $this->tag->linkTo(["confirm/approve/".$confirm->id."/".$page->current, "<i class='glyphicon glyphicon-edit'></i> Approve Payment", "class"=>"btn btn-default"]); ?></td>
            <!-- <td><php echo $this->tag->linkTo(["confirm/unapprove/" . $confirm->id, "<i class='glyphicon glyphicon-edit'></i> Unapprove Payment", "class"=>"btn btn-default"]); ?></td> -->
            </tr>
        <?php endforeach; ?>
        </tbody>
    </table>
</div>
<br>
<div class="row">
    <div class="col-md-9">
    </div>
    <div class="col-md-3">
      <div class="btn-group">
        {{ link_to("confirm/search", '<i class="icon-fast-backward"></i> First', "class": "btn btn-default") }}
        {{ link_to("confirm/search?page=" ~ page.before, '<i class="icon-step-backward"></i> Previous', "class": "btn btn-default ") }}
        {{ link_to("confirm/search?page=" ~ page.next, '<i class="icon-step-forward"></i> Next', "class": "btn btn-default") }}
        {{ link_to("confirm/search?page=" ~ page.last, '<i class="icon-fast-forward"></i> Last', "class": "btn btn-default") }}
        <span class="help-inline">{{ page.current }}/{{ page.total_pages }}</span>
      </div>
    </div>
</div>
</div>
 <?php $this->assets->outputJs(); ?>

<title>Search Ad Space - GamanAds</title>
<?php $this->assets->outputCss(); ?>
<?php
/**
 * @var \Phalcon\Mvc\View\Engine\Php $this
 */
?>

<?php use Phalcon\Tag; ?>
<div class="container">
<div class="row">
    <nav>
        <ul class="pager">
            <li class="previous"><?php echo $this->tag->linkTo(["adspace/create", "Go Back"]); ?></li>
            <li class="next"><?php echo $this->tag->linkTo(["adspace/create", "Create "]); ?></li>
        </ul>
    </nav>
</div>

<div class="page-header">
    <h1>Search result</h1>
</div>

<?php echo $this->getContent(); ?>


<div class="row"  class="row" style='overflow-x:scroll;overflow-y:hidden;'>
  <div>
    <form method='post'>
      <table>
        <tr>
          <?php if($this->auth->getProfilesId() == 1){?>
          <th>{{form.label('client_search')}}</th>
          <?php } ?>
          <th>{{form.label('ad_typesearch')}}</th>
          <th>
            {{form.label('cp_status')}}
          </th>
        </tr>
         <tr>
           <?php if($this->auth->getProfilesId() == 1){?>
           <td style="padding:5px;">
             {{form.render('client_search',['class':'form-control'])}}
           </td>
           <?php } ?>
           <td style="padding:5px;">{{form.render('ad_typesearch',['class':'form-control'])}}</td>
           <td style="padding:5px;">
             {{form.render('cp_status',['class':'form-control'])}}
           </td>
           <td></td>
         </tr>
         <tr>
           <td style="padding:5px;">{{form.render('Search',['class':'btn btn-primary btn-success'])}}</td>
         </tr>
      </table>
    </form>
  </div>

  <br>
    <table class="table table-bordered">
        <thead>
            <tr>
            <th>Id</th>
            <th>Status</th>
            <th>Client Name</th>
            <th>Ad Url</th>
            <th>Ad Type</th>
            <th>Ad Guarantee</th>
            <th>Active After Post</th>
            <th>Created</th>
            <th>Updated</th>
                <th></th>
                <th></th>
                <th></th>
            </tr>
        </thead>
        <tbody>
        <?php foreach ($page->items as $adspace): ?>
            <tr>
            <td><?php echo $adspace->id ?></td>
            <td>
              <?php
                if($adspace->status == 'a')
                  echo "Active";
                elseif ($adspace->status == 'n') {
                  echo "Inactive";
                }

              ?>
            </td>
            <td><?php echo $adspace->client_name ?></td>
            <td><?php echo $adspace->ad_url ?></td>
            <td><?php echo $adspace->ad_type ?></td>
            <td>
              <?php
                if($adspace->ad_guarantee == 'yes')
                  echo "Yes";
                else
                  echo "No";
              ?>
            </td>
            <td>
              <?php
                if($adspace->ad_status == 'yes')
                  echo "Yes";
                else
                  echo "No";
              ?>
            </td>
            <td><?php echo $adspace->created_at ?></td>
            <td><?php echo $adspace->updated_at ?></td>

                <td><?php echo $this->tag->linkTo(["adspace/edit/" . $adspace->id, "<i class='glyphicon glyphicon-edit'></i> Edit", "class"=>"btn btn-default"]); ?></td>
                <td><?php echo $this->tag->linkTo(["adspace/delete/" . $adspace->id, "<i class='glyphicon glyphicon-remove'></i> Delete", "class"=>"btn btn-default"]); ?></td>
                <?php if($this->auth->getProfilesId() == 1){?>
                <td>
                  <?php
                  if($adspace->status == 'n')
                    echo $this->tag->linkTo(["adspace/activate/" . $adspace->id.'/'.$page->current, "<i class='glyphicon glyphicon-play'></i> Activate", "class"=>"btn btn-default"]);
                  else
                  echo $this->tag->linkTo(["adspace/activate/" . $adspace->id.'/'.$page->current, "<i class='glyphicon glyphicon-stop'></i> Deactivate", "class"=>"btn btn-default"]);
                  ?>
                </td>
                <?php } else { ?>
                <td>
                </td>
                <?php } ?>
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
        {{ link_to("adspace/search", '<i class="icon-fast-backward"></i> First', "class": "btn btn-default") }}
        {{ link_to("adspace/search?page=" ~ page.before, '<i class="icon-step-backward"></i> Previous', "class": "btn btn-default ") }}
        {{ link_to("adspace/search?page=" ~ page.next, '<i class="icon-step-forward"></i> Next', "class": "btn btn-default") }}
        {{ link_to("adspace/search?page=" ~ page.last, '<i class="icon-fast-forward"></i> Last', "class": "btn btn-default") }}
        <span class="help-inline">{{ page.current }}/{{ page.total_pages }}</span>
      </div>
    </div>
</div>
</div>
<?php $this->assets->outputJs(); ?>

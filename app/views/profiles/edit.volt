<title>Edit Profiles - GamanAds</title>

<div class="container">
<form method="post" autocomplete="off">

<ul class="pager">
    <li class="previous pull-left">
        {{ link_to("profiles", "&larr; Go Back") }}
    </li>
    <li class="pull-right">
        {{ submit_button("Save", "class": "btn btn-success") }}
    </li>
</ul>

{{ content() }}

<div class="center scaffold">

    <h2>Edit profile</h2>
</div>

<div class="container">

  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Basic</a></li>
    <li><a data-toggle="tab" href="#menu1">Users</a></li>

  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
        {{ form.render("id") }}
          <div class="col-lg-5">
            <div class="clearfix">
                <label for="name">Name</label>
                {{ form.render("name",['class':'form-control','style':'width:350px;']) }}
            </div>

            <div class="clearfix">
                <label for="active">Active?</label>
                {{ form.render("active",['class':'form-control','style':'width:350px;']) }}
            </div>
        </div>
    </div>
    <div id="menu1" class="tab-pane fade">
      <p>
          <table class="table table-bordered table-striped" align="center">
              <thead>
                  <tr>
                      <th>Id</th>
                      <th>Name</th>
                      <th>Banned?</th>
                      <th>Suspended?</th>
                      <th>Active?</th>
                  </tr>
              </thead>
              <tbody>
              {% for user in profile.users %}
                  <tr>
                      <td>{{ user.id }}</td>
                      <td>{{ user.name }}</td>
                      <td>{{ user.banned == 'Y' ? 'Yes' : 'No' }}</td>
                      <td>{{ user.suspended == 'Y' ? 'Yes' : 'No' }}</td>
                      <td>{{ user.active == 'Y' ? 'Yes' : 'No' }}</td>
                      <td width="12%">{{ link_to("users/edit/" ~ user.id, '<i class="icon-pencil"></i> Edit', "class": "btn") }}</td>
                      <td width="12%">{{ link_to("users/delete/" ~ user.id, '<i class="icon-remove"></i> Delete', "class": "btn") }}</td>
                  </tr>
              {% else %}
                  <tr><td colspan="3" align="center">There are no users assigned to this profile</td></tr>
              {% endfor %}
              </tbody>
          </table>
      </p>
    </div>
  </div>
</div>

</form>
</div>

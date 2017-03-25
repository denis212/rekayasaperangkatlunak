<title>Permissions - GamanAds</title>
{{ content() }}
<div class="container">
<form class="form-horizontal" autocomplete="off" method="post">

<h2>Manage Permissions</h2>

<div class="well" align="center">

	<div class="form-group">
	  <label class="col-md-4 control-label" for="textinput">Profile</label>
	  <div class="col-md-4">
	     {{ select('profileId', profiles, 'using': ['id', 'name'], 'useEmpty': true, 'emptyText': '...', 'emptyValue': '','class':'form-control') }}
	  </div>
	</div>

	<div class="form-group">
	    <div class="col-md-4"></div>
	  <div class="col-md-4">
	    {{ submit_button('Search', 'class': 'btn btn-primary') }}
	  </div>
	</div>

</div>

{% if request.isPost() and profile %}

{% for resource, actions in acl.getResources() %}

	<h3>{{ resource }}</h3>

	<table class="table table-bordered table-striped" align="center">
		<thead>
			<tr>
				<th width="5%"></th>
				<th>Description</th>
			</tr>
		</thead>
		<tbody>
			{% for action in actions %}
			<tr>
				<td align="center"><input type="checkbox" name="permissions[]" value="{{ resource ~ '.' ~ action }}"  {% if permissions[resource ~ '.' ~ action] is defined %} checked="checked" {% endif %}></td>
				<td>{{ acl.getActionDescription(action) ~ ' ' ~ resource }}</td>
			</tr>
			{% endfor %}
		</tbody>
	</table>

{% endfor %}

{% endif %}

</form>

</div>

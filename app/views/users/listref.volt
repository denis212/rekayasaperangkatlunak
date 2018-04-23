<title>Search Users - ADMINJPU</title>
<?php $this->assets->outputCss(); ?>
{{ content() }}
<div class="container" style="background-color:#f5f5f5; margin-right: 25px; margin-left:25px; width:auto;">
<ul class="pager" style="margin-top:50px;">
    <li class="previous pull-left">
        {{ link_to("users/createref", "&larr; Go Back", "class": "btn btn-primary", "style":"background-color:#c52d2f; color: #fff;") }}
    </li>
    <li class="pull-right">
        <!-- {{ link_to("users/create", "Create users", "class": "btn btn-primary", "style":"background-color:#c52d2f; color: #fff;") }} -->
    </li>
</ul>

{% for user in page.items %}
{% if loop.first %}
<div style="overflow-x:scroll;">
<table class="table table-bordered table-striped" align="center" style="margin-top: 70px;">
    <thead>
        <tr>
            <!-- <th>Id</th> -->
            <th>Name</th>
            <th>LastName</th>
            <th>Email</th>
            <th>Profile</th>
            <th>Phone</th>
            <th>No KTP</th>
            <th>Code Referal</th>
            <th>Commision</th>
            <th>Status</th>
        </tr>
    </thead>
{% endif %}
    <tbody style="">
        <tr>
            <!-- <td>{{ user.id }}</td>   -->
            <td>{{ user.name }}</td>
            <td>{{ user.lastname }}</td>
            <td>{{ user.email }}</td>
            <td>{{ user.profile.name }}</td>
            <td>{{ user.phone }}</td>
            <td>{{ user.no_ktp }}</td>
            <td>{{ user.coderef }}</td>
            <td>{{ user.commision }}</td>
            <td>{{ user.active == 'Y' ? 'Active' : 'Inactive' }}</td>
            <td width="12%">{{ link_to("users/editref/" ~ user.id, '<i class="icon-pencil"></i> Edit', "class": "btn btn-info") }}</td>
            <td width="12%">{{ link_to("users/deleteref/" ~ user.id, '<i class="icon-remove"></i> Delete', "class": "btn btn-warning") }}</td>
        </tr>
    </tbody>
{% if loop.last %}
    <tbody>
        <tr>
            <td colspan="10" align="right">
                <div class="btn-group">
                    {{ link_to("users/listref", '<i class="icon-fast-backward"></i> First', "class": "btn btn-info") }}
                    {{ link_to("users/listref?page=" ~ page.before, '<i class="icon-step-backward"></i> Previous', "class": "btn btn-info ") }}
                    {{ link_to("users/listref?page=" ~ page.next, '<i class="icon-step-forward"></i> Next', "class": "btn btn-info") }}
                    {{ link_to("users/listref?page=" ~ page.last, '<i class="icon-fast-forward"></i> Last', "class": "btn btn-info") }}
                    <span class="help-inline">{{ page.current }}/{{ page.total_pages }}</span>
                </div>
            </td>
        </tr>
    <tbody>
</table>
{% endif %}
{% else %}
    No users are recorded
{% endfor %}
</div>
</div>
 <?php $this->assets->outputJs(); ?>

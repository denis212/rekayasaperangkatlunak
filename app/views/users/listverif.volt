<title>Search Users - AdminJPU</title>
<?php $this->assets->outputCss(); ?>
{{ content() }}
<div class="container" style="background-color:#f5f5f5; margin-right: 25px; margin-left:25px; width:auto;">
</br>

{% for user in page.items %}
{% if loop.first %}
<table class="table table-bordered table-striped" align="center">
    <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Email</th>
            <th>Profile</th>
            <th>Phone</th>
            <th>No KTP</th>
            <th>Code Referal</th>
            <th>Status</th>
        </tr>
    </thead>
{% endif %}
    <tbody>
        <tr>
            <td>{{ user.id }}</td>
            <td>{{ user.name }}</td>
            <td>{{ user.email }}</td>
            <td>{{ user.profile.name }}</td>
            <td>{{ user.phone}}</td>
            <td>{{ user.no_ktp}}</td>
            <td>{{ user.coderef}}</td>
            <td>{{ user.active == 'Y' ? 'Yes' : 'No' }}</td>
            <td width="12%">{{ link_to("users/verifmanual/" ~ user.id, '<i class="icon-pencil"></i> View Data Reseller', "class": "btn btn-success") }}</td>
        </tr>
    </tbody>
{% if loop.last %}
    <tbody>
        <tr>
            <td colspan="10" align="right">
                <div class="btn-group">
                    {{ link_to("users/listverif", '<i class="icon-fast-backward"></i> First', "class": "btn btn-info") }}
                    {{ link_to("users/listverif?page=" ~ page.before, '<i class="icon-step-backward"></i> Previous', "class": "btn btn-info ") }}
                    {{ link_to("users/listverif?page=" ~ page.next, '<i class="icon-step-forward"></i> Next', "class": "btn btn-info") }}
                    {{ link_to("users/listverif?page=" ~ page.last, '<i class="icon-fast-forward"></i> Last', "class": "btn btn-info") }}
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
 <?php $this->assets->outputJs(); ?>

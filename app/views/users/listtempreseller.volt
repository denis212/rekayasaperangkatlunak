<title>Search Data Reseller Sementara - AdminJPU</title>
<?php $this->assets->outputCss(); ?>
{{ content() }}
<div class="container" style="background-color:#f5f5f5; margin-right: 25px; margin-left:25px; width:auto;">
</br>
</br>

{% for user in page.items %}
{% if loop.first %}
<table class="table table-bordered table-striped" align="center">
    <thead>
        <tr>
          <th>Nama</th>
          <th>Phone</th>
          <th>Code Referal</th>

        </tr>
    </thead>
{% endif %}
    <tbody>
        <tr>
          <td>{{ user.nama }}</td>
          <td>{{ user.no_hp}}</td>
          <td>{{ user.coderef}}</td>
          <td width="12%">{{ link_to("users/edittempres/" ~ user.no_hp, '<i class="icon-pencil"></i> Edit', "class": "btn") }}</td>
          <td width="12%">{{ link_to("users/deletetempres/" ~ user.no_hp, '<i class="icon-remove"></i> Delete', "class": "btn") }}</td>
        </tr>
    </tbody>
{% if loop.last %}
    <tbody>
        <tr>
            <td colspan="10" align="right">
                <div class="btn-group">
                    {{ link_to("users/listtempreseller", '<i class="icon-fast-backward"></i> First', "class": "btn btn-info") }}
                    {{ link_to("users/listtempreseller?page=" ~ page.before, '<i class="icon-step-backward"></i> Previous', "class": "btn btn-info ") }}
                    {{ link_to("users/listtempreseller?page=" ~ page.next, '<i class="icon-step-forward"></i> Next', "class": "btn btn-info") }}
                    {{ link_to("users/listtempreseller?page=" ~ page.last, '<i class="icon-fast-forward"></i> Last', "class": "btn btn-info") }}
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

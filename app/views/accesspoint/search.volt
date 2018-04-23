<title>Search Users - GamanAds</title>
<?php $this->assets->outputCss(); ?>
{{ content() }}
<div class="container" style="background-color:#f5f5f5; margin-right: 25px; margin-left:25px; width:auto;">
<ul class="pager">
    <li class="pull-right">
        {{ link_to("accesspoint/create", "Create Access Point", "class": "btn btn-primary", "style":"background-color:#c52d2f; color: #fff;") }}
    </li>
</ul>

<div>
    <form method='post'>
      <table>
        <tr>
          <td>
            {{form.label('nama_agen')}}
          </td>
          <td>
            {{form.label('merk')}}
          </td>
          <td>
            {{form.label('serial_number')}}
          </td>
        </tr>
         <tr>
           <td>
             {{form.render('nama_agen',['class':'form-control'])}}
           </td>
            <td>
             {{form.render('merk',['class':'form-control'])}}
           </td>
            <td>
             {{form.render('serial_number',['class':'form-control'])}}
           </td>
          </tr>
         <tr>
           <td><br>{{form.render('Search',['class':'btn btn-primary btn-success'])}}</td>
         </tr>
      </table>
    </form>
  </div>
<br>
{% for accesspoint in page.items %}
{% if loop.first %}
<table class="table table-bordered table-striped" align="center">
    <thead>
        <tr>
            <th>Id Reseller</th>
            <th>Nama Agen</th>
            <th>Merk</th>
            <th>Serial Number</th>
            <th>Lokasi</th>
            <th>Alamat</th>
            <th>Created</th>
            <th>Updated</th>

        </tr>
    </thead>
{% endif %}
    <tbody>
        <tr>
            <td>{{ accesspoint.id_reseller }}</td>
            <td>{{ accesspoint.name }}</td>
            <td>{{ accesspoint.merk }}</td>
            <td>{{ accesspoint.serial_number }}</td>
            <td>{{ accesspoint.lokasi }}</td>
            <td>{{ accesspoint.alamat }}</td>
            <td>{{ accesspoint.created }}</td>
            <td>{{ accesspoint.updated }}</td>
            <td width="12%">{{ link_to("accesspoint/edit/" ~ accesspoint.id, '<i class="icon-pencil"></i> Edit', "class": "btn btn-primary") }}</td>
            <td width="12%">{{ link_to("accesspoint/delete/" ~ accesspoint.id, '<i class="icon-remove"></i> Delete', "class": "btn btn-warning") }}</td>
        </tr>
    </tbody>
{% if loop.last %}
    <tbody>
        <tr>
            <td colspan="10" align="right">
                <div class="btn-group">
                    {{ link_to("accesspoint/search", '<i class="icon-fast-backward"></i> First', "class": "btn btn-info") }}
                    {{ link_to("accesspoint/search?page=" ~ page.before, '<i class="icon-step-backward"></i> Previous', "class": "btn btn-info") }}
                    {{ link_to("accesspoint/search?page=" ~ page.next, '<i class="icon-step-forward"></i> Next', "class": "btn btn-info") }}
                    {{ link_to("accesspoint/search?page=" ~ page.last, '<i class="icon-fast-forward"></i> Last', "class": "btn btn-info") }}
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

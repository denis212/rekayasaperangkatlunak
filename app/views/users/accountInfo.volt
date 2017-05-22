<title>Info Users - GamanAds</title>


<?php $this->assets->outputCss(); ?>

<div class="container">
<form method="post" autocomplete="off">

<ul class="pager">
    <li class="previous pull-left">
    </li>
    <li class="pull-right">
        {{ submit_button("Save", "class": "btn btn-big btn-success") }}
    </li>
</ul>

{{ content() }}

<div class="center scaffold">
    <h2>Account Information</h2>

    <ul class="nav nav-tabs">
        <li class="active"><a href="#A" data-toggle="tab">Basic</a></li>
        <li><a href="#B" data-toggle="tab">Successful Logins</a></li>
        <li><a href="#C" data-toggle="tab">Password Changes</a></li>
        <li><a href="#D" data-toggle="tab">Reset Passwords</a></li>
    </ul>

<div class="tabbable">
    <div class="tab-content">
        <div class="tab-pane active" id="A">

            {{ form.render("id") }}

            <div class="col-lg-5">

                <div class="clearfix">
                    <label for="name">Name</label>
                    {{ form.render("name",['class':'form-control']) }}
                    {{ form.messages("name") }}
                </div>
                <div class="clearfix">
                    <label for="lastname">Last Name</label>
                    {{ form.render("lastname",['class':'form-control']) }}
                    {{ form.messages("lastname") }}
                </div>

                <!-- <div class="clearfix">
                    <label for="suspended">Suspended?</label>
                    {{ form.render("suspended",['class':'form-control']) }}
                </div> -->
                <div class="clearfix">
                    <label for="type">Type</label>
                    {{ form.render("type",['class':'form-control']) }}
                </div>
                <div class="clearfix">
                    <label for="company">Company</label>
                    {{ form.render("company",['class':'form-control']) }}
                </div>
                <div class="clearfix">
                    <label for="address">Address</label>
                    {{ form.render("address",['class':'form-control']) }}
                </div>
            </div>

            <div class="col-lg-5">

                <div class="clearfix">
                    <label for="email">E-Mail</label>
                    {{ form.render("email",['class':'form-control']) }}
                    {{ form.messages("email") }}
                </div>

                <!-- <div class="clearfix">
                    <label for="banned">Banned?</label>
                    {{ form.render("banned",['class':'form-control']) }}
                </div> -->

                <!-- <div class="clearfix">
                    <label for="active">Confirmed?</label>
                    {{ form.render("active",['class':'form-control']) }}
                </div> -->
                <div class="clearfix">
                    <label for="skype">Skype</label>
                    {{ form.render("skype",['class':'form-control']) }}
                    {{ form.messages("skype") }}
                </div>
                <div class="clearfix">
                    <label for="phone">Phone Number</label>
                    {{ form.render("phone",['class':'form-control']) }}
                    {{ form.messages("phone") }}
                </div>
                <div class="clearfix">
                    <label for="city">City</label>
                    {{ form.render("city",['class':'form-control']) }}
                </div>
                <div class="clearfix">
                    <label for="country">Country</label>
                    {{ form.render("country",['class':'form-control']) }}
                </div>
            </div>
        </div>

        <div class="tab-pane" id="B">
            <p>
                <table class="table table-bordered table-striped" align="center">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>IP Address</th>
                            <th>User Agent</th>
                        </tr>
                    </thead>
                    <tbody>
                    {% for login in user.successLogins %}
                        <tr>
                            <td>{{ login.id }}</td>
                            <td>{{ login.ipAddress }}</td>
                            <td>{{ login.userAgent }}</td>
                        </tr>
                    {% else %}
                        <tr><td colspan="3" align="center">User does not have successfull logins</td></tr>
                    {% endfor %}
                    </tbody>
                </table>
            </p>
        </div>

        <div class="tab-pane" id="C">
            <p>
                <table class="table table-bordered table-striped" align="center">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>IP Address</th>
                            <th>User Agent</th>
                            <th>Date</th>
                        </tr>
                    </thead>
                    <tbody>
                    {% for change in user.passwordChanges %}
                        <tr>
                            <td>{{ change.id }}</td>
                            <td>{{ change.ipAddress }}</td>
                            <td>{{ change.userAgent }}</td>
                            <td>{{ date("Y-m-d H:i:s", change.createdAt) }}</td>
                        </tr>
                    {% else %}
                        <tr><td colspan="3" align="center">User has not changed his/her password</td></tr>
                    {% endfor %}
                    </tbody>
                </table>
            </p>
        </div>

        <div class="tab-pane" id="D">
            <p>
                <table class="table table-bordered table-striped" align="center">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Date</th>
                            <th>Reset?</th>
                        </tr>
                    </thead>
                    <tbody>
                    {% for reset in user.resetPasswords %}
                        <tr>
                            <th>{{ reset.id }}</th>
                            <th>{{ date("Y-m-d H:i:s", reset.createdAt) }}
                            <th>{{ reset.reset == 'Y' ? 'Yes' : 'No' }}
                        </tr>
                    {% else %}
                        <tr><td colspan="3" align="center">User has not requested reset his/her password</td></tr>
                    {% endfor %}
                    </tbody>
                </table>
            </p>
        </div>

    </div>
</div>

    </form>
</div>
</div>

<?php $this->assets->outputJs(); ?>

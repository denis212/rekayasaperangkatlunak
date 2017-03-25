<title>SignUp - GamanAds</title>

{{ content() }}

<div align="center">

	{{ form('class': 'form-search') }}

		<div align="left">
			<h2>Sign Up</h2>
		</div>

		<table class="signup">
			<tr>
				<td align="right">{{ form.label('name') }}</td>
				<td>
					{{ form.render('name') }} *
					{{ form.messages('name') }}
				</td>
			</tr>
			<tr>
				<td align="right">{{ form.label('lastname') }}</td>
				<td>
					{{ form.render('lastname') }} *
					{{ form.messages('lastname') }}
				</td>
			</tr>
			<tr>
				<td align="right">{{ form.label('email') }}</td>
				<td>
					{{ form.render('email') }} *
					{{ form.messages('email') }}
				</td>
			</tr>
			<tr>
				<td align="right">{{ form.label('password') }}</td>
				<td>
					{{ form.render('password') }} *
					{{ form.messages('password') }}
				</td>
			</tr>
			<tr>
				<td align="right">{{ form.label('confirmPassword') }}</td>
				<td>
					{{ form.render('confirmPassword') }} *
					{{ form.messages('confirmPassword') }}
				</td>
			</tr>
			<tr>
				<td align="right">{{ form.label('skype') }}</td>
				<td>
					{{ form.render('skype') }} *
					{{ form.messages('skype') }}
				</td>
			</tr>
			<tr>
				<td align="right">{{ form.label('phone') }}</td>
				<td>
					{{ form.render('phone') }} *
					{{ form.messages('phone') }}
				</td>
			</tr>
			<tr>
				<td align="right">{{ form.label('type') }}</td>
				<td>
					{{ form.render('type') }}
					{{ form.messages('type') }}
				</td>
			</tr>
			<tr>
				<td align="right">{{ form.label('company') }}</td>
				<td>
					{{ form.render('company') }}
				</td>
			</tr>
			<tr>
				<td align="right">{{ form.label('address') }}</td>
				<td>
					{{ form.render('address') }}
				</td>
			</tr>
			<tr>
				<td align="right">{{ form.label('city') }}</td>
				<td>
					{{ form.render('city') }}
				</td>
			</tr>
			<tr>
				<td align="right">{{ form.label('country') }}</td>
				<td>
					{{ form.render('country') }}
				</td>
			</tr>
			<tr>
				<td align="right"></td>
				<td>
					{{ form.render('terms') }} {{ form.label('terms') }} *
					{{ form.messages('terms') }}
				</td>
			</tr>
			<tr>
				<td align="right"></td>
				<td>{{ form.render('Sign Up') }}</td>
			</tr>
		</table>

		{{ form.render('csrf', ['value': security.getToken()]) }}
		{{ form.messages('csrf') }}

		<hr>

	</form>

</div>

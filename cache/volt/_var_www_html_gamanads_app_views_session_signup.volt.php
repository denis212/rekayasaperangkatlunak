<title>SignUp - GamanAds</title>

  <?php $this->assets->outputCss(); ?>

<?= $this->getContent() ?>

<div class="container" style="margin-top:30px;">
<legend>Create Ad Space</legend>
<div align="center">

	<?= $this->tag->form(['class' => 'form-search']) ?>


		<table>
			<tr>
				<td align="right" class="classtd"><?= $form->label('name') ?></td>
				<td>
					<?= $form->render('name', ['class' => 'form-control']) ?>
					<?= $form->messages('name') ?>
				</td>
			</tr>
			<tr>
				<td align="right" class="classtd"><?= $form->label('lastname') ?></td>
				<td>
					<?= $form->render('lastname', ['class' => 'form-control']) ?>
					<?= $form->messages('lastname') ?>
				</td>
			</tr>
			<tr>
				<td align="right" class="classtd"><?= $form->label('email') ?></td>
				<td class="classtd">
					<?= $form->render('email', ['class' => 'form-control']) ?>
					<?= $form->messages('email') ?>
				</td>
			</tr>
			<tr>
				<td align="right" class="classtd"><?= $form->label('password') ?></td>
				<td class="classtd">
					<?= $form->render('password', ['class' => 'form-control']) ?>
					<?= $form->messages('password') ?>
				</td>
			</tr>
			<tr>
				<td align="right" class="classtd"><?= $form->label('confirmPassword') ?></td>
				<td class="classtd">
					<?= $form->render('confirmPassword', ['class' => 'form-control']) ?>
					<?= $form->messages('confirmPassword') ?>
				</td>
			</tr>
			<tr>
				<td align="right" class="classtd"><?= $form->label('skype') ?></td>
				<td>
					<?= $form->render('skype', ['class' => 'form-control']) ?>
					<?= $form->messages('skype') ?>
				</td>
			</tr>
			<tr>
				<td align="right" class="classtd"><?= $form->label('phone') ?></td>
				<td class="classtd">
					<?= $form->render('phone', ['class' => 'form-control']) ?>
					<?= $form->messages('phone') ?>
				</td>
			</tr>
			<tr>
				<td align="right" class="classtd"><?= $form->label('type') ?></td>
				<td class="classtd">
					<?= $form->render('type', ['class' => 'form-control']) ?>
					<?= $form->messages('type') ?>
				</td>
			</tr>
			<tr>
				<td align="right" class="classtd"><?= $form->label('company') ?></td>
				<td class="classtd">
					<?= $form->render('company', ['class' => 'form-control']) ?>
				</td>
			</tr>
			<tr>
				<td align="right" class="classtd"><?= $form->label('address') ?></td>
				<td class="classtd">
					<?= $form->render('address', ['class' => 'form-control']) ?>
				</td>
			</tr>
			<tr>
				<td align="right" class="classtd"><?= $form->label('city') ?></td>
				<td>
					<?= $form->render('city', ['class' => 'form-control']) ?>
				</td>
			</tr>
			<tr>
				<td align="right" class="classtd"><?= $form->label('country') ?></td>
				<td>
					<?= $form->render('country', ['class' => 'form-control']) ?>
				</td>
			</tr>
			<tr>
				<td align="right" class="classtd"></td>
				<td class="classtd">
					<?= $form->render('terms') ?> <?= $form->label('terms') ?>
					<?= $form->messages('terms') ?>
				</td>
			</tr>
			<tr>
				<td align="right" class="classtd"></td>
				<td class="classtd"><?= $form->render('Sign Up') ?></td>
			</tr>
		</table>

		<input type="hidden" name="<?php echo $this->security->getTokenKey() ?>" value="<?php echo $this->security->getToken() ?>"/>



		<hr>

	</form>

</div>
</div>
<?php $this->assets->outputJs(); ?>

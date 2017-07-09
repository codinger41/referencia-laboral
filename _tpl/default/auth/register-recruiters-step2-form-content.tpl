<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
	<form id="register-form" name="register-form" method="post" action="{$BASE_URL}{$URL_REGISTER_RECRUITERS}" role="form" enctype="multipart/form-data">
		<input type="hidden" name="step" id="step" value="2">
		<input type="hidden" name="employerid" id="employerid" value="{$employer_id}">
		<input type="hidden" name="employer_hash" id="employer_hash" value="{$employer_hash}">
		<input type="hidden" name="employer_email" id="employer_email" value="{$employer_email}">
		<input type="hidden" name="updatingEntry" id="updatingEntry" value="{$updatingEntry}">

<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
		<div class="form-group mb20">
			<!-- <label for="company_name">{$translations.registration.company_name}</label> -->
			<input placeholder="{$translations.registration.company_name}" required name="company_name" id="company_name" maxlength="300" type="text" class="form-control grayInput"  />
		</div>

		<div class="form-group mb20">
			<!-- <label for="company_desc">{$translations.registration.company_desc}</label> -->
			<textarea placeholder="{$translations.registration.company_desc}" required class="form-control grayInput noTinymceTA" maxlength="1000" name="company_desc" id="company_desc" rows="6">{if $current_form}{$current_form.message}{/if}</textarea>
			<div class="textarea-feedback" id="textarea_feedback"></div>
		</div>

		<div class="form-group mb20">
			<!-- <label for="company_hq">{$translations.registration.company_hq_label}</label> -->
			<input placeholder="{$translations.registration.company_hq_label}" required name="company_hq" id="company_hq" maxlength="400" type="text" class="form-control grayInput"  />
		</div>

		<div class="form-group mb20">
			<!-- <label for="company_url">{$translations.registration.company_url_label}</label> -->
			<input placeholder="{$translations.registration.company_url_label}" name="company_url" id="company_url" maxlength="1000" type="text" class="form-control grayInput"  />
		</div>

		<div class="form-group mb20">
			<!-- <label for="company_street">{$translations.registration.company_street_label}</label> -->
			<input placeholder="{$translations.registration.company_street_label}" required name="company_street" id="company_street" maxlength="300" type="text" class="form-control grayInput"  />
		</div>
</div>

<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
		<div class="form-group mb20">
			<!-- <label for="company_citypostcode">{$translations.registration.company_citypostcode_label}</label> -->
			<input placeholder="{$translations.registration.company_citypostcode_label}" required name="company_citypostcode" id="company_citypostcode" maxlength="300" type="text" class="form-control grayInput"  />
		</div>

		<div class="form-group mb20">
			<label id="logoLabel" for="company_logo">{$translations.registration.company_logo_label}</label>
		 	<input type="file" name="company_logo" id="company_logo" class="form-control inputfile minput" />
		 	<div class="textarea-feedback" >{$translations.registration.company_logo_hint}</div>
		 	<div id="uploadPreview"></div>
		 	<div id="logo-err" class="negative-feedback displayNone">{$translations.registration.logo_err_msg}</div>
		 	<div id="logo-err2" class="negative-feedback displayNone">{$translations.registration.logo_err_samesize}</div>
		 	<div id="logo-ok" class="positive-feedback displayNone mt20">{$translations.registration.logo_ok}</div>
		</div>

		<div class="form-group mb20">
			<button type="submit" class="btn btn-default btn-primary mbtn" name="submit" id="submit" >{$translations.registration.submit_final}</button>
		</div>
</div>
	</form>
</div>

<script type="text/javascript">
	$(document).ready(function() {
		SimpleJobScript.I18n = {$translationsJson};
	    SimpleJobScript.initRegisterFormStep2Validation();

	    $('#company_logo').change(function() {
			var fname = $('input[type=file]').val().split('\\').pop();
			if( fname )
				$('#logoLabel').html(fname);
			else
				$('#logoLabel').html($('#logoLabel').html());
       });
	});
</script>

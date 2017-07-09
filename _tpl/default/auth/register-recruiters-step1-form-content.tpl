<div class="col-md-12 ">
	<form id="register-form" name="register-form" method="post" action="{$BASE_URL}{$URL_REGISTER_RECRUITERS}" role="form">
		<input type="hidden" name="step" id="step" value="1">
		<div id="reg-name-fg" class="form-group mb20">
			<!-- <label for="register_name">{$translations.registration.name}</label> -->
			<input placeholder="{$translations.registration.name}" name="register_name" id="register_name" maxlength="50" type="text" class="form-control grayInput"  />
			<div id="err-reg-name" class="negative-feedback displayNone">{$translations.login.err_name}</div>
		</div>
		<div id="reg-email-fg" class="form-group mb20">
			<!-- <label for="register_email">{$translations.registration.email}</label> -->
			<input placeholder="{$translations.registration.email}" name="register_email" id="register_email" maxlength="50" type="email" class="form-control grayInput"  />
			<div id="err-reg-email" class="negative-feedback displayNone">{$translations.login.err_email}</div>
		</div>

		<div id="reg-pass1-fg" class="form-group mb20">
			<!-- <label for="register_pass1">{$translations.registration.password2_label}</label> -->
			<input placeholder="{$translations.registration.password2_label}" onfocus="SimpleJobScript.checkIfEmailExists();" name="register_pass1" id="register_pass1" maxlength="50" type="password" class="form-control grayInput"  />
		</div>

		<div id="reg-pass2-fg" class="form-group mb20">
			<!-- <label for="register_pass2">{$translations.registration.password2}</label> -->
			<input placeholder="{$translations.registration.password2}" name="register_pass2" id="register_pass2" maxlength="50" type="password" class="form-control grayInput"  />
			<div id="err-reg-pass2" class="negative-feedback displayNone">{$translations.login.err_passes}</div>
		</div>

		{if $ENABLE_RECAPTCHA}
			{$captcha_html}
			{if $captcha_err}<div class="negative-feedback">{$response_msg}</div>{/if}
		{/if}

		<div class="form-group">
			<div class="checkbox">
			  <label><input type="checkbox" required><span class="apply-desc-span opaque">{$translations.registration.accept_part1} <a target="_blank" href="/terms-and-conditions"> {$translations.registration.accept_part2}</a></span></label>
			</div>
		</div>

		<div class="form-group" style="margin-top: 10px;">
			<button id="proceedToStep2btnId" type="submit" class="btn btn-default btn-primary mbtn" name="submit" id="submit" onclick="return SimpleJobScript.registerFormValidation();" >{$translations.registration.submit}</button>
		</div>

	</form>
</div>
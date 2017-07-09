
<div class="col-md-12">
	{if $login_failed}
	<div id="incorrect-login-err" class="negative-feedback">{$translations.login.incorrect}</div>
	{/if}

	<!-- <h3 id="login_head" class="login-headline">{$translations.login.headline_login}</h3> -->
	<form id="login-form" name="login-form" method="post" action="{$BASE_URL}login/" role="form">
		<div id="login-email-fg" class="form-group">
			<!-- <label for="signin_email">{$translations.login.email}</label> -->
			<div class="inner-addon left-addon">
				<i class="glyphicon glyphicon-user mIcon"></i>         
				<input placeholder="{$translations.login.email}" {if $relogin_email}value="{$relogin_email}"{/if}  name="signin_email" id="signin_email" maxlength="50" type="email" class="form-control grayInput"  />
			</div>
			<div id="err-login-email" class="negative-feedback displayNone">{$translations.login.err_email}</div>
		</div>

		<div id="login-pass-fg" class="form-group">
			<!-- <label for="signin_pass">{$translations.login.password}</label> -->
			<div class="inner-addon left-addon">
				<i class="glyphicon glyphicon-lock"></i>  
				<input placeholder="{$translations.login.password}" name="signin_pass" id="signin_pass" maxlength="50" type="password" class="form-control grayInput"  />
			</div>
			<div id="err-login-pass" class="negative-feedback displayNone">{$translations.login.err_pass_short}</div>
		</div>

		<div class="tac">
			<div id="forgotpassblockid" class="form-group">
				<a  href="#" onclick="SimpleJobScript.hideLoginFields();">{$translations.login.forgot_password}</a>
			</div>

			<div id="submit-block" class="form-group">
				<button type="submit" onclick="return SimpleJobScript.loginFormValidation();" class="btn btn-default btn-primary mbtn" name="submit" id="submit"  ><i class="fa fa-check fa-lg" aria-hidden="true"></i></button>
			</div>
		</div>

	</form>
	<div id="forgotten-zone" style="display: none;">
		<form role="form" action="" method="post" style="margin-top: -20px;">
			<div class="form-group mb20">
				<!-- <label for="forget_email">{$translations.login.forgotten_enter_email}</label> -->
				<input placeholder="{$translations.login.forgotten_enter_email}" name="forget_email" id="forget_email" maxlength="50" type="email" class="form-control grayInput" required />

				<div id="passrecovery-feedback-err" class="negative-feedback displayNone p5">{$translations.login.recovery_err}</div>
				<div id="passrecovery-feedback-err2" class="negative-feedback displayNone p5">{$translations.login.recovery_err2}</div>
				<div id="passrecovery-feedback-ok" class="positive-feedback displayNone p5">{$translations.login.newpass_email_sent}</div>
			</div>
			<div class="form-group">

				<button type="submit_forgotten_pass"  onclick="return SimpleJobScript.passwordRecovery();" class="btn btn-default btn-primary mbtn" name="submit" id="submit" required>{$translations.login.forgotten_submit}</button>
				<i id="fspinner" class="displayNone fa fa-refresh fa-spin fa-lg fa-fw refresh-spinner"></i>

			</div>
		</form>
	</div>

</div>
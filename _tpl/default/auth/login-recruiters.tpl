{include file="layout/dashboard-header.tpl"}
	<div class="fullHeight">
		<div class="form-box">
			 <div class="text-center center-logo"><img class="logo img-responsive" src="{$BASE_URL}{$SITE_LOGO_PATH}" alt="Website logo"></div>
			<div class="login-recruiter-headline">
				<label class="login-form-title">{$translations.login.headline_login}</label>
				<div class="subheadline">{$translations.login.submessage}</div>
			</div>
			<div class="login-container general-wrap" >
				{include file="auth/login-recruiters-form-content.tpl"}
			</div><!-- #content -->
			<div class="no-acc-block">{$translations.login.noacc_text} <a href="/{$URL_REGISTER_RECRUITERS}">{$translations.login.here}</a>.</div>
		</div>
	</div>
{include file="layout/dashboard-footer.tpl"}

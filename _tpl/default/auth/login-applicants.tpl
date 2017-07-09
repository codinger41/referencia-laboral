{include file="layout/dashboard-header.tpl"}
	<div class="fullHeight">
		<div class="form-box">
			    <div class="text-center center-logo"><img class="logo img-responsive" src="{$BASE_URL}{$SITE_LOGO_PATH}" alt="Website logo"></div>
				<div class="login-recruiter-headline">
				<label class="login-form-title">{$translations.login.headline_login}</label>
				<div class="subheadline">{$translations.login.submessage_applicant}</div>
			</div>
			<div class="login-container general-wrap" >
				{include file="auth/login-applicants-form-content.tpl"}
			</div><!-- #content -->
			{if $PROFILES_PLUGIN == 'true'}
				<div class="no-acc-block">{$translations.login.noacc_applicant} <a href="/{$URL_REGISTER_APPLICANTS}">{$translations.login.here}</a></div>
			{else}
				<div class="no-acc-block">{$translations.login.noacc_applicant_base}</a></div>
			{/if}
		</div>
	</div>
{include file="layout/dashboard-footer.tpl"}
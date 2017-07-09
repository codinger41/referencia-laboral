{include file="layout/dashboard-header.tpl"}
	<div class="fullHeight">
		<div class="{if $second_step}wide-form-box{else}form-box{/if}">
			{if $second_step}
				<div class="login-recruiter-headline">
					<label class="register-form-title">{$translations.registration.second_step}</label>
					<div class="subheadline">{$translations.registration.recruiters_note_secondstep}</div>
				</div>
				<div class="login-container general-wrap" >
					{include file="auth/register-recruiters-step2-form-content.tpl"}
				</div><!-- #content -->
			{else}
				<div class="login-recruiter-headline">
					<label class="register-form-title">{$translations.registration.first_step}</label>
					<div class="subheadline">{$translations.registration.recruiters_note}</div>
				</div>
				<div class="login-container general-wrap" >
					{include file="auth/register-recruiters-step1-form-content.tpl"}
				</div><!-- #content -->
			{/if}
			<div class="no-acc-block"><br /></div>
		</div>
	</div>
{include file="layout/dashboard-footer.tpl"}

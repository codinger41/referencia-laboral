{include file="layout/header.tpl"}

<div class="container content static-offset">
	<div class="wrap-msg" style="padding-top: 25px !important;">
	<h4 class="general-headline">{$translations.registration.acc_confirmation}</h4>
	{if $confirm_result}
		<div class="positive-feedback-bracket">
		{$translations.registration.hash_confirmation_successful}
		</div><br />
		<p>
			<a href="/{$URL_PROFILE}">{$translations.registration.sign_in}</a> <br />
			<a href="/"><button type="button" class="mbtn btn btn-default btn-primary mt10">{$translations.registration.go_home}</button></a>
		</p>
	{else}
		<p>
			<div class="negative-feedback-bracket">{$translations.registration.hash_confirmation_failed}</div><br />
			<p>
				<a href="/{$URL_LOGIN_APPLICANTS}">{$translations.registration.new_acc}</a> <br />
				<a href="/"><button type="button" class="mbtn btn btn-default btn-primary mt10">{$translations.registration.go_home}</button></a>
			</p>
	</p>
	{/if}

	</div>
</div>

{include file="layout/footer.tpl"}
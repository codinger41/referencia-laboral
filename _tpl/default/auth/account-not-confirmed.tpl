{include file="layout/header.tpl"}

<div class="container content top-offset unsubs-padding">
	
	<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 ml0 pl0 wrap-msg">

		<h4 class="inwrap-headline">{$translations.registration.msg}</h4>

		{if $APPLICANT_FLOW == 'true'}
			<div class="col-md-12 bracket-padding">
				{$translations.registration.account_not_confirmed_text_applicants}
			</div>
		{else}
			<div class="col-md-12 bracket-padding ">
				{$translations.registration.account_not_confirmed_text}
			</div>
		{/if}
	</div>

	{if $APPLICANT_FLOW == 'false'}
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ml0 pl0">
		{include file="snippets/more-content.tpl"}
		</div>
	{/if}

</div>

{include file="layout/footer.tpl"}
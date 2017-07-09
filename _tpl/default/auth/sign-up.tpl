{include file="layout/header.tpl"}
		<div class="container content top-offset">
			<div class="general-wrap static-wrap mt35">

					{if $PROFILES_PLUGIN == 'true'}
					<h4 class="general-headline gray-border-bottom tac">{$translations.sign_up.headline}</h4>
					<div class="sign-up-wrap">

						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 mmb50">
							<div class="row">
							 	<img class="img-responsive m0auto" src="{$BASE_URL}_tpl/{$THEME}/img/sign-up-candidates.png" alt="{$translations.sign_up.candidates_registration}" />
							</div>

							<div class="row tac mt60">
								 <a href="/{$URL_REGISTER_APPLICANTS}"> <span class="white-border fs20">{$translations.sign_up.candidates_registration}</span></a>
							</div>

							<div class="row tac mt35 opacity75">
								 <a href="/{$URL_LOGIN_APPLICANTS}">{$translations.registration.sign_in}</a>
							</div>

						</div>
					{/if}

						{if $PROFILES_PLUGIN == 'true'}
							<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
						{else}
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						{/if}
						
							<div class="row">
							 	<img class="img-responsive m0auto w230" src="{$BASE_URL}_tpl/{$THEME}/img/sign-up-employers.png" alt="{$translations.sign_up.employer_registration}" />
							</div>

							<div class="row tac mt60">
								 <a href="/{$URL_REGISTER_RECRUITERS}"> <span class="white-border fs20">{$translations.sign_up.employer_registration}</span></a>
							</div>

							<div class="row tac mt35 opacity75">
								 <a href="/{$URL_LOGIN_RECRUITERS}">{$translations.registration.sign_in}</a>
							</div>

						</div>

					</div>
			</div>
		</div>
{include file="layout/footer.tpl"}
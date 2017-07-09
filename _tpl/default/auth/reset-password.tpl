{include file="layout/header.tpl"}

<div class="container content top-offset ">
 <div class="general-wrap static-wrap mt20" >
 {if $result} 
	 {if $response}
	 	 {if $response == 'positive-feedback'}
	 	 <div class="mb20">{$update_msg}</div>
	 	 	<p>
				<a href="/"><button type="button" class="mbtn btn btn-default btn-primary">{$translations.registration.go_home}</button></a>
			</p>
	 	 {else}
	 	 <div class="negative-feedback-bracket mb20">{$update_msg}</div>
	 	 	 <p>
				<a href="/"><button type="button" class="mbtn btn btn-default btn-primary">{$translations.registration.go_home}</button></a>
			</p>
	 	 {/if}
	 {else}
	 <div class="col-md-12 ">

		<h4 class="general-headline gray-border-bottom">{$recovery_headline}</h4>
		<span class="light-font">
		{$translations.registration.reset_pass_txt}
		</span>
		<br /><br />
			<div class="col-md-6 col-lg-6 col-sm-6 col-xs-12 pl0">
				<div class="recovery-block" >
				<form role="form" action="/{$FORM_URL}" method="post" >
					<div id="forget-pass-fg" class="form-group">
					  <label for="forget_pass">{$translations.login.new_pass}</label>
					   <input name="forget_pass" id="forget_pass" maxlength="50" type="password" class="form-control grayInput" required /> 
					 </div>
					<div id="forget-pass-fg2" class="form-group">
					  <label for="forget_pass2">{$translations.login.new_pass2}</label>
					   <input name="forget_pass2" id="forget_pass2" maxlength="50" type="password" class="form-control grayInput" required />
					   <div id="passrecovery-feedback-err" class="negative-feedback displayNone p5">{$translations.login.err_passes}</div>  
					 </div>
					 <div class="form-group">
					 	 <button type="submit_forgotten_pass"  onclick="return SimpleJobScript.passwordRecoveryValidation();" class="btn btn-default btn-primary mbtn" name="submit" id="submit" required>{$translations.login.newpass_set}</button>
					 </div>
					 <input name="userid" type="hidden" value="{$user_id}">
				</form>
			</div>
		</div>
	</div>
 	{/if}
{else}
<div class="col-md-12">
	<p class="negative-feedback-bracket">
		{$translations.login.password_recovery_failed}
		<p>
			<a href="/"><button type="button" class="mbtn btn btn-default btn-primary">{$translations.registration.go_home}</button></a>
		</p>
	</p>
</div>
{/if}
 </div>
</div>

{include file="layout/footer.tpl"}
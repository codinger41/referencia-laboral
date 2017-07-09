<div class="gray">
	{$translations.profile.passchange_desc}
</div>
<br />

<div class="col-log-6 col-md-6 col-sm-12 col-xs-12">
	<form role="form" action="/{$URL_PROFILE}/pass-edited" method="post" >
		<div id="forget-pass-fg" class="form-group">
		   <input placeholder="{$translations.login.new_pass}" name="pass1" id="pass1" maxlength="50" type="password" class="form-control grayInput minput" required /> 
		 </div>

		<div id="forget-pass-fg2" class="form-group mb30">
		   <input placeholder="{$translations.login.new_pass2}" name="pass2" id="pass2" maxlength="50" type="password" class="form-control grayInput minput" required /> 
		 </div>

		 <div class="form-group">
		 	<div id="passrecovery-feedback-err" class="negative-feedback displayNone p5">{$translations.login.err_passes}</div>  
		 </div>

		 <div class="form-group">
		 	 <button type="submit_forgotten_pass"  onclick="return SimpleJobScript.applicantPasswordValidation();" class="btn btn-default btn-primary mbtn" name="submit" id="submit" required><i class="fa fa-check fa-lg" aria-hidden="true"></i></button>
		 </div>
	</form>
</div>

<div class="col-log-6 col-md-6 col-sm-12 col-xs-12 ptrb25">
 <a href="{BASE_URL}{$URL_PROFILE}/{$URL_PROFILE_DELETE}"><span class="white-border">{$translations.profile.delete_acc_label}</span></a>
</div>


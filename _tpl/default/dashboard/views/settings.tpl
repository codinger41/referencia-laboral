<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb20">
	<label class="admin-label mt20">{$translations.dashboard_recruiter.settings_headline}</label>
	<div class="alert alert-info fade in main-color">
	    <a href="#" class="close" data-dismiss="alert">&times;</a>
	    <i class="fa fa-info-circle info-fa" aria-hidden="true"></i>
	     {$translations.dashboard_recruiter.change_settings_notification}
	</div>
</div>

<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 mb15">
	<label class="admin-label mb15">{$translations.dashboard_recruiter.changepass_headline}</label>
	<div class="dashboard-well" >
		<form role="form" action="/dashboard-settings" method="post" >
			<div id="forget-pass-fg" class="form-group mb20">
			   <input placeholder="{$translations.login.new_pass}" ame="forget_pass" id="forget_pass" maxlength="50" type="password" class="form-control grayInput minput" required /> 
			 </div>
			<div id="forget-pass-fg2" class="form-group mb20">
			   <input placeholder="{$translations.login.new_pass2}" name="forget_pass2" id="forget_pass2" maxlength="50" type="password" class="form-control grayInput minput" required />
			   <div id="passrecovery-feedback-err" class="negative-feedback displayNone p5">{$translations.login.err_passes}</div>  
			 </div>
			 <div class="form-group">
			 	 <button type="submit_forgotten_pass"  onclick="return SimpleJobScript.passwordRecoveryValidation();" class="btn btn-default btn-primary mbtn" name="submit" id="submit" required><i class="fa fa-check fa-lg" aria-hidden="true"></i></button>
			 </div>
			 <input name="employer_id" id="employer_id" type="hidden" value="{$ID}">
		</form>
	</div>
</div>

<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 mb20">
	<label class="admin-label mb15">{$translations.dashboard_recruiter.changename_headline}</label>
	<div class="dashboard-well" >
		<form role="form" action="/dashboard-settings" method="post" >
			<div class="form-group mb20">
			  <!-- <label for="name">{$translations.dashboard_recruiter.new_name}</label> -->
			   <input placeholder="{$translations.dashboard_recruiter.new_name}" name="name" id="name" maxlength="50" type="text" class="form-control grayInput minput" value="{$name}" required /> 
			 </div>
			 <div class="form-group">
			 	 <button type="submit" class="btn btn-default btn-primary mbtn" name="submit" id="submit" required><i class="fa fa-check fa-lg" aria-hidden="true"></i></button>
			 </div>
			 <input name="employer_id" id="employer_id" type="hidden" value="{$ID}">
		</form>
	</div>
</div>

<div class="clear"></div>
<br />

{if $PAYMENT_MODE != '3'}
<div class="row-fluid pl15">
{$translations.dashboard_recruiter.deactivate_msg}
</div>
{/if}



<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb20">
	<label class="admin-label mt20">{$translations.dashboard_recruiter.edit_company_headline}</label>
	<div class="alert alert-info fade in main-color">
	    <a href="#" class="close" data-dismiss="alert">&times;</a>
	    <i class="fa fa-info-circle info-fa" aria-hidden="true"></i>
	    {$translations.dashboard_recruiter.edit_company_note}
	</div>
</div>

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	<div class="dashboard-well edit-company light-gray-color">
		<form id="register-form" name="register-form" method="post" action="/dashboard-company" role="form" enctype="multipart/form-data">
		<!-- first col -->
		<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
			<input type="hidden" id="employer_id" name="employer_id" value="{$ID}" />
			<input type="hidden" id="oldlogo-path" name="oldlogo-path" value="{$company.logo_path}" />
			<input type="hidden" id="oldPP" name="oldPP" value="{$company.profile_picture}" />

			<div class="form-group mb30">
				<label for="company_name">{$translations.registration.company_name}</label>
				<input required name="company_name" id="company_name" value="{$company.name}" maxlength="300" type="text" class="form-control grayInput minput"  />
			</div>

			<div class="form-group mb30">
				<label for="company_desc">{$translations.registration.company_desc}</label>
				<textarea style="line-height: 20px;" required class="form-control grayInput noTinymceTA" maxlength="1000" name="company_desc" id="company_desc" rows="10">{$company.description}</textarea>
				<div class="textarea-feedback" id="textarea_feedback"></div>
			</div>

			<div class="form-group mb30">
				<label for="company_hq">{$translations.registration.company_hq_label}</label>
				<input required name="company_hq" id="company_hq" value="{$company.hq}" maxlength="400" type="text" class="form-control grayInput minput"  />
			</div>

			<div class="form-group mb30">
				<label for="company_url">{$translations.registration.company_url_label}</label>
				<input required name="company_url" id="company_url" value="{$company.url}" maxlength="1000" type="text" class="form-control grayInput minput"  />
			</div>

			<div class="form-group mb30">
				<label for="company_street">{$translations.registration.company_street_label}</label>
				<input required name="company_street" id="company_street" value="{$company.street}" maxlength="300" type="text" class="form-control grayInput minput"  />
			</div>

		</div>
		<!-- second col -->
		<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
			<div class="form-group mb30">
				<label for="company_citypostcode">{$translations.registration.company_citypostcode_label}</label>
				<input required name="company_citypostcode" id="company_citypostcode" value="{$company.city_postcode}" maxlength="300" type="text" class="form-control grayInput minput"  />
			</div>
			<div class="form-group mb30">
				<label id="editCompanyLabel" for="company_logo">{$translations.registration.company_logo_label}</label>
			 	<input type="file" name="company_logo" id="company_logo" class="form-control inputfile minput" style="padding: 10px;" />
			 	<div class="textarea-feedback" >{$translations.registration.company_logo_hint}</div>
			 	<div style="padding: 10px;" id="uploadPreview"><img src="/{$company.logo_path}" /></div>
			 	<div id="logo-err" class="negative-feedback displayNone">{$translations.registration.logo_err_msg}</div>
			 	<div id="logo-err2" class="negative-feedback displayNone">{$translations.registration.logo_err_samesize}</div>
			 	<div id="logo-ok" class="positive-feedback displayNone">{$translations.registration.logo_ok}</div>
			</div>

			<div class="form-group mb30">
				<button type="submit" class="btn btn-default btn-primary mbtn" name="submit" id="submit" onclick="return SimpleJobScript.registerFormValidationSecondStep();" ><i class="fa fa-check fa-lg" aria-hidden="true"></i></button>
			</div>
		</div>

		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
 
 			<div class="form-group mb85mobile">
 			 	<input {if $company.public_page == '1'}checked{/if} type="checkbox" onchange="SimpleJobScript.companyPublicProfileSwitched(this.checked);" name="profile_switch" id="profile_switch" data-size="mini" />
 			 	<span style="position: absolute; margin-top: -1px">
 				 	<label style="margin-left: 20px;">{$translations.dashboard_recruiter.profile_picture_label}</label>
 			 	</span>
 			 </div>
 
 			 <div id="public-profile-block" class="form-group {if $company.public_page == '0'}displayNone{/if} mb20" >
 				<label id="ppLabel" for="pp_file">{$translations.dashboard_recruiter.pp_label}</label>
 			 	<input type="file" name="pp_file" id="pp_file" class="form-control inputfile minput" />
 			 	<div class="textarea-feedback" >{$translations.dashboard_recruiter.pp_hint}</div>
 			 	<div id="uploadPreviewPP"><img width="50%" height="50%" src="{$BASE_URL}{$company.profile_picture}" /></div>
 			 	<div id="pp-err" class="negative-feedback mt10 displayNone">{$translations.dashboard_recruiter.pp_err}</div>
 			 </div>
 	 
 		 </div>

		</form>

	</div>
</div>

<script type="text/javascript">
	$(document).ready(function() {
		setTimeout(function(){
			SimpleJobScript.initRegisterFormStep2Validation();
			 $('#company_logo').change(function() {
			 var fname = $('input#company_logo').val().split('\\').pop();
			 if( fname )
				$('#editCompanyLabel').html(fname);
			 else
				$('#editCompanyLabel').html($('#editCompanyLabel').html());
      		 });

			 SimpleJobScript.initPP();

			 $('#pp_file').change(function() {
			 var profileFname = $('input#pp_file').val().split('\\').pop();
			 if( profileFname )
				$('#ppLabel').html(profileFname);
			 else
				$('#ppLabel').html($('#ppLabel').html());
      		 });

		}, 800);
	  
	});
</script>
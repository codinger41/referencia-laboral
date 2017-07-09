<br />

<form role="form" action="/{$URL_PROFILE}/profile-edited" method="post" enctype="multipart/form-data" >
	<input type="hidden" id="external_links" name="external_links" value="{$applicant.sm_links|@count}" />

	<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 pl0">
		<div class="form-group mb20">
		   <label class="gray" for="fullname">{$translations.profile.form_name}</label>
		   <input value="{$applicant.fullname}" name="fullname" id="fullname" maxlength="50" type="text" class="form-control grayInput minput"  /> 
		 </div>

		<div class="form-group mb20">
			<label class="gray" for="phone">{$translations.apply.occupation_label}</label>
			<input required id="occupation" name="occupation" value="{$applicant.occupation}" type="text" maxlength="200" class="form-control minput" />
		</div>

		<div class="form-group mb20">
		   <label class="gray" for="phone">{$translations.profile.form_contact}</label>
		   <input value="{$applicant.phone}" name="phone" id="phone" maxlength="50" type="text" class="form-control grayInput minput"  /> 
		 </div>

		 <div class="form-group mb20">
		   <label class="gray" for="phone">{$translations.apply.location}</label>
		   <input value="{$applicant.location}" name="location" id="location" maxlength="400" type="text" class="form-control grayInput minput"  /> 
		 </div>

		<div class="form-group mb20">
		   <label class="gray" for="weblink">{$translations.profile.form_weblink}</label>
		   <input value="{$applicant.weblink}" name="weblink" id="weblink" type="text" class="form-control grayInput minput"  /> 
		</div>

		<div class="form-group mb25">
			<div class="checkbox">
			  <label class="gray"><input {if $applicant.public_profile == 1}checked{/if} type="checkbox" name="public_profile" id="public_profile" /><span class="ml10 cbAbs">{$translations.profile.form_profile}</span></label>
			</div>
		</div>

		<div class="form-group mb20">
			<div class="checkbox">
			  <label class="gray"><input {if $subs_data == 1}checked{/if} type="checkbox" name="subscription_flag" id="subscription_flag" /><span class="ml10 cbAbs">{$translations.profile.form_subscription}</span></label>
			</div>
		</div>

	</div>

	<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 pl0">
	 
		<div class="form-group mb20">
		   <label class="gray" for="msg">{$translations.profile.form_desc}</label>
		  <textarea class="form-control grayInput noTinymceTA" maxlength="500" name="msg" id="msg" rows="3">{$applicant.message}</textarea>
		 </div>

		<div class="form-group mb30">
			<label class="gray" for="weblink">{$translations.profile.skills}</label>
			<div class="input textarea clearfix profileEditTaggle"></div>
		</div> 

		<ul class="list-group ">
		  <li class="list-group-item p15">{$translations.profile.form_cv} 
		  	<div class="fr">
		  		{if $applicant.cv_path == '' or $applicant.cv_path == '-'}
		  		<i class="fa fa-close opaque-fa" aria-hidden="true"></i>
		  		{else}
		  		<a href="{$BASE_URL}{$applicant.cv_path}">
		  			<i class="{$img_path}" aria-hidden="true"></i>
		  		</a>
		  		{/if}
		  	</div>
		  </li>
		  <li class="list-group-item p15">{$translations.profile.form_newcv} <div class="fr">
		  	<label id="applicantCvLabel" for="applicantCv">{$translations.profile.form_upload}</label>
		  	<input accept=".pdf,.doc,.docx" type="file" name="applicantCv" id="applicantCv" class="form-control inputfile minput" />
		  	<input type="hidden" id="currentCv" name="currentCv" value="{$applicant.cv_path}" />
		  </div></li>
		</ul>

	</div>

	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 pl0 ml0">
		<div class="form-group mb20">
			<a id="esmId" onclick="return SimpleJobScript.showSMfields();" href="#esmId">{$translations.js.edit_social_media}</a>
		</div>

		<div id="showSMfieldsBlockId" class="displayNone">

			<div id="SMsubBlock">
		 {foreach $applicant.sm_links as $obj}
		 	<div id="sm_fg_{$obj@iteration}" class="oh">
		 		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 pl0 ml0 mb20">
			 		<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 pl0 ml0">
						<div class="form-group">
						   <input value="{$obj->linkToShow}" name="sm_url_{$obj@iteration}" id="sm_url_{$obj@iteration}" type="text" class="form-control grayInput minput"  /> 
						</div>
					</div>

					<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 pl0 ml0">
						<div class="form-group">
						   <select id="sm_select_{$obj@iteration}" name="sm_select_{$obj@iteration}" class="form-control minput">
						   {foreach $SM_PROFILES as $ITEM}
						   	  <option {if $obj->smId == $ITEM.id}selected{/if} value="{$ITEM.id}">{$ITEM.name}</option>
						   {/foreach}
						   </select>
						</div>
					</div>

					<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 pl0 ml0">
						<div class="form-group">
							<a id="sm_close_{$obj@iteration}" href="#sm_close_{$obj@iteration}" onclick="return SimpleJobScript.removeProfileSMfield('{$obj@iteration}');"><i class="fa fa-close mt12" aria-hidden="true"></i></a>
						</div>
					</div>
				</div>
			</div>
		 {/foreach}
		 	</div>

		 	<div class="form-group mb30">
				<a id="addSMLink" onclick="return SimpleJobScript.addProfileSMLink();" href="#esmId">{if $applicant.sm_links|@count lt 4}{$translations.js.add_social_media}{else}{$translations.js.limit_reached}{/if}</a>
			</div>

		</div>
	</div>

	 <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 pl0">
		 <div class="form-group">
		 	 <button type="submit" class="btn btn-default btn-primary mbtn" name="submit" id="submit" required>{$translations.website_general.text_save}</button>
		 </div>
	 </div>

</form>

<script type="text/javascript">
{literal}
{/literal}
   {foreach $applicant.sm_links as $obj}
 {literal}
 	var elIndex = {/literal}{$obj@iteration}{literal} - 1;
	if ($('#sm_close_' + elIndex).length) {
		$('#sm_close_' + elIndex).addClass('displayNone');
	}
 {/literal}
   {/foreach}
 {literal}

	 $('#applicantCv').change(function() {
		 var fname = $('input[type=file]').val().split('\\').pop();
		 if( fname )
			$('#applicantCvLabel').html(fname);
		 else
			$('#applicantCvLabel').html($('#applicantCvLabel').html());
		 });
{/literal}
</script>
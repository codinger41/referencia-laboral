{include file="layout/header.tpl"}

<div class="container content top-offset">
	
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 mt20 general-wrap register-jobseeker-padding">

	<form role="form" method="post" action="{$BASE_URL}{$URL_REGISTER_APPLICANTS}" enctype="multipart/form-data" >
		<input type="hidden" id="external_links" name="external_links" value="0" />

		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 mb20">
			<h4 class="general-headline">{$translations.apply.create_profile_headline}</h4>
		</div>

		<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 deskPr100">
				<div class="form-group mb30">
					<input placeholder="{$translations.apply.name}" required id="apply_name" name="apply_name" type="text" maxlength="75" class="form-control minput" />
				</div>
				<div class="form-group mb30">
					<input placeholder="{$translations.apply.email}" required id="apply_email" name="apply_email" type="email" maxlength="100" class="form-control minput" />
				</div>

				<div class="form-group mb30">
					<input placeholder="{$translations.apply.portfolio}" id="portfolio" name="portfolio" type="text" maxlength="100" class="form-control minput" />
				</div>

				<div class="form-group mb30">
					<input required id="occupation" name="occupation" placeholder="{$translations.apply.occupation_placeholder}" type="text" maxlength="200" class="form-control minput" />
					<div class="textarea-feedback" >{$translations.apply.occupation_desc}</div>
				</div>

				<div class="form-group mb30">
					<textarea placeholder="{$translations.apply.create_profile_desc}" required maxlength="500" class="form-control" rows="5" id="apply_msg" name="apply_msg"></textarea>
					<div class="textarea-feedback" id="textarea_feedback"></div>
				</div>

				<div class="form-group mb30">
					<label id="cvLabel" for="cv">{$translations.apply.cv_label}</label>
					<input accept=".doc,.docx, .pdf" name="cv" id="cv" class="inputfile form-control minput" type="file" />

					<div class="textarea-feedback" >{$cv_hint}</div>
					<div id="uploadPreview"></div>
					<div id="err" class="negative-feedback displayNone">{$translations.apply.cv_err}</div>
				</div>

				{if $ENABLE_RECAPTCHA}
				{$captcha_html}
				<div id="captcha_err" class="negative-feedback displayNone" style="padding-left: 8px;">{$translations.apply.captcha_empty_err}</div>
				{/if}
		</div>

		<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 mb20 deskPr100">
				<div class="form-group mb30">
					<input required placeholder="{$translations.apply.password} (*)" type="password" id="pass1" name="pass1"  maxlength="50" class="form-control minput" />
				</div>
				<div class="form-group mb30">
					<input required placeholder="{$translations.registration.password2} (*)" type="password" id="pass2" name="pass2"  maxlength="50" class="form-control minput" />
					<div id="feedback-err" class="negative-feedback displayNone">{$translations.login.err_passes}</div>
				</div>
				<div class="form-group mb30">
					<input placeholder="{$translations.apply.phone}" type="tel" id="apply_phone" name="apply_phone"  maxlength="50" class="form-control minput" />
				</div>
				<div class="form-group mb30">
					<input placeholder="{$translations.apply.location}" required type="text" id="apply_location" name="apply_location"  maxlength="400" class="form-control minput" />
				</div>

				<div class="form-group mb30">
					<div class="input textarea clearfix skillsTaggle"></div>
				</div>

				<div class="form-group">
					<div class="checkbox">
					  <label><input type="checkbox" required><span class="apply-desc-span opaque">{$translations.registration.accept_part1} <a target="_blank" href="/terms-and-conditions"> {$translations.registration.accept_part2}</a></span></label>
					</div>
				</div>

		</div>

		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			<div class="form-group mb20">
				<a id="addLink" onclick="return SimpleJobScript.addExternalLink();" href="#">{$translations.js.add_social_media}</a>
			</div>

			<div id="addLinkBlock" class="mb30"></div>
		</div>

		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			<button type="submit" class="btn btn-default btn-success mbtn" onclick="return SimpleJobScript.createProfileValidation({$MAX_CV_SIZE});">{$translations.website_general.top_menu_register_label}</button>
		</div>

	</form>

</div>

</div>

{literal}
<script type="text/javascript">
	$(document).ready(function() {
		SimpleJobScript.I18n = {/literal}{$translationsJson}{literal};

		$('#cv').change(function() {
			var fname = $('input[type=file]').val().split('\\').pop();
			if( fname )
				$('#cvLabel').html(fname);
			else
				$('#cvLabel').html($('#cvLabel').html());
        });
	});
</script>
{/literal}

{include file="layout/footer.tpl"}
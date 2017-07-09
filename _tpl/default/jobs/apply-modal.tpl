<a data-toggle="modal" data-target="#applyModal" href="#" onclick="return false;"><buton id="apply_online_now" class="btn btn-default btn-success mbtn" >{$translations.apply.apply_btn}</buton></a>
<br /><br />

<!--  -->
<div id="applyModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">{$translations.job_detail_section.application_title}</h4>
        <p class="modal-desc">{$translations.job_detail_section.application_desc}</p>
      </div>
      <div class="modal-body">
			<ul class="nav nav-tabs">
			 <li class="active"><a data-toggle="tab" href="#first">{$translations.apply.tab1}</a></li>
			 {if $smarty.const.PROFILES_PLUGIN == 'true'}
			 <li><a data-toggle="tab" href="#second">{$translations.apply.tab2}</a></li>
			 {/if}
			</ul>

			<div class="tab-content">
			  <div id="first" class="tab-pane fade in active">
			  <br />
				 <form role="form" method="post" action="{$BASE_URL}{$URL_APPLY}" enctype="multipart/form-data" >
						<input type="hidden" name="job_id" id="job_id" value="{$job.id}" />
						<input type="hidden" name="new_user" id="new_user" value="1" />
						<input type="hidden" id="external_links" name="external_links" value="0" />

						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<div class="form-group mb20">
								<input placeholder="{$translations.apply.name}" required id="apply_name" name="apply_name" type="text" maxlength="75" class="form-control minput" />
							</div>
							<div class="form-group mb20">
								<input placeholder="{$translations.apply.email}" required id="apply_email" name="apply_email" type="email" maxlength="100" class="form-control minput" />
							</div>

							<div class="form-group pr75 mb20">
								<div class="input textarea clearfix skillsTaggle"></div>
							</div>

							<div class="form-group pr75 mb20">
								<textarea placeholder="{$translations.apply.apply_msg}" required maxlength="500" class="form-control" rows="5" id="apply_msg" name="apply_msg"></textarea>
								<div class="textarea-feedback" id="textarea_feedback"></div>
							</div>


							{if $ENABLE_RECAPTCHA}
							{$captcha_html}
							<div id="captcha_err" class="negative-feedback displayNone" style="padding-left: 8px;">{$translations.apply.captcha_empty_err}</div>
							{/if}
						</div>


						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<div class="form-group mb20">
								<input placeholder="{$translations.apply.phone}" type="tel" id="apply_phone" name="apply_phone"  maxlength="50" class="form-control minput" />
							</div>
							<div class="form-group mb20">
								<input placeholder="{$translations.apply.location}" required type="text" id="apply_location" name="apply_location"  maxlength="400" class="form-control minput" />
							</div>

							<div class="form-group mb20">
								<input placeholder="{$translations.apply.portfolio}" id="portfolio" placeholder="{$translations.apply.portfolio_placeholder}" name="portfolio" type="text" maxlength="100" class="form-control minput" />
							</div>

							<div class="form-group mb20">
								<input required id="occupation" name="occupation" placeholder="{$translations.apply.occupation_placeholder}" type="text" maxlength="200" class="form-control minput" />
								<div class="textarea-feedback" >{$translations.apply.occupation_desc}</div>
							</div>

							<div class="form-group">
								<label id="cvLabel" for="cv">{$translations.apply.cv_label}</label>
								<input accept=".doc,.docx, .pdf" name="cv" id="cv" class="inputfile form-control minput" type="file" />

								<div class="textarea-feedback" >{$cv_hint}</div>
								<div id="uploadPreview"></div>
								<div id="err" class="negative-feedback displayNone">{$translations.apply.cv_err}</div>
							</div>

							{if $smarty.const.PROFILES_PLUGIN == 'true'}
								{include file="$modal_snippet"}
							{/if}

						</div>

						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="form-group mb20">
								<a id="addLink" onclick="return SimpleJobScript.addExternalLink();" href="#">{$translations.js.add_social_media}</a>
							</div>

							<div id="addLinkBlock" class="mb30"></div>
						</div>

						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 pb20">
							<div class="modal-footer pt20" >
								<div class="modal-ajax" >
									<i id="fspinner_apply" class="displayNone fa fa-refresh fa-spin fa-lg fa-fw refresh-spinner"></i>
								</div>
								<button type="submit" class="btn btn-default btn-success mbtn" onclick="return SimpleJobScript.Apply({$MAX_CV_SIZE}, 'new');">{$translations.apply.submit}</button>
								<button type="button" class="btn btn-default btn-warning  mbtn" data-dismiss="modal">{$translations.job_detail_section.close}</button>
							</div>
						</div>

					</form>
			  </div>
			  <div id="second" class="tab-pane fade pl20">
			    <br />
			    <form role="form" method="post" action="{$BASE_URL}{$URL_APPLY}" enctype="multipart/form-data" >
						<input type="hidden" name="job_id" id="job_id" value="{$job.id}" />
						<input type="hidden" name="new_user" id="new_user" value="0" />

						<div class="form-group">
							<label for="apply_email_existing" class="gray fs14">{$translations.login.email}</label>
							<input required id="apply_email_existing" name="apply_email_existing" type="email" maxlength="100" class="form-control minput" />
						</div>

						<div class="form-group">
							<label for="apply_pass_existing" class="gray fs14">{$translations.apply.password}</label>
							<input required id="apply_pass_existing" name="apply_pass_existing" type="password" maxlength="100" class="form-control minput" />
							<div id="err-existing-pass" class="negative-feedback displayNone">{$translations.login.err_pass_short}</div>
							<div class="textarea-feedback mt5" >{$translations.apply.newuser_hint}</div>
						</div>
	
						<div class="modal-footer pt20" >
							<div class="modal-ajax" >
								<i id="fspinner_apply" class="displayNone fa fa-refresh fa-spin fa-lg fa-fw refresh-spinner"></i>
							</div>
							<button type="submit" class="btn btn-default btn-success mbtn" onclick="return SimpleJobScript.Apply({$MAX_CV_SIZE}, 'existing');">{$translations.apply.submit}</button>
							<button type="button" class="btn btn-default btn-warning  mbtn" data-dismiss="modal">{$translations.job_detail_section.close}</button>
						</div>

				</form>
			  </div>
			</div>
      </div><!-- body -->

    </div>
    <!-- end of modal -->
  </div>
</div>
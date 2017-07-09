<a data-toggle="modal" data-target="#applyModal" href="#" onclick="return false;"><buton id="apply_online_now" class="btn btn-default btn-success mbtn" >{$translations.apply.apply_btn}</buton></a>
<br /><br />

<!--  -->
<div id="applyModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">{$translations.job_detail_section.application_title} - {$translations.apply.tab2}</h4>
        <p class="modal-desc">{$translations.apply.amend_text}<a href="/{$URL_PROFILE}/edit" target="_blank" class="green-link">{$translations.apply.amend_text2}</a> {$translations.apply.amend_text3}</p>
      </div>
      <div class="modal-body">

			    <form role="form" method="post" action="{$BASE_URL}{$URL_APPLY}" enctype="multipart/form-data" >
						<input type="hidden" name="job_id" id="job_id" value="{$job.id}" />
						<input type="hidden" name="new_user" id="new_user" value="0" />

						<br />
						<div class="form-group">
								<span class="opaque fs14">
									<strong>{$translations.apply.apply_as}</strong><br />
									<ul class="list-group mt5">
									  {if $SESSION_APPLICANT_NAME}
									  <li class="list-group-item">{$SESSION_APPLICANT_NAME}</li>
									  {/if}

									  {if $SESSION_APPLICANT_OCCUPATION}
									  <li class="list-group-item">{$SESSION_APPLICANT_OCCUPATION}</li>
									  {/if}

									  <li class="list-group-item">{$SESSION_APPLICANT_EMAIL}</li>

									  {if $SESSION_APPLICANT_PHONE}
									 	 <li class="list-group-item">{$SESSION_APPLICANT_PHONE}</li>
									  {/if}

									  {if $SESSION_APPLICANT_LOCATION}
									  <li class="list-group-item">{$SESSION_APPLICANT_LOCATION}</li>
									  {/if}

									  {if $SESSION_APPLICANT_SKILLS}
									  <li class="list-group-item">{$SESSION_APPLICANT_SKILLS}</li>
									  {/if}

									  {if $SESSION_APPLICANT_PORTFOLIO}
									  <li class="list-group-item"><a href="{$SESSION_APPLICANT_PORTFOLIO_LINK}" target="_blank">{$SESSION_APPLICANT_PORTFOLIO}</a> - <span class="modal-desc">[{$translations.profile.form_weblink}]</span></li>
									  {/if}

									  <li class="list-group-item">
									 {foreach $SESSION_APPLICANT_SM_LINKS as $SM_OBJ}
									 	 <a class="mr12" href="{if $SM_OBJ->whatsapp == 'true'}tel:{$SM_OBJ->whatsapp_numb}{else}{$SM_OBJ->linkToShow}{/if}" target="_blank"><i class="fa fa-{$SM_OBJ->icon} fa-lg" aria-hidden="true"></i></a>
									 {/foreach}
									 </li>

									  <li class="list-group-item">{$SESSION_APPLICANT_MESSAGE}</li>
									  <li class="list-group-item">{$SESSION_APPLICANT_CVTEXT}</li>
									</ul>
								</span>
						</div>
					
						<div class="modal-footer pt20" >
							<div class="modal-ajax" >
								<i id="fspinner_apply" class="displayNone fa fa-refresh fa-spin fa-lg fa-fw refresh-spinner"></i>
							</div>
							<button type="submit" class="btn btn-default btn-success mbtn" onclick="return SimpleJobScript.Apply({$MAX_CV_SIZE}, 'existing');">{$translations.apply.submit}</button>
							<button type="button" class="btn btn-default btn-warning  mbtn" data-dismiss="modal">{$translations.job_detail_section.close}</button>
						</div>

				</form>

      </div><!-- body -->

    </div>
    <!-- end of modal -->
  </div>
</div>
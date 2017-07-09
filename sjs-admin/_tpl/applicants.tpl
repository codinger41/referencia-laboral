{include file="header.tpl"} 

<div class="admin-content">
	<div class="admin-wrap-content">
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<label class="admin-label">
			{if $applicants_count > 0}{$applicants_count} job applications{else}No job applications, yet{/if}
		</label>
		<div class="subheading">Application message can be viewed by clicking on the blue listing icon</div>
	</div>

     <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	    <div id="accordion-list"> 

			<ul class="applicants-list">  
				{foreach item=applicant from=$applicants name=cvs} 
				    <li> 

					    <div style="float:right; margin-left: 15px;">
					    	<a href="{$BASE_URL_ADMIN}job-applications/delete/{$applicant.id}/" title="Delete this applicant" onclick="if(!confirm('Are you sure you want to delete this application?'))return false;"><i class="fa fa-trash fa-lg blueColor" aria-hidden="true"></i></a>
					    </div>

	                    <div style="float:right; margin-left: 15px;" title="Application message">
	                    	<a data-toggle="modal" data-target="#apply_modal_{$applicant.id}" href="#" onclick="return false;"><i class="fa fa-address-card-o fa-lg blueColor" aria-hidden="true"></i></a>
						</div>

						{if $applicant.cv_path != ''}
				            <div style="float:right" title="Download cv"><a target="_blank" href="{$BASE_URL}{$applicant.cv_path}"><i class="{$cvs[$applicant.id]}" aria-hidden="true"></i></a></div>
				        {/if}

				        <div style="float:right; margin-right: 10px;" title="Application message">
	                    	{if $applicant.status == 0 }
	                    		PENDING
	                    	{else if $applicant.status == 1}
	                    	 	<span class="profile-rejected">REJECTED</span>
	                    	{else}
	                    		<span class="profile-reviewed">REVIEWED</span>
	                    	{/if}
						</div>

				        <span class="applicant-name">{$applicant.name}</span>
				        <div style="font-size: 13px;">
				            <div class="gray">applied 
							{if $applicant.title}to <a style="font-size: 13px;margin: 0px 5px 0px 5px;" href="{$BASE_URL_ADMIN}job/{$applicant.job_id}/"><span class="upc">"{$applicant.title}"</span></a>{/if}
							{if $applicant.company} at <strong class="upc" style="color: #39b6b3; ">&nbsp;{$applicant.company}</strong>{/if}
				        </div>
				    </li>

					<div id="apply_modal_{$applicant.id}" class="modal fade" role="dialog">
					  <div class="modal-dialog">
					    <!-- Modal content-->
					    <div class="modal-content">
					      <div class="modal-header">
					        <button type="button" class="close" data-dismiss="modal">&times;</button>
					        <h4 class="modal-title">Candidate profile</h4>
					      </div>
					      <div class="modal-body">
					      		<span class="modal-label">Applied on</span><br />
					      		{$applicant.created_on}
					      </div>
					      <div class="modal-body">
					      		<span class="modal-label">Email</span><br />
					      		{$applicant.email}
					      </div>

					      {if $applicant.phone}
					      <div class="modal-body">
					      		<span class="modal-label">Phone</span><br />
					      		<a href="tel:{$applicant.phone}">{$applicant.phone}</a>
					      </div>
					      {/if}

					      {if $applicant.website}
					   	  <div class="modal-body">
					      		<span class="modal-label">Website</span><br />
					      		<a href="http://{$applicant.website}" target="_blank">{$applicant.website}</a>
					      </div>
					      {/if}

					      {if $applicant.sm_links}
					      <div class="modal-body">
					      		<span class="modal-label">{$translations.js.social_media_label}</span><br />
								 {foreach $applicant.sm_links as $SM_OBJ}
									 	 <a class="mr12" href="{if $SM_OBJ->whatsapp == 'true'}tel:{$SM_OBJ->whatsapp_numb}{else}{$SM_OBJ->linkToShow}{/if}" target="_blank"><i class="fa fa-{$SM_OBJ->icon} fa-lg mt10" aria-hidden="true"></i></a>
								 {/foreach}
					      </div>
					      {/if}

					      <div class="modal-body">
					      		<span class="modal-label">Application message</span><br /><br />
					      		{$applicant.message}
					      </div>
					      <div class="modal-footer">
	        				<button style="float: left" type="button" class="btn btn-default btn-warning mbtn" data-dismiss="modal">Close</button>
	      				</div>
					    </div>

					  </div>
					</div>
				{/foreach}
			</ul>
			<div class="pagination">{$pages}</div>
	    </div>
    </div>
</div><!-- #content -->
</div>

{if $deleted_popup == 'true'}
<script type="text/javascript">
   setTimeout(function(){
   	jobberBase.messages.add('Job application has been deleted');
   }, 1000);
</script>
{/if}

{include file="footer.tpl"}


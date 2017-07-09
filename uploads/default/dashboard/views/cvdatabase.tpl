

{if $CVDB_ACCESS_RESULT == 'true'}
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb20">
		<label class="admin-label mt20">{$translations.dashboard_recruiter.cvdb_headline}</label>
		<div class="alert alert-info fade in main-color">
		    <a href="#" class="close" data-dismiss="alert">&times;</a>
		     <i class="fa fa-info-circle info-fa" aria-hidden="true"></i>
		     {if $ACCESS_GRANTED_MSG}
		     	{$ACCESS_GRANTED_MSG}
		     {else}
		     	{$translations.dashboard_recruiter.cvdb_desc}{if $PAYMENT_MODE == '3'}<br /><div class="orange">{$msg}</div>{/if}
		     {/if} 
		</div>
	</div>

	<div class="mb30 cvSearchBlock">
		<form method="post" action="{$BASE_URL}{$URL_DASHBOARD}/{$URL_DASHBOARD_CVDATABASE}" role="form">

		<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12" >
			<div class="form-group">
				<input id="cvdb_occupation" {if $searched_occupation}value="{$searched_occupation}"{/if} name="cvdb_occupation" type="text" class="form-control minput" placeholder="{$translations.apply.occupation_label}" />
			</div>
		</div>

		<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12" >
			<div class="form-group">
				<input id="cvdb_location" {if $searched_location}value="{$searched_location}"{/if} name="cvdb_location" type="text" class="form-control minput" placeholder="{$translations.dashboard_recruiter.post_location_label}" />
			</div>
		</div>

		<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12" >
			<div class="form-group">
				<div class="input textarea clearfix cvDbTaggle"></div>
			</div>
		</div>

		<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12" >
			<div class="form-group">
				<button type="submit" class="btn btn-default btn-primary searchBtn" name="submit" id="standartSearchBtn"><i class="fa fa-search fa-lg" aria-hidden="true"></i></button>
			</div>
		</div>

		</form>
	</div>

	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 {if $searchPerformed == 'true'} mtm10 {else} mt15 {/if}">
		<div class="table-responsive">
			<table class="table table-striped table-condensed job-table normal-gray">
			    <thead>
			      <tr>
			        <th><strong>{$translations.apply.table_applicant}</strong></th>
			        <th><strong>{$translations.apply.occupation_label}</strong></th>
			        <th><strong>{$translations.apply.skills}</strong></th>
			        <th><strong>{$translations.apply.located}</strong></th>
			        <th><strong>{$translations.applications.cv}</strong></th>
			        <th><strong>{$translations.apply.about}</strong></th>
			        
			      </tr>
			    </thead>

			    <tbody>
				{if $applications}		    
			    {section name=index loop=$applications}
			    <tr>
			    	<td>{$applications[index].fullname}</td>
			    	<td>{$applications[index].occupation}</td>
			    	<td>{$applications[index].skills_formated}</td>
			    	<td>{$applications[index].location}</td>
			    	<td>
		    			{if $applications[index].cv_path == '-'}
		    				<span>{$applications[index].cv_path}</span>
		    			{else}
		    				<a href="{$BASE_URL}{$applications[index].cv_path}" onclick="SimpleJobScript.subsctractCvDownload({$EMP_ID}, {$PAYMENT_MODE});">
		    					<i class="{$applications[index].fa_class}" aria-hidden="true"></i>
		    				</a>
		    			{/if}
			    	</td>
			    	<td><a data-toggle="modal" data-target="#modal_{$applications[index].id}" href="#"><i class="fa fa-address-card-o fa-lg" aria-hidden="true"></i></a></td>
			    </tr>
			    {/section}
			    {else}
			     <tr><td>{$translations.dashboard_recruiter.no_candidates_msg}</td></tr>
			    {/if}
			    </tbody>

			</table>
		</div>
		<div class="pagination">{$pages}</div>
	</div>

	 {section name=index loop=$applications}
	 	<div id="modal_{$applications[index].id}" class="modal fade" role="dialog">
	 		<div class="modal-dialog">
	 			<div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal">&times;</button>
			        <h4 class="modal-title">{$translations.js.candidate_profile}</h4>
			      </div>
			      	  <div class="modal-body">
				      	<span class="modal-label">{$translations.js.applied_label}</span><br />
				      		{$applications[index].created_on}
				      </div>
				      <div class="modal-body">
				      		<span class="modal-label">{$translations.js.email_label}</span><br />
				      		{$applications[index].email}
				      </div>
				      {if $applications[index].phone and $applications[index].phone != '-'}
				      <div class="modal-body">
				      		<span class="modal-label">{$translations.js.phone_label}</span><br />
				      		<a href="tel:{$applications[index].phone}">{$applications[index].phone}</a>
				      </div>
				      {/if}

				      {if $applications[index].weblink and $applications[index].weblink != '-'}
				   	  <div class="modal-body">
				      		<span class="modal-label">{$translations.js.website_label}</span><br />
				      		<a href="http://{$applications[index].weblink}" target="_blank">{$applications[index].weblink_short}</a>
				      </div>
				      {/if}

				      {if $applications[index].sm_links}
				      <div class="modal-body">
				      		<span class="modal-label">{$translations.js.social_media_label}</span><br />
							 {foreach $applications[index].sm_links as $SM_OBJ}
								 	 <a class="mr12" href="{if $SM_OBJ->whatsapp == 'true'}tel:{$SM_OBJ->whatsapp_numb}{else}{$SM_OBJ->linkToShow}{/if}" target="_blank"><i class="fa fa-{$SM_OBJ->icon} fa-lg mt10" aria-hidden="true"></i></a>
							 {/foreach}
				      </div>
				      {/if}

				      <div class="modal-body">
				      		<span class="modal-label">{$translations.js.application_message}</span><br /><br />
				      		{$applications[index].message}
				      </div>
			      <div class="modal-footer">
			       <button type="button" class="btn btn-default btn-warning mbtn" data-dismiss="modal">{$translations.js.close}</button>
			      </div>
			    </div>
	 		</div>
	 	</div>
	 {/section}
{else}

	{if $lock_screen}
	
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb20">
		<label class="admin-label mt20">{$translations.dashboard_recruiter.cvdb_headline}</label>
		<div class="alert alert-info fade in main-color">
		    <a href="#" class="close" data-dismiss="alert">&times;</a>
		     	{if $PAYMENT_MODE == '3'}<div class="orange">{$msg}</div>{/if}
		</div>
		</div>

		<table id="lock-table" >
		  <tr>
		     <td>{$translations.post_step1.out_of_credit}</td>
		  </tr>
		  <tr>
		     <td><image src="{$BASE_URL}_tpl/{$THEME}/img/cvdb-lock.png" width="250" height="250" /></td>
		  </tr>
		  <tr>
		  	<td>
		  		<a href="{$BASE_URL}{$URL_DASHBOARD}/{$URL_DASHBOARD_ACCOUNT_ORDER}"><button type="button" class="btn btn-default btn-primary mbtn" >{$translations.post_step1.renew}</button></a>
		  	</td>
		  </tr>
		 </table>
	{else}
	   	 <table id="wrapper" >
	   		  <tr>
			     <td><h3>1/2</h3></td>
			  </tr>
			  <tr>
			     <td>{$CVDB_MSG}</td>
			  </tr>
			  <tr>
			     <td><image src="{$BASE_URL}_tpl/{$THEME}/img/cvdb-lock.png" width="250" height="250" /></td>
			  </tr>
			  <tr>
			  	<td>
			  		<a href="{$BASE_URL}{$URL_DASHBOARD}/{$URL_DASHBOARD_CVDATABASE}/2"><button type="submit" class="btn btn-default btn-primary mbtn" name="submit" id="submit" >{$translations.dashboard_recruiter.unlock}</button></a>
			  	</td>
			  </tr>
		  </table>
	{/if}

{/if}

{if $TAGL_RESTYLE == 'true'}
<style type="text/css">
.textarea.input, textarea.input {
  border: none !important;
  padding: 0px !important;
}
</style>
{/if}
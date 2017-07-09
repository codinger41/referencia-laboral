<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb20">
	<label class="admin-label mt20">{$translations.dashboard_recruiter.jobs_headline}</label>
	<div class="alert alert-info fade in main-color">
	    <a href="#" class="close" data-dismiss="alert">&times;</a>
	    <i class="fa fa-info-circle info-fa" aria-hidden="true"></i>
	    {$translations.dashboard_recruiter.jobs_about_tag}
	</div>
</div>
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
<div class="table-responsive job-table">
	<table class="table table-striped table-condensed manage-jobs-table normal-gray">
	    <thead height="20">
	      <tr>
	        <th>{$translations.dashboard_recruiter.jobs_title}</th>
	        <th>{$translations.dashboard_recruiter.jobs_status}</th>
	        <th>{$translations.dashboard_recruiter.jobs_views}</th>
	        <th>{$translations.dashboard_recruiter.jobs_applications}</th>
	        <th>{$translations.dashboard_recruiter.jobs_statistics}</th>
	        <th>{$translations.dashboard_recruiter.info}</th>
	        <th>{$translations.dashboard_recruiter.jobs_edit}</th>
	        <th>{$translations.apply.table_jobs_delete}</th>
	      </tr>
	    </thead>
	    <tbody>
	      {foreach from=$dash_jobs item=job}
	      <tr>
	      	{if $job.is_active == '1'}
	      		<td><a href="/{$URL_JOB}/{$job.id}/{$job.url_title}" target="_blank" >{$job.title}</a></td>
	      	{else}
	      		<td>{$job.title}</td>
	      	{/if}

	      	{if $job.is_active == '1'}
	      		<td>{$translations.dashboard_recruiter.jobs_active}</td>
	      	{else}
	      		<td class="admin-red-small">{$translations.dashboard_recruiter.jobs_inactive}</td>
	      	{/if}

	      	<td>{$job.views_count}</td>
	      	<td>{$apps_array[$job.id]}</td>
	      	<td class="opaque"><a href="{$BASE_URL}{$URL_DASHBOARD}/{$URL_DASHBOARD_STATISTICS}/{$job.id}/{$job.views_count}-{$apps_array[$job.id]}"><i class="fa fa-bar-chart-o fa-lg" aria-hidden="true"></i></a></td>
	      	<td><a data-toggle="modal" data-target="#modal_{$job.id}" href="#"><i class="fa fa-file-text-o fa-lg" aria-hidden="true"></i>
	      	<td class="opaque"><a href="{$BASE_URL}{$URL_DASHBOARD}/{$URL_DASHBOARD_EDIT_JOB}/{$job.id}"><i class="fa fa-wrench fa-lg" aria-hidden="true"></i></a></td>
	      	<td class="opaque"><a id="deleteConfirm-{$job.id}"  href="{$BASE_URL}{$URL_DASHBOARD}/{$URL_DASHBOARD_DELETE_JOB}/{$job.id}"><i class="fa fa-trash fa-lg" aria-hidden="true"></i></a></td>
	      </tr>
	      {/foreach}
	    </tbody>
	</table>
</div>
</div>

    {section name=index loop=$dash_jobs}
	 	<div id="modal_{$dash_jobs[index].id}" class="modal fade" role="dialog">
	 		<div class="modal-dialog">
	 			<div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal">&times;</button>
			        <h4 class="modal-title">Job details</h4>
			      </div>
		      	  <div class="modal-body">
			      	<span class="modal-label">{$translations.dashboard_recruiter.jobs_expires}</span><br />
			      		{$dash_jobs[index].expires_date}
			      </div>
			      <div class="modal-body">
			      	<span class="modal-label">{$translations.dashboard_recruiter.jobs_ad_type}</span><br />
			      		{if $job.spotlight == '1'} 
			      			{$translations.dashboard_recruiter.jobs_premium}
	      				{else}
	      					{$translations.dashboard_recruiter.jobs_standard}
	      				{/if}
			      </div>
			      <div class="modal-body">
			      	<span class="modal-label">{$translations.dashboard_recruiter.jobs_type}</span><br />
			      		{$dash_jobs[index].type_name}
			      </div>
			      <div class="modal-body">
			      	<span class="modal-label">{$translations.dashboard_recruiter.jobs_category}</span><br />
			      		{$dash_jobs[index].category_name}
			      </div>
			      <div class="modal-body">
			      	<span class="modal-label">{$translations.dashboard_recruiter.post_location_label}</span><br />
			      		{$dash_jobs[index].location}
			      </div>
			      <div class="modal-footer">
			       <button type="button" class="btn btn-default btn-warning mbtn" data-dismiss="modal">{$translations.js.close}</button>
			      </div>
			    </div>
	 		</div>
	 	</div>
	 {/section}

{foreach from=$dash_jobs item=job}
<script type="text/javascript">
	$("#deleteConfirm-{$job.id}").confirm({
		    text: "{$translations.dashboard_recruiter.delete_job_message}",
		    confirm: function(button) {
		        window.location.replace(button[0].pathname);
		    },
		    cancel: function(button) {
		    },
		    confirmButton: "{$translations.dashboard_recruiter.yes_i_do}",
		    cancelButton: "{$translations.dashboard_recruiter.text_no}",
		    confirmButtonClass: "btn-primary",
		    cancelButtonClass: "btn-warning"
	});
</script>
{/foreach}

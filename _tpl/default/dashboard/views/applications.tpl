<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb20">
	<label class="admin-label mt20">{$translations.dashboard_recruiter.jobs_apps_headline}</label>
	<div class="alert alert-info fade in main-color">
	    <a href="#" class="close" data-dismiss="alert">&times;</a>
	    <i class="fa fa-info-circle info-fa" aria-hidden="true"></i>
	    {$translations.dashboard_recruiter.jobs_apps_desc}
	</div>
</div>

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb15">
	<form role="form">
		<div class="form-group">
			<label for="type">{$translations.dashboard_recruiter.select_jobs_title}</label>
			<i id="apps_spinner" class="displayNone fa fa-refresh fa-spin fa-lg fa-fw refresh-spinner"></i>
			<select id="job_select" name="job_select" class="form-control minput">
				{foreach from=$jobs_select key=id item=value}
					{if $select_job_id}
						{if $select_job_id == $id}
						<option selected value="{$id}">{$value}</option>
						{else}
						<option value="{$id}">{$value}</option>
						{/if}
					{else}
						<option value="{$id}">{$value}</option>
					{/if}
					}
				{/foreach}
			</select>
		</div>
	</form>
</div>

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	<div class="table-responsive">
		<table class="table table-striped table-condensed job-table normal-gray">
		    <thead>
		      <tr>
		        <th><strong>{$translations.apply.table_applicant}</strong></th>
		        <th><strong>{$translations.apply.occupation_label}</strong></th>
		        <th><strong>{$translations.apply.skills}</strong></th>
		        <th><strong>{$translations.apply.located}</strong></th>
		        <th><strong>{$translations.applications.cv}</strong></th>
		        <th><strong>{$translations.apply.table_message}</strong></th>
		        <th><strong>{$translations.apply.table_review}</strong></th>
		        <th><strong>{$translations.apply.table_delete}</strong></th>
		      </tr>
		    </thead>
		    <tbody id="ajax-content"></tbody>
		</table>
	</div>
</div>

<div id="apps-modals"></div>


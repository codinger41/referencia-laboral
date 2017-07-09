<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb20">
	<label class="admin-label mt20">{$translations.dashboard_recruiter.account_headline}</label>
	<div class="alert alert-info fade in main-color">
	    <a href="#" class="close" data-dismiss="alert">&times;</a>
	    <i class="fa fa-info-circle info-fa" aria-hidden="true"></i>
	     {$translations.dashboard_recruiter.account_note}
	     {if $no_resources_msg}<div class="orange">{$no_resources_msg}</div>{/if}
	</div>
</div>

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	<label class="admin-label">{$acc_data.name} {$translations.dashboard_recruiter.acc_plan}</label>
</div>

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb40 xmt25">
	<label class="admin-label">{$translations.dashboard_recruiter.plan_headline}</label>
	<div class="row dash-boxes">
		<div class="dash-box1">
			<div class="row dash-icon" style="margin: 0; padding: 0;">{$acc_data.jobs_left}</div>
			<div class="row dash-text" >{$jobs_left_msg}</div>
		</div>
		<div class="dash-box2">
			<div class="row dash-icon" style="margin: 0; padding: 0;">{$acc_data.cv_downloads_left}</div>
			<div class="row dash-text" >{$cvs_left_msg}</div>
		</div>
		<div class="dash-box3">
			<div class="row dash-icon" style="margin: 0; padding: 0;">{$acc_data.job_period} DAYS</div>
			<div class="row dash-text" >{$translations.dashboard_recruiter.job_expiry_period}</div>
		</div>
	</div>
</div>

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb10">
	<label class="admin-label">{$translations.dashboard_recruiter.renew_text}</label>
</div>

<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 mb50">	
	<a href="{$BASE_URL}{$URL_DASHBOARD}/{$URL_DASHBOARD_ACCOUNT_ORDER}"><button type="button" class="btn btn-default btn-primary" name="topup-btn" id="topup-btn" ><i class="fa fa-arrow-circle-right fa-lg" aria-hidden="true"></i></button></a> 
</div>


<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	<label class="admin-label">{$translations.dashboard_recruiter.deactivate_headline}</label>
</div>

<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">	
		<div class="acc-opaque">{$translations.dashboard_recruiter.deactivate_msg}</div>
</div>

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb20">
	<label class="admin-label mt20">{$translations.dashboard_recruiter.overview_headline}</label>
	<div class="alert alert-info fade in main-color">
	    <a href="#" class="close" data-dismiss="alert">&times;</a>
	    <i class="fa fa-info-circle info-fa" aria-hidden="true"></i>
	     {$translations.dashboard_recruiter.welcome_message_overview}
	</div>
</div>

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb15">
	<label class="admin-label">{$translations.dashboard_recruiter.activity}</label>
	<div class="row dash-boxes">
		<div class="dash-box1">
			<div class="row dash-icon" style="margin: 0; padding: 0;">{$overview_data.jobs_posted}</div>
			<div class="row dash-text" >{$translations.dashboard_recruiter.overview_jobs_posted}</div>
		</div>
		<div class="dash-box2">
			<div class="row dash-icon" style="margin: 0; padding: 0;">{$overview_data.applications}</div>
			<div class="row dash-text" >{$translations.dashboard_recruiter.overview_applications}</div>
		</div>
		<div class="dash-box3">
			<div class="row dash-icon" style="margin: 0; padding: 0;">{$overview_data.performance} %</div>
			<div class="row dash-text" >{$translations.dashboard_recruiter.overview_performance}</div>
		</div>
	</div>
</div>

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	<label class="admin-label">{$translations.dashboard_recruiter.overview_news}</label>
	<div class="news-font light-gray-color">
	 {foreach from=$news item=obj}
	 {$obj->date}<span class="news">{$obj->msg}</span>
	 <br />
	 {/foreach}
	</div>
</div>
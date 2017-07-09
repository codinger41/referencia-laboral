{include file="layout/header.tpl"}
		
	<div class="container content top-offset pl60" >

		<div id="main" role="main" class="companies-wrap company-detail-wrap">

			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" >

				<ul class="nav navbar-nav pull-left" style=" margin-left: -15px;">
					<li><a href="{$BASE_URL}{$URL_COMPANIES}">&larr; {$translations.dashboard_recruiter.back}</a></li>
				</ul>

				<ul class="nav navbar-nav pull-right">
					<li><a target="_blank" href="{$BASE_URL}{$URL_REGISTER_RECRUITERS}">{$translations.dashboard_recruiter.add_company}</a></li>
				</ul>

				<img id="profile" class="img-responsive" src="{$BASE_URL}{$company.profile_picture}" />
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4" style="padding-left: 0px; margin-left: 0px;">
					<div class="rise">
						<img id="profileLogo" class="img-responsive" src="{$BASE_URL}{$company.logo_path}" />
					</div>
				</div>
				<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12" >
					<h3>{$company.name}</h3>
					<p>{$company.description}</p>
					<a target="_blank" href="http://{$company.url}">{$company.url}</a>
				</div>

			</div>

		</div>

			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt50">
 				<div class="company-jobs" >
					{$translations.dashboard_recruiter.open_jobs}
				</div> 
				<div id="job-listings">
				{if $jobs}
					{include file="jobs/company-posts-loop.tpl"}
				{else}
					<div class="centerMobile">
						{$translations.dashboard_recruiter.no_entries}
					</div>
				{/if}
				</div>
			</div>

	</div><!-- #content -->

{include file="layout/footer.tpl"}
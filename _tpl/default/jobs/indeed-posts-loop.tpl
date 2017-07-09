
<div class="listing-headline" >{$translations.indeed.jobs_by} <a
href="https://www.indeed.com/" title="Job Search"><img
src="{$BASE_URL}_tpl/{$THEME}/img/jobsearch.gif" style="margin-left: 5px; border: 0;
vertical-align: middle;" alt="Indeed job search"></a></div> 
                                
<ul class="listings-block">
{if $jobs}
{foreach item=job from=$jobs name='jobsLoop'}

	{if $smarty.const.BANNER_MANAGER == 'true'}
		{if $smarty.foreach.jobsLoop.iteration is div by $smarty.const.ADSENSE_LISTING_COUNT} 
		{include file="$banners_jlb"}
		{/if}
	{/if}
			
	<!-- Adsense plugin -->
	{if $smarty.const.ADSENSE == 'true'}
		{if $smarty.foreach.jobsLoop.iteration is div by $smarty.const.ADSENSE_LISTING_COUNT} 
		{include file="$adsense_listing_leaderboard"}
		{/if}
	{/if}

	<li class="indeed-li">
		<a href="{$job->url}" target="_blank" >

			<!-- MOBILE CONTENT LISTING -->
			<div class="mobile-listing-content">
					<div class="listing-title">
						{$job->jobtitle}
					</div>

					<div class="listing-info">
						{if $job->company}
						<i class="fa fa-building list-fa fa-lg" aria-hidden="true"></i><span class="opaque">{$job->company}</span> |&nbsp;
						{/if}
						{if $REMOTE_PORTAL == 'deactivated'}
							{if $job->city}
							<i class="fa fa-map-marker list-fa fa-lg" aria-hidden="true"></i><span class="opaque">{$job->city}</span> |&nbsp;
							{/if}
						{/if}
						<i class="fa fa-calendar list-fa fa-lg" aria-hidden="true"></i><span class="opaque">{$job->formattedRelativeTime}</span>
					</div>

					<div class="listing-type" >
						<span>{$jobtype}</span>
					</div>

			 		<div class="noMP col-md-12 col-sm-12 col-xs-12">
			 			<div class="listing-desc pl0" >
			 				{$job->snippet}
			 			</div>
					</div>

			</div>
			<!-- ################################################### -->

			<!-- DESKTOP CONTENT LISTING -->
	 		<div class="desktop-listing-content">

		 		<div class="noMP col-md-7 col-sm-7 col-xs-7">

					<div class="listing-title" style="margin-left: 0px;">
						{$job->jobtitle}
					</div>

					<div class="listing-info" style="margin-left: 0px;">
						{if $job->company}
						<i class="fa fa-building list-fa fa-lg" aria-hidden="true"></i><span class="opaque">{$job->company}</span> |&nbsp;
						{/if}
						{if $REMOTE_PORTAL == 'deactivated'}
							{if $job->city}
							<i class="fa fa-map-marker list-fa fa-lg" aria-hidden="true"></i><span class="opaque">{$job->city}</span> |&nbsp;
							{/if}
						{/if}
						<i class="fa fa-calendar list-fa fa-lg" aria-hidden="true"></i><span class="opaque">{$job->formattedRelativeTime}</span>
					</div>

		 		</div>

		 		<div class="noMP col-md-5 col-sm-5 col-xs-5" >
					<div class="listing-type" >
						<span>{$jobtype}</span>
					</div>
		 		</div>

		 		<div class="noMP col-md-12 col-sm-12 col-xs-12">
		 			<div class="listing-desc pl0" >
		 				{$job->snippet}
		 			</div>
				</div>

			</div>

		</a>
	</li>
	
{/foreach}
{else}
<div id="no-ads" class="p25" style="color: #333">
	{$translations.alljobs.no_jobs}
</div>
{/if}
</ul>

{if $pages}
<div class="pagination">
<ul>
	{$pages}
</ul>
</div>
<br />
{/if}
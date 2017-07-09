{include file="layout/header.tpl"}
		
		<div class="container content top-offset">

			<div id="searchbar">
				{include file="snippets/searchbar-content.tpl"}
			</div>
			<div id="main" role="main">
			  <div id="jobs-loader" class="overlay displayNone" ></div>
				{if $INDEED == 'activated'}

				    {if $INDEED_BOTH_JOBS_FLAG}
					    <div id="job-listings">
							<div class="listing-headline">
								{$translations.alljobs.jobs_in} {$city_name}
							</div>
							{if $jobs}
							{include file="jobs/jobs-list.tpl"}
							{else}
								<div id="no-ads">
									{$translations.jobscity.no_jobs_in} <strong>{$city_name}</strong>.
									{if $smarty.const.ENABLE_NEW_JOBS}
										<br /><a href="{$BASE_URL}post/" title="{$translations.footer.new_job_title}">{$translations.footer.new_job}</a>
									{/if}
								</div><!-- #no-ads -->
							{/if}
						</div>
				    {/if}

					<div id="indeed-listings">
						<div class="listing-headline">
							{$translations.alljobs.jobs_in} {$city_name}
						</div>
					</div>
				{else}
					<div id="job-listings">
						<div class="listing-headline">
							{$translations.alljobs.jobs_in} {$city_name}
						</div>
						{if $jobs}
						{include file="jobs/jobs-list.tpl"}
						{else}
						<div id="no-ads">
							{$translations.jobscity.no_jobs_in} <strong>{$city_name}</strong>.
							{if $smarty.const.ENABLE_NEW_JOBS}
								<br /><a href="{$BASE_URL}post/" title="{$translations.footer.new_job_title}">{$translations.footer.new_job}</a>
							{/if}
						</div><!-- #no-ads -->
						{/if}
					</div>
				{/if}	
			</div>
			<!-- sidebar -->
			<aside id="sidebar" role="complementary">
				{include file="snippets/sidebar-content.tpl"}
			</aside>

		</div><!-- #content -->

{include file="layout/footer.tpl"}

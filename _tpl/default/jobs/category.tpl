{include file="layout/header.tpl"}
	<div class="container content top-offset">
		<!-- searchbar -->
		<div id="searchbar">
			{include file="snippets/searchbar-content.tpl"}
		</div>
		<div id="main" role="main">
		<div id="jobs-loader" class="overlay displayNone" ></div>
			{if $INDEED == 'activated'}

				    {if $INDEED_BOTH_JOBS_FLAG}
					    <div id="job-listings">
							<div class="listing-headline">
								{$translations.category.jobs_for} {$current_category_name}
							</div>
							{if $jobs}
							{include file="jobs/jobs-list.tpl"}
							{else}
							<div id="no-ads">
								{$translations.alljobs.no_jobs}
							</div><!-- #no-ads -->
							{/if}
						</div>
				    {/if}

					<div id="indeed-listings">
						<div class="listing-headline">
							{$translations.category.jobs_for} {$current_category_name}
						</div>
					</div>
				{else}
					<div id="job-listings">
						<div class="listing-headline">
							{$translations.category.jobs_for} {$current_category_name}
						</div>
						{if $jobs}
						{include file="jobs/jobs-list.tpl"}
						{else}
						<div id="no-ads">
							{$translations.alljobs.no_jobs}
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

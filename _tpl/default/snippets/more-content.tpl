
{if $more_jobs}
<div class="container">
	<div class="row-fluid">
			<div id="more-content-id" class="mt35">
					<div id="job-listings">
							<div class="listing-headline" >
									{if $favourites_jobs}
		 								{$translations.alljobs.favourites_label}
		 							{else}
		 								{$translations.alljobs.all_jobs} {if $current_jobtype}/ {$current_jobtype}{/if}
		 							{/if}
							</div>
							{include file="jobs/more-content-jobs-list.tpl"}
					</div>
			</div>
	</div>
</div>
{/if}
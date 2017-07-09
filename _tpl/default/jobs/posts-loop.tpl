
{if $no_categ != 1}
	{if $keywords}
			<div class="remove_idd displayNone" > {$remove_id}</div>
			<div id="job-listings">
				<div class="listing-headline">

					<div id="jobtypee" class="search_typee">
					    {$translations.searchbar.search_results_for} <span class="searched">{$keywords}</span> :
			        	{$current_jobtype_search} {if $current_jobtype}/ {$current_jobtype}{/if}                 
			        </div>
			        <div class="clearallfilters" onclick="{literal}window.location.replace('{/literal}{$PROTOCOL}{$MAIN_URL}{$URL_JOBS}{literal}');{/literal}">
			        	<span>{$translations.website_general.clear}</span>
			       	</div>

		       	</div>

			{if $jobs}
				{include file="jobs/jobs-list.tpl"}
			{else}
			
				<br /><br />
				<div id="no-ads" class="general-wrap p25">
					{$translations.alljobs.no_jobs}
				</div>

			{/if}
			</div>
	{/if}
{/if}
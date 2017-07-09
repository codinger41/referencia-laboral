{include file="layout/header.tpl"}

		<div class="container content top-offset">

			<h4 class="listing-headline">{$translations.jobscity.title}</h4>
			{section name=tmp loop=$cities_overview}
			<span class="company-tag-{$cities_overview[tmp].tag_height}">
				<a class="green-link" style="font-size: 1.15em;" href="{$BASE_URL}{$URL_JOBS_IN_CITY}/{$cities_overview[tmp].varname}">{$cities_overview[tmp].name} ({$cities_overview[tmp].count})</a>
			</span>
			{if !$smarty.section.tmp.last}
				<img width="6" src="{$BASE_URL}_tpl/{$THEME}/img/new/circle.png" alt="companies separator" />
			{/if}
			{/section}
			<br /><br />
			<p class="paragraph">
			Total jobs: <strong>{$total_number_of_jobs}</strong> {$translations.jobscity.jobs}
			</p>
		</div>
		<!-- /content -->
 
{include file="layout/footer.tpl"}
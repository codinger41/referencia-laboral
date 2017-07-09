{include file="layout/header.tpl"}
		<br />

		<div class="container content top-offset">
			<div class="unsubs-padding text-center companies-wrap">
				<h4 class="general-headline gray-border-bottom">{$companies_count} &nbsp;{$translations.companies.desc}</h4>
				<span class="light-font">
					{$translations.companies.promote_text}
				</span><br /><br /><br />
				<div class="companies-desktop">
				{foreach item=c from=$companies}
					<div class="box">
					 	<a class="companies-link" href="{$BASE_URL}{$URL_JOBS_AT_COMPANY}/{$varnames[{$c.id}]}/{$c.id}">
							<div class="view view-first">  
									<img class="company-list-logo" src="/{$c.logo_path}" alt="Company logo" />
									<div class="mask">  
								     <h2>{$c.name}</h2>  
								     <p class="hq">{$c.hq}</p>  
								         <a href="{$BASE_URL}{$URL_JOBS_AT_COMPANY}/{$varnames[{$c.id}]}/{$c.id}" class="info">{$translations.companies.view_jobs}</a>  
								     </div>  
							</div>
						</a>
					</div>
				{/foreach}
				</div>
				<br /><br />
			</div><!-- /content -->
		</div>

{include file="layout/footer.tpl"}

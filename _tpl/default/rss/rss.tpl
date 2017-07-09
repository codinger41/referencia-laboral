{include file="layout/header.tpl"}
		
		<div class="container content">
			<div class="static-offset unsubs-padding general-wrap static-wrap">
				<h4 class="general-headline gray-border-bottom">{$translations.rss.title}</h4>	
				<span class="light-font">
					{$translations.rss.intro}
				</span><br /><br />
				<ul>
					<li><a href="{$BASE_URL}rss/all/">{$translations.rss.all_categories}</a></li>
					{section name=tmp loop=$categories}
					<li><a href="{$BASE_URL}rss/{$categories[tmp].var_name}/">{$categories[tmp].name}</a></li>
					{/section}
				</ul>
			</div><!-- /content -->
		</div>

{include file="layout/footer.tpl"}
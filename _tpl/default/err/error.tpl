{include file="layout/header.tpl"}

	<div class="container content ">
		<div class="static-offset general-wrap">
			<div id="job-listings"></div><!-- #job-listings -->
			<div id="no-ads">
				<div class="jumbotron myJumbotron">
					<div class="listing-headline">404</div>
					<p>{$translations.website_general.404_msg}</p>
					<ul class="blueText">
						<li>Most probably URL has been misspelled</li>
						<li>The page is outdated and has been removed</li>
						<li>Try to use the menu to navigate back</li>
					</ul>
					<span>Or you can click <a class="blueText" href="/{$URL_JOBS}">HERE</a> and get to homepage.</span>
				</div>
			</div>
		</div><!-- /content -->
	</div>

{include file="layout/footer.tpl"}
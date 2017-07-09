	</div> <!-- from header -->
	<div class="footer-roof">
		{foreach item=navitem from=$navigation name=i}
			 {if $smarty.foreach.i.last}
			 	{if $navitem->is_external == '1'}
			 		<a title="{$navitem->name}" target="_blank" href="{$navitem->external_url}">{$navitem->name}</a>
			 	{else}
			 		<a title="{$navitem->title}" href="{$BASE_URL}{$navitem->url}">{$navitem->name}</a>
			 	{/if}
			 {else}
			 	{if $navitem->is_external == '1'}
			 		<a title="{$navitem->name}" target="_blank" href="{$navitem->external_url}">{$navitem->name}</a> |&nbsp;
			 	{else}
			 		<a title="{$navitem->title}" href="{$BASE_URL}{$navitem->url}">{$navitem->name}</a> |&nbsp;
			 	{/if}
			 {/if}
		{/foreach}
	</div>
	<footer class="footer-tail">
		<div class="footer-social">
			{if $FB_URL}<a href="{$FB_URL}" target="_blank"><i class="fa fa-facebook footer-fa fa-lg" aria-hidden="true"></i></a>{/if}
			{if $TWITTER_URL}<a href="{$TWITTER_URL}" target="_blank"><i class="fa fa-twitter footer-fa fa-lg" aria-hidden="true"></i></a>{/if}
			{if $LINKEDIN_URL}<a href="{$LINKEDIN_URL}" target="_blank"><i class="fa fa-linkedin footer-fa fa-lg" aria-hidden="true"></i></a>{/if}
			{if $GPLUS_URL}<a href="{$GPLUS_URL}" target="_blank"><i class="fa fa-google-plus footer-fa fa-lg" aria-hidden="true"></i></a>{/if}
		</div>
		<div class="footer-copyright">
			{$SITE_NAME} &copy; {$YEAR}
		</div>
		<div id="library-loads"></div>
	</footer>

<div class="hidden-md hidden-lg hidden-sm">
</div> <!-- mobile side menu wrapper end -->
</div>

	<!--[if !IE]><script src="{$BASE_URL}js/jquery.history.js" type="text/javascript"></script><![endif]-->
	<script src="{$BASE_URL}js/functions.js" type="text/javascript"></script>

	{if $LOAD_TAGL == 'true'}
		<script src="{$BASE_URL}js/tags/tagl/assets/js/jquery-ui.js" type="text/javascript"></script>
		<script src="{$BASE_URL}js/tags/tagl/assets/js/rainbow-custom.min.js" type="text/javascript"></script>
		<!-- <script src="{$BASE_URL}js/tags/tagl/src/taggle-ie8.js" type="text/javascript"></script>
		<script src="{$BASE_URL}js/tags/tagl/src/taggle-ie9.js" type="text/javascript"></script> -->
		<script src="{$BASE_URL}js/tags/tagl/src/taggle.js" type="text/javascript"></script>
	{/if}

	{if $TAGL_INIT_JOB_DETAIL == 'true'}
		<script type="text/javascript">
		{literal}
		   new Taggle($('.skillsTaggle.textarea')[0], {
			    duplicateTagClass: 'bounce'
			});
	    {/literal}
		</script>
	{/if}

	{if $PROFILES_PLUGIN == 'true'}
		{if $TAGL_INIT_PROFILE_EDIT == 'true'}
			<script type="text/javascript">
			{literal}
				var current_tags = [];
				{/literal}
				   	{foreach $skills_arr as $tag}
				   	{literal}
				   	current_tags.push('{/literal}{$tag}{literal}');
				    {/literal}
				   	{/foreach}
				{literal}

			   new Taggle($('.profileEditTaggle.textarea')[0], {
			   		tags: current_tags,
				    duplicateTagClass: 'bounce'
				});
		    {/literal}
			</script>
		{/if}
	{/if}

{if $SM_PROFILES}
<script type="text/javascript">
{literal}
	{/literal}
		   	{foreach $SM_PROFILES as $row}
		   	{literal}
		   	var obj = {id: '{/literal}{$row.id}{literal}', name: '{/literal}{$row.name}{literal}', icon: '{/literal}{$row.icon}{literal}'};
		   	SimpleJobScript.sm_profiles.push(obj);
		    {/literal}
		   	{/foreach}
	{literal}
{/literal}
</script>
{/if}

	<script type="text/javascript">
	{literal}
 		$(document).ready(function()
		{
			{/literal}
			// AJAX sidebar SEARCH pages
			{if $SIDEBAR_CHEVRON == 'activated'}
			var jobsUrl = "{$BASE_URL}{$URL_JOBS}";
			var latestJobsTranslation = "{$translations.alljobs.all_jobs}";
			{literal}

				// init AJAX sidebar search events
				SimpleJobScript.InitSearchBoxes(jobsUrl, latestJobsTranslation);

				$('#types-panel').on('hidden.bs.collapse', SimpleJobScript.toggleChevron);
				$('#types-panel').on('shown.bs.collapse', SimpleJobScript.toggleChevron);

				$('#cats-panel').on('hidden.bs.collapse', SimpleJobScript.toggleChevron);
				$('#cats-panel').on('shown.bs.collapse', SimpleJobScript.toggleChevron);

				$('#loc-panel').on('hidden.bs.collapse', SimpleJobScript.toggleChevron);
				$('#loc-panel').on('shown.bs.collapse', SimpleJobScript.toggleChevron);
			{/literal}
			{/if}
			{literal}

			$(window).load(function() {
				$(".page-loader").fadeOut("slow");
			})

		    $("#menu-toggle").click(function(e) {
		        e.preventDefault();
		        $("#wrapper").toggleClass("toggled");
		    });

			SimpleJobScript.I18n = {/literal}{$translationsJson}{literal};

			{/literal}
			{if $LOAD_TAGL == 'true'}
			{literal}
				SimpleJobScript.translateTaggle();
			{/literal}
			{/if}
			{literal}

			var codeType = 0;

			{/literal}
			var iPage = "{$IndeedPage}";
			var iJobType = "{$IndeedJobType}";
			var iLocation = "{$IndeedLocation}";
			var iCity = "{$IndeedCity}";
			{literal}

			{/literal}
			var v = "{$SJS_PRODUCT}";
			SimpleJobScript.cr(v);
			{literal}
			
			//INDEED
			{/literal}
				{if $INDEED == 'activated'}

				   {if $INDEED_BOTH_JOBS_FLAG}
					{literal}
						codeType = 1;
					{/literal}
				   {/if}

			{literal}
 
						// register query search
						var keywords = $('#keywords');
						keywords.keyup(function(key) {
							var searchKeywords = jQuery.trim(this.value);
							var len = searchKeywords.length;
				
						    if (key.keyCode != 9 && len >= 3)
							{ 
								
							    $('#jobs-loader').removeClass('displayNone');


								clearTimeout(window.search_timer);	

								if (codeType == 1) {
									window.search_timer = setTimeout(function(){
									SimpleJobScript.HybridSearch('{/literal}{$BASE_URL}{literal}search/{/literal}{$current_category}{literal}|', '{/literal}{$BASE_URL}{literal}indeed-query/|', searchKeywords, iLocation, iCity, iJobType)}, 2100);
								} else {
									window.search_timer = setTimeout(function(){
									SimpleJobScript.IndeedQuerySearch('{/literal}{$BASE_URL}{literal}indeed-query/|', searchKeywords, iLocation, iCity, iJobType)}, 2100);
								}

						    }
						});

			{/literal}
				{if $IndeedLandingSearch == 'true'}
					var iTitle = "{$IndeedTitle}";
			{literal}
						// indeed landing page search
						$('#jobs-loader').removeClass('displayNone');
						clearTimeout(window.search_timer);
						window.search_timer = setTimeout(function(){
								SimpleJobScript.IndeedLandingSearch('{/literal}{$BASE_URL}{literal}indeed-landing', iPage, iLocation, iTitle);
						}, 2100);
			{/literal}
				{else}
			{literal}
						// standard indeed listings
						$('#jobs-loader').removeClass('displayNone');
						clearTimeout(window.search_timer);
						window.search_timer = setTimeout(function(){
								SimpleJobScript.IndeedSearch('{/literal}{$BASE_URL}{literal}indeed', iPage, iJobType, iLocation, iCity);
						}, 2100);
			{/literal}
				{/if}
			{literal}



			{/literal}
				{else}
			{literal}
						// standard search without indeed
						var keywords = $('#keywords');
						keywords.keyup(function(key) {
							var searchKeywords = jQuery.trim(this.value);
							var len = searchKeywords.length;
				
						    if (key.keyCode != 9 && len >= 3)
							{ 
							    $('#jobs-loader').removeClass('displayNone');
								clearTimeout(window.search_timer);	
								window.search_timer = setTimeout(function(){
									SimpleJobScript.PerformSearch('{/literal}{$BASE_URL}{literal}search/{/literal}{$current_category}{literal}|', searchKeywords)}, 800);
						    }
						});

			{/literal}
				{/if}
			{literal}

		});
		
		SimpleJobScript.simplejobscript_url = "{/literal}{$BASE_URL}{literal}";
		
	{/literal}
	</script>

	{if $smarty.const.GOOGLE_ANALYTICS_CODE}
	<script type="text/javascript">
	{literal}
		var _gaq = _gaq || [];
		_gaq.push(['_setAccount', '{/literal}{$smarty.const.GOOGLE_ANALYTICS_CODE}{literal}']);
		_gaq.push(['_trackPageview']);
		(function() {
		  var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		  ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
		})();
	{/literal}
	</script>
	{/if}
</body>
</html>


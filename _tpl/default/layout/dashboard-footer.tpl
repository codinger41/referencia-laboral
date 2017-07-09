</div> <!-- from header -->

<footer class="footer-tail" >
		<div class="footer-social">
			{if $FB_URL}<a href="{$FB_URL}" target="_blank"><i class="fa fa-facebook footer-fa fa-lg" aria-hidden="true"></i></a>{/if}
			{if $TWITTER_URL}<a href="{$TWITTER_URL}" target="_blank"><i class="fa fa-twitter footer-fa fa-lg" aria-hidden="true"></i></a>{/if}
			{if $LINKEDIN_URL}<a href="{$LINKEDIN_URL}" target="_blank"><i class="fa fa-linkedin footer-fa fa-lg" aria-hidden="true"></i></a>{/if}
			{if $GPLUS_URL}<a href="{$GPLUS_URL}" target="_blank"><i class="fa fa-google-plus footer-fa fa-lg" aria-hidden="true"></i></a>{/if}
		</div>
		<div class="footer-copyright">
			{$SITE_NAME} &copy; {$YEAR}
		</div>
</footer>

<!--[if !IE]><script src="{$BASE_URL}js/jquery.history.js" type="text/javascript"></script><![endif]-->
<script src="{$BASE_URL}js/jquery.form.js" type="text/javascript"></script>
<script src="{$BASE_URL}js/functions.js" type="text/javascript"></script>

{if $PROFILES_PLUGIN == 'true'}

	{if $LOAD_TAGL == 'true'}
		<script src="{$BASE_URL}js/tags/tagl/assets/js/jquery-ui.js" type="text/javascript"></script>
		<script src="{$BASE_URL}js/tags/tagl/assets/js/rainbow-custom.min.js" type="text/javascript"></script>
		<!-- <script src="{$BASE_URL}js/tags/tagl/src/taggle-ie8.js" type="text/javascript"></script>
		<script src="{$BASE_URL}js/tags/tagl/src/taggle-ie9.js" type="text/javascript"></script> -->
		<script src="{$BASE_URL}js/tags/tagl/src/taggle.js" type="text/javascript"></script>
	{/if}

	{if $TAGL_INIT_CVDB == 'true'}
		<script type="text/javascript">
		{literal}
			var searched_tags = [];
			{/literal}
			   {if $searched_skills}
				   	{foreach $searched_skills as $tag}
				   	{literal}
				   	searched_tags.push('{/literal}{$tag}{literal}');
				    {/literal}
				   	{/foreach}
			   {/if}
			{literal}

		   new Taggle($('.cvDbTaggle.textarea')[0], {
		   		tags: searched_tags,
			    duplicateTagClass: 'bounce'
			});
	    {/literal}
		</script>
	{/if}
{/if}

<script type="text/javascript">
{literal}
 	$(document).ready(function()
	{
		var theme = "{/literal}{$THEME}{literal}";
		SimpleJobScript.simplejobscript_url = "{/literal}{$BASE_URL}{literal}";
		SimpleJobScript.I18n = {/literal}{$translationsJson}{literal};
		SimpleJobScript.InitEditor(theme);

		{/literal}
		{if $LOAD_TAGL == 'true'}
		{literal}
			SimpleJobScript.translateTaggle();
		{/literal}
		{/if}
		{literal}
			
		var flag = parseInt("{/literal}{$APP_PAGE}{literal}");
		if (flag == 1){
			SimpleJobScript.initJobApplicationsSelect(theme);
		}

	   	$('#{/literal}{$JS_ID}{literal}').addClass('active');
	});

{/literal}
</script>

</body>
</html>


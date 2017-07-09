

<div class="job-detail-top pb15">
	<h4 class="job-detail-headline" >
		{$job.title}
	</h4>

	<div class="social-headingbox">
		<div class="box-item box-mr-15">
			<a href="/{$URL_JOBS}"><button type="button" class="btn btn-default back-button-desktop" >{$translations.website_general.backbtn_label}</button></a>
		</div>
	</div>
</div>

<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
	<a href="/{$URL_JOBS}"><button type="button" class="btn btn-default back-button-mobile" >{$translations.website_general.backbtn_label}</button></a>

	<!-- icons set for mobile -->
	<div class="detail-icons-mobile" >
		<div class="{$job.type_var_name} plr10mob jobtype-detail" >{$job.job_type}</div>
		{if $job.salary}<div class="list-salary mt5 p510x">{$job.salary}</div>{/if}
		{if $job.new_flag}<div class="new-detail-mob mt5 plr10">{$translations.job_detail_section.new}</div>{/if}
	</div>
</div>
	
<div class="job-detail-icons mbDetail" >
	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="margin-right: 0px;padding-right: 0px;">
		{if $REMOTE_PORTAL == 'deactivated'}
		<i class="fa fa-map-marker social-fa fa-lg mr5" aria-hidden="true"></i>{$job.location_asci}
		{/if}
		<i class="fa fa-calendar social-fa fa-lg mr5" aria-hidden="true"></i>{$job.post_date}
		&nbsp;
		<!-- icons set for desktop -->
		<span class="detail-icons-desktop">
			<span class="{$job.type_var_name} plr10 jobtype-detail" >{$job.job_type}</span>
			{if $job.salary}<span class="list-salary p510x" >{$job.salary}</span>{/if}
			{if $job.new_flag}<span class="new-detail ml7 plr10">{$translations.job_detail_section.new}</span>{/if}
		</span>

		<!-- simple sharing without including libraries. For FB doublecheck OG protocol on top. -->
		<div class="social-headingbox">
			<!-- http://www.facebook.com/share.php?u=[URL]&title=[TITLE] -->
			<div class="box-item box-mr">
				<a class="popup" href="http://www.facebook.com/sharer/sharer.php?u={$current_url}&amp;title={$seo_title}" ><i class="fa fa-facebook-square social-fa fa-2x" aria-hidden="true"></i></a>
			</div>
			<!-- http://twitter.com/intent/tweet?status=[TITLE]+[URL] -->
			<div class="box-item box-mr">
				<a class="twitter popup" href="http://twitter.com/intent/tweet?status=check out job @ +{$current_url}" ><i class="fa fa-twitter-square social-fa fa-2x" aria-hidden="true"></i></a>
			</div>
			<!-- http://www.linkedin.com/shareArticle?mini=true&url=[URL]&title=[TITLE]&source=[SOURCE/DOMAIN] -->
			<div class="box-item box-mr">
				<a class="popup" href="https://www.linkedin.com/shareArticle?mini=true&amp;url={$current_url}&amp;title={$seo_title}&amp;summary=Job opportunity&amp;source={$BASE_URL}"><i class="fa fa-linkedin-square social-fa fa-2x" aria-hidden="true"></i></a>
			</div>

			<div class="box-item box-mr-last">
				<a class="popup" href="https://plus.google.com/share?url={$current_url}"><i class="fa fa-google-plus-square social-fa fa-2x" aria-hidden="true"></i></a>
			</div>
		</div>

	</div>
</div>

	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
		<div class="detail-font" >{$job.description}</div>
	</div> 

	<div class="clear"></div>
	<div class="row-fluid">
	  <div class="col-md-12">

		{if $job.apply_online == 1}

		{if $SESSION_APPLICANT == 'true'}
			{include file="jobs/apply-existing-modal.tpl"}
		{else}
			{include file="jobs/apply-modal.tpl"}
		{/if}

		{else}
			<div class="apply-bg">
				<label class="apply-font">{$translations.job_detail_section.howtoapply}</label>
				<div class="light-font font15">{$job.apply_desc}</div>
			</div>
		{/if}

		{if $smarty.const.ADSENSE == 'true'}
			{include file="$adsense_detail_rectangle"}
		{/if}

	</div>
</div>

{literal}
<script type="text/javascript">
	$(document).ready(function() {
		SimpleJobScript.I18n = {/literal}{$translationsJson}{literal};
	    SimpleJobScript.initApplyValidation();

		$('#cv').change(function() {
			var fname = $('input[type=file]').val().split('\\').pop();
			if( fname )
				$('#cvLabel').html(fname);
			else
				$('#cvLabel').html($('#cvLabel').html());
        });

        $('.popup').click(function(event) {
		    var width  = 575,
		        height = 400,
		        left   = ($(window).width()  - width)  / 2,
		        top    = ($(window).height() - height) / 2,
		        url    = this.href,
		        opts   = 'status=1' +
		                 ',width='  + width  +
		                 ',height=' + height +
		                 ',top='    + top    +
		                 ',left='   + left;
		    
		    window.open(url, 'twitter', opts);
		    return false;
		  });


	});

</script>
{/literal}


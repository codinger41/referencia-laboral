{include file="layout/header.tpl"}

 <!-- FACEBOOK og protocol -->
<meta property="og:url"  content="http://{$job_url}" />
<meta property="og:type"  content="website" />
<meta property="og:title" content="{$seo_title}" />
<meta property="og:site_name" content="{$BASE_URL}"/>
<meta property="og:description" content="{if $seo_desc}{$seo_desc}{else}{$meta_description}{/if}" />
<meta property="og:image" content="{$BASE_URL}{$job.company_logo_path}" />

<div class="container content top-offset">

	{assign var="job_id" value={$job.id}}
	<!-- job listing -->
	<div id="job-main" role="main" class="job-detail-holder mmtop" >
		{include file="jobs/job-details.tpl"}
	</div>
	<!-- sidebar -->
 	<aside id="job-sidebar" role="complementary" class="job-detail-sidebar"  >
		{include file="snippets/job-detail-sidebar.tpl"}
	</aside> 
</div>


{include file="layout/footer.tpl"}
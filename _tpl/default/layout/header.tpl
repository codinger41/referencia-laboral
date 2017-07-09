<!doctype html>
<html lang="en" prefix="og: http://ogp.me/ns#">
<head>
	<title>{if $seo_title}{$seo_title}{else}{$html_title}{/if}</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">

  <meta name="description" content="{if $seo_desc}{$seo_desc}{else}{$meta_description}{/if}" />
  <meta name="keywords" content="{if $seo_keys}{$seo_keys}{else}{$meta_keywords}{/if}" />

    <!-- 
   Chrome and Opera Icons - to add support create your icon with different resolutions. Default is 192x192
     <link rel="icon" sizes="192x192" href="{$BASE_URL}fav.png" >
    <link rel="icon" sizes="144x144" href="{$BASE_URL}fav-144.png" >
    <link rel="icon" sizes="96x96" href="{$BASE_URL}fav-96.png" >
    <link rel="icon" sizes="48x48" href="{$BASE_URL}fav-48.png" >
  -->
  <link rel="icon" href="{$BASE_URL}fav.png" >
  <!-- 
   Apple iOS icons
    <link rel="apple-touch-icon" sizes="76x76" href="touch-icon-ipad.png">
    <link rel="apple-touch-icon" sizes="120x120" href="touch-icon-iphone-retina.png">
    <link rel="apple-touch-icon" sizes="152x152" href="touch-icon-ipad-retina.png">
  -->
  <link rel="apple-touch-icon" href="{$BASE_URL}fav-ios.png">
  <!-- iOS startup image -->
  <link rel="apple-touch-startup-image"  href="{$BASE_URL}fav-startup.png">
  <!-- Apple additional meta tags -->
  <meta name="apple-mobile-web-app-title" content="{if $seo_title}{$seo_title}{else}{$html_title}{/if}">
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
  <!-- Android web app capable -->
  <meta name="mobile-web-app-capable" content="yes">
  <!-- IE & Windows phone pin icons. Almost same size like ios so it is reused -->
  <meta name="msapplication-square150x150logo" content="fav-ios.png">

  <!-- facebook meta tags for sharing -->
  <meta property="og:locale" content="en_US" />
  <meta property="og:type" content="website" />
  <meta property="og:title" content="{if $seo_title}{$seo_title}{else}{$html_title}{/if}" />
  <meta property="og:description" content="{if $seo_desc}{$seo_desc}{else}{$meta_description}{/if}" />
  <meta property="og:url" content="{$MAIN_URL}" />
  <meta property="og:site_name" content="{$SITE_NAME}" />
  <meta property="og:image" content="{$MAIN_URL}share-image.png" />

  <!-- twitter metatags -->
  <meta name="twitter:card" content="summary_large_image"/>
  <meta name="twitter:description" content="{if $seo_desc}{$seo_desc}{else}{$meta_description}{/if}"/>
  <meta name="twitter:title" content="{if $seo_title}{$seo_title}{else}{$html_title}{/if}"/>
  <!-- add your twitter site 
  <meta name="twitter:site" content="@yourbrand"/>
  --> 
  <meta name="twitter:domain" content="{$SITE_NAME}"/>
  <meta name="twitter:image" content="{$MAIN_URL}share-image.png" />

  <!-- RSS -->
  <link rel="alternate" type="application/rss+xml" title="{$SITE_NAME} RSS Feed" href="{$BASE_URL}rss">
  
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

  <!-- IF ALL STYLES ARE REMOVED EXCEPT BOOTSTRAP, UNCOMMENT THIS STYLE, TO KEEP THE BASIC, WORKING WEB. READY TO BE CUSTOMIZED 
  <link rel="stylesheet" href="{$BASE_URL}_tpl/{$THEME}/css/saveStructure.css" type="text/css" /> -->
  <!-- ######################################################################################################################## -->
  
  <link href="{$BASE_URL}js/bootstrap/css/flat-ui.css" rel="stylesheet">
  <link rel="stylesheet" href="{$BASE_URL}_tpl/{$THEME}/css/main.css" type="text/css" /> 
  <link href="{$BASE_URL}_tpl/{$THEME}/css/simple-sidebar.css"  rel="stylesheet">
  <link rel="stylesheet" href="{$BASE_URL}_tpl/{$THEME}/css/footer.css" type="text/css" />
  <link href="{$BASE_URL}js/tags/tagl/assets/css/taggle.css" rel="stylesheet">
 
  <link rel="stylesheet" href="{$BASE_URL}_tpl/{$THEME}/css/dev.css" type="text/css" />

  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <link rel="stylesheet" href="{$BASE_URL}_tpl/{$THEME}/css/dev.css" type="text/css" /> 
  <link rel="stylesheet" href="{$BASE_URL}_tpl/{$THEME}/css/pricing/price-tables.css" type="text/css" />

  <noscript>{$translations.website_general.noscript_msg}</noscript>

<style type="text/css">
{$custom_css}
</style>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
  <!--fallback jquery-->
  <script>if (!window.jQuery) { document.write('<script src="{$BASE_URL}js/jquery-1.11.2.min.js"><\/script>'); }</script>
  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
  <!--fallback bootstrap-->
  <script>$.fn.modal || document.write('<script src="{$BASE_URL}js/bootstrap/js/bootstrap.min.js"><\/script>')</script>

  <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
  <!--[if lt IE 9]>
    <script src="{$BASE_URL}js/bootstrap/vendor/html5shiv.js"></script>
    <script src="{$BASE_URL}js/bootstrap/vendor/respond.min.js"></script>
  <![endif]-->

{literal}
<script type="text/javascript">
    window.cookieconsent_options = {"message":"{/literal}{$translations.cookie.message}{literal}","dismiss":"{/literal}{$translations.cookie.accept_message}{literal}","learnMore":"{/literal}{$translations.cookie.more_info}{literal}","link":"/privacy-policy","theme":"dark-bottom"};
</script>
{/literal}
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/1.0.9/cookieconsent.min.js"></script>

{if $INDEED == 'activated'}
<script type="text/javascript" src="https://gdc.indeed.com/ads/apiresults.js"></script>         
{/if}

</head>

<body>
<div class="page-loader"></div>
<!--#################  MOBILE MENU ############ -->
<!-- only for xs and sm -->
<div id="sidebar-categories-mobile">
  {if $INDEED == 'activated'}
    {if $INDEED_BOTH_JOBS_FLAG}
	{include file="snippets/mobile-sidebar-content.tpl"}
    {else}
	{include file="$indeed_tpl_mobile_sidebar"}
    {/if}    
  {else}
    {include file="snippets/mobile-sidebar-content.tpl"}
  {/if}
</div>
<!--#################  MOBILE MENU ############ -->

	<!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top" >
      <div class="container-fluid navbar-row">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar" >
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
    		<a class="navbar-brand" href="/">
          <img class="logo img-responsive" src="{$BASE_URL}{$SITE_LOGO_PATH}" alt="Website logo">
        </a>
      </div>

        <div id="navbar" class="navbar-collapse collapse">
        <!-- big screen pull right -->
        <div class="hidden-sm hidden-xs">
          <ul id="top-menu" class="nav navbar-nav pull-left">
              <li><a href="/{$URL_JOBS}">{$translations.website_general.jobs}</a></li>
             
              {if $INDEED == 'deactivated' OR $INDEED_BOTH_JOBS_FLAG}
              <li><a href="/{$URL_COMPANIES}">{$translations.website_general.top_menu_companies}</a></li>
              {/if}    

              {if $PROFILES_PLUGIN == 'true'}
              <li><a href="/{$URL_REGISTER_APPLICANTS}">{$translations.website_general.top_menu_addcv}</a></li>
              {/if}

              <li><a href="/{$URL_DASHBOARD}/{$URL_DASHBOARD_POST}">{$translations.dashboard_recruiter.top_menu_postajob}</a></li>

          </ul>

             <ul id="top-menu" class="nav navbar-nav pull-right">
               {if $SESSION_USERNAME or $SESSION_APPLICANT}
                {if $SESSION_APPLICANT}
                  <li><a href="{$BASE_URL}{$URL_PROFILE}">{$translations.website_general.goto_account_msg}</a></li>
                {/if}
                {if $SESSION_USERNAME}
                <li><a href="{$BASE_URL}{$URL_DASHBOARD}/{$URL_DASHBOARD_OVERVIEW}">{$translations.website_general.goto_account_msg}</a></li>
                {/if}
              {else}
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">{$translations.website_general.sign_in} <span class="fui-triangle-down-small"></span></a>
                    <ul class="dropdown-menu">
                      <li><a href="/{$URL_LOGIN_RECRUITERS}">{$translations.website_general.top_menu_recruiters}</a></li>
                      {if $smarty.const.PROFILES_PLUGIN  == 'true'}
                      <li><a href="/{$URL_LOGIN_APPLICANTS}">{$translations.website_general.top_menu_applicants}</a></li>
                      {/if}
                    </ul>
                </li>
                <li>
                    <a href="/{$URL_SIGN_UP}" > <span class="white-border">{$translations.website_general.top_menu_register_label} </span></a>
                </li>
              {/if}
             </ul>
        </div>
        <!-- small screen center -->
        <div class="hidden-lg hidden-md">
          <ul id="top-menu" class="nav navbar-nav text-center">

            <li><a href="/{$URL_JOBS}">{$translations.website_general.jobs}</a></li>

              {if $INDEED == 'deactivated' OR $INDEED_BOTH_JOBS_FLAG}
              <li><a href="/{$URL_COMPANIES}">{$translations.website_general.top_menu_companies}</a></li>
              {/if}

              {if $PROFILES_PLUGIN == 'true'}
              <li><a href="/{$URL_REGISTER_APPLICANTS}">{$translations.website_general.top_menu_addcv}</a></li> 
              {/if}

              <li><a href="/{$URL_DASHBOARD}/{$URL_DASHBOARD_POST}">{$translations.dashboard_recruiter.top_menu_postajob}</a></li>


              {if $SESSION_USERNAME or $SESSION_APPLICANT}
                {if $SESSION_APPLICANT}
                  <li><a href="{$BASE_URL}{$URL_PROFILE}">{$translations.website_general.goto_account_msg}</a></li>
                {/if}
                {if $SESSION_USERNAME}
                <li><a href="{$BASE_URL}{$URL_DASHBOARD}/{$URL_DASHBOARD_OVERVIEW}">{$translations.website_general.goto_account_msg}</a></li>
                {/if}
              {else}
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">{$translations.website_general.sign_in} <span class="fui-triangle-down-small"></span></a>
                    <ul class="dropdown-menu">
                      <li><a href="/{$URL_LOGIN_RECRUITERS}">{$translations.website_general.top_menu_recruiters}</a></li>
                      {if $smarty.const.PROFILES_PLUGIN  == 'true'}
                      <li><a href="/{$URL_LOGIN_APPLICANTS}">{$translations.website_general.top_menu_applicants}</a></li>
                      {/if}
                    </ul>
                </li>
                <li>
                    <a href="/{$URL_SIGN_UP}" > <span class="white-border">{$translations.website_general.top_menu_register_label} </span></a>
                </li>
              {/if}
              
          </ul>
        </div>

      </div>
    </nav>
		


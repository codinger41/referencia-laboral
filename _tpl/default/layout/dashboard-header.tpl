<!doctype html>
<html lang="en" prefix="og: http://ogp.me/ns#">
<head>
	<title>{if $seo_title}{$seo_title}{else}{$html_title}{/if}</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="{if $seo_desc}{$seo_desc}{else}{$meta_description}{/if}" />
    <meta name="keywords" content="{if $seo_keys}{$seo_keys}{else}{$meta_keywords}{/if}" />

	<!--[if IE]><link rel="shortcut icon" href="{$BASE_URL}fav.png"><![endif]-->
	<link rel="icon" href="{$BASE_URL}fav.png"  />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <link href="{$BASE_URL}js/bootstrap/css/flat-ui.css" rel="stylesheet">
    <link rel="stylesheet" href="{$BASE_URL}_tpl/{$THEME}/css/main.css" type="text/css" /> 
    <link rel="stylesheet" href="{$BASE_URL}_tpl/{$THEME}/css/footer.css" type="text/css" />
    <link rel="stylesheet" href="{$BASE_URL}_tpl/{$THEME}/css/dashboard.css" type="text/css" /> 
    <link href="{$BASE_URL}js/tags/tagl/assets/css/taggle.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

<style type="text/css">
{$custom_css}
</style>

	<noscript>{$translations.website_general.noscript_msg}</noscript>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
	<!--fallback jquery-->
	<script>if (!window.jQuery) { document.write('<script src="{$BASE_URL}js/jquery-1.11.2.min.js"><\/script>'); }</script>
	
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
	<!--fallback bootstrap-->
	<script>$.fn.modal || document.write('<script src="{$BASE_URL}js/bootstrap/js/bootstrap.min.js"><\/script>')</script>

	<script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
	<script src="{$BASE_URL}js/jquery.confirm.min.js"></script>

</head>

<body>
{if $PLAIN_SITE == 'true'}
<ul class="nav-back nav navbar-nav pull-left" style="position: absolute; left: 10px; top: 10px; ">
	<li><a href="{$BASE_URL}{$URL_JOBS}">&larr; {$translations.dashboard_recruiter.back}</a></li>
</ul>
{/if}
{if $PLAIN_SITE_REGISTER == 'true'}
<ul class="nav-back nav navbar-nav pull-left" style="position: absolute;left: 10px; top: 10px ">
	<li><a href="{$BASE_URL}{$URL_JOBS}">&larr; {$translations.dashboard_recruiter.back}</a></li>
</ul>
{/if}
{if $PLAIN_SITE_POST == 'true'}
<ul class="nav-back nav navbar-nav pull-left" style="position: absolute;left: 10px; top: 10px;">
	<li style="background-color: #ecf0f1;"><a href="{$BASE_URL}{$URL_JOBS}">&larr; {$translations.dashboard_recruiter.back}</a></li>
</ul>
{/if}

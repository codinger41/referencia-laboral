<?php
// Start the session
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>{if $seo_title}{$seo_title}{else}{$html_title}{/if}</title>
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
  <meta name="twitter:site" content="@brand"/>
  --> 
  <meta name="twitter:domain" content="{$SITE_NAME}"/>
  <meta name="twitter:image" content="{$MAIN_URL}share-image.png" />
  
  <!-- RSS -->
  <link rel="alternate" type="application/rss+xml" title="{$SITE_NAME} RSS Feed" href="{$BASE_URL}rss">
 
	<link rel="canonical" href="http://{$BASE_URL}home" />

  <!-- IF ALL STYLES ARE REMOVED EXCEPT BOOTSTRAP, UNCOMMENT THIS STYLE, TO KEEP THE BASIC, WORKING WEB. READY TO BE CUSTOMIZED 
  <link rel="stylesheet" href="{$BASE_URL}_tpl/{$THEME}/css/saveStructure.css" type="text/css" /> -->
  <!-- ######################################################################################################################## -->

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
	
	<link rel="stylesheet" href="{$BASE_URL}_tpl/{$THEME}/css/main.css" type="text/css" /> 
  <link rel="stylesheet" href="{$BASE_URL}_tpl/{$THEME}/css/landing.css" type="text/css" />
	<link rel="stylesheet" href="{$BASE_URL}_tpl/{$THEME}/css/footer.css" type="text/css" />
	<link rel="stylesheet" href="{$BASE_URL}js/owlcarousel/owl.carousel.css" type="text/css" />
	<link rel="stylesheet" href="{$BASE_URL}js/owlcarousel/owl.theme.css" type="text/css" />

  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

	<noscript>{$translations.website_general.noscript_msg}</noscript>

<style type="text/css">
{$custom_css}
</style>

{if $REMOTE_PORTAL == 'activated'}
<style type="text/css">
@media screen and (min-width: 1200px){
  .landing-search-block {
    padding: 30px 0px 0px 380px !important;
  }
}
@media screen and (max-width: 1200px) and (min-width: 990px) {
  .landing-search-block {
    padding: 30px 0px 0px 280px !important;
  }
}
@media screen and (max-width: 1024px) and (min-width: 750px) {
  .landing-search-block {
    padding: 20px 0px 0px 200px !important;
  }
}
@media screen and (max-width: 750px){
  .landing-search-block {
    padding: 20px 20px 0px 20px !important;
  }
}
</style>
{/if}

{literal}
<script type="text/javascript">
    window.cookieconsent_options = {"message":"{/literal}{$translations.cookie.message}{literal}","dismiss":"{/literal}{$translations.cookie.accept_message}{literal}","learnMore":"{/literal}{$translations.cookie.more_info}{literal}","link":"/privacy-policy","theme":"light-bottom"};
</script>
{/literal}
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/1.0.9/cookieconsent.min.js"></script>

</head>

<body>
<div id="headerSection">
     <nav class="landing-nav" >
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar" >
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
         <a class="navbar-brand" href="/">
          <img class="logo img-responsive landing-logo" src="{$BASE_URL}{$SITE_LOGO_PATH}" alt="Website logo">
        </a>
      </div>

        <div id="navbar" class="navbar-collapse collapse">

        <div class="hidden-sm hidden-xs">
          <ul id="top-menu" class="nav navbar-nav pull-right">
          <li><a href="{$BASE_URL}{$URL_JOBS}" target="_blank">Trabajos</a></li>
				  <li><a href="#candidates">Candidatos</a></li>
				  <li><a href="#employers">Empleadores</a></li>
          <li><a href="#about">Sobre nosotros</a></li>
          <li><a id="landing-border" href="{$BASE_URL}{$URL_SIGN_UP}" target="_blank">Regístrate</a></li>
          </ul>
        </div>

        <div class="hidden-lg hidden-md">
          <ul id="top-menu" class="nav navbar-nav text-center">
          <li><a href="{$BASE_URL}{$URL_JOBS}" target="_blank">Trabajos</a></li>
				  <li><a href="#candidates">Candidatos</a></li>
				  <li><a href="#employers">Empleadores</a></li>
          <li><a href="#about">Sobre nosotros</a></li>
          <li><a id="landing-border" href="{$BASE_URL}{$URL_SIGN_UP}" target="_blank">Regístrate</a></li>
          </ul>
        </div>

      </div>
    </nav> 

    <div class="container" >
      <div class="text-center mt50">
        <h1>Aquí encontrarás tu <u><strong>trabajo</strong></u></h1>
        <h4 class="mb50 opauqe fs24">Una búsqueda, varias ciudades</h4>

          <form method="post" action="{$BASE_URL}{$URL_LANDING_SEARCHED}" role="form">
            <div class="landing-search-block">
              <div class="landing-box">
                <div class="form-group">
                  <label class="landing-label">Cargo</label>
                  <div class="clear"></div>
                  <input id="landing_title" name="landing_title" type="text" class="form-control linput" placeholder="ej. Operador" />
                </div>
              </div>
              <div class="landing-box ml20">

                {if $REMOTE_PORTAL == 'deactivated'}
                <div class="form-group">
                  <label class="landing-label">Ubicación</label>
                  <div class="clear"></div>
                  <select id="landing_location" name="landing_location" class="form-control">
                    {foreach from=$cities key=id item=value}
                    <option value="{$id}">{$value}</option>
                    {/foreach}
                  </select>
                </div>
                {/if}

              </div>
              <div class="landing-box ml20">
                <div class="form-group">
                  <button type="submit" class="btn btn-default btn-primary btn-lsearch" name="submit">Buscar</button>
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>

</div>

<div class="container" >
   <div class="text-center mt50">
    <h2 class="black">Empresas Destacadas</h2>
    <br /><br /><br />
      <div id="owl-companies" class="owl-carousel">
        <div><img class="owl-img115" src="{$BASE_URL}uploads/logos/logo1.png" /> </div>
        <div><img class="owl-img115" src="{$BASE_URL}uploads/logos/logo2.png" /> </div>
        <div><img class="owl-img115" src="{$BASE_URL}uploads/logos/logo3.png" /> </div>
        <div><img class="owl-img115" src="{$BASE_URL}uploads/logos/logo4.png" /> </div>
        <div><img class="owl-img115" src="{$BASE_URL}uploads/logos/logo5.png" /> </div>
        <div><img class="owl-img115" src="{$BASE_URL}uploads/logos/logo6.png" /> </div>
      </div>
    <br />
  </div>
</div>

<div class="container" >
   <div class="text-center mt50">
    <h2 class="black">Últimos trabajos</h2>
    <br /><br /><br />
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ml0 pl0">
        {include file="snippets/homepage-jobs.tpl"}
        </div>
    <br />
  </div>
</div>

<div class="landing-block" id="candidates">
     <div class="container" >
   <div class="text-center mt50">
    <h2>Candidatos</h2>
    <h4 class="mb25 opauqe">Encontrar un nuevo trabajo se hizo más fácil. Puede aplicar sin un registro o crear su perfil y aplicar con un solo clic del ratón. Regístrese para recibir alertas de empleo y reciba las últimas ofertas de empleo en su buzón de correo.</h4>
    <br /><br />

    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
       <div class="col1-img">
        <div class="col-bottom">
          <div class="col-headline">
            BUSCAR TRABAJOS
          </div>
          <div class="col-text pt10">
            ENCUENTRE UNA EMPRESA PERFECTA
          </div>
        </div>
      </div>
    </div>

    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 mt30">
       <div class="col2-img">
        <div class="col-bottom2">
          <div class="col-text">
            SOLICITAR Y ENTREVISTAR
          </div>
        </div>
      </div>
    </div>

    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 mt30">
       <div class="col3-img">
        <div class="col-bottom2">
          <div class="col-text">
            INICIE UNA CARRERA
          </div>
        </div>
      </div>
    </div>

    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt50">
      <a href="/{$URL_JOBS}" target="_blank"><button type="button" class="btn jobs-btn" >Ver trabajos</button></a>
    </div>

   </div>

   </div>
</div>

<div class="landing-block" id="employers">
    <div class="container" >
   <div class="text-center mt50">
    <h2>Empleadores</h2>
    <h4 class="mb25 opauqe">Contratación Publicidad con nosotros. Registre su perfil de empresa de forma gratuita, navegue por nuestro grupo de talentos, publique anuncios y realice un seguimiento de las solicitudes de empleo.</h4>
    <br />

    
    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
       <div class="col1-img-em">
         <div class="col-bottom-em ">
          <div class="col-headline-em" >
            ANUNCIAR UN TRABAJO
          </div>
          <div class="col-text-em">
            FÁCILMENTE CREAR Y PUBLICAR SU LISTADO
          </div>
        </div>
      </div>
    </div>

    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 mt30">
       <div class="col2-img-em">
         <div class="col-bottom-em">
          <div class="col-headline-em">
            ADMINISTRAR Y SEGUIR
          </div>
          <div class="col-text-em">
            VUESTROS LISTADOS, CANDIDATOS Y APLICACIONES
          </div>
        </div>
      </div>
    </div>

    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 mt30">
       <div class="col3-img-em">
         <div class="col-bottom-em-hire">
          <div class="col-headline-em">
            ALQUILER
          </div>
          <div class="col-text-em">
            RECRUTAR TOP TALENTO
          </div>
        </div>
      </div>
    </div>

    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt50">
      <a href="/{$URL_DASHBOARD}/{$URL_DASHBOARD_POST}" target="_blank"><button type="button" class="btn jobs-btn" style="width: auto;" >Anunciar un trabajo</button></a>
    </div>

   </div>
   </div>
</div>

<div class="landing-block" id="stats">

<div class="container" >
   <div class="text-center mt50 stats">
    <h2>Nuestras estadísticas</h2>
    <br /><br />

    <div class="tt">
      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 stats-item">
        <div class="stats-box">750</div>
        <div class="stats-text">Ofertas de trabajo</div>
      </div>
      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 stats-item">
        <div class="stats-box">110</div>
        <div class="stats-text">Empresas registradas</div>
      </div>
      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 stats-item">
        <div class="stats-box">1500+</div>
        <div class="stats-text">CV's / Currículos</div>
      </div>
      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 stats-item">
        <div class="stats-box">10000+</div>
        <div class="stats-text">Usuarios diarios</div>
      </div>
    </div>

    <br />
  </div>
</div>

</div>

<!-- About us ======================================== -->
<div class="landing-block" id="about">
	 <div class="container" >
	 <div class="text-center mt50">

	 	<h2>Acerca de</h2><br /><br />
	 </div>

<div class="col-lg-12 col-md-12 col-sm-12 cold-xs-12 aboutPadding f20">

		<img class="about-img img-responsive" src="{$BASE_URL}_tpl/{$THEME}/img/about-img.png" alt="about img" />
		<div class="opaque">
		Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel dapibus ipsum, quis iaculis nunc. Praesent malesuada, nisi vel auctor hendrerit, arcu risus pretium eros, nec viverra est odio eu dui. 
    <br /> <br />

    Aliquam eget purus elit. Ut nibh felis, efficitur vel mollis at, congue sed augue. Maecenas dapibus turpis eu tempor convallis. Aenean pulvinar arcu sit amet urna porta lobortis. Maecenas interdum est euismod libero lacinia tempus. Sed condimentum cursus vehicula. Nam vitae ipsum eget leo porta vulputate et ac dolor.
    <br /> <br />
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel dapibus ipsum, quis iaculis nunc. Praesent malesuada, nisi vel auctor hendrerit, arcu risus pretium eros, nec viverra est odio eu dui. 

    <br /> <br />
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel dapibus ipsum, quis iaculis nunc. Praesent malesuada, nisi vel auctor hendrerit, arcu risus pretium eros, nec viverra est odio eu dui. 
    <br /><br />

    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 tac">
     <a href="{$BASE_URL}{$CONTACT_PAGE_URL}" target="_blank"><button type="button" class="btn jobs-btn">Contáctenos</button></a>
    </div>

		</div>
	</div>


	</div>

</div>

<div class="container mb100" >
   <div class="text-center mt50">
    <h2 class="black">Listados de trabajo</h2>
    <br /><span class="homepage-by">por</span><br /><br />
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 mobileMB35">
        <span class="sitemap-title">Tipo</span>
        <br /><br />
        <ul class="homepage-sitemap">
           {section name=tmp loop=$types}
              <li><a href="{$BASE_URL}{$URL_JOBS}/{$types[tmp].var_name}/">{$types[tmp].name} <span class="bracket">({$types[tmp].job_count})</span></a></li>
           {/section}
        </ul>
        </div>

        {if $dropdown_cats}
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 mobileMB35">
        <span class="sitemap-title">Categoría</span>
          <br /><br />
          <ul class="homepage-sitemap">
           {foreach from=$dropdown_cats key=name item=obj}
            <li><a href="/{$URL_JOBS}/{$obj->url}">{$name} <span class="bracket">({$obj->jobs})</span> </a></li>
           {/foreach}
          </ul>
        </div>
        {/if}

      {if $REMOTE_PORTAL == 'deactivated'}
        {if $dropdown_countries}
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 mobileMB35">
        <span class="sitemap-title">Ubicación</span>
         <br /><br />
          <ul class="homepage-sitemap">
            {foreach from=$dropdown_countries key=name item=obj}
              <li><a href="/{$URL_JOBS_IN_CITY}/{$obj->url}">{$name} <span class="bracket">({$obj->jobs_count})</span> </a></li>
            {/foreach}
          </ul>
        </div>
         {/if}
       {/if}


    <br />
  </div>
</div>

<a href="#" class="go-top" ><i class="glyphicon glyphicon-arrow-up"></i></a>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<!--fallback jquery-->
<script>if (!window.jQuery) { document.write('<script src="{$BASE_URL}js/jquery-1.11.2.min.js"><\/script>'); }</script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<!--fallback bootstrap-->
<script>$.fn.modal || document.write('<script src="{$BASE_URL}js/bootstrap/js/bootstrap.min.js"><\/script>')</script>

<script src="{$BASE_URL}js/owlcarousel/owl.carousel.min.js"></script>
<script src="{$BASE_URL}js/landing/jquery.scrollTo-1.4.3.1-min.js"></script>
<script src="{$BASE_URL}js/landing/jquery.easing-1.3.min.js"></script>
<script src="{$BASE_URL}js/landing/landing.js"></script>

{literal}
<script type="text/javascript">
$(document).ready(function() {
 
  $("#owl-companies").owlCarousel({
	  	autoPlay : true,
	  	slideSpeed : 200
	  }
  );
 
});	
</script>
{/literal}

{include file="layout/footer.tpl"}
</body>
</html>
{include file="layout/dashboard-header.tpl"}

  <!-- TOP MENU -->
  <nav class="navbar-inverse navbar-fixed-top navbar-fix">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar" >
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/{$URL_DASHBOARD}"><img class="logo" src="{$BASE_URL}{$SITE_LOGO_PATH}"></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse admin-navbar">
          <ul class="nav navbar-nav navbar-right" style="text-transform: uppercase; padding-right: 40px !important;">
            <li><a href="/{$URL_DASHBOARD}/{$URL_DASHBOARD_POST}">{$translations.dashboard_recruiter.top_menu_postajob}</a></li>
            <li><a href="/{$URL_DASHBOARD}/{$URL_DASHBOARD_JOBS}">{$translations.dashboard_recruiter.top_menu_myjobs}</a></li>
              <li><a href="/{$URL_DASHBOARD}/{$URL_DASHBOARD_APPLICATIONS}">{$translations.dashboard_recruiter.top_menu_applications}{if $NOTIFICATION}<span class="badge notification">{$translations.job_detail_section.new}</span>{/if}</a></li>
              {if $PAYMENT_MODE == '2' or $PAYMENT_MODE == '3'}
                {if $SHOW_INVOICE_MENU}
                <li><a href="/{$URL_DASHBOARD}/{$URL_DASHBOARD_INVOICES}"></span>&nbsp;&nbsp;&nbsp;{$translations.dashboard_recruiter.top_menu_invoices}{if $NEW_INVOICE}<span class="badge notification">{$translations.job_detail_section.new}</span>{/if}</a></li>
                {/if}
              {/if}
            <li><a href="/{$URL_LOGOUT}">{$translations.dashboard_recruiter.top_menu_logout}</a></li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- MAIN CONTENT -->
    <div class="container-fluid dashcontentMargin" >
      <div class="row">
        <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12 sidebar">
          <ul class="nav nav-sidebar">
            <li id="dashboard-li"><a href="/{$URL_DASHBOARD}/{$URL_DASHBOARD_OVERVIEW}"><i class="fa fa-dashboard fa-lg dash-el" aria-hidden="true"></i>{$translations.dashboard_recruiter.left_menu_dashboard}</a></li>
             <li><a target="_blank" href="/{$URL_JOBS}"><i class="fa fa-laptop fa-lg dash-el" aria-hidden="true"></i>{$translations.dashboard_recruiter.gotoweb}</a></li>
             <li id="settings-li"><a href="/{$URL_DASHBOARD}/{$URL_DASHBOARD_SETTINGS}"><i class="fa fa-gears fa-lg dash-el" aria-hidden="true"></i>{$translations.dashboard_recruiter.left_menu_settings}</a></li>
             <li id="company-li"><a href="/{$URL_DASHBOARD}/{$URL_DASHBOARD_EDIT_COMPANY}"><i class="fa fa-building fa-lg dash-el" aria-hidden="true"></i>{$translations.dashboard_recruiter.left_menu_company_details}</a></li>
             {if $PROFILES_PLUGIN == 'true'}
             <li id="cvdb-li"><a href="/{$URL_DASHBOARD}/{$URL_DASHBOARD_CVDATABASE}"><i class="fa fa-user-circle fa-lg dash-el" aria-hidden="true"></i>{$translations.dashboard_recruiter.top_menu_browse_applicants}</a></li>
             {/if}

             {if $PAYMENT_MODE == '3'}
            <li id="account-li"><a href="/{$URL_DASHBOARD}/{$URL_DASHBOARD_ACCOUNT}"><i class="fa fa-cubes fa-lg dash-el" aria-hidden="true"></i>{$translations.dashboard_recruiter.left_menu_myaccount}</a></li>
            {/if}

          </ul>

      <!-- plugins -->
      {if $smarty.const.BANNER_MANAGER == 'true'}
      {include file="$banners_backoffice_rectangle"}
      {/if}

      {if $smarty.const.ADSENSE == 'true'}
        {include file="$adsense_backoffice_rectangle"}
      {/if}

        </div>

        <!-- VIEW ROUTING -->
        <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12" >
          <div class="main">
            <div class="dashboard-wrap">
              {include file="dashboard/views/$view"}
            </div>
          </div>
        </div>


      </div>
    </div>

{include file="layout/dashboard-footer.tpl"}


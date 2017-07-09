{include file="layout/header.tpl"}

<div class="container content top-offset">

		<div id="main" role="main" class="pb30">
			<div class="categories-menu profileSidebarMobile ">
				<h4 class="sidebar-title" style="padding: 20px !important;"><span class="opaque">{$translations.profile.logged_as}</span> {$profile.fullname}</h4>
				<div class="profileWrap">
					<ul>
					  <li class="{if $ACTIVE == $PROFILE_ROUTING_ARR[$URL_PROFILE_EDIT]}act{/if}"><a href="/{$URL_PROFILE}/{$URL_PROFILE_EDIT}"><i class="mr10 fa fa-user-circle " aria-hidden="true"></i>{$translations.profile.menu_edit}</a></li>
					  <li class="{if $ACTIVE == $PROFILE_ROUTING_ARR[$URL_PROFILE_APPLICATIONS]}act{/if}"><a href="/{$URL_PROFILE}/{$URL_PROFILE_APPLICATIONS}"><i class="mr10 fa fa-address-card-o " aria-hidden="true"></i>{$translations.profile.menu_apps}</a></li>
					  <li class="{if $ACTIVE == $PROFILE_ROUTING_ARR[$URL_PROFILE_CHANGEPASSWORD]}act{/if}"><a href="/{$URL_PROFILE}/{$URL_PROFILE_CHANGEPASSWORD}"><i class="mr10 fa fa-gears " aria-hidden="true"></i>{$translations.profile.menu_pass}</a></li>
					  <li><a href="/{$URL_PROFILE}/logout"><i class="mr10 fa fa-arrow-circle-o-right " aria-hidden="true"></i>{$translations.dashboard_recruiter.logout_label}</a></li>
					</ul>
				</div>

				{if $smarty.const.BANNER_MANAGER == 'true'}
					{include file="$banners_cdb"}
				{/if}

			</div>
			<div class="profileContent general-wrap profile-padding">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" >
					<div class="listing-headline" >
						{$title}
					</div>
				</div>
				 <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" >
				  	{include file="profile/$ACTIVE.tpl"}
				 </div>
			</div>
		</div>

		<!-- sidebar -->
		<aside id="sidebar" role="complementary" class="profile-sidebar">
			{include file="snippets/sidebar-profile.tpl"}

			 <div class="visible-lg visible-md hidden-sm hidden-xs" >
			{if $smarty.const.BANNER_MANAGER == 'true'}
				{include file="$banners_cdb"}
			{/if}
		</aside>	
</div>

{include file="layout/footer.tpl"}

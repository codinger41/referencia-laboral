

<div class="general-wrap mt35 mm20">

	<div class="loupe-wrap">
		<img class="loupe" src="{BASE_URL}_tpl/default/img/search-mobile.png" alt="search icon" />
	</div>

	<div class="fl">
		<div class="searchbar-wrap" >
			<div id="wrap">
			  <form id="search_form" class="search-form" role="search" method="post" action="{$BASE_URL}search/" autocomplete="on" onsubmit="return false;" >
			  <input name="keywords" id="keywords" maxlength="30" type="text" placeholder="{$translations.searchbar.input_text}">

			  </form>
			</div>
		</div> 	
	</div>

</div>

{if !isset($hide_filter)}
<!-- JOB TYPE SEARCH -->
<div class="searchbar-holder" >
		 <div id="sort-by-type-mobile"> 
		  	<a href="#menu-toggle" class="btn btn-default mobfilter-btn" id="menu-toggle">{$translations.searchbar.mobile_menu_label}</a>
		 </div>
</div>
{/if}

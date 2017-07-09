{include file="layout/header.tpl"}

<div class="sub-header subheader-mobile-margin" >
	<div class="container" >
		{if $INDEED == 'activated'}

		    {if $INDEED_BOTH_JOBS_FLAG}
			    <div id="searchbar">
					{include file="snippets/searchbar-content.tpl"}
				</div>
		    {else}
				<div id="searchbar">
					{include file="$indeed_tpl_searchbar"}
				</div>
			{/if}
		{else}
			<div id="searchbar">
				{include file="snippets/searchbar-content.tpl"}
			</div>
		{/if}
	</div>
</div>

<div class="container content top-offset-listing">

		<!-- job listing -->
		<div id="main" role="main" class="mobile-mt">
			<div id="jobs-loader" class="overlay displayNone" ></div>

				{if $smarty.const.BANNER_MANAGER == 'true'}
				{include file="$banners_lb"}
				{/if}
				
				{if $INDEED == 'activated'}

				    {if $INDEED_BOTH_JOBS_FLAG}
				    	<div class="remove_idd displayNone"> {$remove_id}</div>
					    <div id="job-listings">

                    		<div class="listing-headline" >
                    			{if $favourites_jobs}
	 								<div id="jobtypee" class="search_typee">
			                                {if $current_jobtype}{$current_jobtype} {else } {$translations.alljobs.favourites_label}{/if}                 
			                        </div>
			                        <div class="clearallfilters"> 
			                        	<span> {$translations.website_general.clear}</span>
			                        </div>
	 							{else}
	 							  {if $landing_searched}
	 							    	{if $landing_searched_msg}
		 							  		<div id="jobtypee" class="search_typee">
			                                	{if $jobs or $INDEED == 'deactivated'}{$landing_searched_msg}{/if} {if $current_jobtype}/ {$current_jobtype}{/if}                 
			                                </div>
			                                <div class="clearallfilters">
			                                	<span> {$translations.website_general.clear}</span>
			                               	</div>
		 							  	{else}
		 							  		{$translations.alljobs.all_jobs} {if $current_jobtype}/ {$current_jobtype}{/if}
		 							  	{/if}
		 							  {else}
											<div id="jobtypee" class="search_typee">
			                                	{if $jobs or $INDEED == 'deactivated'}{$current_jobtype_search}{/if} {if $current_jobtype}/ {$current_jobtype}{/if}                 
			                                </div>
			                                <div class="clearallfilters">
			                                	<span> {$translations.website_general.clear}</span>
			                               	</div>
		 							  {/if}
	 							{/if}
	 						</div>

							{if $jobs}
							{include file="jobs/jobs-list.tpl"}
							{else}

							{if $INDEED == 'deactivated'}
								<br /><br />
								<div id="no-ads" class="general-wrap p25">
									{$translations.alljobs.no_jobs}
								</div>
							{/if}

							{/if}
						</div>
				    {/if}

				    <br /><br />

					<div id="indeed-listings" {if not $jobs}class="indeed-no-jobs"{/if}>
						<div id="indeed-listing-headline" class="listing-headline displayNone" >
							{$translations.alljobs.all_jobs}
						</div>
					</div>
				{else}
					<div class="remove_idd displayNone" > {$remove_id}</div>
                    <div id="job-listings">

                    		<div class="listing-headline" >
                    			{if $favourites_jobs}
	 								<div id="jobtypee" class="search_typee">
			                                {if $current_jobtype}{$current_jobtype} {else } {$translations.alljobs.favourites_label}{/if}                 
			                        </div>
			                        <div class="clearallfilters"> 
			                        	<span> {$translations.website_general.clear}</span>
			                        </div>
	 							{else}
	 							      {if $landing_searched}
		 							    {if $landing_searched_msg}
		 							  		<div id="jobtypee" class="search_typee">
			                                	{if $jobs or $INDEED == 'deactivated'}{$landing_searched_msg}{/if} {if $current_jobtype}/ {$current_jobtype}{/if}                 
			                                </div>
			                                <div class="clearallfilters">
			                                	<span> {$translations.website_general.clear}</span>
			                               	</div>
		 							  	{else}
		 							  		{$translations.alljobs.all_jobs} {if $current_jobtype}/ {$current_jobtype}{/if}
		 							  	{/if}
		 							  {else}
											<div id="jobtypee" class="search_typee">
			                                	{if $jobs or $INDEED == 'deactivated'}{$current_jobtype_search}{/if} {if $current_jobtype}/ {$current_jobtype}{/if}                 
			                                </div>
			                                <div class="clearallfilters">
			                                	<span> {$translations.website_general.clear}</span>
			                               	</div>
		 							  {/if}
	 							{/if}
	 						</div>

						{if $jobs}
						{include file="jobs/jobs-list.tpl"}
						{else}
							{if $INDEED == 'deactivated'}
							<br /><br />
							<div id="no-ads" class="general-wrap p25">
								{$translations.alljobs.no_jobs}
							</div>
							{/if}
						{/if}
					</div>
				{/if}	
		</div>

		<!-- sidebar -->
		<aside id="sidebar" role="complementary" >
				{if $INDEED == 'activated'}

					{if $INDEED_BOTH_JOBS_FLAG}
						{include file="snippets/sidebar-content.tpl"}
					{else}
						{include file="$indeed_tpl_sidebar"}
										
						{if $smarty.const.BANNER_MANAGER == 'true'}
						{include file="$banners_side_rectangle"}
						{/if}

						{if $smarty.const.ADSENSE == 'true'}
						{include file="$adsense_side_rectangle"}
						{/if}
					
					{/if}
				{else}
					{include file="snippets/sidebar-content.tpl"}
				{/if}
		</aside>	

</div>

{include file="layout/footer.tpl"}
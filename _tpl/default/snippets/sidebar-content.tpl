
<div id="sidebar-categories-desktop">


	{if !isset($hide_filter) and $types}
		<div class="panel-group" id="types-panel">
		  <div class="panel panel-default">
		    <div class="panel-heading">
		      <h4 class="panel-title">
		        <a data-toggle="collapse" href="#collapse1">{$translations.searchbar.job_types}</a>
		        <i class="indicator glyphicon glyphicon-chevron-right  pull-right"></i>
		      </h4>
		    </div>
		    <div id="collapse1" class="panel-collapse collapse">
		      <ul class="list-group {if count($types) > 8} scrollbar {/if}">
					{section name=tmp loop=$types}
					       {if $type_name == $types[tmp].var_name}
						   		<li class="list-group-item" id="{$types[tmp].var_name}_li" ><input type="checkbox" id="check_{$types[tmp].var_name}" name="act" data-url="/{$URL_JOBS}/" data="<p class='type_searchrd' id='{$types[tmp].var_name}_ctype' data='{$types[tmp].name}' data-id='{$types[tmp].var_name}'>{$types[tmp].name}</p>" class="filtervariable" value="{$types[tmp].var_name}_ctype">&nbsp;{$types[tmp].name} <span class="bracket bracket-active">({$types[tmp].job_count})</span> </li>
	                       {else}
	                               <li class="list-group-item" id="{$types[tmp].var_name}_li" ><input type="checkbox" id="check_{$types[tmp].var_name}" name="act" data-url="/{$URL_JOBS}/" data="<p class='type_searchrd' id='{$types[tmp].var_name}_ctype' data='{$types[tmp].name}' data-id='{$types[tmp].var_name}'>{$types[tmp].name}</p>" class="filtervariable" value="{$types[tmp].var_name}_ctype">&nbsp;{$types[tmp].name} <span class="bracket">({$types[tmp].job_count})</span> </li>
	                       {/if}
				  	{/section}
		      </ul>
		    </div>
		  </div>
		</div>
	{/if}

	{if $dropdown_cats}
		<div class="panel-group" id="cats-panel">
		  <div class="panel panel-default">
		    <div class="panel-heading">
		      <h4 class="panel-title">
		        <a data-toggle="collapse" href="#collapse2">{$translations.alljobs.jobs_categories}</a>
		        <i class="indicator glyphicon glyphicon-chevron-right  pull-right"></i>
		      </h4>
		    </div>
		    <div id="collapse2" class="panel-collapse collapse">
		      <ul class="list-group {if count($dropdown_cats) > 8} scrollbar {/if}">
				{foreach from=$dropdown_cats key=name item=obj}
					{if $current_category_name == $name}
						 <li class="list-group-item"><input type="checkbox" id="check_{$obj->url}" data-url="/{$URL_JOBS}/" data="<p class='type_searchrd' id='{$obj->url}_catgry' data='{$name}' data-id='{$obj->url}'>{$name}</p>" class="filtervariable actcat" value="{$obj->url}_catgry">&nbsp;{$name} <span class="bracket bracket-active">({$obj->jobs})</span> </li>
                    {else}
                       <li class="list-group-item"><input type="checkbox" id="check_{$obj->url}" data-url="/{$URL_JOBS}/" data="<p class='type_searchrd' id='{$obj->url}_catgry' data='{$name}' data-id='{$obj->url}'>{$name}</p>" class="filtervariable actcat" value="{$obj->url}_catgry">&nbsp;{$name} <span class="bracket">({$obj->jobs})</span></li>
					{/if}
			  	{/foreach}
		      </ul>
		    </div>
		  </div>
		</div>
	{/if}


	{if $REMOTE_PORTAL == 'deactivated'}
		{if $dropdown_countries}
		<div class="panel-group" id="loc-panel">
		  <div class="panel panel-default">
		    <div class="panel-heading">
		      <h4 class="panel-title">
		        <a data-toggle="collapse" href="#collapse3">{$translations.alljobs.cities}</a>
		        <i class="indicator glyphicon glyphicon-chevron-right  pull-right"></i>
		      </h4>
		    </div>
		    <div id="collapse3" class="panel-collapse collapse">
		      <ul class="list-group {if count($dropdown_countries) > 8} scrollbar {/if}">
				{foreach from=$dropdown_countries key=name item=obj}
						{if $current_city == $name}
							 <li class="list-group-item"><input type="checkbox" id="check_{$obj->url}" data-url="/{$URL_JOBS}/" data="<p class='type_searchrd' id='{$obj->url}_loctn' data='{$name}' data-id='{$obj->url}'>{$name}</p>" class="filtervariable actloc" value="{$obj->url}_loctn">&nbsp;{$name} <span class="bracket bracket-active">({$obj->jobs_count})</span> </li>
                        {else}
                            <li class="list-group-item"><input type="checkbox" id="check_{$obj->url}" data-url="/{$URL_JOBS}/" data="<p class='type_searchrd' id='{$obj->url}_loctn' data='{$name}' data-id='{$obj->url}'>{$name}</p>" class="filtervariable actloc"  value="{$obj->url}_loctn">&nbsp;{$name} <span class="bracket">({$obj->jobs_count})</span> </li>
						{/if}
				  	{/foreach}
		      </ul>
		    </div>
		  </div>
		</div>
	    {/if}
	{/if}


	<div class="categories-menu job-alert" >
		<div class="newsletter-title">{$subscribe_msg}</div>

		<div class="form-group">
			 <input name="subscribe_email" id="subscribe_email" placeholder="{$translations.detail_sidebar.control_email}" maxlength="100" type="email" class="minput form-control subscribe-desktop" required />
			 <input type="hidden" id="subscategory" name="subscategory" value="{$current_category_id}" />
			  <button type="submit" class="mbtn btn btn-default btn-primary" name="subscribe-btn" id="subscribe-btn" onclick="return SimpleJobScript.Subscribe();" >{$translations.subscriptions.subscribe_submit}</button>
		</div>

	
		 <div class="newsletter-response-holder">
			 <div class="loading pl5">
			 	<img id="fspinner_subscribe" class="reload-spinner displayNone" src="{$BASE_URL}_tpl/{$THEME}/img/reload.gif" alt="ajax loader">
			 </div>
			
			<div id="subscribe-pos" class="feedback-newsletter displayNone">{$translations.subscriptions.positive_feedback}</div>
			<div id="subscribe-neg" class="feedback-newsletter displayNone">{$translations.subscriptions.negative_feedback}</div>
			<div id="subscribe-wrongemail" class="feedback-newsletter displayNone">{$translations.subscriptions.wrongemail_feedback}</div>
			<div class="clear"></div>
		</div>
	</div>
</div>

<div id="sidebar-categories-mobile">
	<div class="categories-menu job-alert" >
		<div class="newsletter-title">{$subscribe_msg}</div>

		<div class="form-group">
			 <input name="subscribe_email_mobile" id="subscribe_email_mobile" placeholder="{$translations.detail_sidebar.control_email}" maxlength="100" type="email" class="minput form-control subscribe-mobile mb15" required />
			 <input type="hidden" id="subscategory" name="subscategory" value="{$current_category_id}" />
			  <button type="submit" class="mbtn btn btn-default btn-primary" name="subscribe-btn-mobile" id="subscribe-btn-mobile" onclick="return SimpleJobScript.SubscribeMobile();" >{$translations.subscriptions.subscribe_submit}</button>
		</div>

	
		 <div class="newsletter-response-holder mb15">
			 <div class="loading pl5">
			 	<img id="fspinner_subscribe-mob" class="reload-spinner displayNone" src="{$BASE_URL}_tpl/{$THEME}/img/reload.gif" alt="ajax loader">
			 </div>
			
			<div id="subscribe-pos-mob" class="feedback-newsletter displayNone">{$translations.subscriptions.positive_feedback}</div>
			<div id="subscribe-neg-mob" class="feedback-newsletter displayNone">{$translations.subscriptions.negative_feedback}</div>
			<div id="subscribe-wrongemail-mob" class="feedback-newsletter displayNone">{$translations.subscriptions.wrongemail_feedback}</div>
			<div class="clear"></div>
		</div>
	</div>
</div>

<!-- plugins -->
{if $smarty.const.BANNER_MANAGER == 'true'}
{include file="$banners_side_rectangle"}
{/if}

{if $smarty.const.ADSENSE == 'true'}
{include file="$adsense_side_rectangle"}
{/if}

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 edit-company">
	<form method="post" action="{$BASE_URL}{$URL_JOB_POSTED}/" role="form">
		<input type="hidden" id="step" name="step" value="1" />
		<input type="hidden" id="employer_id" name="employer_id" value="{$employer_id}" />
		<input type="hidden" id="jobs_left" name="jobs_left" value="{$jobs_left}" />
		<input type="hidden" id="job_period" name="job_period" value="{$job_period}" />

{if not $lock_post}
		<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 mb20">
			<!-- job types-->
			<div class="form-group mb30">
				<label for="type">{$translations.dashboard_recruiter.post_type_label}</label>
				<select id="type_select" name="type_select" class="form-control minput">
					{foreach from=$types key=id item=value}
						<option {if $DRAFT}{if $draft_data.type_name == {$value}}selected{/if}{/if} value="{$id}">{$value}</option>
					{/foreach}
				</select>
			</div>
			<!-- catgory-->

			<div class="form-group mb30">
				<label for="type">{$translations.dashboard_recruiter.post_category_label}</label>
				<select id="cat_select" name="cat_select" class="form-control minput">
					{foreach from=$cats key=id item=value}
						<option {if $DRAFT}{if $draft_data.category_id == {$id}}selected{/if}{/if} value="{$id}">{$value}</option>
					{/foreach}
				</select>
			</div>

			{if $REMOTE_PORTAL == 'deactivated'}
				<div class="form-group mb30">
					<label for="description">{$translations.dashboard_recruiter.post_location_label}</label>
					<select id="location_select" name="location_select" class="form-control minput">
					{foreach from=$cities key=id item=value}
						<option {if $DRAFT}{if $draft_data.city_id == {$id}}selected{/if}{/if} value="{$id}">{$value}</option>
					{/foreach}
					</select>
				</div>
			{/if}
		</div>

		<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
			<div class="form-group mb30">
				<label for="title">{$translations.dashboard_recruiter.post_title_label}</label>
				<input required name="title" id="title" maxlength="400" type="text" value="{if $DRAFT == 'true'}{$draft_data.title}{/if}" class="form-control minput"  />
			</div>

			<div class="form-group mb30">
				<label for="salary">{$translations.dashboard_recruiter.salary_label}<span class="italic"> {$translations.dashboard_recruiter.salary_desc}</span></label>
				<input name="salary" id="salary" maxlength="100" type="text" class="form-control minput" value="{if $DRAFT == 'true'}{$draft_data.salary}{/if}"  />
			</div>

			{if $PAYMENT_MODE == '2'}
			 <div class="form-group mb30">
				<label for="premium_select">{$translations.dashboard_recruiter.premium_text} </label>
				<select id="premium_select" name="premium_select" class="form-control minput">
						<option value="0">{$translations.dashboard_recruiter.standard_label}</option>
						<option value="1">{$translations.dashboard_recruiter.premium_label} {$FORMATED_CURRENCY}</option>
				</select>
			</div>
			{/if}
		</div>

		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb20">
			<div class="form-group mb30">
				<label for="description">{$translations.dashboard_recruiter.post_desc_label}</label>
				
				<textarea id="description" name="description">{if $DRAFT == 'true'}{$draft_data.description}{/if}</textarea>
			</div>

			 <div class="form-group mb85mobile">
			 	<input type="checkbox" onchange="SimpleJobScript.applyChanged(this.checked);" name="apply_online_switch" id="apply_online_switch" data-size="mini" checked />
			 	<span style="position: absolute; margin-top: -1px">
				 	<label class="switch-label">{$translations.dashboard_recruiter.apply_label}</label>
				 	<span class="apply-desc-span" style="margin-left: 115px">{$translations.dashboard_recruiter.apply_desc}</span>
			 	</span>
			 </div>

			 <div id="apply-desc-block" class="form-group displayNone mb30" >
				<label>{$translations.dashboard_recruiter.howto_apply_label}</label>
				<textarea id="howtoTA" class="noTinymceTA form-control" rows="5" cols="5" id="howtoapply" name="howtoapply" style="max-width: 300px; min-height: 100px;"></textarea>
			 </div>

		</div>


		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb20">
		  <div class="form-group mb30">
		  	<button type="submit" onclick="return SimpleJobScript.validateDesc();" class="btn btn-default btn-primary mbtn" name="submit" id="submit" >{$translations.dashboard_recruiter.post_submit}</button>
		  </div>
		</div>
{else}

	<table id="lock-table" >
	  <tr>
	     <td>{$translations.post_step1.out_of_credit}</td>
	  </tr>
	  <tr>
	     <td><image src="{$BASE_URL}_tpl/{$THEME}/img/cvdb-lock.png" width="250" height="250" /></td>
	  </tr>
	  <tr>
	  	<td>
	  		<a href="{$BASE_URL}{$URL_DASHBOARD}/{$URL_DASHBOARD_ACCOUNT_ORDER}"><button type="button" class="btn btn-default btn-primary mbtn" >{$translations.post_step1.renew}</button></a>
	  	</td>
	  </tr>
	 </table>

{/if}

	</form>
</div>
<br />

<script type="text/javascript">
	/*var name = "cat{$obj.id}";
	$("[name=apply_online_switch").bootstrapSwitch();*/
</script>
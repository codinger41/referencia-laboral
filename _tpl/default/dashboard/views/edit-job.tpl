
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb20">
	<label class="admin-label mt20">{$translations.dashboard_recruiter.editjob_headline}</label>

	<div class="social-headingbox" style="margin-top: 20px; opacity: 0.65;">
     <a href="{$BASE_URL}{$URL_DASHBOARD}/{$URL_DASHBOARD_JOBS}"><button type="button" class="btn btn-default back-button-desktop" >{$translations.dashboard_recruiter.back}</button></a>
    </div>

	<br />
	<div class="alert alert-info fade in main-color mt15">
	    <a href="#" class="close" data-dismiss="alert">&times;</a>
	    <i class="fa fa-info-circle info-fa" aria-hidden="true"></i>
	    {$translations.dashboard_recruiter.editjob_about_tag}
	</div>
</div>

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 light-gray-color edit-company">
	<form method="post" action="{$BASE_URL}{$URL_JOB_EDITED}" role="form">
		<input type="hidden" id="job_id" name="job_id" value="{$job.id}" />

		<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 mb10">

			<!-- catgory-->
			<div class="form-group ">
				<label for="type">{$translations.dashboard_recruiter.post_type_label}</label>
				<select id="type_select" name="type_select" {if $lock_post}disabled{/if} class="form-control minput">
					{foreach from=$types key=id item=value}
						<option {if $value == $job.type_name}selected{/if} value="{$id}">{$value}</option>
					{/foreach}
				</select>
			</div>

			<!-- job types-->
			<div class="form-group ">
				<label for="type">{$translations.dashboard_recruiter.post_category_label}</label>
				<select id="cat_select" name="cat_select" {if $lock_post}disabled{/if} class="form-control minput">
					{foreach from=$cats key=id item=value}
						<option {if $id == $job.category_id}selected{/if} value="{$id}">{$value}</option>
					{/foreach}
				</select>
			</div>

			{if $remote_portal == 'deactivated'}
				<div class="form-group ">
					<label for="description">{$translations.dashboard_recruiter.post_location_label}</label>
					<select id="location_select" name="location_select" {if $lock_post}disabled{/if} class="form-control minput">
					{foreach from=$cities key=id item=value}
						<option {if $id == $job.city_id}selected{/if} value="{$id}">{$value}</option>
					{/foreach}
					</select>
				</div>
			{/if}
		</div>

		<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
			<div class="form-group ">
				<label for="title">{$translations.dashboard_recruiter.post_title_label}</label>
				<input {if $lock_post}disabled{/if} required name="title" id="title" maxlength="400" type="text" class="form-control minput" value="{$job.title}" />
			</div>

			<div class="form-group ">
				<label for="salary">{$translations.dashboard_recruiter.salary_label}</label>
				<input {if $lock_post}disabled{/if} name="salary" id="salary" maxlength="100" type="text" class="form-control minput" value="{$job.salary}" />
			</div>
		</div>

		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb20">
			<div class="form-group mb30">
				<label for="description">{$translations.dashboard_recruiter.post_desc_label}</label>
				{if $lock_post}<br />{/if}
				<textarea {if $lock_post}disabled class="noTinymceTA"{/if} id="description" name="description">{$job.description}</textarea>
			</div>

			 <div class="form-group mb85mobile ">
			 	<input {if $lock_post}disabled{/if} type="checkbox" onchange="SimpleJobScript.applyChanged(this.checked);" name="apply_online_switch" id="apply_online_switch" data-size="mini" checked />
			 	<span style="position: absolute; margin-top: -1px">
				 	<label class="switch-label">{$translations.dashboard_recruiter.apply_label}</label>
				 	<span class="apply-desc-span" style="margin-left: 110px">{$translations.dashboard_recruiter.apply_desc}</span>
			 	</span>
			 </div>

			 <div id="apply-desc-block" class="mb30 form-group  {if $job.apply_online == '1'} displayNone{/if}" >
				<label>{$translations.dashboard_recruiter.howto_apply_label}</label>
				<textarea {if $lock_post}disabled{/if} id="howtoTA" class="noTinymceTA form-control " rows="5" cols="5" id="howtoapply" name="howtoapply" style="max-width: 300px; min-height: 100px;">{$job.apply_desc}</textarea>
			 </div>

		</div>

		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb20">
			 <div class="form-group mb30 ">
			  	<button  type="submit" onclick="return SimpleJobScript.validateDesc();" class="btn btn-default btn-primary mbtn" name="submit" id="submit" >{$translations.dashboard_recruiter.change_password_submit}</button>

		  		<a href="{$BASE_URL}{$URL_DASHBOARD}/{$URL_DASHBOARD_JOBS}"><button type="button" class="btn btn-default btn-warning mbtn cancelBtn" >{$translations.dashboard_recruiter.cancel}</button></a>
			  </div>
		</div>

	</form>
</div>
<br />

<script type="text/javascript">
	/*var name = "cat{$obj.id}";
	$("[name=apply_online_switch").bootstrapSwitch();*/
</script>
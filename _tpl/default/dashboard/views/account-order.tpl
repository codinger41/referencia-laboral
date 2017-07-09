{if not $order_completed}

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb20">
	<label class="admin-label mt20">{$translations.dashboard_recruiter.account_order_headline}</label>
	<div class="alert alert-info fade in main-color">
	    <a href="#" class="close" data-dismiss="alert">&times;</a>
	    <i class="fa fa-info-circle info-fa" aria-hidden="true"></i>
	     {$translations.dashboard_recruiter.account_order_note}
	</div>
</div>

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	<label class="admin-label">{$translations.dashboard_recruiter.choose_plan} {$translations.dashboard_recruiter.acc_plan}</label>
</div>

<form id="af" name="af" method="post" action="{$BASE_URL}account-payment/" role="form" >

	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb40 xmt25">
		<br />
		
		<div class="form-group">

				<select id="package_select_id" onchange="SimpleJobScript.accountPlanSelectChanged(this.value);" name="package_select_id" class="form-control minput">
				{foreach from=$packages key=id item=value}
					<option {if $id == $active_mode_id}selected{/if} value="{$id}">{$value}</option>
				{/foreach}
				</select>
		</div>

	</div>

	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb10">
		<label class="admin-label">{$translations.dashboard_recruiter.plan_features}</label>
	</div>

	<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 mb30">	
		<ul class="list-group">
			<li class="list-group-item"><strong>{$translations.post_step1.account_plan} </strong>&nbsp;<span id="ajax-plan-name">{$pd.name}</span></li>
			<li class="list-group-item"><strong>{$translations.dashboard_recruiter.plan_features_job_expiry} </strong>&nbsp;<span id="ajax-plan-jp">{$pd.job_period}</span> {$translations.date.days}</li>
			<li class="list-group-item"><strong>{$translations.dashboard_recruiter.plan_features_job_ads} </strong>&nbsp;<span id="ajax-plan-jl">{$pd.jobs_left}</span></li>
			<li class="list-group-item"><strong>{$translations.dashboard_recruiter.plan_features_resumes} </strong>&nbsp;<span id="ajax-plan-cvdl">{$pd.cv_downloads}</span></li>
		</ul>
	</div>

	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb10">
		<label class="admin-label">{$translations.dashboard_recruiter.pricing_headline}</label>
	</div>

	<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 mb30">
			<label class="admin-green  mr15">{$translations.dashboard_recruiter.price} </label>&nbsp;<span id="ajax-price">{$PRICE}</span><br />
			{if $VAT}
				<label class="admin-green  mr15">{$translations.post_step2.vat} </label>&nbsp;<span id="ajax-vat">{$PRICE_VAT}</span><br />
				<label class="admin-green  mr15">{$translations.post_step2.final_price} </label>&nbsp;<span id="ajax-price-vat">{$PRICE_VAT_TOTAL}</span><br />
			{/if}
	 </div>

	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb50">	
		<button type="submit" class="btn btn-default btn-primary mbtn" id="topup-submit" name="topup-submit" >{$translations.dashboard_recruiter.purchase}</button>
	</div>

</form>
{else}
	<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 mt20" >
    <label class="admin-label">{$translations.paypal.account_order_completed_headline}</label>
    <div class="bs-example">
        <div class="alert alert-success fade in">
            <a href="#" class="close" data-dismiss="alert">&times;</a>
            <i class="fa fa-check" aria-hidden="true"></i>&nbsp;&nbsp; {$translations.paypal.account_order_completed_message}
        </div>
    </div>
</div>
{/if}
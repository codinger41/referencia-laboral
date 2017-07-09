<div class="preview-holder" >
	<button data-toggle="modal" data-target="#previewModal" id="preview-btn-mobile" type="button" class="btn btn-default btn-success mbtn">{$translations.post_step2.preview_btn_label}</button>
	<div class="row-fluid">
		<div class="col-lg-6 col-md-6 cold-sm-12 col-xs-12 mpl0 normal-gray">
			<div class="col-md-12 mpl0 mb10"><label class="admin-green  mr15">{$translations.post_step2.title}</label>{$job_data.title}</div>
			<div class="col-md-12 mpl0 mb10"><label class="admin-green  mr15">{$translations.post_step2.expires}</label>{$job_period} {$translations.post_step2.days} &nbsp;-&nbsp;&nbsp;{$job_data.expires_date}</div>

			{if $PAY == 'true'}

				{if $SPOTLIGHT == 'true' && $PREMIUM_LISTING_PRICE > 0}
					<div class="col-md-12 mpl0 mb10"><label class="admin-green  mr15" > {$translations.post_step2.adtype}</label>{$translations.post_step2.premium} &nbsp;-&nbsp;&nbsp; {$translations.post_step2.premium_desc}</div>
				{else}
					<div class="col-md-12 mpl0 mb10"><label class="admin-green  mr15">{$translations.post_step2.adtype}</label>{$translations.post_step2.standard}</div>
				{/if}

				{if $SPOTLIGHT == 'true' && $PREMIUM_LISTING_PRICE > 0}
						<div class="col-md-12 mpl0 mb10"><label class="admin-green  mr15">{$translations.post_step2.premium_ad_fee}</label> {$FORMATED_CURRENCY}</div>
				{/if}

				{if $JOB_POSTED_PRICE > 0}
						<div class="col-md-12 mpl0 mb10"><label class="admin-green  mr15">{$translations.post_step2.job_post_fee}</label> {$FORMATED_CURRENCY_JOBPOSTED}</div>
				
				{elseif $JOB_POSTED_PRICE == 0}
						<div class="col-md-12 mpl0 mb10"><label class="admin-green  mr15">{$translations.post_step2.job_post_fee}</label>{$translations.post_step2.free}</div>
				{/if}

				<div id="pay-border" ></div>

				<div class="col-md-12 mpl0 mb10"><label class="admin-green  mr15">{$translations.post_step2.fees}</label> {$PRICE}</div>

                {if $VAT}
               	  <div class="col-md-12 mpl0 mb10"><label class="admin-green  mr15">{$translations.post_step2.vat}</label>{$PRICE_VAT}</div>
               	  <div class="col-md-12 mpl0 mb10"><label class="admin-green  mr15">{$translations.post_step2.final_price}</label>{$PRICE_VAT_TOTAL}</div>
                {/if}

			{else}
				<div class="col-md-12 mpl0 mb10"><label class="admin-green  mr15">{$translations.post_step2.adtype}</label>{$translations.post_step2.standard}</div>

				{if $PAYMENT_MODE == '3'}
					<div class="col-md-12 mpl0 mb10"><label class="admin-green  mr15">{$translations.post_step1.account_plan}</label>{$jobs_left_msg}</div>
				{else}
					<div class="col-md-12 mpl0 mb10"><label class="admin-green  mr15">{$translations.post_step2.fees}</label> {$translations.post_step2.free}</div>
				{/if}

			{/if}

		</div>
		<div class="col-lg-6 col-md-6 cold-sm-12 col-xs-12">
			<button data-toggle="modal" data-target="#previewModal" id="preview-btn-desktop" type="button" class="btn btn-default btn-success mbtn">{$translations.post_step2.preview_btn_label}</button>
		</div>
	</div>
</div>

<div class="form-group preview-bottom">
	<form method="post" action="{$BASE_URL}{$URL_JOB_POSTED}/" role="form">
		<input type="hidden" id="step" name="step" value="2" />
		<input type="hidden" id="employer_id" name="employer_id" value="{$job_data.employer_id}" />
		<input type="hidden" id="job_id" name="job_id" value="{$job_data.id}" />

		{if $PAY == 'true'}
		<input type="hidden" id="price" name="price" />
		{if $SPOTLIGHT == 'true' && $PREMIUM_LISTING_PRICE > 0}
			<input type="hidden" id="price_premium" name="price_premium" />
		{/if}
		{if $JOB_POSTED_PRICE > 0}
			<input type="hidden" id="price_ad" name="price_ad" />
		{/if}

		<input type="hidden" name="item_name" value="{$translations.paypal.checkout_item_name}" /> 
		<input type="hidden" name="item_number" value="{$translations.paypal.checkout_item_number}" /> 
	    <input type="hidden" name="item_desc" value="{$translations.paypal.checkout_item_desc}" /> 
		<input type="hidden" name="item_price" />
		<input type="hidden" name="item_qty" value="1" />

	    <input type="submit" id="paypal_submit" name="paypal_submit" value="{$translations.post_step2.paypal_btn_label}" class="upper-font btn btn-default btn-primary mbtn" />

		{else}
			<input id="pblish" name="pblish" type="submit" class="upper-font btn btn-default btn-primary mbtn" value="{$translations.post_step2.label_publish}" />
		{/if}
			<input id="goback" name="goback" type="submit" class="upper-font btn btn-default btn-warning mbtn right-btn" value="{$translations.dashboard_recruiter.go_back_edit_text}" />
	</form>
</div>

<!-- Modal with job preview -->
<div id="previewModal" class="modal fade" role="dialog">
	<div id="preview-modal" class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content" >
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title" style="padding-bottom: 10px">{$job_data.title}</h4>
			</div>
			<div class="modal-body">

				<!-- icons set for mobile -->
				<div class="detail-icons-mobile" >
					<div class="p6 {$job_data.type_var_name}" style="border: 1px solid;">{$job_data.job_type}</div>
					<div class="list-salary mt5">{$job_data.salary}</div>
					{if $job_data.new_flag}<div class="new-detail mt5 plr10">{$translations.job_detail_section.new}</div>{/if}
				</div>

				<div class="job-detail-icons" >
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
						{if $REMOTE_PORTAL == 'deactivated'}
						<i class="fa fa-map-marker list-fa fa-lg" aria-hidden="true"></i>{$job_data.location_asci}
						{/if}
						<i class="fa fa-calendar list-fa fa-lg" aria-hidden="true"></i>{$job_data.created_on}<!--&nbsp;|&nbsp;{$job.post_date}-->
						&nbsp;
						<!-- icons set for desktop -->
						<span class="detail-icons-desktop">
							<span class="{$job_data.type_var_name} plr10" style="border: 1px solid;">{$job_data.job_type}</span>
							<span class="list-salary p510" >{$job_data.salary}</span>
							{if $job_data.new_flag}<span class="new-detail ml10 plr10">{$translations.job_detail_section.new}</span>{/if}
						</span>
					</div>
				</div>

				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<div class="detail-font" style="color: #000; opacity: 0.75;">{$job_data.description}</div>
				</div> 
				
				<div class="row-fluid">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						{if $job_data.apply_online == 1}
						{else}
						<div class="apply-bg">
							<h4 class="green-font" style="font-size: 15px">{$translations.job_detail_section.howtoapply}</h4>
							<div class="light-font font15">{$job_data.apply_desc}</div>
						</div><br />
						{/if}
					</div>
				</div>

			</div>
			<div class="clear"></div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default btn-warning mbtn" data-dismiss="modal">{$translations.job_detail_section.close}</button>
			</div>
		</div>

	</div>
</div>
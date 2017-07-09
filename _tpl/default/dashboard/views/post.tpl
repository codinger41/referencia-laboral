<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <label class="admin-label mt20">{$translations.dashboard_recruiter.post_job_headline}</label>
    <div class="alert alert-info fade in main-color">
        <a href="#" class="close" data-dismiss="alert">&times;</a>
        <i class="fa fa-info-circle info-fa" aria-hidden="true"></i>
        {if $step == 1} 
        	{$translations.post_step1.infodesc_step1}{if $PAYMENT_MODE == '3'}<br /><div class="orange">{$msg}</div>{/if}
        {elseif $step == 2}
        	{$translations.post_step2.infodesc_step2}
        {elseif $step == 3}
        	{$translations.dashboard_recruiter.infodesc_step3}
        {/if}
    </div>
</div>

{if not $lock_post}
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <div class="posting-steps">
    	<ol id="steps">
    		<li class="{if $step == 1}step-active{/if} {if $step == 2}step-done{/if} {if $step == 3} step-done{/if}">{$translations.dashboard_recruiter.step_1}  {if $step == 2 || $step == 3}&nbsp;<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>{/if}</li>
    		<li class="{if $step == 2}step-active{/if} {if $step == 3}step-done{/if}">{$translations.dashboard_recruiter.step_2} {if $step == 3}&nbsp;<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>{/if}</li>
    		<li class="{if $step == 3} step-active{/if}">{$translations.dashboard_recruiter.step_3}</li>
    	</ol>
    </div>
</div>
{/if}

{if $step == 1 || $step == 2}
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 p15 light-gray-color">
    {if $step == 1} 
        {include file="dashboard/views/post-first-step.tpl"}
    {elseif $step == 2}
        {include file="dashboard/views/post-second-step.tpl"}
    {/if}
    </div>
{/if}

{if $step == 3} 
<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 mt20" >
    <label class="admin-label">{$translations.dashboard_recruiter.job_published_msg}</label>
    <div class="bs-example">
        <div class="alert alert-success fade in">
            <a href="#" class="close" data-dismiss="alert">&times;</a>
            <i class="fa fa-check" aria-hidden="true"></i>&nbsp;&nbsp; {if $PAYMENT_MODE == '2'}{$paypal_result_message}{/if} {$published_msg} {if $PAYMENT_MODE == '2' and $paypal_result_message}{$new_invoice_msg} {/if}
        </div>
    </div>
</div>
{/if}






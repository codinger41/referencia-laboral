<div class="gray">
    {$translations.profile.apps_desc}
</div>
<br />

<ul class="profile-listings">
{section name=application loop=$apps}
        <a href="{$BASE_URL}{$URL_JOB}/{$apps[application].job_id}/{$apps[application].url_title}" target="_blank">
          <li class="">

            <div class="noMP col-md-7 col-sm-7 col-xs-7 gray">
                <div class="listing-title ml0">
                    {$apps[application].job_title} @ {$apps[application].job_company}
                </div>
                <div class="listing-info ml0">
                    <i class="fa fa-calendar list-fa fa-lg" aria-hidden="true"></i>
                    {$apps[application].created_on}
                </div>
            </div>

            <div class="listing-type">
                {if $apps[application].status == '0'}
                    <span class="profile-pending hideMobile">{$translations.profile.pending_label}</span>
                {else if $apps[application].status == '1'}
                    <span class="profile-rejected hideMobile">{$translations.profile.rejected_label}</span>
                {else}
                    <span class="profile-reviewed hideMobile">{$translations.profile.review_label}</span>
                {/if}
            </div>

          </li> 
         </a>
{/section}
</ul>
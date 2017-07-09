{include file="layout/header.tpl"}

	<div class="container content ">

		<div class="static-offset">

				{if $success}
					<div class="wrap-msg">
						<div class="positive-feedback-bracket">{$translations.subscriptions.positive_feedback_maillist}</div>
					</div>
					<br />
				{/if}

				<div class="general-wrap static-wrap padding-static">
					<h4 class="general-headline">{$translations.subscriptions.subscribe_message}</h4>
					<span class="light-font">
						{$translations.subscriptions.subscribe_desc}
					</span>
					<br /><br />

					<ul class="nav nav-tabs" id="subscribe-tabs">
				        <li class="active"><a href="#subsribetab">{$translations.subscriptions.tab_subscribe_title}</a></li>
				        <li><a href="#rules">{$translations.subscriptions.tab_rules_title}</a></li>
				    </ul>
				    <div class="tab-content">
				        <div id="subsribetab" class="tab-pane fade in active">
				             {include file="subscription/subscribe-tab-content.tpl"}
				        </div>
				        <div id="rules" class="tab-pane fade">
					         {include file="subscription/unsubscribe-tab-content.tpl"}
				        </div>
			    	</div>
			    </div>

			
		</div><!-- #content -->
	</div>


<script type="text/javascript">
	$(document).ready(function(){ 
	   SimpleJobScript.InitSubscribeTabs();
	});
</script>

{include file="layout/footer.tpl"}

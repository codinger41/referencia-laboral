

<div class="col-lg-6 col-md-6 col-xs-12 col-sm-12">
	<div class="tab-padding">
		<form id="subscribe-form" role="form" method="post" action="/{$URL_SUBSCRIBE}">

			{foreach from=$cats item=obj}
			   <div class="bootstrap-switch-square form-group">

			   	 <input checked type="checkbox" name="cat{$obj.id}" id="cat{$obj.id}" data-size="mini" data-toggle="switch"  data-on-text="<span class='fui-check'></span>" data-off-text="<span class='fui-cross'></span>" /><label class="switch-label">{$obj.name}</label>

			   </div>
		  	{/foreach}
		  	<br />

		  	 <div class="form-group">

				<div class="inner-addon left-addon">
				  <i class="glyphicon glyphicon-envelope"></i>	
				 <input id="subscribe-email" name="subscribe-email" class="form-control minput" maxlength="50" type="email" required />
				</div>

		  	 </div>
			<button type="submit" class="btn btn-primary mbtn">{$translations.subscriptions.subscribe_submit}</button>
		</form>
	</div>
</div>

{foreach from=$cats item=obj}
<script type="text/javascript">
    if ($('[data-toggle="switch"]').length) {
    //  $('[data-toggle="switch"]').bootstrapSwitch();
    }
</script>
{/foreach}
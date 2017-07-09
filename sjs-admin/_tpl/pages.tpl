{include file="header.tpl"}
		<div class="admin-content">
		 <div class="admin-wrap-content" style="padding-right: 35px !important;">
			 <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mobMargin">
				<label class="admin-label">Pages</label>
				<div class="subheading">Templates for static pages can be found in _tpl/{$THEME}/static folder.</div>
			</div>
			<br /><br />

			<div class="ml15">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

				<div class="list">
				{foreach from=$pages item=page}
					<div class="row settings-row p15" >
						<div class="icons">
							<a class="mr5" href="{$BASE_URL}{$page.url}/" target="_blank" title="View this page"><i class="fa fa-eye fa-lg mr5" aria-hidden="true"></i></a>
							<a class="mr5" href="{$BASE_URL_ADMIN}pages/edit/{$page.id}/" title="Edit this page"><i class="fa fa-gear fa-lg mr5" aria-hidden="true"></i></a>

						<a href="{$BASE_URL_ADMIN}pages/delete/{$page.id}/" title="Delete this page" onclick="if(!confirm('Are you sure you want to delete this page?'))return false;"><i class="fa fa-trash fa-lg" aria-hidden="true"></i></a>
						</div>
						<span class="dark-font">{$page.page_title}</span>  - <span>{if $page.is_external == '0'}( {$page.url} ){else}( {$page.external_url} ){/if} </span>
					</div>
				{/foreach}
				<p style="margin: 20px -10px;">
					<a href="{$BASE_URL_ADMIN}pages/add/" title="Add a new page" style="margin-top:"><span title="Add new page" class="blueColor fui-plus-circle iconSize" ></span></a>
				</p>
				</div>
			</div></div>

		</div><!-- #content -->
	</div>
{include file="footer.tpl"}

{if $updated == 'true'}
<script type="text/javascript">
   setTimeout(function(){
   	jobberBase.messages.add('Page has been updated');
   }, 1000);
</script>
{/if}

{if $deleted == 'true'}
<script type="text/javascript">
   setTimeout(function(){
   	jobberBase.messages.add('Page has been deleted');
   }, 1000);
</script>
{/if}

{if $added == 'true'}
<script type="text/javascript">
   setTimeout(function(){
   	jobberBase.messages.add('New page has been created');
   }, 1000);
</script>
{/if}
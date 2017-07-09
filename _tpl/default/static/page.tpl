{include file="layout/header.tpl"}
		<div class="container content top-offset">
			<!-- every static page has a tpl same like url with a prefix e.g. static_about.tpl-->
			<div class="general-container">
				<div class="general-wrap static-wrap" >
					   	 <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 mb20">
					   	    <div class="static-page-content">
						    {include file=$tpl}
						    </div>
						 </div>
				</div>
			</div>
{include file="layout/footer.tpl"}
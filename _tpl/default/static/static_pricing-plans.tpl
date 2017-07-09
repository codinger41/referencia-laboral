
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" >
	<h4 class="general-headline pricing-headline">{$translations.packages.headline}</h4>
	<div class="tac opaque">{$translations.packages.subheadline}</div>
	<br /><br />

 <div id="package-wrapper">

 	<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4" >
		 <div class='package'>
		    <div class='name ttu'>{$package_data[0].name}</div>
		    <div class='price'>{$package_data[0].price_formatted} {$translations.packages.topup}</div>
		    <div class='trial'>{$translations.packages.free_trial}</div>
		    <hr>
		    <ul class="pricing-text">
		      <li>
		        <strong>{$package_data[0].jobs_left}&nbsp;</strong>
		        {$translations.packages.job_ads}
		      </li>
		      <li>
		        <strong>{$package_data[0].cv_downloads}&nbsp;</strong>
		         {$translations.packages.resume_downloads}
		      </li>
		      <li>
		        <strong>{$package_data[0].job_period} {$translations.date.days}&nbsp;</strong>
		       {$translations.packages.job_period}
		      </li>
		    </ul>
		  </div>
	  </div>

	  <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4" >
		  <div class='package brilliant'>
		    <div class='name ttu'>{$package_data[1].name}</div>
		    <div class='price'>{$package_data[1].price_formatted} {$translations.packages.topup}</div>
		    <div class='trial'>{$translations.packages.recommended}</div>
		    <hr>
		    <ul class="pricing-text">
		      <li>
		        <strong>{$package_data[1].jobs_left}&nbsp;</strong>
		        {$translations.packages.job_ads}
		      </li>
		      <li>
		        <strong>{$package_data[1].cv_downloads}&nbsp;</strong>
		        {$translations.packages.resume_downloads}
		      </li>
		      <li>
		        <strong>{$package_data[1].job_period} {$translations.date.days}&nbsp;</strong>
		        {$translations.packages.job_period}
		      </li>
		    </ul>
		  </div>
	   </div>

	  <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4" >
		  <div class='package'>
		    <div class='name ttu'>{$package_data[2].name}</div>
		    <div class='price'>{$package_data[2].price_formatted} {$translations.packages.topup}</div>
		    <div class='trial'>{$translations.packages.best_value}</div>
		    <hr>
		    <ul class="pricing-text">
		      <li>
		        <strong>{$package_data[2].jobs_left}&nbsp;</strong>
		        {$translations.packages.job_ads}
		      </li>
		      <li>
		        <strong>{$package_data[2].cv_downloads}&nbsp;</strong>
		        {$translations.packages.resume_downloads}
		      </li>
		      <li>
		        <strong>{$package_data[2].job_period} {$translations.date.days}&nbsp;</strong>
		        {$translations.packages.job_period}
		      </li>
		    </ul>
		  </div>
	   </div>

	   <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 tac mpl30" >
	  	 <a href="/{$URL_REGISTER_RECRUITERS}">
	  	 	<button type="button" class="tcu mt40 btn btn-default btn-primary" name="pricing-btn" id="pricing-btn">{$translations.website_general.top_menu_register_label}</button>
	  	 </a>
	   </div>

 </div>
</div>
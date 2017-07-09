<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mb20">
	<label class="admin-label mt20">{$translations.dashboard_recruiter.deactivate_headline}</label>
	<div class="alert alert-info fade in main-color">
	    <a href="#" class="close" data-dismiss="alert">&times;</a>
	     <i class="fa fa-info-circle info-fa" aria-hidden="true"></i>
	    {$translations.dashboard_recruiter.deactivate_note}
	</div>
</div>

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	<div class="dashboard-well" >
			<div class="form-group">
			  <label> {$translations.dashboard_recruiter.deactivate_confirmation}</label>
			</div>
			 <div class="form-group">
			 	 <a href="/{$URL_DASHBOARD_DEACTIVATE_ACCOUNT}/{$ID}"><button type="submit" class="btn btn-default btn-primary mbtn adminbtn" name="submit_delete" id="submit_delete" >{$translations.dashboard_recruiter.delete}</button></a>
			 	<a href="/{$URL_DASHBOARD}"><button class="btn btn-default btn-warning mbtn adminbtn" name="submit_cancel" id="submit_cancel">{$translations.dashboard_recruiter.cancel}</button></a>
			 </div>
	</div>
</div>
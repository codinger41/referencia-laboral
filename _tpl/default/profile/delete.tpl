<script src="{$BASE_URL}js/jquery.confirm.min.js"></script>

<div class="gray">
	{$translations.profile.delete_text}
</div>
<br />

<a id="deleteConfirm" href="/{$URL_PROFILE}/deleteacc"><button type="button" class="mbtn btn btn-default btn-primary delete-acc-btn">{$translations.profile.delete_txt}</button></a>

<script type="text/javascript">
		$("#deleteConfirm").confirm({
		    text: "{$translations.profile.text_are_you_sure}",
		    confirm: function(button) {
		        window.location.replace(button[0].pathname);
		    },
		    cancel: function(button) {
		    },
		    confirmButton: "{$translations.profile.text_yes}",
		    cancelButton: "{$translations.dashboard_recruiter.text_no}",
		    confirmButtonClass: "btn-primary",
		    cancelButtonClass: "btn-warning"
		});	
</script>
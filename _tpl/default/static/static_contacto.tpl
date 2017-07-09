
{if $response}
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 mb20 wrap-msg">
	<div class="{$response_class}">
		{$response_msg}
	</div>
</div>
<div class="hidden-sm hidden-md hidden-lg"><br /><br /></div>
<br /><br /><br />
{/if}

<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
	<h4 class="general-headline">{$CONTACT_FORM_HEADLINE}</h4>
	<br /><br />
	<div id="contact-form" >
		<form id="contactus-form" role="form"  enctype="multipart/form-data" method="post" action="{$BASE_URL}{$CONTACT_PAGE_URL}" >
			<div class="form-group {if $errors.contact_name}has-error{/if}">
				<!-- <label for="contact_name">{$translations.contact.name_label}:</label> -->
				<input placeholder="{$translations.contact.name_label}" value="{if $current_form}{$current_form.name}{/if}" required type="text" class="form-control grayInput mb30"  name="contact_name" id="contact_name" maxlength="50" value="{$smarty.post.contact_name}" />
			</div>

			<div class="form-group mb30 {if $errors.contact_email}has-error{/if}">
				<!-- <label for="contact_email">{$translations.contact.email_label}:</label> -->
				<input placeholder="{$translations.contact.email_label}" value="{if $current_form}{$current_form.email}{/if}" required type="email" class="form-control grayInput" name="contact_email" id="contact_email" maxlength="50" value="{$smarty.post.contact_name}" />
			</div>

			<div class="form-group mb30 {if $errors.contact_msg}has-error{/if}">
				<!-- <label for="contact_msg">{$translations.contact.message_label}:</label> -->
					<textarea placeholder="{$translations.contact.message_label}" required class="form-control grayInput" maxlength="1200" name="contact_msg" id="contact_msg" rows="5">{if $current_form}{$current_form.message}{/if}</textarea>
			</div>
			
			{if $ENABLE_RECAPTCHA}
				{$captcha_html}
				{if $captcha_err}<div class="negative-feedback">{$response_msg}</div>{/if}
			{/if}

			<br />
				<button type="submit" name="submit" id="submit" class="btn btn-primary mbtn"><i class="fa fa-check fa-lg" aria-hidden="true"></i></button>
		</form>

	</div>
</div>




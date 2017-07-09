<div class="form-group">
	<div class="checkbox">
		<label><input name="public_profile" id="public_profile" type="checkbox" onclick="SimpleJobScript.toggleUserForm();"><span class="apply-desc-span opaque fs13">{$translations.apply.save_profile}</span></label>
	</div>
</div>

<div id="userForm" class="displayNone">
	<div class="form-group">
		<label for="xuser_password" class="opaque fs13">{$translations.apply.user_new_passs}</label>
		<input type="password" id="xuser_password" name="xuser_password"  maxlength="50" class="form-control minput" />
		<div id="err-new-pass" class="negative-feedback displayNone">{$translations.login.err_pass_short}</div>
		<div class="textarea-feedback mt5" >{$translations.apply.new_profile_desc}</div>
	</div>
</div>

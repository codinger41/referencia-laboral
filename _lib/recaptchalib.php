<?php

/** captcha functions **/

function recaptcha_get_html ()
{
  return '<div class="captcha-block"><img style="margin-bottom: 10px;" src="data:image/png;base64, {RAW}" /> <br /><label for="captcha">{CAPTCHA_LABEL}</label><input required class="form-control minput" type="text" name="captcha" id="captcha" /></div>';
}

?>
<form method="post" action="{$BASE_URL}cvdb-payment/" role="form">
	<input type="hidden" id="employer_id" name="employer_id" value="{$EMP_ID}" />

	<table id="wrapper" >
		  <tr>
		     <td><h3>2/2</h3></td>
		  </tr>
		  <tr>
		     <td>{$translations.paypal.payment_summary}</td>
		  </tr>
		  <tr>
		     <td><label class="admin-green  mr15">{$translations.invoice.price}</label> {$PRICE_FORMATED}</td>
		  </tr>
		  {if $PRICE_VAT_FORMATED}
		  <tr>
		     <td><label class="admin-green  mr15">{$translations.post_step2.vat}</label> {$PRICE_VAT_FORMATED}</td>
		  </tr>
		  {/if}
		  {if $PRICE_VAT_FORMATED}
		  <tr>
		     <td><label class="admin-green  mr15">{$translations.post_step2.fees}</label> {$PRICE_VAT_TOTAL_FORMATED}</td>
		  </tr>
		  {else}
		  <tr>
		     <td><label class="admin-green  mr15">{$translations.post_step2.fees}</label> {$PRICE_FORMATED}</td>
		  </tr>
		  {/if}
		  <tr>
		  	<td>
		  		<button type="submit" class="btn btn-default btn-primary mbtn" name="submit" id="submit" >{$translations.paypal.pay}</button>
		  	</td>
		  </tr>
	  </table>
  </form>




<!-- REPORT -->
<div id="reportModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">{$translations.detail_sidebar.modal_report}</h4>
        <p class="modal-desc">{$translations.detail_sidebar.modal_report_desc}</p>
      </div>
      <div class="modal-body">
           <form role="form">
              <div class="form-group">
                   <label for="reportarea">{$translations.detail_sidebar.modal_report_reason}</label>
                   <input type="hidden" name="jobid" id="jobid" value="{$job_id}">
                   <textarea maxlength="999" class="form-control" rows="5" id="reportarea" name="reportarea"></textarea>
              </div>
           </form>
           <div id="report-empty" class="negative-feedback displayNone">{$translations.detail_sidebar.modal_feedback_empty}</div>
           <div id="report-positive" class="positive-feedback displayNone">{$translations.detail_sidebar.modal_feedback_pos}</div>
           <div id="report-negative" class="negative-feedback displayNone">{$translations.detail_sidebar.modal_feedback_neg}</div>
      </div>
      <div class="modal-footer">
         <div class="modal-ajax">
          <i id="fspinner" class="displayNone fa fa-refresh fa-spin fa-lg fa-fw refresh-spinner"></i>
         </div>
        <button type="button" class="btn btn-default btn-success mbtn" onclick="SimpleJobScript.ReportSpam();">{$translations.detail_sidebar.modal_submit}</button>
        <button type="button" class="btn btn-default btn-warning  mbtn" data-dismiss="modal">{$translations.job_detail_section.close}</button>
      </div>
    </div>

  </div>
</div>

<!-- EMAIL -->
<div id="emailModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">{$translations.detail_sidebar.modal_emailshare}</h4>
      </div>
      <div class="modal-body">
           <form role="form">
              <div class="form-group">
                  <!--  <label>{$translations.detail_sidebar.modal_email_from}</label> -->
                   <input placeholder="{$translations.detail_sidebar.modal_email_from}" class="form-control minput" required type="email" name="emailfrom" id="emailfrom" >
              </div>
              <div class="form-group">
                   <!-- <label>{$translations.detail_sidebar.modal_email_to}</label> -->
                   <input placeholder="{$translations.detail_sidebar.modal_email_to}" class="form-control minput" required type="email" name="emailto" id="emailto" >
              </div>

             <div class="form-group">
               <textarea maxlength="999" class="form-control" rows="5" id="emailtext" name="emailtext">{$translations.detail_sidebar.modal_email_text}{"\n\n"}{$job_url}</textarea>
             </div>

           </form>
           <div id="email-empty" class="negative-feedback displayNone">{$translations.detail_sidebar.modal_feedback_email_empty}</div>
           <div id="email-positive" class="positive-feedback displayNone">{$translations.detail_sidebar.modal_feedback_email_pos}</div>
           <div id="email-negative" class="negative-feedback displayNone">{$translations.detail_sidebar.modal_feedback_email_neg}</div>
      </div>
      <div class="modal-footer">
        <div class="modal-ajax">
         <i id="tellfriendspinner" class="displayNone fa fa-refresh fa-spin fa-lg fa-fw refresh-spinner"></i>
         </div>
        <button type="button" class="btn btn-default btn-success mbtn" onclick="SimpleJobScript.TellAFriend();">{$translations.detail_sidebar.modal_submit}</button>
        <button type="button" class="btn btn-default btn-warning  mbtn" data-dismiss="modal">{$translations.job_detail_section.close}</button>
      </div>
    </div>

  </div>
</div>
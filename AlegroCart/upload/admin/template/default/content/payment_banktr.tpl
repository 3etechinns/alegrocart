<div class="task">
  <div class="disabled"><img src="template/default/image/insert_disabled.png" alt="<?php echo $button_insert; ?>" class="png"><?php echo $button_insert; ?></div>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="update_form" name="update_form" >
  <div class="enabled" onmouseover="className='hover'" onmouseout="className='enabled'" onclick="getValues();document.getElementById('update_form').submit();"><img src="template/<?php echo $this->directory?>/image/update_enabled.png" alt="<?php echo $button_update; ?>" class="png"><?php echo $button_update; ?></div>
  <input type="hidden" name="<?php echo $cdx;?>" value="<?php echo $validation;?>">
  <input type="hidden" name="update_form" value="1">
  <input type="hidden" name="global_banktr_status" value="">
  <input type="hidden" name="global_banktr_bank_name" value="">
  <input type="hidden" name="global_banktr_owner" value="">
  <input type="hidden" name="global_banktr_ban" value="">
  <input type="hidden" name="global_banktr_iban" value="">
  <input type="hidden" name="global_banktr_swift" value="">
  <input type="hidden" name="global_banktr_geo_zone_id" value="">
  <input type="hidden" name="global_banktr_sort_order" value="">
</form>
  <div class="disabled"><img src="template/default/image/delete_disabled.png" alt="<?php echo $button_delete; ?>" class="png"><?php echo $button_delete; ?></div>
  <div class="enabled" onmouseover="className='hover'" onmouseout="className='enabled'" onclick="document.getElementById('form').submit();"><img src="template/default/image/save_enabled.png" alt="<?php echo $button_save; ?>" class="png"><?php echo $button_save; ?></div>
  <div class="enabled" onmouseover="className='hover'" onmouseout="className='enabled'" onclick="location='<?php echo $cancel; ?>'"><img src="template/default/image/cancel_enabled.png" alt="<?php echo $button_cancel; ?>" class="png"><?php echo $button_cancel; ?></div>
</div>
<?php if ($error) { ?>
<div class="warning"><?php echo $error; ?></div>
<?php } ?>
<?php if ($message) { ?>
<div class="message"><?php echo $message; ?></div>
<?php } ?>
<div class="heading"><?php echo $heading_payment; ?><em><?php echo $heading_title; ?></em>
 <div class="help" onclick="ShowDesc()"><img src="template/<?php echo $this->directory?>/image/help.png" alt="<?php echo $button_help; ?>" title="<?php echo $button_help; ?>" class="png"></div>
</div>
<div class="description"><?php echo $heading_description; ?></div>
<script type="text/javascript" src="javascript/ajax/jquery.js"></script>
<script type="text/javascript" src="javascript/ajax/validateforms.js"></script>
<script type="text/javascript" src="javascript/tab/tab.js"></script>
<link rel="stylesheet" type="text/css" href="javascript/tab/tab.css">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form" name="form">
  <div class="tab" id="tab">
    <div class="tabs"><a><?php echo $tab_general; ?></a></div>
    <div class="pages">
      <div class="page">
        <div class="pad">
          <table>
            <tr>
              <td width="185" class="set"><?php echo $entry_banktr_status; ?></td>
              <td><select name="global_banktr_status">
                  <?php if ($global_banktr_status) { ?>
                  <option value="1" selected><?php echo $text_enabled; ?></option>
                  <option value="0"><?php echo $text_disabled; ?></option>
                  <?php } else { ?>
                  <option value="1"><?php echo $text_enabled; ?></option>
                  <option value="0" selected><?php echo $text_disabled; ?></option>
                  <?php } ?>
                </select></td>
                <td class="expl"><?php echo $explanation_banktr_status; ?></td>
            </tr>
            <tr>
              <td class="set" valign="top"><?php echo $entry_banktr_bank_name; ?></td>
              <td><textarea rows="5" cols="30" name="global_banktr_bank_name"><?php echo $global_banktr_bank_name; ?></textarea>
              <td class="expl" valign="top"><?php echo $explanation_banktr_bank_name; ?></td>
            </tr>
	    <tr>
              <td class="set"><?php echo $entry_banktr_owner; ?></td>
              <td><input class="validate_alpha_num" id="banktr_owner" type="text" size="25" name="global_banktr_owner" value="<?php echo $global_banktr_owner; ?>">
              <td class="expl"><?php echo $explanation_banktr_owner; ?></td>
            </tr>
            <tr>
              <td class="set"><?php echo $entry_banktr_ban; ?></td>
              <td><input class="validate_alpha_num" id="banktr_ban" type="text" size="25" name="global_banktr_ban" value="<?php echo $global_banktr_ban; ?>">
              <td class="expl"><?php echo $explanation_banktr_ban; ?></td>
            </tr>
            <tr>
              <td class="set"><?php echo $entry_banktr_iban; ?></td>
              <td><input class="validate_alpha_num" id="banktr_iban" type="text" size="25" name="global_banktr_iban" value="<?php echo $global_banktr_iban; ?>">
              <td class="expl"><?php echo $explanation_banktr_iban; ?></td>
            </tr>
            <tr>
              <td class="set"><?php echo $entry_banktr_swift; ?></td>
              <td><input class="validate_alpha_num" id="banktr_swift" type="text" size="25" name="global_banktr_swift" value="<?php echo $global_banktr_swift; ?>">
              <td class="expl"><?php echo $explanation_banktr_swift; ?></td>
            </tr>
	    <tr>
              <td width="185" class="set"><?php echo $entry_banktr_geo_zone_id; ?></td>
              <td><select name="global_banktr_geo_zone_id">
                  <option value="0"><?php echo $text_all_zones; ?></option>
                  <?php foreach ($geo_zones as $geo_zone) { ?>
                  <?php if ($geo_zone['geo_zone_id'] == $global_banktr_geo_zone_id) { ?>
                  <option value="<?php echo $geo_zone['geo_zone_id']; ?>" selected><?php echo $geo_zone['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select></td>
                <td class="expl"><?php echo $explanation_banktr_geo_zone_id; ?></td>
            </tr>
            <tr>
              <td class="set"><?php echo $entry_banktr_sort_order; ?></td>
              <td><input class="validate_int" id="banktr_sort_order" type="text" name="global_banktr_sort_order" value="<?php echo $global_banktr_sort_order; ?>" size="1"></td>
              <td class="expl"><?php echo $explanation_banktr_sort_order; ?></td>
            </tr>
          </table>
        </div>
      </div>
    </div>
  </div>
  <input type="hidden" name="<?php echo $cdx;?>" value="<?php echo $validation;?>">
  <script type="text/javascript"><!--
  tabview_initialize('tab');
  //--></script>
  <script type="text/javascript"><!--
    $(document).ready(function() {
	  RegisterValidation();
    });
  //--></script>
  <script type="text/javascript"><!--
	function getValues() {
		document.forms['update_form'].global_banktr_status.value=document.forms['form'].global_banktr_status.value;
		document.forms['update_form'].global_banktr_bank_name.value=document.forms['form'].global_banktr_bank_name.value;
		document.forms['update_form'].global_banktr_owner.value=document.forms['form'].global_banktr_owner.value;
		document.forms['update_form'].global_banktr_ban.value=document.forms['form'].global_banktr_ban.value;
		document.forms['update_form'].global_banktr_iban.value=document.forms['form'].global_banktr_iban.value;
		document.forms['update_form'].global_banktr_swift.value=document.forms['form'].global_banktr_swift.value;
		document.forms['update_form'].global_banktr_geo_zone_id.value=document.forms['form'].global_banktr_geo_zone_id.value;
		document.forms['update_form'].global_banktr_sort_order.value=document.forms['form'].global_banktr_sort_order.value;
	}
  //--></script>
  <script type="text/javascript"><!--
  $(document).ready(function() {
$('.task').each(function(){
    $('.task .disabled').hide();
});
	<?php if (!$help) { ?>
		$('.description').hide(0);
	<?php } ?>
   });
  function ShowDesc(){
	$.ajax({
		type:    'POST',
		url:     'index.php?controller=payment_banktr&action=help',
		async:   false,
		success: function(data) {
			$('.description').toggle('slow');
		}
	});
  }
  //--></script>
</form>

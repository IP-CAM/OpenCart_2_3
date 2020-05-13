<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
  <div class="container-fluid">
  <div class="pull-right">
        <button type="submit" form="form-cs" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
 
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </ul>
  </div>
  </div>
  <div class="container-fluid">
  <?php if (!empty($error_warning)) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
  <?php } ?>
  <!--<div class="warning"><?php echo $error_warning; ?></div> -->
  <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $breadcrumb['text']; ?></h3>
  </div>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" name="form-cmsopencart" id="form-cmsopencart" class="form-horizontal">
 <div class="box">
  
   
<div class="content"> 
       <div class="panel-body">
	   <!-- New Merchant Key -->
	   <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-merchant"><span data-toggle="tooltip" title="<?php echo $help_merchant; ?>"><?php echo $entry_merchant; ?></span></label>
            <div class="col-sm-10">
              <input type="text" name="cmsopencart_cms_merchant" value="<?php echo $cmsopencart_cms_merchant; ?>" placeholder="<?php echo $entry_merchant; ?>" id="cmsopencart_cms_merchant" class="form-control" />
              <?php  if (!empty($error_merchant)) { ?>
              <div class="text-danger"><?php echo $error_merchant; ?></div>
              <?php } ?>
            </div>
          </div> 
		  
		  
		  <!-- New Salt -->
		  <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-workingkey"><span data-toggle="tooltip" title="<?php echo $help_workingkey; ?>"><?php echo $entry_workingkey; ?></span></label>
            <div class="col-sm-10">
              <input type="text" name="cmsopencart_cms_workingkey" value="<?php echo $cmsopencart_cms_workingkey; ?>" placeholder="<?php echo $entry_workingkey; ?>" id="cmsopencart_cms_workingkey" class="form-control" />
              <?php if (!empty($error_workingkey)) { ?>
              <div class="text-danger"><?php echo $error_workingkey; ?></div>
              <?php } ?>
            </div>
          </div>
		  
		  
		  
		<div class="form-group required">
			<label class="col-sm-2 control-label" for="input-partner_name"><span data-toggle="tooltip" title="<?php echo $help_partner_name; ?>"><?php echo $entry_partner_name; ?></span></label>
				<div class="col-sm-10">
				<input type="text" name="cmsopencart_cms_partner_name" value="<?php echo $cmsopencart_cms_partner_name; ?>" placeholder="<?php echo $entry_partner_name; ?>" id="cmsopencart_cms_partner_name" class="form-control" />
				<?php if (!empty($error_partner_name)) { ?>
				<div class="text-danger"><?php echo $error_partner_name; ?></div>
				<?php } ?>
				</div>
		</div>
		  
		  
		<div class="form-group required">
			<label class="col-sm-2 control-label" for="input-partner_id"><span data-toggle="tooltip" title="<?php echo $help_partner_id; ?>"><?php echo $entry_partner_id; ?></span></label>
				<div class="col-sm-10">
				<input type="text" name="cmsopencart_cms_partner_id" value="<?php echo $cmsopencart_cms_partner_id; ?>" placeholder="<?php echo $entry_partner_id; ?>" id="cmsopencart_cms_partner_id" class="form-control" />
				<?php if (!empty($error_partner_id)) { ?>
				<div class="text-danger"><?php echo $error_partner_id; ?></div>
				<?php } ?>
				</div>
		</div>
		
		<!-- New Test Box Starts Here --->
		   <div class="form-group required">
			<label class="col-sm-2 control-label" for="input-partner_testurl"><span data-toggle="tooltip" title="<?php echo $help_partner_testurl; ?>"><?php echo $entry_partner_testurl; ?></span></label>
				<div class="col-sm-10">
				<input type="text" name="cmsopencart_cms_testurl" value="<?php echo $cmsopencart_cms_testurl; ?>" placeholder="<?php echo $entry_partner_testurl; ?>" id="cmsopencart_cms_testurl" class="form-control" />
				<?php if (!empty($error_partner_testurl)) { ?>
				<div class="text-danger"><?php echo $error_partner_testurl; ?></div>
				<?php } ?>
				</div>
		</div>
		
		<div class="form-group required">
			<label class="col-sm-2 control-label" for="input-partner_liveurl"><span data-toggle="tooltip" title="<?php echo $help_partner_liveurl; ?>"><?php echo $entry_partner_liveurl; ?></span></label>
				<div class="col-sm-10">
				<input type="text" name="cmsopencart_cms_liveurl" value="<?php echo $cmsopencart_cms_liveurl; ?>" placeholder="<?php echo $entry_partner_liveurl; ?>" id="cmsopencart_cms_liveurl" class="form-control" />
				<?php if (!empty($error_partner_liveurl)) { ?>
				<div class="text-danger"><?php echo $error_partner_liveurl; ?></div>
				<?php } ?>
				</div>
		</div>
		<!-- New Test Box Ends Here -->
        
       <div class="col-sm-10">             
      </div>
    </div>
  </div>
</div>

 <!--// Common Settings //-->


 <div class="content">
  <div class="panel-body">
        <div class="col-sm-10"> 
        	
          </div>
        
 			<div class="form-group">
            <label class="col-sm-2 control-label" for="input-total"><?php echo $entry_module; ?></label>
              <div class="col-sm-10">
                  <select name="cmsopencart_module" id="cmsopencart_module" class="form-control">
                    <?php $cm=explode('|',$entry_module_id);foreach($cm as $m){?>
                    <?php if ($cmsopencart_module == $m) { ?>
                    <option value="<?php echo $m; ?>" selected><?php echo $m; ?></option>
                    <?php } else { ?>
                       <option value="<?php echo $m; ?>"><?php echo $m; ?></option>
                    <?php }} ?>
                  </select>
              </div>
              <?php if (!empty($error_module)) { ?>
                  <span class="error"><?php echo $error_module; ?></span>
              <?php } ?>
            </div> 
         
       
          
          <!-- <div class="form-group">
            <label class="col-sm-2 control-label" for="input-total"><span data-toggle="tooltip" title="<?php echo $help_currency; ?>"><?php echo $entry_currency; ?></span></label>
            <div class="col-sm-10">
              <input type="text" name="cmsopencart_currency" value="<?php echo $cmsopencart_currency; ?>" placeholder="<?php echo $entry_currency; ?>" id="cmsopencart_currency" size="8" maxlength="3" class="form-control" />
              <?php if (!empty($error_currency)) { ?>
                  <div class="text-danger"><?php echo $error_currency; ?></div>
              <?php } ?>
            </div>
          </div> -->
          
          
          
          <!--order_status-->
          
          <div class="form-group">
             <label class="col-sm-2 control-label" for="input-total"><?php echo $entry_order_status; ?></label>
               <div class="col-sm-10">
                 <select name="cmsopencart_order_status_id" id="cmsopencart_order_status_id" class="form-control">
                    <?php foreach ($order_statuses as $order_status) { ?>
                    <?php if ($order_status['order_status_id'] == $cmsopencart_order_status_id) { ?>
                      <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                    <?php } else { ?>
                      <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                    <?php } ?>
                    <?php } ?>
                 </select>
               </div> 
          </div>
          
          <!--order_status-->          
          
          <!--order_fail_status-->
          
          <div class="form-group">
             <label class="col-sm-2 control-label" for="input-total"><?php echo $entry_order_fail_status; ?></label>
               <div class="col-sm-10">
                 <select name="cmsopencart_order_fail_status_id" id="input-status" class="form-control">
                    <?php foreach ($order_statuses as $order_status) { ?>
                    <?php if ($order_status['order_status_id'] == $cmsopencart_order_fail_status_id) { ?>
                      <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                    <?php } else { ?>
                      <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                    <?php } ?>
                    <?php } ?>
                 </select>
               </div> 
          </div>
          
          <!--order_fail_status-->  
			
			<!--order_cancel_status-->
          
          <div class="form-group">
             <label class="col-sm-2 control-label" for="input-total"><?php echo $entry_order_cancel_status; ?></label>
               <div class="col-sm-10">
                 <select name="cmsopencart_order_cancel_status_id" id="input-status" class="form-control">
                    <?php foreach ($order_statuses as $order_status) { ?>
                    <?php if ($order_status['order_status_id'] == $cmsopencart_order_cancel_status_id) { ?>
                      <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                    <?php } else { ?>
                      <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                    <?php } ?>
                    <?php } ?>
                 </select>
               </div> 
          </div>
          
          <!--order_cancel_status-->
          
          <div class="form-group">
              <label class="col-sm-2 control-label" for="input-total"><?php echo $entry_status; ?></label>
                 <div class="col-sm-10">
                   <select name="cmsopencart_status" id="input-status" class="form-control">
                      <?php if ($cmsopencart_status) { ?>
                         <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                         <option value="0"><?php echo $text_disabled; ?></option>
                      <?php } else { ?>
                         <option value="1"><?php echo $text_enabled; ?></option>
                         <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                      <?php } ?>
                   </select>
                   <?php if (!empty($error_status)) { ?>
                	<div class="text-danger"><?php echo $error_status; ?></div>
            	 	<?php } ?>
                 </div>                  
          </div>
          
        
         
 		</div>
  </div>

 </div> 
   <!--// Common Settings End //-->
<hr />
</form>
<script type="text/javascript">
function routeen()
{
	if( $('input[name=cmsopencart_cms_merchant]').val()==="" || $('input[name=cmsopencart_cms_salt]').val()==="" || $('input[name=cmsopencart_cs_vanityurl]').val()==="" || $('input[name=cmsopencart_cs_access_key]').val()==="" || $('input[name=cmsopencart_cs_secret_key]').val()==="")
	   {		   
		   $('input[name=cmsopencart_route_cs]').attr("readonly", true);
		   $('input[name=cmsopencart_route_cms]').attr("readonly", true);
	   }
	   else {		
	   	   $('input[name=cmsopencart_route_cs]').removeAttr("readonly");
		   $('input[name=cmsopencart_route_cms]').removeAttr("readonly");
	   }
}

$(document).ready(function() { routeen(); });
$('#form-cmsopencart').change(function() { routeen();  });
 
$('#cmsopencart_route_cms').bind('change',function() {
	var val = parseInt(this.value,10);	
	if(val > 100)
	{
		$('input[name=cmsopencart_route_cms]').val(100);
		$('input[name=cmsopencart_route_cs]').val(0);
	}
	else if(val < 0)
	{
		$('input[name=cmsopencart_route_cms]').val(0);
		$('input[name=cmsopencart_route_cs]').val(100);
	}
	else {
		$('input[name=cmsopencart_route_cs]').val(Math.abs(100 - val));	
	}
	
});

$('#cmsopencart_route_cs').bind('change',function() {
	var val = parseInt(this.value,10);	
	if(val > 100)
	{
		$('input[name=cmsopencart_route_cs]').val(100);
		$('input[name=cmsopencart_route_cms]').val(0);		
	}
	else if(val < 0)
	{
		$('input[name=cmsopencart_route_cs]').val(0);
		$('input[name=cmsopencart_route_cms]').val(100);
		
	}
	else {
		$('input[name=cmsopencart_route_cms]').val(Math.abs(100 - val));	
	}
});

</script>
<?php echo $footer; ?>
<?php

JHTML::stylesheet(JUri::root() . 'templates/lady/assets/css/com_jshopping/default.css');
JHTML::stylesheet(JUri::root() . 'templates/lady/assets/css/com_jshopping/checkout.css');

?>

<div class="page-header">
    <div class="category-title menuitem">
        <span class="icon icon-check"></span>
        <span class="content">&nbsp;<?php echo JText::_("TPL_LADY_CHECKOUT_COMPLETE"); ?></span>
    </div>
</div>

<?php print $this->_tmp_ext_html_previewfinish_start?>
<table class = "jshop">
<!--  <tr>-->
<!--    <td>-->
<!--       <strong>--><?php //print _JSHOP_FINISH_DELIVERY_ADRESS ?><!--</strong>: --><?php //if ($this->delivery_info['firma_name']) print $this->delivery_info['firma_name'].", ";?><!-- --><?php //print $this->delivery_info['f_name'] ?><!-- --><?php //print $this->delivery_info['l_name'] ?><!--, --><?php //if ($this->delivery_info['street']) print $this->delivery_info['street'].","; ?><!-- --><?php //if ($this->delivery_info['state']) print $this->delivery_info['state']."," ?><!-- --><?php //print $this->delivery_info['zip']." ".$this->delivery_info['city']." ".$this->delivery_info['country']?>
<!--    </td>-->
<!--  </tr>-->
<?php if (0 && !$this->config->without_shipping){?>
  <tr>
    <td>
       <strong><?php print _JSHOP_FINISH_SHIPPING_METHOD ?></strong>: <?php print $this->sh_method->name ?>
    </td>
  </tr>
<?php } ?>
<?php if (0 && !$this->config->without_payment){?>
  <tr>
    <td>
       <strong><?php print _JSHOP_FINISH_PAYMENT_METHOD ?></strong>: <?php print $this->payment_name ?>
    </td>
  </tr>
<?php } ?> 
</table>

<form name = "form_finish" action = "<?php print $this->action ?>" method = "post">

    <blockquote><small><?php print _JSHOP_ADD_INFO ?></small></blockquote>
    <div style="width:500px; margin: 0 auto">
        <textarea style="width:500px; height:100px" class = "inputbox" id = "order_add_info" name = "order_add_info"></textarea>
    </div>
   <table class = "jshop" align="center" style="width:auto;margin-left:auto;margin-right:auto;">
     <tr>
       <td>
       </td>
     </tr>
     <tr>
        <td>
            <div class="row_agb" style="display: none;">
            <input type = "checkbox" checked="checked" name = "agb" id = "agb" />
            <a class = "policy" href="#" onclick="window.open('<?php print SEFLink('index.php?option=com_jshopping&controller=content&task=view&page=agb&tmpl=component');?>','window','width=800, height=600, scrollbars=yes, status=no, toolbar=no, menubar=no, resizable=yes, location=no');return false;"><?php print _JSHOP_AGB;?></a>
            <?php print _JSHOP_AND;?>
            <a class = "policy" href="#" onclick="window.open('<?php print SEFLink('index.php?option=com_jshopping&controller=content&task=view&page=return_policy&tmpl=component');?>','window','width=800, height=600, scrollbars=yes, status=no, toolbar=no, menubar=no, resizable=yes, location=no');return false;"><?php print _JSHOP_RETURN_POLICY?></a>
            <?php print _JSHOP_CONFIRM;?>        
            </div>
        </td>
     </tr>
     <tr>
       <td style="text-align:center;padding-top:53px;">
		   <input class = "button btn btn-large btn-success" type = "submit" name = "finish_registration" value = "<?php print _JSHOP_ORDER_FINISH ?>" onclick="return checkAGB()" />
       </td>
     </tr>
   </table>
<?php print $this->_tmp_ext_html_previewfinish_end?>
</form>
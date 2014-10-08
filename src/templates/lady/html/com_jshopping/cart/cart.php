<?php 

    JHTML::stylesheet(JUri::root() . 'templates/lady/assets/css/com_jshopping/cart.css'); 
    
    $countprod = count($this->products);
?>

<div class="jshop">

<div class="page-header">
    <div class="category-title menuitem">
        <span class="icon icon-shopping-cart"></span>
        <span class="content"><?php echo JText::_("TPL_LADY_YOUR_CART"); ?></span>
    </div>
</div>    

<form action = "<?php print SEFLink('index.php?option=com_jshopping&controller=cart&task=refresh')?>" method = "post" name = "updateCart">
<?php print $this->_tmp_ext_html_cart_start?>
    
<?php if($countprod > 0) : ?>    
<table class = "jshop cart table table-striped table-bordered table-hover">
  <tr>
    <th width = "20%">
      <?php print _JSHOP_IMAGE?>
    </th>
    <th>
      <?php print _JSHOP_ITEM?>
    </th>    
    <th width = "15%">
      <?php print _JSHOP_SINGLEPRICE ?>
    </th>
    <th width = "15%">
      <?php print _JSHOP_NUMBER ?>
      &nbsp;<img style = "cursor:pointer" src = "<?php print $this->image_path ?>/images/save.png" title = "<?php print _JSHOP_UPDATE_CART ?>" alt = "<?php print _JSHOP_UPDATE_CART ?>" onclick = "document.updateCart.submit();" /></th>
    </th>
    <th width = "15%">
      <?php print _JSHOP_PRICE_TOTAL ?>
    </th>
    <th width = "10%">
      <?php print _JSHOP_REMOVE ?>
    </th>
  </tr>
  <?php 
  $i=1; 
  foreach($this->products as $key_id=>$prod){
  ?> 
  <tr class = "jshop_prod_cart <?php if ($i%2==0) print "even"; else print "odd"?>">
    <td class = "jshop_img_description_center">
      <a href = "<?php print $prod['href']; ?>">
        <img src = "<?php print $this->image_product_path ?>/<?php if ($prod['thumb_image']) print $prod['thumb_image']; else print $this->no_image; ?>" alt = "<?php print htmlspecialchars($prod['product_name']);?>" class = "jshop_img" />
      </a>
    </td>
    <td style="text-align:left">
        <?php print $prod['product_name'];?>
        <?php if ($this->config->show_product_code_in_cart) print "<span class='jshop_code_prod'>(".$prod['ean'].")</span>";?>
                
        <?php print sprintAtributeInCart($prod['attributes_value']);?>
        <?php print sprintFreeAtributeInCart($prod['free_attributes_value']);?>
        <?php print $prod['_ext_attribute_html']?>
    </td>    
    <td>
        <?php print formatprice($prod['price'])?>
        <?php print $prod['_ext_price_html']?>
        <?php if ($this->config->show_tax_product_in_cart && $prod['tax']>0){?>
            <span class="taxinfo"><?php print productTaxInfo($prod['tax']);?></span>
        <?php }?>
    </td>
    <td>
      <input type = "text" name = "quantity[<?php print $key_id ?>]" value = "<?php print $prod['quantity'] ?>" class = "inputbox" style = "width: 25px" />
      <?php print $prod['_qty_unit'];?>
    </td>
    <td>
        <?php print formatprice($prod['price']*$prod['quantity']); ?>
        <?php print $prod['_ext_price_total_html']?>
        <?php if ($this->config->show_tax_product_in_cart && $prod['tax']>0){?>
            <span class="taxinfo"><?php print productTaxInfo($prod['tax']);?></span>
        <?php }?>
    </td>
    <td>
      <a href = "<?php print $prod['href_delete'] ?>" onclick="return confirm('<?php print _JSHOP_CONFIRM_REMOVE?>')"><img src = "<?php print $this->image_path ?>images/remove.png" alt = "<?php print _JSHOP_DELETE?>" title = "<?php print _JSHOP_DELETE?>" /></a>
    </td>
  </tr>
  <?php 
  $i++;
  } 
  ?>
  </table>
  
  <?php if ($this->config->show_weight_order){?>  
    <div class="weightorder">
        <?php print _JSHOP_WEIGHT_PRODUCTS?>: <span><?php print formatweight($this->weight);?></span>
    </div>
  <?php }?>
  
  <?php if ($this->config->summ_null_shipping>0){?>
    <div class="shippingfree">
        <?php printf(_JSHOP_FROM_PRICE_SHIPPING_FREE, formatprice($this->config->summ_null_shipping, null, 1));?>
    </div>
  <?php } ?> 
  
<!--<table class = "jshop jshop_subtotal pull-right">
  <?php if (!$this->hide_subtotal){?>
  <tr class="success">
    <td class = "name">
      <?php print _JSHOP_SUBTOTAL ?>
    </td>
    <td class = "value">
      <?php print formatprice($this->summ);?><?php print $this->_tmp_ext_subtotal?>
    </td>
  </tr>
  <?php } ?>
  <?php if ($this->discount > 0){ ?>
  <tr class="success">
    <td class = "name">
      <?php print _JSHOP_RABATT_VALUE ?>
    </td>
    <td class = "value">
      <?php print formatprice(-$this->discount);?><?php print $this->_tmp_ext_discount?>
    </td>
  </tr>
  <?php } ?>
  <?php if (!$this->config->hide_tax){?>
  <?php foreach($this->tax_list as $percent=>$value){ ?>
  <tr class="success">
    <td class = "name">
      <?php print displayTotalCartTaxName();?>
      <?php if ($this->show_percent_tax) print formattax($percent)."%"?>
    </td>
    <td class = "value">
      <?php print formatprice($value);?><?php print $this->_tmp_ext_tax[$percent]?>
    </td>
  </tr>
  <?php } ?>
  <?php } ?>
  <tr class="success">
    <td class = "name">
      <?php print _JSHOP_PRICE_TOTAL ?>
    </td>
    <td class = "value">
      <?php print formatprice($this->fullsumm)?><?php print $this->_tmp_ext_total?>
    </td>
  </tr>
  <?php if ($this->config->show_plus_shipping_in_product){?>  
  <tr class="success">
    <td colspan="2" align="right">    
        <span class="plusshippinginfo"><?php print sprintf(_JSHOP_PLUS_SHIPPING, $this->shippinginfo);?></span>  
    </td>
  </tr>
  <?php }?>
  <?php if ($this->free_discount > 0){?>  
  <tr class="success">
    <td colspan="2" align="right">    
        <span class="free_discount"><?php print _JSHOP_FREE_DISCOUNT;?>: <?php print formatprice($this->free_discount); ?></span>  
    </td>
  </tr>
  <?php }?>  
</table>-->

<div id="price-total" class="pull-right span3">
    <span class="">
      <?php print _JSHOP_PRICE_TOTAL ?>
    </span>
    <span class="badge badge-warning">
      <?php print formatprice($this->fullsumm)?><?php print $this->_tmp_ext_total?>
    </span>
</div>  

<?php else: ?>    
    <h3 style="text-align:center;display: block;"><?php echo JText::_('TPL_LADY_CART_IS_EMPTY'); ?></h3>
<?php endif; ?>    
    
<div class="control-panel">  
  <div class="back">
      <a class="btn btn-large" href = "<?php print $this->href_shop ?>">
         <?php print _JSHOP_BACK_TO_SHOP ?>
       </a>
  </div>
  <?php if($countprod > 0) : ?>    
  <div class="next">
       <a class="btn btn-success btn-large" href = "<?php print $this->href_checkout ?>">
         <?php print _JSHOP_CHECKOUT ?>
       </a>
  </div>
  <?php endif; ?>    
</div> 
      
</form>

<?php print $this->_tmp_ext_html_before_discount?>
<?php if ($this->use_rabatt){ ?>
<br /><br />
<form name = "rabatt" method = "post" action = "<?php print SEFLink('index.php?option=com_jshopping&controller=cart&task=discountsave')?>">
<table class = "jshop">
  <tr>
    <td>
      <?php print _JSHOP_RABATT ?>
      <input type = "text" class = "inputbox" name = "rabatt" value = "" />
      <input type = "submit" class = "button" value = "<?php print _JSHOP_RABATT_ACTIVE ?>" />
    </td>
  </tr>
</table>
</form>
<?php }?>
</div>
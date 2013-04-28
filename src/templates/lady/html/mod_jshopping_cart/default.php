<div id="jshop_module_cart">
    <div class="btn-group">
      <a class="dropdown-toggle" data-toggle="dropdown" href="#">
        <span class="cart-white"></span><span class="count"><?php echo $cart->count_product; ?></span>
      </a>
      <div class="dropdown-menu">
          <div class="pull-left">
            <?php print JText::_('PRODUCTS')?>:&nbsp;<span id = "jshop_quantity_products"><b><?php print $cart->count_product?></b></span>
          </div>
          <div class="pull-right">
              <span class="label label-success" id = "jshop_summ_product"><?php print formatprice($cart->getSum(0,1))?></span>
          </div>    
          <br/><br/>
          <div class="pull-right">
            <a class="btn" href = "<?php print SEFLink('index.php?option=com_jshopping&controller=cart&task=view', 1)?>"><?php print JText::_('GO_TO_CART'); ?>>></a>
          </div>  
      </div>
    </div>    
</div>
<?php
JHTML::stylesheet('templates/lady/assets/css/com_jshopping/default.css');
?>

<div id="jshop-products-list" class="tiles"><!-- details|tiles|blog -->
    <?php if (count($this->rows) > 0) {
        $i=0;
        foreach ($this->rows as $k=>$product){ 
            // Fix menu item id
            $itemid = JRequest::getVar('Itemid');
            preg_replace('/Itemid\=[0-9]+/', 'Itemid='.$itemid, $subject)
    ?>
        <div class="item grid-2col-item<?php echo $i % 2; ?> grid-3col-item<?php echo $i % 3; ?>  grid-4col-item<?php echo $i % 4; ?>">

            <a class="image nonlink" href="<?php print $product->product_link; ?>">
<!--                <span class="shadow"></span>-->
                <img src="<?php print $product->image; ?>" alt="<?php print htmlspecialchars($product->name); ?>" />
            </a>    

            <div class="title">
                <a class="nonlink" href="<?php print $product->product_link; ?>">
                    <?php print $product->name; ?>
                </a>    
            </div>

            <div class="thin-line"></div>
            <div class="description-short">
                <?php echo $product->short_description; ?>
            </div>
            <?php if ($product->_display_price){?>
            <div class="price">
                <span class="icon icon-tag"></span>
                <span class="value">
                    <?php if ($this->config->product_list_show_price_description) print _JSHOP_PRICE.": ";?>
                    <?php if ($product->show_price_from) print _JSHOP_FROM." ";?>
                    <?php print formatprice($product->product_price);?>
                </span>     
            </div>
            <?php }?>
        </div>
        <?php 
            $i++; 
        } } else { ?>

        <h3 style="text-align:center;display: block;"><?php echo JText::_('TPL_LADY_CATEGORY_IS_EMPTY'); ?></h3>

<?php } ?>
</div>

<div class = "product <?php echo $productClass; ?>  grid-2col-item<?php echo $i % 2; ?>  grid-3col-item<?php echo $i % 3; ?>">

    <a class="nonlink" href="<?php print $product->product_link; ?>">
        <img class="image" src="<?php print $product->image; ?>" alt="<?php print htmlspecialchars($product->name); ?>" />
    </a>    

    <h2 class="title">
        <a class="nonlink" href="<?php print $product->product_link; ?>">
            <?php print $product->name; ?>
        </a>    
    </h2>
        
    <div class="thin-line"></div>
    <p class="description-short">
        <?php echo $product->short_description; ?>
    </p>
    <?php if ($product->_display_price){?>
    <p class="price">
        <span class="value">
            <?php if ($this->config->product_list_show_price_description) print _JSHOP_PRICE.": ";?>
            <?php if ($product->show_price_from) print _JSHOP_FROM." ";?>
            <?php print formatprice($product->product_price);?>
        </span>     
    </p>
    <?php }?>
</div>
    

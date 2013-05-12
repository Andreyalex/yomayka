<div class="jshop-topbar">

    <div class="submenu">
        <?php 
            $modules = JModuleHelper::getModules('jshopping-submenu');
            echo JModuleHelper::renderModule($modules[0]);
        ?>
    </div>
    
    <?php 
    $currentMenu = JFactory::getApplication()->getMenu()->getActive(); 
    ?>
    
    <a class="category-title menuitem alias-<?php echo $currentMenu->alias; ?>" onclick="jQuery('.jshop-topbar').toggleClass('open');">
        <span class="icon"></span>
        <h2 class="content"><?php echo $currentMenu->title; ?></h2>
        <!--<span class="nonlink iconfont control" ></span>-->
    </a>
</div>
    
<div id="jshop-products-list">    
    <?php if (count($this->rows)) { 
        $i=0;
        foreach ($this->rows as $k=>$product){ ?>
        <div class="item grid-2col-item<?php echo $i % 2; ?> grid-3col-item<?php echo $i % 3; ?>">

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
        <?php 
            $i++; 
        } } ?>
</div>

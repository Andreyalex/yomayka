<?php
defined('_JEXEC') or die;
?>
<div id="carousel" class="slideshow">
    <div class="inner">
        <?php $i=0; foreach($items as $item) { ?>
        <div class="item<?php echo $i==0? ' active': ''; ?>">
            <div class="inner">
                <div class="title"><?php echo $item[0]->category_title; ?></div>
                <?php foreach($item as $product) { ?>
                    <div class="img"><img src="<?php echo '/media/com_yoshop/content/product/images/' . $product->image ?>"></div>
                <?php } ?>
            </div>
        </div>
        <?php $i++; } ?>
    </div>
</div>

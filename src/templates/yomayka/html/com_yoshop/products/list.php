<?php

    defined('_JEXEC') or die;

    if (count($this->items) > 0) {
        foreach ($this->items as $k=>$row){
            $product = $row->data;
?>
            <div class="item" data-id="<?php echo $product->id; ?>">

                <div class="inner">

                    <a class="image" href="<?php print $product->link; ?>">
                        <img src="<?php print YOSHOP_PRODUCT_MEDIA_BASEURL . '/' . $product->image_prev; ?>" alt="<?php print htmlspecialchars($product->name); ?>" />
                    </a>

                    <div class="title">
                        <a class="nonlink" href="<?php print $product->link; ?>">
                            <?php print $product->name; ?>
                        </a>
                    </div>

                    <div class="thin-line"></div>
                    <div class="description-short">
                        <?php echo $product->description; ?>
                    </div>

                    <?php if ($product->price_base) { ?>
                        <div class="price">
                            <span class="icon icon-tag"></span>
                            <span class="value">
                                <?php print $product->price_base; ?>
                            </span>
                        </div>
                    <?php } ?>
                </div>
            </div>
<?php
            $i++;
        }
    }
?>
<?php defined('_JEXEC') or die;

if (count($this->products) > 0) {
    foreach ($this->products as $k => $row) {
        $productData = $row->data;
        $media = $productData->media[0]->data->path_prev;
        $acive = $productData->state == 1? 1:0;
        $editUrl = YoRoute::_('yoshop:product.edit:'.$productData->id);
        ?>
        <div class="item" data-id="<?php echo $productData->id; ?>">
            <div class="inner">
                <div class="title">
                    <a class="nonlink" href="<?php echo $editUrl ?>">
                        <?php print $productData->name; ?>
                    </a>
                </div>
                <a class="image" href="<?php echo $editUrl ?>">
                    <img src="<?php print YOSHOP_PRODUCT_MEDIA_BASEURL . '/' . $media; ?>" alt="<?php print htmlspecialchars($productData->name); ?>" />
                </a>

                <div class="cpanel">
                    <a class="btn btn-default glyphicon glyphicon-arrow-up" href="<?php echo 'component/users/product/'.$productData->id; ?>"></a>
                    <a class="btn btn-default glyphicon glyphicon-edit" href="<?php echo $editUrl ?>"></a>
                    <button
                        class="btn btn-danger glyphicon glyphicon-trash"
                        data-event="click:product.delete"
                        data-behavior="confirm:<?php echo JText::_('Действительно удалить')." {$productData->name}?"; ?>"
                        data-id="<?php echo $productData->id;?>"
                    >
                    </button>
                    <button
                        class="btn btn-default glyphicon glyphicon-off <?=$acive?'active':''?>"
                        data-toggle="button"
                        data-event="click:product.publish"
                        data-behavior="toggle:0,1:<?=$acive?>"
                        data-id="<?php echo $productData->id;?>"
                    >
                    </button>
                    <div class="stats" style="color:#888888">
                        <span><?php echo YoshopHelperProduct::printViewsCount($productData); ?><span>
                        &nbsp;&nbsp;
                        <span><?php echo YoshopHelperProduct::printMessagesCount($productData); ?><span>
                        &nbsp;&nbsp;
                        <span><?php echo YoshopHelperProduct::printFavoritesCount($productData); ?><span>
                    </div>
                </div>
            </div>
        </div>
        <?php
    }
}

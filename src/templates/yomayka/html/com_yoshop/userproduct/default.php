<?php

    defined('_JEXEC') or die;


    YoshopHelperHtml::addStylesheet('product/default.css');
    YoshopHelperHtml::initJsApp('product/default');

    //Load admin language file
    $lang = JFactory::getLanguage();
    $lang->load('com_yoshop', JPATH_ADMINISTRATOR);
    $canEdit = JFactory::getUser()->authorise('core.edit', 'com_yoshop');
    if (!$canEdit && JFactory::getUser()->authorise('core.edit.own', 'com_yoshop')) {
        $canEdit = JFactory::getUser()->id == $this->item->created_by;
    }

    $product = $this->product->data;

    $carouselFullWidth =
        empty($product->name) &&
        empty($product->description) &&
        empty($product->price_base);

    if(!empty($product->name)) {
        echo YoshopHelperHtml::renderTitle($product->name);
    }

    ob_start();
?>
    <div class="clearfix"></div>

    <a  class="btn btn-default"
        href="<?php echo JRoute::_('index.php?option=com_users&view=products'); ?>"
        >
        <?php echo JText::_("COM_USERS_BACK"); ?>
    </a>

    <?php if ($product) { ?>
        <a  class="btn btn-success"
            href="<?php echo JRoute::_('index.php?option=com_users&view=product').'/'.$this->id.'?layout=edit'; ?>"
            >
            <?php echo JText::_("COM_USERS_EDIT"); ?>
        </a>
    <?php } ?>

    <div id="yoshop-product">
        <?php if ($product) { ?>

            <div id="myCarousel" class="carousel slide <?php echo $carouselFullWidth? 'fullwidth':'';?>">
                <div class="carousel-inner">
                    <?php
                    $media = $product->media;
                    for($i=0; $i < count($media); $i++) { ?>
                        <div class="item<?php echo !$i? ' active':'' ?>">
                            <?php echo YoshopHelperHtml::renderMedia($media[$i]->data); ?>
                        </div>
                        <?php $i++; } ?>
                </div>
                <!-- Carousel nav -->
                <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
            </div>


            <div class="details">
                <?php if(!empty($product->data->name)) { ?>
                    <div class="title"><h1><?php echo $this->escape($product->data->name); ?></h1></div>
                <?php } ?>

                <div class="share shareinit"></div>

                <?php if(!empty($product->data->description)) { ?>
                    <div class="description"><?php echo $this->escape($product->data->description); ?></div>
                <?php } ?>

            </div>

            <div class="comments" style="clear:both">{comments}</div>

        <?php } ?>
    </div>

<?php
    $content = ob_get_clean();
    include __DIR__.'/../../panel.php';

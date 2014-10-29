<?php
/**
 * @version     0.5
 * @package     com_yoshop
 * @copyright   © 2013. Все права защищены.
 * @license     GNU General Public License версии 2 или более поздней; Смотрите LICENSE.txt
 * @author      Andreyalek <andreyalek@gmail.com> - http://
 */
// no direct access
defined('_JEXEC') or die;

YoshopHelperHtml::addStylesheet('product.css');

YoshopHelperHtml::initJsApp('product/default');

//Load admin language file
$lang = JFactory::getLanguage();
$lang->load('com_yoshop', JPATH_ADMINISTRATOR);
$canEdit = JFactory::getUser()->authorise('core.edit', 'com_yoshop');
if (!$canEdit && JFactory::getUser()->authorise('core.edit.own', 'com_yoshop')) {
    $canEdit = JFactory::getUser()->id == $this->item->created_by;
}

$product = $this->product;

$carouselFullWidth =
    empty($product->name) &&
    empty($product->description) &&
    empty($product->price_base);

if(!empty($product->name)) {
    echo YoshopHelperHtml::renderTitle($product->name);
}
?>

<div id="yoshop-product">
    <?php if ($product) { ?>

        <div id="myCarousel" class="carousel slide <?php echo $carouselFullWidth? 'fullwidth':'';?>">
            <div class="carousel-inner">
                <?php for($i=0; $i < count($product->media); $i++) { ?>
                    <div class="item<?php echo !$i? ' active':'' ?>">
                        <?php echo YoshopHelperHtml::renderMedia($product->media[$i]); ?>
                    </div>
                    <?php $i++; } ?>
            </div>
            <!-- Carousel nav -->
            <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
            <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
        </div>


        <div class="details">
            <?php if(!empty($product->name)) { ?>
                <div class="title"><h1><?php echo $this->escape($product->name); ?></h1></div>
            <?php } ?>

            <div class="share shareinit"></div>

            <?php if(!empty($product->description)) { ?>
                <div class="description"><?php echo $this->escape($product->description); ?></div>
            <?php } ?>

            <?php if(!empty($product->price_base)) { ?>
                <div class="price">
                    <span class="pull-left btn btn-large btn-success cart cart-add" data-cart-action="add" data-id="<?php echo $product->id; ?>" style="<?php echo $this->isInCart? 'display:none;':''?>" >
                        <i class="icon-shopping-cart"></i>&nbsp;
                        <?php echo JText::_('COM_YOSHOP_ADD_TO_CART');?>
                    </span>
                    <span class="pull-left btn btn-large btn-info cart cart-remove" data-cart-action="remove" data-id="<?php echo $product->id; ?>" style="<?php echo !$this->isInCart? 'display:none;':''?>" >
                        <i class="icon-shopping-cart"></i>&nbsp;
                        <?php echo JText::_('COM_YOSHOP_REMOVE_FROM_CART');?>
                    </span>
                    <!--                    <span class="cart cart-add" <i class="icon-shopping-cart"></i></span>-->
                    <!--                    <span class="cart cart-remove" >-->

                    <span class="icon-tag"></span><span><?php echo $this->escape($product->price_base); ?>грн</span></div>
            <?php } ?>
        </div>

        <div class="comments" style="clear:both">{comments}</div>

    <?php } ?>
</div>
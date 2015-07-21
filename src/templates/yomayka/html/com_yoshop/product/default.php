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

YoViewHelperHtml::initJsApp();

$product = $this->product->data;

if(!empty($product->name)) {
    echo YoViewHelperHtml::renderTitle($product->name);
}
?>

<div id="yoshop-product">
    <?php if ($product) { ?>

        <div id="wrapper-carousel">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner" role="listbox">
                    <?php $i=0; foreach($product->media as $media) { ?>
                        <div class="item<?php echo !$i? ' active':'' ?>">
                            <?php echo YoViewHelperHtml::renderMedia($media->data, array('target' => true)); ?>
                        </div>
                    <?php $i++; } ?>
                </div>
                <!-- Carousel nav -->
                <a class="carousel-control left" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control right" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>

        <div class="details">
            <?php if(!empty($product->name)) { ?>
                <div class="title"><h1><?php echo $this->escape($product->name); ?></h1></div>
            <?php } ?>

            <div class="share shareinit"></div>

            <?php if(!empty($product->description)) { ?>
                <div class="description"><?php echo $this->escape($product->description); ?></div>
            <?php } ?>

            <span class="pull-left btn btn-large btn-success cart cart-add" data-cart-action="add" data-id="<?php echo $product->id; ?>" style="<?php echo $this->isInCart? 'display:none;':''?>" >
                <i class="icon-star"></i>&nbsp;
                <?php echo JText::_('COM_YOSHOP_ADD_TO_FAVORITES');?>
            </span>

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

        <div id="conversation" style="clear:both">

        </div>

    <?php } ?>
</div>

<script>
    window.requireJsAppInit = function(){
        require(['jquery', 'yo', 'share', 'cart', 'modal', 'messenger', 'message'], function($, Yo, Share, Cart, Modal, Messenger, Message)
        {
            $(document).ready(function(){

                new Message({
                    'appendToBottom': '#conversation',
                    'url': 'post json'
                })

                Yo.setShared('messenger', new Messenger())

                Share();

                var modal = new Modal({
                    domNode: '#modal-fullscreen',
                    itemsContainer: '#myCarousel'
                });



                var cart = new Cart({
                    domNode:  '#apex .modrole-cart .count',
                    products: '#yoshop-products-list .item',
                    data:     window.yoshopJsData,
                    onSuccess: function (action){
                        action == 'added'?
                            $('#yoshop-product .cart-add').hide() + $('#yoshop-product .cart-remove').show() :
                            $('#yoshop-product .cart-add').show() + $('#yoshop-product .cart-remove').hide();
                    }
                });

            })
        })
    }
</script>
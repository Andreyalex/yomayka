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

YoshopHelperHtml::addStylesheet('product/default_modal.css');
?>

<div id="yoshop-product">
<div style="height:5%"></div>
<?php if ($this->product) { ?>

    <div id="myCarousel" class="carousel slide">
        <div class="carousel-inner">
            <?php for($i=0; $i < count($this->product->media); $i++) { ?>
            <div class="item<?php echo !$i? ' active':'' ?>">
                <?php echo YoshopHelperHtml::renderMedia($this->product->media[$i]); ?>
            </div>
            <?php $i++; } ?>
        </div>
        <!-- Carousel nav -->
        <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
        <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
    </div>
<!--
    <div class="details">

        <?php if(!empty($this->product->name)) { ?>
        <div class="title"><?php echo $this->escape($this->product->name); ?></div>
        <?php } ?>

        <?php if(!empty($this->product->description)) { ?>
        <div class="description"><?php echo $this->escape($this->product->description); ?></div>
        <?php } ?>


    </div>
-->
    <?php if(!empty($this->product->price_base)) { ?>
        <div class="price"><span class="icon-tag"></span><span><?php echo $this->escape($this->product->price_base); ?>грн</span></div>
    <?php } ?>

<?php } ?>
</div>

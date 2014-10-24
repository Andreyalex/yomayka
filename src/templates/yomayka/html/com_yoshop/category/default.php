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

YoViewHelperHtml::addStylesheet('category/category.css');
YoViewHelperHtml::initJsApp('/templates/yomayka/html/com_yoshop/category/default.js');
?>

<?php echo YoshopHelperHtml::renderTitle($this->category); ?>

<div id="yoshop-products-list" class="tiles">
    <?php if (count($this->products) > 0) {
        $i=0;
        foreach ($this->products as $k=>$row){
            $product = $row->data;
            ?>
            <div class="item grid-2col-item<?php echo $i % 2; ?> grid-3col-item<?php echo $i % 3; ?>  grid-4col-item<?php echo $i % 4; ?>" data-id="<?php echo $product->id; ?>">

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

    } else { ?>
        <h3 style="text-align:center;display: block;">
            <?php echo JText::_('COM_YOSHOP_CATEGORY_IS_EMPTY'); ?>
        </h3>
    <?php } ?>

</div>

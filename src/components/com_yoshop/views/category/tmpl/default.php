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

//JHTML::script('templates/lady/assets/js/yo.js');

YoshopHelperHtml::addStylesheet('category/category.css');

YoshopHelperHtml::initJsApp(
    'category/default',
    $this->cartState
);

//Load admin language file
$lang = JFactory::getLanguage();
$lang->load('com_yoshop', JPATH_ADMINISTRATOR);
$canEdit = JFactory::getUser()->authorise('core.edit', 'com_yoshop');
if (!$canEdit && JFactory::getUser()->authorise('core.edit.own', 'com_yoshop')) {
	$canEdit = JFactory::getUser()->id == $this->item->created_by;
}

?>

<?php echo YoshopHelperHtml::renderTitle($this->category); ?>

<div id="yoshop-products-list" class="tiles">
    <?php if (count($this->products) > 0) {
        $i=0;
        foreach ($this->products as $k=>$product){ ?>
            <div class="item <?php echo in_array($product->id, $this->cartIds)? 'in-cart':''; ?> grid-2col-item<?php echo $i % 2; ?> grid-3col-item<?php echo $i % 3; ?>  grid-4col-item<?php echo $i % 4; ?>" data-id="<?php echo $product->id; ?>">

                <div class="inner">

                    <a class="image" href="<?php print $product->link; ?>">
                        <img src="<?php print YOSHOP_PRODUCT_MEDIA_BASEURL . '/' . $product->media[0]->path_prev; ?>" alt="<?php print htmlspecialchars($product->name); ?>" />
                    </a>

                    <span class="cart cart-add" data-cart-action="add" data-id="<?php echo $product->id; ?>"><i class="icon-shopping-cart"></i></span>
                    <span class="cart cart-remove" data-cart-action="remove" data-id="<?php echo $product->id; ?>">
                          <i class="icon-shopping-cart"></i>
                          <i class="icon-ok icon-stack-base text-success"></i>
                    </span>

                    <div class="title">
                        <a class="nonlink" href="<?php print $product->link; ?>">
                            <?php print $product->name; ?>
                        </a>
                    </div>

                    <div class="thin-line"></div>
                    <div class="description-short">
                        <?php echo $product->description; ?>
                    </div>

                    <?php if ($product->price_base){?>
                    <div class="price">
                        <span class="icon icon-tag"></span>
                        <span class="value">
                            <?php print $product->price_base; ?>
                        </span>
                    </div>
                    <?php }?>
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

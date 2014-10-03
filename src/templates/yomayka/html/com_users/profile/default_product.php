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

JHtml::stylesheet(JUri::base().'/templates/yomayka/html/com_users/profile/default.css');

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
        </div>

    <?php } ?>

    <form class="form-horizontal form-validate" role="form" id="member-registration" action="<?php echo JRoute::_('index.php'); ?>" method="post" enctype="multipart/form-data">

        <?php foreach ($this->productForm->getFieldsets() as $fieldset) { // Iterate through the form fieldsets and display each one.?>
            <?php $fields = (array) $this->productForm->getFieldset($fieldset->name);?>
            <?php foreach ($fields as $field) {// Iterate through the fields in the set and display them.?>
                <?php if (!$field->hidden) {// If the field is hidden, just display the input.?>
                    <?php echo YoViewHelperHtml::renderFormElement($field); ?>
                <?php } else { ?>
                    <?php echo $field->input;?>
                <?php } ?>
            <?php } ?>
        <?php } ?>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default"><?php echo JText::_('JREGISTER');?></button>
                <a class="btn" href="<?php echo JRoute::_('');?>" title="<?php echo JText::_('JCANCEL');?>"><?php echo JText::_('JCANCEL');?></a>
            </div>
        </div>

        <?php echo YoViewHelperHtml::renderFormAssets('yoshop.product.save', $this->productForm->getValue('return')); ?>

    </form>

</div>
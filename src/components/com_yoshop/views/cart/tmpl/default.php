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

JHTML::_('behavior.formvalidation');
YoshopHelperHtml::addStylesheet('cart/cart.css');

YoshopHelperHtml::initJsApp(
    'cart/default',
    array(
        'returnUrl' => $this->returnUrl
));

$doc = JFactory::getDocument();

//Load admin language file
$lang = JFactory::getLanguage();
$lang->load('com_yoshop', JPATH_ADMINISTRATOR);
$canEdit = JFactory::getUser()->authorise('core.edit', 'com_yoshop');
if (!$canEdit && JFactory::getUser()->authorise('core.edit.own', 'com_yoshop')) {
	$canEdit = JFactory::getUser()->id == $this->item->created_by;
}
?>

<?php echo YoshopHelperHtml::renderTitle(array(
    'link' => '#', 'alias' => 'cart', 'title' => JText::_('COM_YOSHOP_CART')
)); ?>

<div id="yoshop-cart" class="active-step<?php echo $this->form->step; ?>">
<?php if ($this->count > 0) { ?>

    <div class="summary hero-unit span3">
        <div class="price"><div class="text"><?php echo JText::_('COM_YOSHOP_TOTAL_FINAL_PRICE'); ?></div><span><?php echo YoshopHelperHtml::renderPrice((int)$this->price); ?></div>
    </div>

    <div class="form-multistep">
        <div class="step1">
            <div class="products-list widget-cart">
                <table class="table table-bordered table-striped">
                <?php
                /** @var $item YoshopModelCartitem */
                foreach($this->products as $item) { ?>
                    <tr data-id="<?php echo $item->product->id; ?>">
                        <td><?php echo YoshopHelperHtml::renderMedia($item->product->media[0], array('link'=> $item->product->link, 'size' => 'preview')); ?></td>
<!--                        <td class="price">--><?php //echo YoshopHelperHtml::renderPrice($item->product->price_base); ?><!--</td>-->
<!--                        <td class="count">--><?php //echo YoshopHelperHtml::renderCount($item->count); ?><!--</td>-->
                        <td class="totalPrice"><?php echo YoshopHelperHtml::renderPrice($item->getTotalPrice()); ?></td>
                        <td class="removeAction"><span class="clickable icon icon-remove action action-remove"></span></td>
                    </tr>
                <?php } ?>
                </table>
            </div>

            <div class="ctrls">
                <button class="span3 btn btn-large btn-success next"><?php echo JText::_('COM_YOSHOP_CART_PROCEED'); ?></button>
            </div>
        </div>

        <div class="step2" style="display:none">

            <?php
            $doc->customMessages = true;
            echo $doc->loadRenderer('message')->render(null); ?>

            <form class="form form-horizontal form-validate" method="post" action="<?php echo JRoute::_('index.php?option=com_yoshop', false); ?>">
                <?php echo YoshopHelperHtml::renderFormElement($this->form->getField('name')); ?><br/>
                <?php echo YoshopHelperHtml::renderFormElement($this->form->getField('email')); ?><br/>
                <?php echo YoshopHelperHtml::renderFormElement($this->form->getField('phone')); ?><br/>
                <?php echo YoshopHelperHtml::renderFormElement($this->form->getField('description')); ?>
                <input type="hidden" name="task" value="order.create" />
                <?php echo JHtml::_('form.token'); ?>

                <div class="ctrls">
                    <button class="btn btn-large btn-info prev span3"><?php echo JText::_('COM_YOSHOP_CART_BACK'); ?></button>
                    <button class="btn btn-large btn-success submit span3"><?php echo JText::_('COM_YOSHOP_CART_COMPLETE_ORDER'); ?></button>
                </div>
            </form>
        </div>
        <div class="step3" style="display:none">
            <div class="page-message"><?php echo JText::_('COM_YOSHOP_ORDER_SUCCESSFULLY_CREATED'); ?></div>
            <div class="page-message"><?php echo JText::_('COM_YOSHOP_WE_WILL_FIND_YOU_SOON'); ?></div>
            <div class="ctrls">
                <button class="btn btn-large btn-success finish span3"><?php echo JText::_('COM_YOSHOP_CART_BACK'); ?></button>
            </div>
        </div>
    </div>

<?php } else { ?>
    <h3 style="text-align:center;display: block;">
        <?php echo JText::_('COM_YOSHOP_CART_EMPTY'); ?>
    </h3>
<?php } ?>
</div>


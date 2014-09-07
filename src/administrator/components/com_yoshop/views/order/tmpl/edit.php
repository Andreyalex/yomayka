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

JHtml::addIncludePath(JPATH_COMPONENT . '/helpers/html');
JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');
JHtml::_('formbehavior.chosen', 'select');
JHtml::_('behavior.keepalive');

// Import CSS
$document = JFactory::getDocument();
$document->addStyleSheet('components/com_yoshop/assets/css/yoshop.css');
?>
<script type="text/javascript">
    js = jQuery.noConflict();
    js(document).ready(function(){
        
    });
    
    Joomla.submitbutton = function(task)
    {
        if(task == 'order.cancel'){
            Joomla.submitform(task, document.getElementById('order-form'));
        }
        else{
            
            if (task != 'order.cancel' && document.formvalidator.isValid(document.id('order-form'))) {
                
                Joomla.submitform(task, document.getElementById('order-form'));
            }
            else {
                alert('<?php echo $this->escape(JText::_('JGLOBAL_VALIDATION_FORM_FAILED')); ?>');
            }
        }
    }
</script>

<div class="row-fluid">
    <div class="span6">

        <h2><?php echo JText::_('COM_YOSHOP_ORDER_DETAILS'); ?></h2>

        <form action="<?php echo JRoute::_('index.php?option=com_yoshop&layout=edit&id=' . (int) $this->item->id); ?>" method="post" enctype="multipart/form-data" name="adminForm" id="order-form" class="form-validate">

            <div class="control-group" style="padding-bottom:20px;">
                <div class="controls" style="float:right;"><?php echo $this->form->getInput('status'); ?></div>
                <div class="control-label" style="float:right; padding-right: 20px; padding-top: 3px;"><?php echo $this->form->getLabel('status'); ?></div>
            </div>

            <input type="hidden" name="task" value="" />
            <input type="hidden" name="id" value="<?php echo $this->item->id; ?>" />

            <?php echo JHtml::_('form.token'); ?>

        </form>
        <table class="table table-striped">
            <tr>
                <td><?php echo JText::_('COM_YOSHOP_ORDER_NAME')?></td>
                <td><?php echo $this->escape($this->item->name); ?></td>
            </tr>

            <tr>
                <td><?php echo JText::_('COM_YOSHOP_ORDER_EMAIL')?></td>
                <td><?php echo $this->escape($this->item->email); ?></td>
            </tr>

            <tr>
                <td><?php echo JText::_('COM_YOSHOP_ORDER_PHONE')?></td>
                <td><?php echo $this->escape($this->item->phone); ?></td>
            </tr>
            <tr>
                <td><?php echo JText::_('COM_YOSHOP_ORDER_DESCRIPTION')?></td>
                <td><?php echo $this->escape($this->item->description); ?></td>
            </tr>
            <tr>
                <td><?php echo JText::_('COM_YOSHOP_ORDER_CREATED_DATE')?></td>
                <td><?php echo $this->escape($this->item->created_date); ?></td>
            </tr>
            <tr>
                <td><?php echo JText::_('COM_YOSHOP_ORDER_STATUS')?></td>
                <td><?php echo $this->escape(YoshopHelperOrder::getStatusDescription($this->item->status)); ?></td>
            </tr>
            <tr>
                <td><?php echo JText::_('COM_YOSHOP_ORDER_LAST_EVENT_DATE')?></td>
                <td><?php echo $this->escape($this->item->last_event_date); ?></td>
            </tr>
            <tr>
                <td><?php echo JText::_('COM_YOSHOP_ORDER_COUNT_TOTAL')?></td>
                <td><?php echo $this->escape($this->productsCount); ?></td>
            </tr>
            <tr>
                <td><?php echo JText::_('COM_YOSHOP_ORDER_PRICE_TOTAL')?></td>
                <td><?php echo $this->escape($this->totalPrice); ?></td>
            </tr>
        </table>
    </div>

    <div class="span6">

        <h2><?php echo JText::_('COM_YOSHOP_ORDER_PRODUCTS_LIST'); ?></h2>

        <table class="table table-striped">
        <thead>
            <tr>
                <th><?php echo JText::_('COM_YOSHOP_ORDER_PRODUCT_IMAGE')?></th>
                <th><?php echo JText::_('COM_YOSHOP_ORDER_PRODUCT_NAME')?></th>
                <th><?php echo JText::_('COM_YOSHOP_ORDER_PRODUCT_PRICE')?></th>
                <th><?php echo JText::_('COM_YOSHOP_ORDER_PRODUCT_COUNT')?></th>
            </tr>
        </thead>
        <?php foreach($this->products as $item){ ?>
            <tr>
                <td class="center">
                    <?php echo YoshopHelperHtml::renderMedia($item->product->media[0], array('link'=> $item->product->link, 'size' => 'preview')); ?></td>
                    <?php if (isset($item->product->image)): ?>
                        <a href="<?php echo $item->product->link; ?>">
                            <img src="<?php echo YOSHOP_CONTENT_BASEURL . '/product/images/' . $item->product->media[0]->path_prev; ?>">
                        </a>
                    <?php endif; ?>
                </td>
                <td class="center" style="line-height:90px">
                    <?php if (!empty($item->item->name)) {
                        echo $this->escape($item->item->name);
                    } ?>
                </td>
                <td class="center" style="line-height:90px">
                    <?php echo $this->escape($item->item->price_base); ?>
                </td>
                <td class="center" style="line-height:90px">
                    <?php echo $this->escape($item->item->count); ?>
                </td>
            </tr>
        <?php } ?>
        </table>
    </div>
</div>

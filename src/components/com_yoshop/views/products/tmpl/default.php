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
?>
<script type="text/javascript">
    function deleteItem(item_id){
        if(confirm("<?php echo JText::_('COM_YOSHOP_DELETE_MESSAGE'); ?>")){
            document.getElementById('form-product-delete-' + item_id).submit();
        }
    }
</script>

<div class="items">
    <ul class="items_list">
<?php $show = false; ?>
        <?php
            foreach ($this->items as $product) :
                $item = $product->state;
            ?>

            
				<?php
					if($item->state == 1 || ($item->state == 0 && JFactory::getUser()->authorise('core.edit.own',' com_yoshop'))):
						$show = true;
						?>
							<li>
								<a href="<?php echo JRoute::_('index.php?option=com_yoshop&view=product&id=' . (int)$item->id); ?>"><?php echo $item->name; ?></a>
								<?php
									if(JFactory::getUser()->authorise('core.edit.state','com_yoshop')):
									?>
										<a href="javascript:document.getElementById('form-product-state-<?php echo $item->id; ?>').submit()"><?php if($item->state == 1): echo JText::_("COM_YOSHOP_UNPUBLISH_ITEM"); else: echo JText::_("COM_YOSHOP_PUBLISH_ITEM"); endif; ?></a>
										<form id="form-product-state-<?php echo $item->id ?>" style="display:inline" action="<?php echo JRoute::_('index.php?option=com_yoshop&task=product.save'); ?>" method="post" class="form-validate" enctype="multipart/form-data">
											<input type="hidden" name="jform[id]" value="<?php echo $item->id; ?>" />
											<input type="hidden" name="jform[ordering]" value="<?php echo $item->ordering; ?>" />
											<input type="hidden" name="jform[state]" value="<?php echo (int)!((int)$item->state); ?>" />
<!--											<input type="hidden" name="jform[checked_out]" value="--><?php //echo $item->checked_out; ?><!--" />-->
<!--											<input type="hidden" name="jform[checked_out_time]" value="--><?php //echo $item->checked_out_time; ?><!--" />-->
											<input type="hidden" name="jform[name]" value="<?php echo $item->name; ?>" />
											<input type="hidden" name="jform[description]" value="<?php echo $item->description; ?>" />
											<input type="hidden" name="option" value="com_yoshop" />
											<input type="hidden" name="task" value="product.save" />
											<?php echo JHtml::_('form.token'); ?>
										</form>
									<?php
									endif;
									if(JFactory::getUser()->authorise('core.delete','com_yoshop')):
									?>
										<a href="javascript:deleteItem(<?php echo $item->id; ?>);"><?php echo JText::_("COM_YOSHOP_DELETE_ITEM"); ?></a>
										<form id="form-product-delete-<?php echo $item->id; ?>" style="display:inline" action="<?php echo JRoute::_('index.php?option=com_yoshop&task=product.remove'); ?>" method="post" class="form-validate" enctype="multipart/form-data">
											<input type="hidden" name="jform[id]" value="<?php echo $item->id; ?>" />
											<input type="hidden" name="jform[ordering]" value="<?php echo $item->ordering; ?>" />
											<input type="hidden" name="jform[state]" value="<?php echo $item->state; ?>" />
<!--											<input type="hidden" name="jform[checked_out]" value="--><?php //echo $item->checked_out; ?><!--" />-->
<!--											<input type="hidden" name="jform[checked_out_time]" value="--><?php //echo $item->checked_out_time; ?><!--" />-->
											<input type="hidden" name="jform[created_by]" value="<?php echo $item->created_by; ?>" />
											<input type="hidden" name="jform[name]" value="<?php echo $item->name; ?>" />
											<input type="hidden" name="jform[description]" value="<?php echo $item->description; ?>" />
											<input type="hidden" name="option" value="com_yoshop" />
											<input type="hidden" name="task" value="product.remove" />
											<?php echo JHtml::_('form.token'); ?>
										</form>
									<?php
									endif;
								?>
							</li>
						<?php endif; ?>

<?php endforeach; ?>
        <?php
        if (!$show):
            echo JText::_('COM_YOSHOP_NO_ITEMS');
        endif;
        ?>
    </ul>
</div>
<?php if ($show): ?>
    <div class="pagination">
        <p class="counter">
            <?php echo $this->pagination->getPagesCounter(); ?>
        </p>
        <?php echo $this->pagination->getPagesLinks(); ?>
    </div>
<?php endif; ?>


									<?php if(JFactory::getUser()->authorise('core.create','com_yoshop')): ?><a href="<?php echo JRoute::_('index.php?option=com_yoshop&task=product.edit&id=0'); ?>"><?php echo JText::_("COM_YOSHOP_ADD_ITEM"); ?></a>
	<?php endif; ?>
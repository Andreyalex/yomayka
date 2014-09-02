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
        if(task == 'product.cancel'){
            Joomla.submitform(task, document.getElementById('product-form'));
        }
        else{
            
            if (task != 'product.cancel' && document.formvalidator.isValid(document.id('product-form'))) {
                
                Joomla.submitform(task, document.getElementById('product-form'));
            }
            else {
                alert('<?php echo $this->escape(JText::_('JGLOBAL_VALIDATION_FORM_FAILED')); ?>');
            }
        }
    }
</script>

<form action="<?php echo JRoute::_('index.php?option=com_yoshop&layout=edit&id=' . (int) $this->item->id); ?>" method="post" enctype="multipart/form-data" name="adminForm" id="product-form" class="form-validate">
    <div class="row-fluid">
        <div class="span10 form-horizontal">
            <fieldset class="adminform">

			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('name'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('name'); ?></div>
			</div>
            <div class="control-group">
                <div class="control-label"><?php echo $this->form->getLabel('category'); ?></div>
                <div class="controls"><?php echo $this->form->getInput('category'); ?></div>
            </div>
            <div class="control-group">
                <div class="control-label"><?php echo $this->form->getLabel('price_base'); ?></div>
                <div class="controls"><?php echo $this->form->getInput('price_base'); ?></div>
            </div>
            <div class="control-group">
                <div class="control-label"><?php echo $this->form->getLabel('images'); ?></div>
                <div class="controls"><?php echo $this->form->getInput('images'); ?></div>
            </div>
			<div class="control-group">
				<div class="control-label"><?php echo $this->form->getLabel('description'); ?></div>
				<div class="controls"><?php echo $this->form->getInput('description'); ?></div>
			</div>
            <div class="control-group">
                <div class="control-label"><?php echo $this->form->getLabel('count'); ?></div>
                <div class="controls"><?php echo $this->form->getInput('count'); ?></div>
            </div>
            <div class="control-group">
                <div class="control-label"><?php echo $this->form->getLabel('state'); ?></div>
                <div class="controls"><?php echo $this->form->getInput('state'); ?></div>
            </div>

            <div class="controls"><?php echo $this->form->getInput('id'); ?></div>


            </fieldset>
        </div>

        

        <input type="hidden" name="task" value="" />
        <?php echo JHtml::_('form.token'); ?>

    </div>
</form>
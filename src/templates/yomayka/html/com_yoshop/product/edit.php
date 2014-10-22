<?php

    defined('_JEXEC') or die;

    JHtml::addIncludePath(JPATH_COMPONENT . '/helpers/html');
    JHtml::_('jquery.framework', false, null, false);
    JHtml::_('behavior.core');
    JHtml::_('behavior.keepalive');

    YoViewHelperHtml::initJsApp();

    $actionText = $this->form->getValue('id')? JText::_('Сохранить') : JText::_('Создать');
    $actionText = $this->form->getValue('id')? JText::_('Сохранить') : JText::_('Создать');

    ob_start();
?>
    <script type="text/javascript">
        jQuery(document).ready(function(){

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


    <form class="form-horizontal form-validate" role="form" id="member-registration" action="<?php echo JRoute::_('index.php?option=com_yoshop'); ?>" method="post" enctype="multipart/form-data">
        <div class="cpanel" style="float:right">
            <button type="submit" class="btn btn-success"><?=$actionText?></button>
            <a class="btn btn-danger" href="<?php echo YoRoute::_('users:products');?>"><?php echo JText::_('JCANCEL');?></a>
        </div>

        <div class="clearfix"></div>

        <?php $fields = (array) $this->form->getFieldset();?>
        <?php foreach ($fields as $field) {// Iterate through the fields in the set and display them.?>
            <?php if (!$field->hidden) {// If the field is hidden, just display the input.?>
                <?php echo YoViewHelperHtml::renderFormElement($field); ?>
            <?php } else { ?>
                <?php echo $field->input;?>
            <?php } ?>
        <?php } ?>

        <?php echo YoViewHelperHtml::renderFormAssets('yoshop.product.apply.'.$this->id); ?>

    </form>

    <script>
        window.requireJsAppInit = function(){
            require(['jquery', 'yo', 'messenger', 'preloader'], function($, yo, Messenger, Preloader) {

                var preloader = new Preloader;
                preloader.initDefaultBehavior();

                var messenger = new Messenger;
                messenger.initDefaultBehavior();
            })
        }
    </script>

<?php
    $content = ob_get_clean();
    include __DIR__ . '/../../panel.php';

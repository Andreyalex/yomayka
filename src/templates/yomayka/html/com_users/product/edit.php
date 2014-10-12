<?php

    defined('_JEXEC') or die;

    JHtml::addIncludePath(JPATH_COMPONENT . '/helpers/html');
    JHtml::_('jquery.framework', false, null, false);
    JHtml::_('behavior.core');
    JHtml::_('behavior.keepalive');

    YoViewHelperHtml::initJsApp();

    ob_start();
?>
    <div class="clearfix"></div>

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


    <a  class="btn btn-default"
        href="<?php echo JRoute::_('index.php?option=com_users&view=products'); ?>"
        >
        <?php echo JText::_("COM_USERS_BACK"); ?>
    </a>

    <a  class="btn btn-success"
        href="<?php echo JRoute::_('index.php?option=com_users&view=product&id='.$this->id); ?>"
        >
        <?php echo JText::_("COM_USERS_SHOW"); ?>
    </a>

    <form class="form-horizontal form-validate" role="form" id="member-registration" action="<?php echo JRoute::_('index.php?option=com_yoshop'); ?>" method="post" enctype="multipart/form-data">

        <?php $fields = (array) $this->form->getFieldset();?>
        <?php foreach ($fields as $field) {// Iterate through the fields in the set and display them.?>
            <?php if (!$field->hidden) {// If the field is hidden, just display the input.?>
                <?php echo YoViewHelperHtml::renderFormElement($field); ?>
            <?php } else { ?>
                <?php echo $field->input;?>
            <?php } ?>
        <?php } ?>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default"><?php echo JText::_('JREGISTER');?></button>
                <a class="btn" href="<?php echo JRoute::_('');?>" title="<?php echo JText::_('JCANCEL');?>"><?php echo JText::_('JCANCEL');?></a>
            </div>
        </div>

        <?php echo YoViewHelperHtml::renderFormAssets('yoshop.product.save.'.$this->id); ?>

    </form>

    <script>
        window.requireJsAppInit = function(){
            require(['jquery', 'yo', 'messenger', 'preloader'], function($, yo, Messenger, Preloader) {

                var preloader = new Preloader;
                var messenger = new Messenger;

                yo.on('start.process', function(){
                    preloader.show();
                })
                yo.on('done.process', function(){
                    preloader.hide();
                })

                yo.on('message.notify', function(ev){
                    messenger.show(ev.params.text, 'message');
                })
                yo.on('error.notify', function(ev){
                    messenger.show(ev.text, 'error');
                })
            })
        }
    </script>

<?php
    $content = ob_get_clean();
    include __DIR__.'/../panel.php';

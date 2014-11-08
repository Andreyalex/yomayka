<?php

    defined('_JEXEC') or die;

    YoshopHelperHtml::addStylesheet('product.css');

    JHtml::addIncludePath(JPATH_COMPONENT . '/helpers/html');
    JHtml::_('jquery.framework', false, null, false);
    JHtml::_('behavior.core');
    JHtml::_('behavior.keepalive');

    YoViewHelperHtml::initJsApp();

    $actionText = $this->form->getValue('id')? JText::_('Сохранить') : JText::_('Создать');
    $actionText = $this->form->getValue('id')? JText::_('Сохранить') : JText::_('Создать');

    ob_start();
?>

    <form class="form-horizontal form-validate" role="form" id="product-form" action="<?php echo JRoute::_('index.php?option=com_yoshop'); ?>" method="post" enctype="multipart/form-data">
        <div class="cpanel" style="float:right">
            <?=YoViewHelperHtml::renderSubmit('product-form', $actionText)?>
            <?=YoViewHelperHtml::renderCancel('product-form', 'product')?>
        </div>

        <div class="clearfix"></div>

        <?php
            $fields = (array) $this->form->getFieldset();
            foreach ($fields as $field) {// Iterate through the fields in the set and display them.
                if (!$field->hidden) {// If the field is hidden, just display the input.
                    echo YoViewHelperHtml::renderFormElement($field);
                } else {
                    echo $field->input;
                }

                if ($field->id == 'jform_category_id') {

                    echo '<div id="jform-fields">';

                    if (!empty($this->id)) {
                        include 'fields.php';
                    }

                    echo '</div>';
                }
            }
        ?>


        <?=YoViewHelperHtml::renderFormAssets('yoshop.product.save.'.$this->id); ?>

    </form>

    <script>
        window.requireJsAppInit = function(){
            require(['jquery', 'yo', 'messenger', 'preloader'], function($, yo, Messenger, Preloader) {

                var preloader = new Preloader;
                preloader.initDefaultBehavior();

                var messenger = new Messenger;
                messenger.initDefaultBehavior();

                $('#jform_category_id').on('change', function(event){
                    yo.request(
                        'post html|yoshop:product:fields:partial',
                        { data: { categoryId: $(this).val() } },
                        { container: $('#jform-fields') }
                    )
                })

            })
        }
    </script>

<?php
    $content = ob_get_clean();
    include __DIR__ . '/../../panel.php';

<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_users
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

JHtml::_('behavior.keepalive');
JHtml::_('behavior.formvalidation');
?>

<div class="panel panel-default registration<?php echo $this->pageclass_sfx?>">
    <div class="panel-heading">Регистрация</div>
    <div class="panel-body">

        <form class="form-horizontal form-validate" role="form" id="member-registration" action="<?php echo JRoute::_('index.php'); ?>" method="post" enctype="multipart/form-data">

            <?php foreach ($this->form->getFieldsets() as $fieldset) { // Iterate through the form fieldsets and display each one.?>
                <?php $fields = (array) $this->form->getFieldset($fieldset->name);?>
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

            <?php echo YoViewHelperHtml::renderFormAssets('users.registration.register', $this->form->getValue('return')); ?>

        </form>
    </div>
</div>

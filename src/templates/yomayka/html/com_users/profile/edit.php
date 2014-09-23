<?php
/**
 * @package		Joomla.Site
 * @subpackage	com_users
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 * @since		1.6
 */

defined('_JEXEC') or die;

JHtml::_('behavior.keepalive');
JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');
//load user_profile plugin language
$lang = JFactory::getLanguage();
$lang->load( 'plg_user_profile', JPATH_ADMINISTRATOR );
?>

<div class="profile-edit<?php echo $this->pageclass_sfx?>">
	<?php if ($this->params->get('show_page_heading')) { ?>
	<div class="page-header">
		<h1><?php echo $this->escape($this->params->get('page_heading')); ?></h1>
	</div>
	<?php } ?>

    <div class="col-sm-6 col-sm-push-3">
        <div class="panel panel-default">
            <div class="panel-heading"><span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;<?php echo JText::_("COM_USERS_PROFILE_CORE_LEGEND"); ?></div>
            <div class="panel-body">



                <form id="member-profile" action="<?php echo JRoute::_('index.php?option=com_users&task=profile.save'); ?>" method="post" class="form-validate form-horizontal" enctype="multipart/form-data">
                    <?php foreach ($this->form->getFieldsets() as $group => $fieldset) {

                     // CORE only is needed for now
                     if ($group != 'core') {
                         continue;
                     }

                     // Iterate through the form fieldsets and display each one.?>

                    <?php $fields = $this->form->getFieldset($group);?>
                    <?php if (count($fields)) { ?>
                    <fieldset>
                        <?php if (isset($fieldset->label)) {// If the fieldset has a label set, display it as the legend.?>
                        <legend><?php echo JText::_($fieldset->label); ?></legend>
                        <?php } ?>

                            <?php foreach ($fields as $field) {// Iterate through the fields in the set and display them.?>
                                <?php if (!$field->hidden) {// If the field is hidden, just display the input.?>
                                    <?php echo YoViewHelperHtml::renderFormElement($field); ?>
                                <?php } else { ?>
                                    <?php echo $field->input;?>
                                <?php } ?>
                            <?php } ?>

                    </fieldset>
                    <?php } ?>
                    <?php } ?>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="validate btn btn-primary"><span><?php echo JText::_('JSUBMIT'); ?></span></button>
                            <?php echo JText::_('COM_USERS_OR'); ?> <a href="<?php echo JRoute::_(''); ?>" title="<?php echo JText::_('JCANCEL'); ?>" class="btn"><?php echo JText::_('JCANCEL'); ?></a>
                        </div>
                    </div>

                    <?php echo YoViewHelperHtml::renderFormAssets('users.profile.save', $this->form->getValue('return')); ?>
                </form>
            </div>
        </div>
    </div>
</div>

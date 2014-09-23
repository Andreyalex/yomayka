<?php
/**
 * @package		Joomla.Site
 * @subpackage	com_users
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 * @since		1.6
 */

defined('_JEXEC') or die;
JHtml::_('behavior.tooltip');
?>

<div class="profile<?php echo $this->pageclass_sfx?> row-fluid">

    <?php if ($this->params->get('show_page_heading')) { ?>
        <div class="page-header">
            <h1> <?php echo $this->escape($this->params->get('page_heading')); ?> </h1>
        </div>
    <?php } ?>

    <div class="col-sm-6 col-sm-push-3">
        <div class="panel panel-default">
            <div class="panel-heading"><span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;<?php echo JText::_("COM_USERS_PROFILE_CORE_LEGEND"); ?></div>
            <div class="panel-body">

                <form class="form-horizontal">
                    <?php echo $this->loadTemplate('core'); ?> <?php //not needed for now echo $this->loadTemplate('params'); ?> <?php //not needed for now echo $this->loadTemplate('custom'); ?>
                    <?php if (JFactory::getUser()->id == $this->data->id) { ?>
                    <div class="form-actions"> <a href="<?php echo JRoute::_('index.php?option=com_users&task=profile.edit&user_id='.(int) $this->data->id);?>" class="btn btn-primary"> <?php echo JText::_('COM_USERS_Edit_Profile'); ?></a> </div>
                    <?php } ?>
                </form>
            </div>
        </div>
    </div>
</div>

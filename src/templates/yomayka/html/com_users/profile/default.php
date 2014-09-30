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
$input = JFactory::getApplication()->input;

$tab = $input->get('subView')? $input->get('subView') : 'profile';

$itemId = $input->get('subItem')? $input->get('subItem') : null;

$pageUrl = JRoute::_('index.php?option=com_users&view=profile', false);

JHtml::stylesheet(YOSHOP_ASSETS_BASEURL.'/category/category.css');

?>

<div class="profile<?php echo $this->pageclass_sfx?> row-fluid">

    <?php if ($this->params->get('show_page_heading')) { ?>
        <div class="page-header">
            <h1> <?php echo $this->escape($this->params->get('page_heading')); ?> </h1>
        </div>
    <?php } ?>

    <div class="panel panel-default">
        <div class="panel-heading"><span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;<?php echo JText::_("COM_USERS_PROFILE_CORE_LEGEND"); ?></div>
        <div class="panel-body">

            <ul class="nav nav-pills">
                <li <?php echo $tab == 'profile'? 'class="active"':''; ?>><a href="<?php echo $pageUrl; ?>"><?php echo JText::_("COM_JPROFILE"); ?></a></li>
                <li <?php echo $tab == 'products'? 'class="active"':''; ?>><a href="<?php echo $pageUrl.'/products'; ?>"><?php echo JText::_("COM_USERS_PRODUCTS"); ?></a></li>
                <li <?php echo $tab == 'messages'? 'class="active"':''; ?>><a href="<?php echo $pageUrl.'/messages'; ?>"><?php echo JText::_("COM_USERS_MESSAGES"); ?></a></li>
            </ul>

            <?php
                switch($tab) {
                    case 'profile':
                        echo $this->loadTemplate('core');
                        break;

                    case 'products':
                        echo $this->loadTemplate($itemId? 'product' : 'products');
                        break;

                    case 'messages':
                        echo $this->loadTemplate('messages');
                        break;

                }
            ?>
        </div>
    </div>
</div>

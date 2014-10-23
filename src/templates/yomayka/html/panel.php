<?php
/**
 * @package		Joomla.Site
 * @subpackage	com_users
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 * @since		1.6
 */

defined('_JEXEC') or die;
$input = JFactory::getApplication()->input;

$tab = $input->get('view');
$itemId = $input->get('subItem')? $input->get('subItem') : null;
$profileUrl = JRoute::_('index.php?option=com_users&view=profile', false);
$productsUrl = JRoute::_('index.php?option=com_yoshop&view=userproducts', false);
$messagesUrl = JRoute::_('index.php?option=com_yoshop&view=conversations', false);

JHtml::stylesheet(JUri::base().'templates/yomayka/assets/css/com_users/user-panel.css');
?>

<div class="profile<?php echo $this->pageclass_sfx?> row-fluid">

    <div class="panel panel-default">
        <div class="panel-heading"><span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;<?php echo JText::_("Ваша панель управления"); ?></div>
        <div class="panel-body user-panel">

            <ul class="nav nav-pills" style="float:left">
                <li <?php echo $tab == 'profile'? 'class="active"':''; ?>><a href="<?php echo $profileUrl; ?>"><?php echo JText::_("Профиль"); ?></a></li>
                <li <?php echo in_array($tab, array('userproducts', 'product'))? 'class="active"':'';?>><a href="<?php echo $productsUrl; ?>"><?php echo JText::_("Товарьі"); ?></a></li>
                <li <?php echo $tab == 'usermessages'? 'class="active"':''; ?>><a href="<?php echo $messagesUrl; ?>"><?php echo JText::_("Сообщения"); ?></a></li>
            </ul>

            <?php echo $content; ?>

        </div>
    </div>
</div>

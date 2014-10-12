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
$pageUrl = JRoute::_('index.php?option=com_users', false);

JHtml::stylesheet(JUri::base().'templates/yomayka/assets/css/com_users/products.css');
?>

<div class="profile<?php echo $this->pageclass_sfx?> row-fluid">

    <div class="panel panel-default">
        <div class="panel-heading"><span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;<?php echo JText::_("Ваша панель управления"); ?></div>
        <div class="panel-body">

            <ul class="nav nav-pills" style="float:left">
                <li <?php echo $tab == 'profile'? 'class="active"':''; ?>><a href="<?php echo $pageUrl.'profile'; ?>"><?php echo JText::_("Профиль"); ?></a></li>
                <li <?php echo $tab == 'products'? 'class="active"':''; ?>><a href="<?php echo $pageUrl.'products'; ?>"><?php echo JText::_("Товарьі"); ?></a></li>
                <li <?php echo $tab == 'messages'? 'class="active"':''; ?>><a href="<?php echo $pageUrl.'messages'; ?>"><?php echo JText::_("Сообщения"); ?></a></li>
            </ul>

            <?php echo $content; ?>

        </div>
    </div>
</div>

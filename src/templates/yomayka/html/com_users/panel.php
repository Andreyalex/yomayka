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

$tab = $input->get('view');

$itemId = $input->get('subItem')? $input->get('subItem') : null;

$pageUrl = JRoute::_('index.php?option=com_users', false);

JHtml::stylesheet(JUri::base().'templates/yomayka/assets/css/com_users/products.css');

?>

<div class="profile<?php echo $this->pageclass_sfx?> row-fluid">

    <?php if ($this->params->get('show_page_heading')) { ?>
        <div class="page-header">
            <h1> <?php echo $this->escape($this->params->get('page_heading')); ?> </h1>
        </div>
    <?php } ?>

    <div class="panel panel-default">
        <div class="panel-heading"><span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;<?php echo JText::_("Ваша панель управления"); ?></div>
        <div class="panel-body">

            <ul class="nav nav-pills" style="float:left">
                <li <?php echo $tab == 'profile'? 'class="active"':''; ?>><a href="<?php echo $pageUrl.'profile'; ?>"><?php echo JText::_("Профиль"); ?></a></li>
                <li <?php echo $tab == 'products'? 'class="active"':''; ?>><a href="<?php echo $pageUrl.'products'; ?>"><?php echo JText::_("Товарьі"); ?></a></li>
                <li <?php echo $tab == 'messages'? 'class="active"':''; ?>><a href="<?php echo $pageUrl.'messages'; ?>"><?php echo JText::_("Сообщения"); ?></a></li>
            </ul>

            <div class="cpanel" style="float:right">
                <div class="pull-right" style="margin-left:40px">
                    <button class="btn btn-info glyphicon glyphicon-th"></button>
                </div>
                <div class="col-xs-6 pull-right" style="padding-top:1px;padding-left:4px">
                    <input class="form-control col-xs-1" type="search" placeholder="<?php echo JText::_("Поиск"); ?>">
                </div>
                <div class="pull-right">
                    <a class="btn btn-success glyphicon glyphicon-plus" href="<?=$urlAdd?>"></a>
                    <button class="btn btn-default glyphicon glyphicon-sort"></button>
                    <button class="btn btn-default glyphicon glyphicon-arrow-up"></button>
                </div>
            </div>

            <div class="clearfix"></div>

            <?php echo $this->loadTemplate('core'); ?>

        </div>
    </div>
</div>

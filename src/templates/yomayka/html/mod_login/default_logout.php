<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_login
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

JHtml::_('jquery.framework', false, null, false);
JHtml::script(JUri::root().'templates/yomayka/assets/bootstrap/js/bootstrap.min.js');

?>
<div class="btn-group">
    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
        <span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;<span class="caret"></span>
    </button>
    <ul class="dropdown-menu dropdown-menu-right" role="menu">
        <li><a href="<?php echo JRoute::_('index.php?option=com_users&view=profile', false); ?>"><?php echo JText::_('Профиль') ?></a></li>
        <li><a href="<?php echo JRoute::_('index.php?option=com_yoshop&view=userproducts', false); ?>"><?php echo JText::_('Товары') ?></a></li>
        <li><a href="<?php echo JRoute::_('index.php?option=com_yoshop&view=conversations', false); ?>"><?php echo JText::_('Сообщения') ?></a></li>
        <li class="divider"></li>
        <li>
            <form id="usermenu-logout" action="<?php echo JRoute::_('index.php?option=com_users&task=user.logout');?>" method="post">
                <input type="hidden" name="return" value="<?php echo $return; ?>" />
                <?php echo JHtml::_('form.token'); ?>
            </form>
            <a href="#" onclick="jQuery('#usermenu-logout').submit()"><?=JText::_('Выйти');?></a>
        </li>
    </ul>
</div>


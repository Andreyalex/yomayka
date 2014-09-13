<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_login
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */
// no direct access
defined('_JEXEC') or die;
JHtml::_('behavior.keepalive');
?>

<?php if ($type == 'logout') { ?>
    <form action="<?php echo JRoute::_('index.php', true, $params->get('usesecure')); ?>" method="post" id="login-form" class="form-horizontal">
        <div class="btn-group">
            <button class="btn btn-primary">
                <?php echo JText::_($user->get('username')); ?>
            </button>
            <button class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                <span class="caret"></span>
            </button>
            <div class="dropdown-menu">
                <div class="logout-button">
                    <input type="submit" name="Submit" class="button btn btn-primary" value="<?php echo JText::_('JLOGOUT'); ?>" />
                    <input type="hidden" name="option" value="com_users" />
                    <input type="hidden" name="task" value="user.logout" />
                    <input type="hidden" name="return" value="<?php echo $return; ?>" />
                    <?php echo JHtml::_('form.token'); ?>
                </div>
            </div>
        </div>
    </form>
<?php } else { ?>
    <a href="<?php echo JRoute::_('index.php?option=com_users&view=login', false); ?>" class="btn btn-primary"><?php echo JText::_('JLOGIN') ?></a>
<?php } ?>

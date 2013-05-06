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
<?php if ($type == 'logout') : ?>

<form action="<?php echo JRoute::_('index.php', true, $params->get('usesecure')); ?>" method="post" id="login-form" class="form-horizontal">
	<?php if ($params->get('greeting')) : ?>
    
    <div class="btn-group">
        <button class="btn btn-primary">
            <?php if($params->get('name') == 0) : {
                echo JText::_($user->get('name'));
            } else : {
                echo JText::_($user->get('username'));
            } endif; ?>
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
    <?php endif; ?>
</form>
<?php else : ?>
	<?php if ($params->get('pretext')): ?>
	<div class="pretext pull-left">
		<p><?php echo $params->get('pretext'); ?></p>
	</div>
	<?php endif; ?>

    <a href="<?php echo JRoute::_('index.php?option=com_users&view=login', false); ?>" class="btn btn-primary"><?php echo JText::_('JLOGIN') ?></a>
	<?php if ($params->get('posttext')): ?>
	<div class="posttext">
		<p><?php echo $params->get('posttext'); ?></p>
	</div>
	<?php endif; ?>
<?php endif; ?>

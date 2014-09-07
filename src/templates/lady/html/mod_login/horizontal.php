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
<form id="login-form" class="form-horizontal" action="<?php echo JRoute::_('index.php', true, $params->get('usesecure')); ?>" method="post">
	<?php if ($params->get('pretext')): ?>
	<div class="pretext pull-left">
		<p><?php echo $params->get('pretext'); ?></p>
	</div>
	<?php endif; ?>

        <input id="modlgn-username" type="text" name="username" class="inputbox input-medium"  size="18" />
        <input id="modlgn-passwd" type="password" name="password" class="inputbox input-medium" size="18"  />
    
        <div class="btn-group">
    		<button class="btn btn-primary" onclick="this.form.submit()"><?php echo JText::_('JLOGIN') ?></button>
            <button class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                <span class="caret"></span>
            </button>
            <div class="dropdown-menu">
                <?php if (JPluginHelper::isEnabled('system', 'remember')) : ?>
                <div id="form-login-remember" class="control-group">
                    <label class="checkbox" for="modlgn-remember"> <?php echo JText::_('MOD_LOGIN_REMEMBER_ME') ?>
                        <input id="modlgn-remember" type="checkbox" name="remember" class="inputbox" value="yes"/>
                    </label>
                </div>
                <hr/>
                <?php endif; ?>
                <ul class="nav nav-list">
                    <li> <a href="<?php echo JRoute::_('index.php?option=com_users&view=reset'); ?>"> <?php echo JText::_('MOD_LOGIN_FORGOT_YOUR_PASSWORD'); ?></a> </li>
                    <li> <a href="<?php echo JRoute::_('index.php?option=com_users&view=remind'); ?>"> <?php echo JText::_('MOD_LOGIN_FORGOT_YOUR_USERNAME'); ?></a> </li>
                    <?php
                    $usersConfig = JComponentHelper::getParams('com_users');
                    if ($usersConfig->get('allowUserRegistration')) : ?>
                    <li> <a href="<?php echo JRoute::_('index.php?option=com_users&view=registration'); ?>"> <?php echo JText::_('MOD_LOGIN_REGISTER'); ?></a> </li>
                    <?php endif; ?>
                </ul>
            </div>
        </div>
    
		<input type="hidden" name="option" value="com_users" />
		<input type="hidden" name="task" value="user.login" />
		<input type="hidden" name="return" value="<?php echo $return; ?>" />
		<?php echo JHtml::_('form.token'); ?>
	<?php if ($params->get('posttext')): ?>
	<div class="posttext">
		<p><?php echo $params->get('posttext'); ?></p>
	</div>
	<?php endif; ?>
</form>
<?php endif; ?>

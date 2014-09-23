<?php
/**
 * @package		Joomla.Site
 * @subpackage	com_users
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 * @since		1.5
 */

defined('_JEXEC') or die;
JHtml::_('behavior.keepalive');
?>

<div class="col-sm-6 col-sm-push-3">
    <div class="panel panel-default">
        <div class="panel-heading"><span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;<?php echo JText::_("COM_USERS_USER_SIGN_IN"); ?></div>
        <div class="panel-body">

            <form action="<?php echo JRoute::_('index.php'); ?>" method="post" class="form-horizontal">

                <?php foreach ($this->form->getFieldset('credentials') as $field) { ?>
                    <?php if (!$field->hidden) { ?>
                        <?php echo YoViewHelperHtml::renderFormElement($field); ?>
                    <?php } ?>
                <?php } ?>

                <?php if ($this->tfa) { ?>
                    <?php echo YoViewHelperHtml::renderFormElement($this->form->getField('secretkey')); ?>
                <?php } ?>

                <?php if (JPluginHelper::isEnabled('system', 'remember')) { ?>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                            <label>
                                <input id="remember" type="checkbox" name="remember" class="inputbox" value="yes"><?php echo JText::_('COM_USERS_LOGIN_REMEMBER_ME') ?>
                            </label>
                        </div>
                    </div>
                </div>
                <?php } ?>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-primary">
                            <span class="glyphicon glyphicon-log-in"></span>&nbsp;&nbsp;
                            <?php echo JText::_('JLOGIN'); ?>
                        </button>
                    </div>
                </div>

                <?php echo YoViewHelperHtml::renderFormAssets('users.user.login', $this->params->get('login_redirect_url', $this->form->getValue('return'))); ?>

            </form>

            <div class="well" style="padding:8px 0;">
                <ul class="nav nav-list">
                    <li> <a href="<?php echo JRoute::_('index.php?option=com_users&view=reset'); ?>"> <?php echo JText::_('COM_USERS_LOGIN_RESET'); ?></a> </li>
                    <li> <a href="<?php echo JRoute::_('index.php?option=com_users&view=remind'); ?>"> <?php echo JText::_('COM_USERS_LOGIN_REMIND'); ?></a> </li>
                    <?php
                    $usersConfig = JComponentHelper::getParams('com_users');
                    if ($usersConfig->get('allowUserRegistration')) { ?>
                    <li> <a href="<?php echo JRoute::_('index.php?option=com_users&view=registration'); ?>"> <?php echo JText::_('COM_USERS_LOGIN_REGISTER'); ?></a> </li>
                    <?php } ?>
                </ul>
            </div>
        </div>
    </div>
</div>
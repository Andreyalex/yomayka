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

	<?php if ($params->get('greeting')) { ?>
    
    <div class="btn-group">
         <a class="btn btn-info dropdown-toggle" data-toggle="dropdown" href="#">
            <?php if($params->get('name') == 0) {
                echo JText::_($user->get('name'));
            } else  {
                echo JText::_($user->get('username'));
            } ?>
            <span class="caret"></span>
        </a>
        <div class="dropdown-menu">    
            <form action="<?php echo JRoute::_('index.php', true, $params->get('usesecure')); ?>" method="post" id="login-form" class="form-horizontal">
                <div class="control-group">
                    <a href="<?php echo JRoute::_("index.php?option=com_users&view=profile"); ?>"><?php echo JText::_('COM_USERS_PROFILE'); ?></a>
                </div>    
                <div class="control-group">
                    <input type="submit" name="Submit" class="button btn btn-primary pull-right" value="<?php echo JText::_('JLOGOUT'); ?>" />
                </div> 
            
                <input type="hidden" name="option" value="com_users" />
                <input type="hidden" name="task" value="user.logout" />
                <input type="hidden" name="return" value="<?php echo $return; ?>" />
                <?php echo JHtml::_('form.token'); ?> 
            </form>            
        </div>
    </div>    
    <?php } ?>
    


<?php } else { ?>
    <div class="btn-group">
      <a class="btn btn-success dropdown-toggle" href="#mod_loginModal" role="button" data-toggle="modal">
        <?php echo JText::_('JLOGIN') ?>
        <span class="caret"></span>
      </a>
    </div>    
        
    <div id="mod_loginModal" class="modal fade hide" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">        
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h3 id="myModalLabel">Авторизация</h3>
        </div>

        <form id="login-form" class="form-horizontal" action="<?php echo JRoute::_('index.php', true, $params->get('usesecure')); ?>" method="post">
            <div class="modal-body">
                <?php if ($params->get('pretext')) { ?>
                <div class="pretext pull-left">
                    <p><?php echo $params->get('pretext'); ?></p>
                </div>
                <?php } ?>

                <div class="control-group">
                    <input id="modlgn-username" type="text" name="username" class="inputbox input-large"  size="18" placeholder="<?php echo JText::_('MOD_LOGIN_VALUE_USERNAME') ?>" />
                </div>
                <div class="control-group">
                    <input id="modlgn-passwd" type="password" name="password" class="inputbox input-large" size="18" placeholder="<?php echo JText::_('JGLOBAL_PASSWORD') ?>" />
                </div>
                <?php if (JPluginHelper::isEnabled('system', 'remember')) { ?>
                <div id="form-login-remember" class="control-group">
                    <label class="checkbox pull-left" for="modlgn-remember"> <?php echo JText::_('MOD_LOGIN_REMEMBER_ME') ?>
                        <input id="modlgn-remember" type="checkbox" name="remember" class="inputbox" value="yes"/>
                    </label>
                </div>    
                <hr/>
                <?php } ?>
                <ul>
                    <li> <a href="<?php echo JRoute::_('index.php?option=com_users&view=reset'); ?>"> <?php echo JText::_('MOD_LOGIN_FORGOT_YOUR_PASSWORD'); ?></a> </li>
                    <li> <a href="<?php echo JRoute::_('index.php?option=com_users&view=remind'); ?>"> <?php echo JText::_('MOD_LOGIN_FORGOT_YOUR_USERNAME'); ?></a> </li>
                    <?php
                    $usersConfig = JComponentHelper::getParams('com_users');
                    if ($usersConfig->get('allowUserRegistration')) { ?>
                    <li> <a href="<?php echo JRoute::_('index.php?option=com_users&view=registration'); ?>"> <?php echo JText::_('MOD_LOGIN_REGISTER'); ?></a> </li>
                    <?php } ?>
                </ul>

                <?php if ($params->get('posttext')) { ?>
                <div class="posttext">
                    <p><?php echo $params->get('posttext'); ?></p>
                </div>
                <?php } ?>

                <input type="hidden" name="option" value="com_users" />
                <input type="hidden" name="task" value="user.login" />
                <input type="hidden" name="return" value="<?php echo $return; ?>" />
                <?php echo JHtml::_('form.token'); ?>
            </div>
            <div class="modal-footer">
                <button class="btn btn-primary pull-right" onclick="this.form.submit()"><?php echo JText::_('JLOGIN') ?></button>
            </div>    
        </form>
    </div>
    <script type="text/javascript">
        jQuery('#mod_loginModal').appendTo('body');
    </script>
<?php } ?>

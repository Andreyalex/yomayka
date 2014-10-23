<?php
/**
 * @package		Joomla.Site
 * @subpackage	com_users
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 * @since		1.6
 */

defined('_JEXEC') or die;

$isMy = $data->created_by == $this->user->id
?>

<div class="item panel panel-default<?=($isMy? ' my':'')?>">
        <div class="panel-heading"><span class="glyphicon glyphicon-comment"></span>&nbsp;&nbsp;<?=$data->user_2_login; ?></div>
        <div class="panel-body user-pane">
            <?=$data->content;?>
        </div>
    </div>
</div>

<?php
/**
 * @package     Joomla.Site
 * @subpackage  Template.Beez3
 *
 * @copyright   Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

function renderMessage($msgList)
{
	$buffer  = null;
	$buffer .= "<div id=\"system-message-container\">";

	if (is_array($msgList))
	{
		$buffer .= "<div id=\"system-message\">";
		foreach ($msgList as $type => $msgs)
		{
            switch (strtolower($type)) {
                case 'error' :
                case 'warning' :
                    $type = 'danger'; break;
                case 'message' :
                    $type = 'success'; break;
                default:
                    $type = 'info';
            }

			if (count($msgs))
			{
                $buffer .='<div class="alert alert-'.$type.' alert-dismissible" role="alert">';
                $buffer .='<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>';
				foreach ($msgs as $msg)
				{
					$buffer .= "<div>" . $msg . "</div>";
				}
				$buffer .= "</div>";
			}
		}
        $buffer .= "</div>";
	}
    $buffer .= "</div>";
    return $buffer;
}

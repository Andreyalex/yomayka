<?php
/**
 * @version		$Id: default.php 22355 2011-11-07 05:11:58Z github_bot $
 * @package		Joomla.Site
 * @subpackage	mod_menu
 * @copyright	Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access.
defined('_JEXEC') or die;

JHtml::stylesheet(JUri::base() . 'templates/lady/assets/css/mod_menu/default.css');

?>

<ul class="level-top">
<?php
foreach ($list as $i => &$item) :
	$class = 'item-'.$item->id;
	if ($item->id == $active_id) {
		$class .= ' current';
	}

	if (	$item->type == 'alias' &&
			in_array($item->params->get('aliasoptions'),$path)
		||	in_array($item->id, $path)) {
		$class .= ' active' . (!empty($activeIsOpened)? ' open' : '');
	}

	if (($item->deeper) && ($nav_dropdown)) {
		$class .= ' dropdown';
	}
		
	elseif ($item->deeper) {
		$class .= ' deeper';
	}
	
	if ($item->parent) {
		$class .= ' parent';
	}

	if (!empty($class)) {
		$class = ' class="'.trim($class) .'"';
	}

	echo '<li'.$class.'>';

    if ($item->level == 2) { 
        $class = $item->anchor_css ? 'class="'.$item->anchor_css.'" ' : '';
        $title = $item->anchor_title ? 'title="'.$item->anchor_title.'" ' : '';
    ?>
        <a <?php echo $class; ?>href="<?php echo $item->flink; ?>" <?php echo $title; ?>>
            <span class="icon"></span>
            <span class="text"><?php echo $item->title; ?></span>
        </a>
    <?php
    } else {
    
        // Render the menu item.
        switch ($item->type) :
            case 'separator':
            case 'url':
            case 'component':
                require JModuleHelper::getLayoutPath('mod_menu', 'default_'.$item->type);
                break;

            default:
                require JModuleHelper::getLayoutPath('mod_menu', 'default_url');
                break;
        endswitch;
    }    
	// The next item is deeper.
	if ($item->deeper) {
		echo '<ul class="level-'.($item->level+1).'">';
	}
	// The next item is shallower.
	elseif ($item->shallower) {
		echo '</li>';
		echo str_repeat('</ul></li>', $item->level_diff);
	}
	// The next item is on the same level.
	else {
		echo '</li>';
	}
endforeach;
?></ul>

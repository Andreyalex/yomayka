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

$nav_dropdown = empty($nav_dropdown)? false : true;
$nav_list = empty($nav_list)? false : true;

$nav_flyout = '';
if ( preg_match( '/nav-flyout/', $class_sfx ) ) {
	$nav_flyout = " nav-flyout";
}
$nav_stacked = '';
if ( preg_match( '/nav-stacked/', $class_sfx ) ) {
	$nav_stacked = " nav-stacked";
}

// Note. It is important to remove spaces between elements.

if (empty($class)) {
    $class = 'nav'; 
}

?>

<ul class="<?php echo $class.$class_sfx; ?> level-top"<?php
	$tag = '';
	if ($params->get('tag_id')!=NULL) {
		$tag = $params->get('tag_id').'';
		echo ' id="'.$tag.'"';
	}
?>>
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

	// The next item is deeper.
	if (($item->deeper) && ($nav_flyout)) {
		echo '<ul class="flyout-menu level-'.($item->level+1).'">';
	}
	elseif (($item->deeper) && ($nav_dropdown)){
		if ($item->level < 2) {
			echo '<ul class="dropdown-menu level-'.($item->level+1).'">';
		}
		else {
			echo '<ul class="flyout-menu level-'.($item->level+1).'">';
		}
	}
	elseif (($item->deeper) && ($nav_list)){
		echo '<ul class="nav nav-list level-'.($item->level+1).'">';
	}
	elseif ($item->deeper) {
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

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

$groups = array();

foreach ($list as $i => &$item) {
    if ($item->level == 2) {
        if (!isset($groups[$item->parent_id])) $groups[$item->parent_id] = array();
        $groups[$item->parent_id][] = $item;
    }    
}

?>
<div class="groups-container">
<?php    
foreach ($groups as $key => $group) {
    $class = '';
    if (in_array($key, $path)) $class .= ' active'; 
    echo '<ul class="group'.$class.'" data-parent="'.$key.'">';
    foreach ($group as $item) {
        $class = 'menuitem alias-'.$item->alias;
        if ($item->id == $active_id) {
            $class .= ' current';
        }

    	if (	$item->type == 'alias' &&
			in_array($item->params->get('aliasoptions'),$path)
        	||	in_array($item->id, $path)) {
            $class .= ' active' . (!empty($activeIsOpened)? ' open' : '');
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
        $classItem = $item->anchor_css ? 'class="'.$item->anchor_css.'" ' : '';
        $titleItem = $item->anchor_title ? 'title="'.$item->anchor_title.'" ' : '';
        $linktype = $item->title;
        ?>
        <a <?php echo $classItem; ?>href="<?php echo $item->flink; ?>" <?php echo $titleItem; ?>>
            <span class="icon"></span>
            <span class="text"><?php echo $linktype; ?></span>
        </a>
        <?php
        echo "</li>\n";
    }
    echo "</ul>\n";
}
?>
</div>
<script language="javascript">
    
    !function($){
        var container = $('#pos-apex-bottom .modtype-mod_menu-submenu .groups-container');
        var levelTop = $('#apex .modtype-mod_menu .level-top');
        var interval = null;
        $('#pos-apex-bottom .modtype-mod_menu-submenu .group').each(function(){
            var group = this;
            var parentId = $(group).attr('data-parent');
            var parent = $('#apex .modtype-mod_menu .level-top .item-'+parentId+' a');
            if (parent.length > 0) {
                parent.click(function(ev){
                    ev.preventDefault();

                    var levelTopItem = $(this).parent('li');

                    var alreadyOpened = false;
                    $('#pos-apex-bottom .modtype-mod_menu-submenu .group').each(function(){
                        var item = this;
                        if (item == group) {
                            alreadyOpened = $(item).hasClass('open');
                        } else {
                            $(item).removeClass('open');
                        }    
                    })
                    
                    levelTop.find('li').removeClass('open');
                    
                    if (alreadyOpened) {
                        levelTop.removeClass('open');
                        levelTopItem.removeClass('open');
                        container.toggleClass('open');
                        interval = setInterval(function(){
                            $(group).removeClass('open');
                            clearInterval(interval);
                        }, 500)
                    } else {    
                        levelTop.addClass('open');
                        levelTopItem.addClass('open');
                        container.addClass('open');
                        interval && clearInterval(interval);
                        $(group).addClass('open');
                    }    

                    return false;
                })
            }
        })
    }(jQuery)
</script>

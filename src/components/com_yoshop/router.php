<?php
/**
 * @version     0.5
 * @package     com_yoshop
 * @copyright   © 2013. Все права защищены.
 * @license     GNU General Public License версии 2 или более поздней; Смотрите LICENSE.txt
 * @author      Andreyalek <andreyalek@gmail.com> - http://
 */

// No direct access
defined('_JEXEC') or die;

/**
 * Should create:
 * <categoryAlias>
 * <categoryAlias>/<itemAlias>
 * <categoryAlias>/<itemAlias>/[add/edit]
 * @param	array	A named array
 * @return	array
 */
function YoshopBuildRoute(&$query)
{
    $segments = array();

    if (!empty($query['category_id'])) {

        if(empty($query['Itemid'])) {
            // Create category route
            $dbo = JFactory::getDbo();
            $dbo->setQuery("SELECT * FROM #__menu WHERE link LIKE \"index.php?option=com_yoshop&view=category&id={$query['category_id']}%\"");
            $menu = $dbo->loadObject();
            if ($menu) {
                $query['Itemid'] = $menu->id;
            } else {
                // Create custom category route
            }

        }
    }

    if (!empty($query['product_id'])) {
        $segments[] = $query['product_id'];
    }

    return $segments;
}

/**
 * @param	array	A named array
 * @param	array
 *
 * Formats:
 *
 * index.php?/yoshop/task/id/Itemid
 *
 * index.php?/yoshop/id/Itemid
 */
function YoshopParseRoute($segments)
{
    $vars = array();

    // If $segment is just one then we assume that this is an product
    if(count($segments) == 1) {
        $vars['option'] = 'com_yoshop';
        $vars['view'] = 'product';
        $vars['layout'] = 'default';
        $vars['id'] = $segments[0];
    }

	return $vars;
}

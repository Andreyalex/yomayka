<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_yoshop_featured
 *
 * @copyright   Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

class ModYoshopFeaturedHelper
{
	public static function getProducts($ids)
	{
        $dbo = JFactory::getDbo();
        $dbo->setQuery(
            'SELECT p.*, c.title as category_title, m.path_prev as image '.
            'FROM #__yoshop_product AS p '.
            'JOIN #__categories AS c ON p.category = c.id '.
            'JOIN #__yoshop_media AS m ON m.parent_id = p.id AND m.is_title=1 '.
            'WHERE p.id IN ('.$ids.') '.
            'ORDER BY p.id DESC'
        );

        $result = $dbo->loadObjectList();
        return $result;
	}

    public static function getGroupedProducts($ids)
    {
        $res = array();
        $items = self::getProducts($ids);

        foreach($items as $item) {
            if (!isset($res[$item->category])) {
                $res[$item->category] = array();
            }
            $res[$item->category][] = $item;
        }

        return $res;
    }
}

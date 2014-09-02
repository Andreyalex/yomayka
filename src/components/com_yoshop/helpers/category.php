<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_content
 *
 * @copyright   Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/**
 * Content Component Category Tree
 *
 * @package     Joomla.Site
 * @subpackage  com_content
 * @since       1.6
 */
class YoshopCategories extends JCategories
{
	public function __construct($options = array())
	{
		$options['table'] = '#__content';
		$options['extension'] = 'com_yoshop';

		parent::__construct($options);
	}


    /**
     * @param $item stdClass
     */
    public static function createUrl($cid)
    {
        $params = array(
            'category_id' => $cid,
        );
        $segments = yoshopBuildRoute($params);

        $route = !empty($params['Itemid'])?
            $route = JRoute::_('index.php?Itemid='.$params['Itemid']) :
            '/component/yoshop/category';

        return $route.'/'.implode('/', $segments);
    }
}

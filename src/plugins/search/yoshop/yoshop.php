<?php
/**
 * @package     Joomla.Plugin
 * @subpackage  Search.yoshop
 *
 * @copyright   Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/**
 * Yoshop Search plugin
 *
 * @package     Joomla.Plugin
 * @subpackage  Search.yoshop
 * @since       1.6
 */
class PlgSearchYoshop extends JPlugin
{
	/**
	 * Load the language file on instantiation.
	 *
	 * @var    boolean
	 * @since  3.1
	 */
	protected $autoloadLanguage = true;

	/**
	 * @return array An array of search areas
	 */
	public function onContentSearchAreas()
	{
		static $areas = array(
			'yoshop' => 'PLG_SEARCH_YOSHOP_YOSHOP'
		);
		return $areas;
	}

	/**
	 * Weblink Search method
	 *
	 * The sql must return the following fields that are used in a common display
	 * routine: href, title, section, created, text, browsernav
	 *
	 * @param string Target search string
	 * @param string mathcing option, exact|any|all
	 * @param string ordering option, newest|oldest|popular|alpha|category
	 * @param mixed  An array if the search it to be restricted to areas, null if search all
	 */
	public function onContentSearch($text, $phrase = '', $ordering = '', $areas = null)
	{
		if (is_array($areas))
		{
			if (!array_intersect($areas, array_keys($this->onContentSearchAreas())))
			{
				return array();
			}
		}

        $searchText = $text;

        $db = JFactory::getDbo();
        $query = $db->getQuery(true);

        // Select the required fields from the table.
        $query->select('a.*, c.title as category_title, c.id as category_id');
        $query->from('`#__yoshop_product` AS a');
        $query->join('left', '`#__categories` AS c ON a.category = c.id');

        // Filter by search in title
        if (!empty($searchText)) {
            $search = $db->Quote('%' . $searchText . '%');
            $query->where('( a.name LIKE '.$search.' OR a.description LIKE '.$search.' OR c.title LIKE '.$search.')');
        }

        //echo $query; die;

        $db->setQuery($query);
        return $db->loadObjectList();
	}
}

<?php

/**
 * @version     0.5
 * @package     com_yoshop
 * @copyright   © 2013. Все права защищены.
 * @license     GNU General Public License версии 2 или более поздней; Смотрите LICENSE.txt
 * @author      Andreyalek <andreyalek@gmail.com> - http://
 */
defined('_JEXEC') or die;

jimport('joomla.application.component.modellist');
JLoader::import('helpers.product', JPATH_COMPONENT);

/**
 * Methods supporting a list of Yoshop records.
 */
class YoshopModelProducts extends YoshopModelList {

    /**
     * Constructor.
     *
     * @param    array    An optional associative array of configuration settings.
     * @see        JController
     * @since    1.6
     */
    public function __construct($config = array()) {
        parent::__construct($config);
    }

    /**
     * Method to auto-populate the model state.
     *
     * Note. Calling getState in this method will result in recursion.
     *
     * @since	1.6
     */
    protected function populateState($ordering = null, $direction = null) {

        // Initialise variables.
        $app = $this->di->app;

        // List state information
        $limit = $app->getUserStateFromRequest('global.list.limit', 'limit', $app->getCfg('list_limit'));
        $this->setState('list.limit', $limit);

        $limitstart = $this->di->app->input->getInt('limitstart', 0);
        $this->setState('list.start', $limitstart);

        
		if(empty($ordering)) {
			$ordering = 'a.ordering';
		}

        // List state information.
        parent::populateState($ordering, $direction);
    }

    /**
     * Build an SQL query to load the list data.
     *
     * @return	JDatabaseQuery
     * @since	1.6
     */
    protected function getListQuery() {
        // Create a new query object.
        $db = $this->getDbo();
        $query = $db->getQuery(true);

        // Select the required fields from the table.
        $query->select('a.*');
        $query->from('`#__yoshop_product` AS a');

        // Filter by search in title
        $search = $this->getState('filter.search');
        if (!empty($search)) {
            if (stripos($search, 'id:') === 0) {
                $query->where('a.id = ' . (int) substr($search, 3));
            } else {
                $search = $db->Quote('%' . $db->escape($search, true) . '%');
                $query->where('( a.name LIKE '.$search.' )');
            }
        }


        // Filter by categories
        $cats = $this->getState('filter.categories');
        if (!empty($cats)) {
            $query->where('a.category IN ('.implode(',',$cats).')');
        }

        //echo $query; die;
        return $query;
    }

    public function getItems()
    {
        $res = parent::getItems();

        if(!is_array($res)) {
            throw new Exception($this->getError());
        }
        return new YoshopCollection($res, array('rowClass' => 'YoshopModelProduct'));
    }
}

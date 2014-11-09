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

/**
 * Methods supporting a list of Yoshop records.
 */
class YoshopModelProducts extends YoModelList
{
    public $rowClassName = 'YoshopModelProduct';

    /**
     * Constructor.
     *
     * @param    array    An optional associative array of configuration settings.
     * @see        JController
     * @since    1.6
     */
    public function __construct($config = array()) {
        if (empty($config['filter_fields'])) {
            $config['filter_fields'] = array(
                'id', 'a.id',
                'ordering', 'a.ordering',
                'state', 'a.state',
                'created_by', 'a.created_by',
                'name', 'a.name',
                'description', 'a.description',

            );
        }

        parent::__construct($config);
    }

    /**
     * Method to auto-populate the model state.
     *
     * Note. Calling getState in this method will result in recursion.
     */
    protected function populateState($ordering = null, $direction = null) {
        // Initialise variables.
        $app = JFactory::getApplication();

        if ($app->input->get('fieldsReset')) {
            $app->setUserState($this->context . '.fields', null);
        }

        $tmp = $app->getUserStateFromRequest($this->context . '.fields', 'fields', array(), 'array');
        $fields = array();
        foreach($tmp as $id => $item) {
            list($null, $null, $metaId) = explode('-', $id);
            $fields[$metaId] = is_array($item)? array_keys($item) : $item;
        }
        $this->setState('fields', $fields);

        // List state information.
        parent::populateState('a.name', 'asc');
    }

    /**
     * Method to get a store id based on model configuration state.
     *
     * This is necessary because the model is used by the component and
     * different modules that might need different sets of data or different
     * ordering requirements.
     *
     * @param	string		$id	A prefix for the store id.
     * @return	string		A store id.
     * @since	1.6
     */
    protected function getStoreId($id = '') {
        // Compile the store id.
        $id.= ':' . $this->getState('filter.search');
        $id.= ':' . $this->getState('filter.state');

        return parent::getStoreId($id);
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
        $query->select(
                'distinct '.
                $this->getState(
                        'list.select', 'a.*'
                )
        );
        $query->from('`#__yoshop_product` AS a');

        
        // Join over the users for the checked out user.
//        $query->select('uc.name AS editor');
//        $query->join('LEFT', '#__users AS uc ON uc.id=a.checked_out');
    
		// Join over the user field 'created_by'
		$query->select('created_by.name AS created_by');
		$query->join('LEFT', '#__users AS created_by ON created_by.id = a.created_by');

        // Join over the user field 'created_by'
        $query->select('m.path_prev as image_prev');
        $query->join('LEFT', '#__yoshop_media AS m ON a.id=m.parent_id AND m.is_title>0');

        if ($this->getState('favorites')) {
            $query->select('f.cnt as favorites_count, fd.cnt as favorites_day_count');
            $query->join(
                'LEFT',
                '(select item_id, count(*) as cnt from #__yoshop_favorites where item_type=1 GROUP BY item_id) as f ON f.item_id = a.id');
            $query->join(
                'LEFT',
                '(select item_id, count(*) as cnt from #__yoshop_favorites where item_type=1 and created_date > '.strtotime(date('Y-m-d 00:00:00')).' GROUP BY item_id) as fd ON fd.item_id = a.id');
        }

        // Filter by published state
        $published = $this->getState('filter.state');
        if (is_numeric($published)) {
            $query->where('a.state = '.(int) $published);
        } else if ($published === '') {
            $query->where('(a.state IN (0, 1))');
        }

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
        $cat = $this->getState('filter.category_id');
        if ($cat !== '*') {
            $cats = (array) $this->getState('filter.categories');
            !empty($cat) && $cats[] = $cat;
            if (!empty($cats)) {
                $query->where('a.category_id IN ('.implode(',',$cats).')');
            }
        }

        $fields = $this->getState('fields');
        if (!empty($fields)) {
            $query->join('', '#__yoshop_product_field as field ON field.product_id = a.id');

            foreach($fields as $metaId => $item) {
                $query->where('field.meta_id='.$db->quote($metaId));
                if (is_array($item)) {
                    $query->where('field.value_string IN ('.join(',', $item).')');
                } else {
                    $query->where('field.value_string='.$db->escape($item));
                }
            }
        }

        // Add the list ordering clause.
        $orderCol = $this->state->get('list.ordering');
        $orderDirn = $this->state->get('list.direction');
        if ($orderCol && $orderDirn) {
            $query->order($db->escape($orderCol . ' ' . $orderDirn));
        }

        return $query;
    }
}

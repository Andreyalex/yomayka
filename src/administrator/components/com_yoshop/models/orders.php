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
class YoshopModelOrders extends YoModelList {

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
                'user_id', 'a.user_id',
                'name', 'a.name',
                'phone', 'a.phone',
                'email', 'a.email',
                'description', 'a.description',
                'created_date', 'a.created_date',
                'status', 'a.status',
                'last_event_date', 'a.last_event_date',
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
        $app = JFactory::getApplication('administrator');

        // Load the filter state.
        $search = $app->getUserStateFromRequest($this->context . '.filter.search', 'filter_search');
        $this->setState('filter.search', $search);

        $status = $app->getUserStateFromRequest($this->context . '.filter.status', 'filter_status', '', 'string');
        $this->setState('filter.status', $status);

        // Load the parameters.
        $params = JComponentHelper::getParams('com_yoshop');
        $this->setState('params', $params);

        // List state information.
        parent::populateState('a.created_date', 'desc');
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
        $id.= ':' . $this->getState('filter.status');

        return parent::getStoreId($id);
    }

    /**
     * Build an SQL query to load the list data.
     *
     * @return	JDatabaseQuery
     * @since	1.6
     */
    protected function getListQuery()
    {
        // Create a new query object.
        $db = $this->getDbo();
        $query = $db->getQuery(true);

        // Select the required fields from the table.
        $query->select('a.*');
        $query->from('`#__yoshop_order` AS a');

        // Filter by published state
        $published = $this->getState('filter.status');
        if (is_numeric($published)) {
            $query->where('a.status = '.(int) $published);
        }

        // Filter by search in title
        $search = $this->getState('filter.search');
        if (!empty($search)) {
            $search = $db->Quote('%' . $db->escape($search, true) . '%');
            $query->where('( a.name LIKE '.$search.' OR a.email LIKE '.$search.' OR a.phone LIKE '.$search.' OR a.description LIKE '.$search.' )');
        }

        // Add the list ordering clause.
        $orderCol = $this->state->get('list.ordering');
        $orderDirn = $this->state->get('list.direction');
        if ($orderCol && $orderDirn) {
            $query->order($db->escape($orderCol . ' ' . $orderDirn));
        }

        return $query;
    }

    public function getItems($prepare = true)
    {
        $prepare = (bool) $prepare;

        $res = parent::getItems();

        if(!is_array($res)) {
            throw new Exception($this->getError());
        }

        if ($prepare) {

            $dbo = JFactory::getDbo();

            foreach($res as &$item) {
                $item->link = JRoute::_('index.php?option=com_yoshop&task=order.edit&id='.$item->id);
            }
        }

        return $res;
    }
}

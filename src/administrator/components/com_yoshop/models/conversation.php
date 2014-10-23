<?php

/**
 * @version     0.5
 * @package     com_yoshop
 * @copyright   © 2013. Все права защищены.
 * @license     GNU General Public License версии 2 или более поздней; Смотрите LICENSE.txt
 * @author      Andreyalek <andreyalek@gmail.com> - http://
 */
defined('_JEXEC') or die;

/**
 * Methods supporting a list of Yoshop records.
 */
class YoshopModelConversation extends YoModelList
{
    public $rowClassName = 'YoshopModelMessage';

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
                'a.updated_date',
                'a.id', 'id',
                'a.user_1_id', 'user_1_id',
                'a.user_2_id', 'user_2_id'
            );
        }
        parent::__construct($config);
    }

    /**
     * Method to get an array of data items.
     *
     * @return  mixed  An array of data items on success, false on failure.
     *
     * @since   12.2
     */
    public function getItems($conversationId = null)
    {
        if ($conversationId) {
            $this->state->set('conversationId', $conversationId);
        }
        return parent::getItems();
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

        $cid = (int)$this->state->get('conversationId');
        // Select the required fields from the table.
        $query->select('a.*, u.username as user_username');
        $query->from('`#__yoshop_message` AS a');
        $query->join('', "#__users AS u ON a.created_by = u.id");

        $query->where("a.conversation_id = {$cid}");

        // Add the list ordering clause.
        $orderCol = $this->state->get('list.ordering');
        $orderDirn = $this->state->get('list.direction');
        if ($orderCol && $orderDirn) {
            $query->order($db->escape($orderCol . ' ' . $orderDirn));
        }

        return $query;
    }
}

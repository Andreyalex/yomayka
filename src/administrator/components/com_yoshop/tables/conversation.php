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
 * product Table class
 */
class YoshopTableConversation extends YoTable {

    public $_columns = array(
        'id',
        'user_1_id',
        'user_2_id',
        'last_message_id'
    );

    /**
     * Constructor
     *
     * @param &$db JDatabaseDriver A database connector object
     */
    public function __construct(&$db) {
        parent::__construct('#__yoshop_conversation', 'id', $db);
    }
}

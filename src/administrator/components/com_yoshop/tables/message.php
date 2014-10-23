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
class YoshopTableMessage extends YoTable
{
    public $id;
    public $state;
    public $created_by;
    public $user_to;
    public $content;
    public $created_date;
    public $updated_date;
    public $conversation_id;
    public $user_username;

    /**
     * Constructor
     *
     * @param &$db JDatabaseDriver A database connector object
     */
    public function __construct(&$db) {
        parent::__construct('#__yoshop_message', 'id', $db);
    }
}
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
class YoshopTableProductField extends YoTable {

    public $id;
    public $product_id;
    public $product_field_id;
    public $name;
    public $value_int;
    public $value_text;
    public $value_string;

    /**
     * Constructor
     *
     * @param &$db JDatabaseDriver A database connector object
     */
    public function __construct(&$db) {
        parent::__construct('#__yoshop_product_field', 'id', $db);
    }
}

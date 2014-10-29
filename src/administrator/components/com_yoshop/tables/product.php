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
class YoshopTableProduct extends YoTable {

    public $id;
    public $ordering;
    public $state;
    public $created_by;
    public $name;
    public $description;
    public $price_base;
    public $count;
    public $category_id;
    public $image_prev;
    public $favorites_count;
    public $favorites_day_count;

    /**
     * Just for doc
     * @var array
     */
    public $_relations = array(
        'link',
        'media',
        'fieldsMeta',
        'fields'
    );

    /**
     * Constructor
     *
     * @param &$db JDatabaseDriver A database connector object
     */
    public function __construct(&$db) {
        parent::__construct('#__yoshop_product', 'id', $db);
    }
}

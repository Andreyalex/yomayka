<?php
/**
 * @version     0.5
 * @package     com_yoshop
 * @copyright   © 2013. Все права защищены.
 * @license     GNU General Public License версии 2 или более поздней; Смотрите LICENSE.txt
 * @author      Andreyalek <andreyalek@gmail.com> - http://
 */

// No direct access.
defined('_JEXEC') or die;

jimport('joomla.application.component.modelform');

class YoshopModelCartitem extends YoModel
{
    public $product = null;
    public $count = null;

    public function __construct($config)
    {
        parent::__construct($config);

        /** @var YoshopModelProduct $product */
        $product = $this->di->createModel('product');
        $this->product = $product->getItem($config['state']->id);

        $this->count = $config['state']->count;
    }

    public function getTotalPrice()
    {
        $res = (int)$this->product->price_base * (int)$this->count;
        return $res;
    }

    public function toArray()
    {
        return array(
            'id' => $this->product->id,
            'count' => $this->count
        );
    }

    public function getId()
    {
        return $this->product->id;
    }
}
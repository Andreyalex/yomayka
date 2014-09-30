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

/**
 * Yoshop model.
 */
class YoshopModelCart extends YoModelForm
{
    protected $_collection;

    public function __construct($config = array())
    {
        parent::__construct($config);

        $session = JFactory::getSession();
        $items = $session->get('yoshopCart');
        $this->_collection = new YoCollection($items, array('rowClass' => 'YoshopModelCartitem'));
    }

    public function getTable($type = 'Media', $prefix = 'YoshopTable', $config = array())
    {
        throw new Exception('Model cart does not have a table');
    }

    function addProduct($id, $count)
    {
        $present = false;
        foreach($this->_collection as $item) {
            if ($item->getId() == $id) {
                $item->count += $count;
                $present = true;
                break;
            }
        }

        if (!$present) {
            $this->_collection->addItem(array(
                'id' => $id,
                'count' => $count
            ));
        }
        $this->_update();
    }

    function removeProduct($id, $count)
    {
        for($i=0; $i < count($this->_collection); $i++) {
            $item = $this->_collection[$i];
            if ($item->getId() == $id) {
                $item->count -= $count;
                if ($item->count < 1) {
                    $this->_collection->removeItem($i);
                }
                break;
            }
        }

        $this->_update();
    }

    public function getProducts()
    {
        return $this->_collection;
    }

    public function hasProduct($id)
    {
        if (empty($id)) throw new Exception("Cannot retrieve product from cart. Product id absent");

        foreach($this->getProducts() as $item) {
            if ($item->product->id == $id) {
                return true;
            }
        }
        return false;
    }

    protected function _update()
    {
        $session = JFactory::getSession();
        $session->set('yoshopCart', $this->toArray());
    }

    /**
     * Method to get the profile form.
     *
     * The base form is loaded from XML
     *
     * @param	array	$data		An optional array of data for the form to interogate.
     * @param	boolean	$loadData	True if the form is to load its own data (default case), false if not.
     * @return	JForm	A JForm object on success, false on failure
     * @since	1.6
     */
    public function getForm($data = array(), $loadData = true)
    {
        // Get the form.
        $form = $this->loadForm('com_yoshop.cart', 'cart', array('control' => 'jform', 'load_data' => $loadData));
        if (empty($form)) {
            return false;
        }

        $sess = JFactory::getSession();
        $form->step = $sess->get('yoshop.cart.form.step', 1);

        return $form;
    }

    public function getCount()
    {
        $count = 0;
        foreach($this->getProducts() as $item) {
            $count += $item->count;
        }

        return $count;
    }

    public function getPrice()
    {
        $price = 0;
        foreach($this->getProducts() as $item) {
            $price += $item->getTotalPrice();
        }
        return $price;
    }

    public function toArray()
    {
        $arr = array();
        $products = $this->getProducts();
        foreach($products as $item) {
            $arr[] = $item->toArray();
        }

        return $arr;
    }

    public function getState()
    {
        return array(
          'products' => $this->toArray(),
          'count' => $this->getCount(),
          'price' => $this->getPrice()
        );
    }

    public function clear()
    {
        $this->getProducts()->clear();
        $this->_update();
    }
}

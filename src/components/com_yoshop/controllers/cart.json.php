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
 * Cart controller class.
 */
class YoshopControllerCart extends YoControllerJson
{
    public function addProduct()
    {
        // Initialise variables.
        $app   = JFactory::getApplication();
        $model = $this->getModel('Cart', 'YoshopModel');

        // Get the user data.
        $id = $app->input->get('id');
        $count = $app->input->get('count');

        if (empty($id) || empty($count)) {
            throw new Exception('Cannot add product to cart. Required data absent.');
        }

        $model->addProduct($id, $count);

        $this->setData($model->getState());
    }


    public function removeProduct()
    {
        // Initialise variables.
        $app   = JFactory::getApplication();
        /** @var YoshopModelCart $model */
        $model = $this->createModel('cart');

        // Get the user data.
        $id = $app->input->get('id');
        $count = $app->input->get('count');

        if (empty($id) || empty($count)) {
            throw new Exception('Cannot remove product from cart. Required data absent.');
        }

        $model->removeProduct($id, $count);

        $this->setData($model->getState());
    }

    public function getState()
    {
        $model = $this->getModel('Cart', 'YoshopModel');
        $this->setData($model->toArray());
    }
}
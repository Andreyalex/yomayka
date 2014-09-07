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

jimport('joomla.application.component.controllerform');

/**
 * Product controller class.
 */
class YoshopControllerProduct extends JControllerForm
{
    function __construct() {
        $this->view_list = 'products';
        parent::__construct();
    }

    public function getModel($name = 'Productform', $prefix = 'YoshopModel', $config = array('ignore_request' => true))
    {
        return parent::getModel($name, $prefix, $config);
    }

    public function add()
    {
        /** @var YoshopModelProduct $product */
        $product = $this->di->createModel('productform');
        $id = $product->createDraft();

        $this->input->set('id', $id);
        return parent::edit();
    }
}
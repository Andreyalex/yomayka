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
class YoshopControllerOrder extends JControllerForm
{
    function __construct() {
        $this->view_list = 'orders';
        parent::__construct();
    }

    public function getModel($name = 'Orderform', $prefix = 'YoshopModel')
    {
        return parent::getModel($name, $prefix);
    }
}
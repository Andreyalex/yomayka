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

jimport('joomla.application.component.view');

class YoshopViewCart extends YoView {

    protected $state;
    protected $item;
    protected $params;

    /**
     * Display the view
     */
    public function display($tpl = null)
    {
        $app = JFactory::getApplication();

         /** @var YoshopModelCart $model */
        $model = $this->di->createModel('cart');

        $this->products = $model->getProducts();
        $this->count = $model->getCount();
        $this->price = $model->getPrice();

        $this->form = $model->getForm();

        $this->menuItem = $app->getMenu()->getActive();

        $this->returnUrl = !empty($_SERVER['HTTP_REFERER'])? $_SERVER['HTTP_REFERER'] : '/';

        parent::display($tpl);
    }
}

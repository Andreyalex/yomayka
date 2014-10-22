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

/**
 * View to edit
 */
class YoshopViewUserproduct extends YoView {

    protected $form;
    protected $params;
    protected $id;
    protected $menuItem;
    protected $product;

    /**
     * Display the view
     */
    public function display($tpl = null)
    {
		$app  = JFactory::getApplication();

        YoDi::getInstance('Yoshop');
        $this->menuItem = $app->getMenu()->getActive();
        $this->params  = $app->getParams('com_yoshop');
        $this->product = new YoshopModelProduct();
        $this->id = $app->input->get('subId');
        $this->product->getItem($this->id);

        parent::display($tpl);
    }

    function editHook() {
        $this->form = $this->product->getForm();
    }
}

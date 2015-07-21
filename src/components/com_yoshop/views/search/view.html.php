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

require_once JPATH_ADMINISTRATOR.'/components/com_search/helpers/search.php';

/**
 * View to edit
 */
class YoshopViewSearch extends YoView {

    protected $state;
    protected $params;

    /**
     * Display the view
     */
    public function display($tpl = null)
    {
        $this->error   = null;

        // Get some data from the model

        /** @var YoshopModelSearch $model */
        $model = YoDi::getInstance()->createModel('search');

        $state      = $model->getState();
        $this->searchword = $state->get('keyword');

        // Sanitise searchword
        if (SearchHelper::santiseSearchWord($this->searchword, $state->get('match')))
        {
            $this->error = JText::_('COM_SEARCH_ERROR_IGNOREKEYWORD');
        }

        $model->setAreas('yoshop');
        $data = $model->getData();
        $this->products = new YoCollection($data, array('rowClass' => 'YoshopModelProduct'));

        $this->total      = $model->getTotal();
        $this->pagination = $model->getPagination();

        $cart = YoDi::getInstance()->createModel('cart');
        $this->cartState = $cart->getState();
        $this->cartIds = JArrayHelper::getColumn($this->cartState['products'], 'id');

        // Check for errors.
        if (count($errors = $model->get('Errors'))) {
            throw new Exception(implode("\n", $errors));
        }

        $this->_prepareDocument();

        parent::display($tpl);
    }
}

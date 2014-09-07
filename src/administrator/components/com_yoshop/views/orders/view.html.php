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
 * View class for a list of Yoshop.
 */
class YoshopViewOrders extends YoshopView
{
	protected $items;
	protected $pagination;
	protected $state;

	/**
	 * Display the view
	 */
	public function display($tpl = null)
	{
		$this->state		= $this->get('State');
		$this->items		= $this->get('Items');
		$this->pagination	= $this->get('Pagination');

		// Check for errors.
		if (count($errors = $this->get('Errors'))) {
			throw new Exception(implode("\n", $errors));
		}
        
		YoshopHelper::addSubmenu('orders');
        
		$this->addToolbar();
        
        $this->sidebar = JHtmlSidebar::render();
		parent::display($tpl);
	}

	/**
	 * Add the page title and toolbar.
	 *
	 * @since	1.6
	 */
	protected function addToolbar()
	{
		$state	= $this->get('State');

        $canDo	= YoshopHelper::getActions($state->get('filter.order_id'));

		JToolBarHelper::title(JText::_('COM_YOSHOP_TITLE_ORDERS'), 'orders.png');

        //Check if the form exists before showing the add/edit buttons
        $formPath = JPATH_COMPONENT_ADMINISTRATOR.'/views/product';
        if (file_exists($formPath)) {

            if ($canDo->get('core.create')) {
			    JToolBarHelper::addNew('product.add','JTOOLBAR_NEW');
		    }

		    if ($canDo->get('core.edit') && isset($this->items[0])) {
			    JToolBarHelper::editList('product.edit','JTOOLBAR_EDIT');
		    }

        }

        //Show trash and delete for components that uses the state field
        if (isset($this->items[0]->state)) {
		    if ($state->get('filter.state') == -2 && $canDo->get('core.delete')) {
			    JToolBarHelper::deleteList('', 'orders.delete','JTOOLBAR_EMPTY_TRASH');
			    JToolBarHelper::divider();
		    } else if ($canDo->get('core.edit.state')) {
			    JToolBarHelper::trash('orders.trash','JTOOLBAR_TRASH');
			    JToolBarHelper::divider();
		    }
        }

		if ($canDo->get('core.admin')) {
			JToolBarHelper::preferences('com_yoshop');
		}
        
        //Set sidebar action - New in 3.0
		JHtmlSidebar::setAction('index.php?option=com_yoshop&view=orders');
        
        $this->extra_sidebar = '';
        
		JHtmlSidebar::addFilter(
			JText::_('COM_YOSHOP_ORDER_STATUS'),
			'filter_status',
            YoshopHelperOrder::getStatusFilter($this->state->get('filter.status'), 'add <all>')
		);

        
	}
    
	protected function getSortFields()
	{
		return array(
            'a.id' => JText::_('JGRID_HEADING_ID'),
            'a.name' => JText::_('COM_YOSHOP_ORDERS_NAME'),
            'a.email' => JText::_('COM_YOSHOP_ORDERS_EMAIL'),
            'a.phone' => JText::_('COM_YOSHOP_ORDERS_PHONE'),
            'a.status' => JText::_('COM_YOSHOP_ORDERS_STATUS'),
            'a.created_date' => JText::_('COM_YOSHOP_ORDERS_CREATED_DATE'),
            'a.last_event_date' => JText::_('COM_YOSHOP_ORDERS_LAST_EVENT_DATE')
		);
	}

    
}

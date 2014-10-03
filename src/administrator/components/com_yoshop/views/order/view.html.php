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
class YoshopViewOrder extends YoView
{
	protected $state;
	protected $item;
	protected $form;

	/**
	 * Display the view
	 */
	public function display($tpl = null)
	{
        $app = JFactory::getApplication();

        $id = $app->input->get('id');

        /** @var YoshopModelOrderform $order */
        $orderForm = $this->createModel('orderform');
        $orderForm->getItem($id);
        $orderForm->getState();
        $this->form = $orderForm->getForm();


        /** @var YoshopModelOrder $order */
        $order = $this->createModel('order');

		$this->state = $this->get('State');
		$this->item = $order->getItem($id);
        $this->productsCount = $order->getProductsCount();
        $this->totalPrice = $order->getTotalPrice();

        $this->products = array();
        foreach($order->getProducts() as $item) {
            $product = $this->createModel('product');
            $product->getItem($item->product_id);
            $this->products[] = (object) array(
                'item' => $item,
                'product' => $product
            );
        }

		// Check for errors.
		if (count($errors = $this->get('Errors'))) {
            throw new Exception(implode("\n", $errors));
		}

		$this->addToolbar();
		parent::display($tpl);
	}

	/**
	 * Add the page title and toolbar.
	 */
	protected function addToolbar()
	{
		JFactory::getApplication()->input->set('hidemainmenu', true);

		$user		= JFactory::getUser();
		$isNew		= ($this->item->id == 0);
        if (isset($this->item->checked_out)) {
		    $checkedOut	= !($this->item->checked_out == 0 || $this->item->checked_out == $user->get('id'));
        } else {
            $checkedOut = false;
        }
		$canDo		= YoshopHelper::getActions();

		JToolBarHelper::title(JText::_('COM_YOSHOP_TITLE_ORDER'), 'order.png');

		// If not checked out, can save the item.
		if (!$checkedOut && ($canDo->get('core.edit')||($canDo->get('core.create'))))
		{

			JToolBarHelper::apply('order.apply', 'JTOOLBAR_APPLY');
			JToolBarHelper::save('order.save', 'JTOOLBAR_SAVE');
		}
		if (!$checkedOut && ($canDo->get('core.create'))){
			JToolBarHelper::custom('order.save2new', 'save-new.png', 'save-new_f2.png', 'JTOOLBAR_SAVE_AND_NEW', false);
		}
		// If an existing item, can save to a copy.
		if (!$isNew && $canDo->get('core.create')) {
			JToolBarHelper::custom('order.save2copy', 'save-copy.png', 'save-copy_f2.png', 'JTOOLBAR_SAVE_AS_COPY', false);
		}
		if (empty($this->item->id)) {
			JToolBarHelper::cancel('order.cancel', 'JTOOLBAR_CANCEL');
		}
		else {
			JToolBarHelper::cancel('order.cancel', 'JTOOLBAR_CLOSE');
		}

	}
}

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
class YoshopViewProduct extends YoView
{
    protected $state;
    protected $item;
    protected $form;

    /**
     * Display the view
     */
    public function display($tpl = null)
    {
        /** @var YoshopModelProduct $model */
        $model = YoDi::getInstance()->createModel('product');

        $id = JFactory::getApplication()->input->get('id');

        $model->setState('id', $id);
        $this->state	= $model->getState();
        $this->item		= $model->getItem();
        $this->form		= $model->getForm();

        // Check for errors.
        if (count($errors = $this->get('Errors'))) {
            throw new Exception(implode("\n", $errors));
        }

        $this->addToolbar();
        parent::display($tpl);
    }

    /**
     * Add the page title    and toolbar.
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

        JToolBarHelper::title(JText::_('COM_YOSHOP_TITLE_PRODUCT'), 'product.png');

        // If not checked out, can save the item.
        if (!$checkedOut && ($canDo->get('core.edit')||($canDo->get('core.create'))))
        {

            JToolBarHelper::apply('product.apply', 'JTOOLBAR_APPLY');
            JToolBarHelper::save('product.save', 'JTOOLBAR_SAVE');
        }
        if (!$checkedOut && ($canDo->get('core.create'))){
            JToolBarHelper::custom('product.save2new', 'save-new.png', 'save-new_f2.png', 'JTOOLBAR_SAVE_AND_NEW', false);
        }
        // If an existing item, can save to a copy.
        if (!$isNew && $canDo->get('core.create')) {
            JToolBarHelper::custom('product.save2copy', 'save-copy.png', 'save-copy_f2.png', 'JTOOLBAR_SAVE_AS_COPY', false);
        }
        if (empty($this->item->id)) {
            JToolBarHelper::cancel('product.cancel', 'JTOOLBAR_CANCEL');
        }
        else {
            JToolBarHelper::cancel('product.cancel', 'JTOOLBAR_CLOSE');
        }

    }
}

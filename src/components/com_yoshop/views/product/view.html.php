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
class YoshopViewProduct extends YoView {

    protected $id;
    protected $catId;
    protected $state;
    protected $item;
    protected $form;
    protected $product;
    protected $fields;
    protected $fieldsMeta;
    protected $menuItem;
    protected $isInCart;

    /**
     * Display the view
     */
    public function display($tpl = null)
    {
        $app  = JFactory::getApplication();
        $this->product = new YoshopModelProduct;
        $this->menuItem = $app->getMenu()->getActive();
        $this->id = $app->input->get('id');
        $this->product->getItem($this->id);

        parent::display($tpl);
    }

    public function defaultHook()
    {
        $cart = new YoshopModelCart;
        $this->isInCart = $cart->hasProduct($this->product->id);
    }

    public function editHook()
    {
        $this->form = $this->product->getForm();
        $this->catId = $this->product->data->category_id;
        $this->fields = $this->product->getFields();
    }

    public function fieldsHook()
    {
        $app  = JFactory::getApplication();
        $this->catId = $app->input->get('categoryId');
        $this->fieldsMeta = $this->product->getFieldsMeta($this->catId);
        $this->fields = $this->product->getFields();
    }
}

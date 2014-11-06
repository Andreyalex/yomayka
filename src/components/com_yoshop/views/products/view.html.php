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
class YoshopViewProducts extends YoView
{
	protected $catId;
	protected $model;
	protected $fields;
    protected $state;
	protected $items;
	protected $pagination;

	/**
	 * Display the view
	 */
	public function display($tpl = null)
	{
        $this->model        = new YoshopModelProducts();
        $this->state		= $this->model->getState();
        $this->items		= $this->model->getItems();
        $this->pagination	= $this->model->getPagination();

        parent::display($tpl);
	}

    public function fieldsHook()
    {
        $app  = JFactory::getApplication();
        $this->catId = $app->input->get('categoryId');
        $product = new YoshopModelProduct();
        $product->data->category_id = $this->catId;
        $this->fields = $product->getFields();
    }
}

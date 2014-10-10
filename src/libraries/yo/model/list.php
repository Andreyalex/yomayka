<?php
/**
 * @version     0.5
 * @package     yo
 * @copyright   © 2013. Все права защищены.
 * @license     GNU General Public License версии 2 или более поздней; Смотрите LICENSE.txt
 * @author      Andreyalek <andreyalek@gmail.com> - http://
 */

// No direct access.
defined('_JEXEC') or die;

jimport('joomla.application.component.modellist');
jimport('joomla.event.dispatcher');

/**
 * Yo model.
 */
abstract class YoModelList extends JModelList
{
    public $text_prefix = 'COM_YO';

    public $rowClassName = null;

    public $data = null;

    /**
     * Constructor
     *
     * @param   array  $config  An array of configuration options (name, state, dbo, table_path, ignore_request).
     *
     * @since   0.5
     * @throws  Exception
     */
    public function __construct($config)
    {
        parent::__construct($config);

        !empty($config['data']) && $this->setData($config['data']);

        $this->populateState();
    }

    /**
     * Method to set items.
     *
     * @param	integer	The id of the object to get.
     *
     * @return	mixed	Object on success, false on failure.
     */
    public function setData($items)
    {
        $this->data = $items? new YoCollection($items, array('rowClass' => $this->rowClassName)) : null;
    }

    /**
     * Method to get an array of data items.
     *
     * @return  mixed  An array of data items on success, false on failure.
     *
     * @since   12.2
     */
    public function getItems()
    {
        $this->setData(parent::getItems());
        return $this->data;
    }
}
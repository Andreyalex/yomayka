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

jimport('joomla.application.component.modeladmin');
jimport('joomla.event.dispatcher');

/**
 * Yo model.
 */
abstract class YoModelAdmin extends JModelAdmin
{
    public $data = null;

    public $prefix = null; // [yoshop] from [Yoshop]ModelProduct

    protected $text_prefix = 'COM_YO';

    /**
     * Constructor
     *
     * @param   array  $config  An array of configuration options (name, state, dbo, table_path, ignore_request).
     *
     * @since   0.5
     * @throws  Exception
     */
    public function __construct($config = array())
    {
        // Able to receive entity's id
        if (is_numeric($config)) {
            $id = (int) $config;
            $config = array();
        }

        parent::__construct($config);

        // Lets fetch data by id
        // or set data itself (if some of them are passed)
        if (!empty($id)) {
            $this->getItem($id);
        } else {
            $this->setItem(!empty($config['data'])? (object) $config['data'] : null);
        }
    }

    /**
     * Method to get an ojbect.
     *
     * @param	integer	The id of the object to get.
     *
     * @return	mixed	Object on success, false on failure.
     */
    public function getItem($id = null)
    {
        if (!empty($id)) {
            $this->setItem(parent::getItem($id));
        }

        return $this->data;
    }

    /**
     * Method to get an ojbect.
     *
     * @param	integer	The id of the object to get.
     *
     * @return	mixed	Object on success, false on failure.
     */
    public function setItem($item)
    {
        if ($item instanceof JTable) {
            $this->data = $item;
        } else {
            $this->data = $this->getTable();
            $this->data->_model = $this;
            $item && $this->data->bind($item);
        }
    }

    /**
     * Method to save the form data.
     *
     * @param	array		The form data.
     * @return	mixed		The user id on success, false on failure.
     * @since	1.6
     */
    public function save($data = null)
    {
        $data && ($this->data->bind($data));
        if ($this->data->store() !== true) {
            return false;
        }
        return true;
    }

    function delete($data)
    {
        if (is_numeric($data)) {
            $id = (int) $data;
        } else {
            $id = (!empty($data['id'])) ? $data['id'] : (int)$this->getState('id');
        }

        $table = $this->getTable();
        if ($table->delete($id) !== true) {
            return false;
        }
        return $id;
    }

    public function getTable($type = null, $prefix = 'YoTable', $config = array())
    {
        return parent::getTable($type, $prefix, $config);
    }

    /**
     * Method to get a form object.
     *
     * @param   string   $name     The name of the form.
     * @param   string   $source   The form source. Can be XML string if file flag is set to false.
     * @param   array    $options  Optional array of options for the form creation.
     * @param   boolean  $clear    Optional argument to force load a new form.
     * @param   string   $xpath    An optional xpath to search for the fields.
     *
     * @return  mixed  JForm object on success, False on error.
     *
     * @see     JForm
     * @since   12.2
     */
    protected function loadForm($name, $source = null, $options = array(), $clear = false, $xpath = false)
    {
        $prefix = JPATH_ADMINISTRATOR . '/components/com_'. $this->prefix;
        JForm::addFormPath($prefix . '/models/forms');
        JForm::addFieldPath($prefix . '/models/fields');
        JForm::addFormPath($prefix . '/model/form');
        JForm::addFieldPath($prefix . '/model/field');

        return parent::loadForm($name, $source, $options, $clear, $xpath);
    }

    /**
     * Method to get the record form.
     *
     * @param	array	$data		An optional array of data for the form to interogate.
     * @param	boolean	$loadData	True if the form is to load its own data (default case), false if not.
     * @return	JForm	A JForm object on success, false on failure
     * @since	1.6
     */
    public function getForm($data = array(), $loadData = true)
    {
        // Get the form.
        $form = $this->loadForm("com_{$this->prefix}.{$this->name}", $this->name, array('control' => 'jform', 'load_data' => $loadData));

        if (empty($form)) {
            return false;
        }

        JFactory::getLanguage()->load("com_{$this->prefix}");
        JFactory::getLanguage()->load("com_{$this->prefix}", JPATH_ADMINISTRATOR);

        return $form;
    }

    /**
     * Method to get the data that should be injected in the form.
     *
     * @return	mixed	The data for the form.
     * @since	1.6
     */
    protected function loadFormData()
    {
        // Check the session for previously entered form data.
        $data = JFactory::getApplication()->getUserState("com_{$this->prefix}.edit.{$this->name}.data", array());

        if (empty($data)) {
            $data = $this->getItem();

        }

        return $data;
    }

    public function toArray()
    {
        $result = array();
        foreach($this->data as $key => $item) {
            $result[$key] = method_exists($item, 'toArray')? $item->toArray() : $item;
        }
        return $result;
    }

    public function getItemProperty()
    {
        return null;
    }
}
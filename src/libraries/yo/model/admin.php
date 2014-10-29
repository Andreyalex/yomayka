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
    public $data;

    public $rawData;

    public $prefix; // [yoshop] from [Yoshop]ModelProduct

    public $tableName; // [product] from YoshopTable[Product]

    protected $text_prefix;

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
        if (empty($this->prefix) || empty($this->tableName)) {
            list($prefix, $tableName) = explode('Model', get_class($this));
            empty($this->prefix) && ($this->prefix = strtolower($prefix));
            empty($this->tableName) && ($this->tableName = strtolower($tableName));
        }

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

    /**
     * @param $formData
     * @param $dbData
     * @param $params [
     *          table:'table_name',
     *          valueField: 'value_string',
     *          typeField: 'meta_id',
     *          filter:['product_id', '12'],
     *          match:['product_id']
     *          insert:"INSERT INTO `#__table_name` (`{name}`) values('{value}')"
     *        ]
     * @throws Exception
     * @internal param $data [{id:'1', name:'name', value:'value'}, ... ], ... ]
     * @internal param $existIds [1,2,3, ... ]
     * @return boolean
     */
    public function saveEav($formData, $dbData, $params)
    {
        $data = $this->flatData($formData);
        $exists = $this->flatData($dbData);

        $toUpdate = array();
        $toInsert = array();

        $dbo = JFactory::getDbo();
        foreach($data as $hash => $item) {
            if (isset($exists[$hash])) { // Update
                $toUpdate[] = $exists[$hash];
                unset($exists[$hash]);
            } else {
                $toInsert[] = $data[$hash];
            }
        }

        $toDelete = $exists;

        foreach($toUpdate as $item) {
            $dbo->setQuery(
                "UPDATE `#__{$params['table']}` SET `{$params['valueField']}`='{$item->value}' WHERE `id`={$item->fieldId}"
            );
            if ($dbo->execute() === false) {
                throw new Exception('Can not delete eav item '.json_encode($item));
            }
        }

        foreach($toInsert as $item) {

            $item->{$params['valueField']} = $item->value;
            unset($item->value);
            unset($item->fieldId);

            if ($dbo->insertObject("#__{$params['table']}", $item) === false) {
                throw new Exception('Can not delete eav item '.json_encode($item));
            }
        }

        foreach($toDelete as $item) {
            $dbo->setQuery(
                "DELETE FROM `#__{$params['table']}` WHERE id=".(int)$item->fieldId
            );
            if ($dbo->execute() === false) {
                throw new Exception('Can not delete eav item '.json_encode($item));
            }
        }

        return true;
    }

    /**
     * Creates several items from one if it has multi-value PROP property (array).
     * If item has single-value PROP property then it will remain the same.
     *
     * @param $data
     * @param string $prop Name of a property that will be examined to flat.
     * @return array
     */
    protected function flatData($data, $prop = 'value')
    {
        // Create hashes
        $result = array();
        foreach($data as $hash => $item) {
            if (is_array($item->$prop)) {
                foreach($item->$prop as $idx => $val) {
                    if ($val === null) {
                        continue;
                    }
                    $result["$hash-$val"] = clone($item);
                    $result["$hash-$val"]->$prop = $val;
                    $result["$hash-$val"]->fieldId = $item->fieldId[$idx];
                }
            } else {
                $result[$hash] = $item; // Do nothing
            }
        }
        return $result;
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

    public function getTable($type = null, $prefix = null, $config = array())
    {
        if (!$type && $this->tableName) {
            $type = ucfirst($this->tableName);
        }

        if (!$prefix && $this->prefix) {
            $prefix = ucfirst($this->prefix).'Table';
        }

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
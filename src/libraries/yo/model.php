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

jimport('joomla.application.component.modelform');
jimport('joomla.event.dispatcher');

/**
 * Yo model.
 */
class YoModel extends JModelLegacy
{
    protected $di = null;

    public function __construct($config)
    {
        parent::__construct($config);

        $this->di = !empty($config['di'])?
            $config['di'] : YoDi::getInstance();
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
        if (empty($id)) throw new Exception('Id is absent');

        // Get a level row instance.
        $table = $this->getTable();
        // Attempt to load the row.
        if (!$table->load($id)) throw new Exception($table->getError());

        // Convert the JTable to a clean JObject.
        $properties = $table->getProperties(1);
        $this->state = JArrayHelper::toObject($properties, 'JObject');

        $this->populateState();

        return $this->state;
    }

    /**
     * Method to save the form data.
     *
     * @param	array		The form data.
     * @return	mixed		The user id on success, false on failure.
     * @since	1.6
     */
    public function save($data)
    {
        $table = $this->getTable();
        if ($table->save($data) === true) {
            $this->state = JArrayHelper::toObject($table->getProperties(), 'JObject');
            $this->populateState();
            return true;
        } else {
            return false;
        }
    }

    function delete($data)
    {
        if (is_numeric($data)) {
            $id = (int) $data;
        } else {
            $id = (!empty($data['id'])) ? $data['id'] : (int)$this->getState('id');
        }

        $table = $this->getTable();
        if ($table->delete($id) === true) {
            return $id;
        } else {
            return false;
        }

        return true;
    }

    function __set($name, $value)
    {
        return $this->setState($name, $value);
    }

    function __get($name)
    {
        return $this->getState($name);
    }

    public function getTable($type = null, $prefix = 'YoTable', $config = array())
    {
        return parent::getTable($type, $prefix, $config);
    }
}
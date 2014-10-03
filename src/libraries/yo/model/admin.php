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

    protected $text_prefix = 'COM_YO';

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
        !empty($config['state']) && $config['state'] = new JObject($config['state']);

        parent::__construct($config);

        $this->populateState();
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

        $item = parent::getItem($id)->getProperties();

        $this->state->setProperties($item);

        $this->populateState();

        return $item;
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

    public function getState($property = null, $default = null)
    {
        if ($property) {
            if (method_exists($this, 'getState'.ucfirst($property))) {
                return $this->{'getState'.ucfirst($property)}($default);
            }
        }
        return parent::getState($property = null, $default = null);
    }

    public function getTable($type = null, $prefix = 'YoTable', $config = array())
    {
        return parent::getTable($type, $prefix, $config);
    }


}
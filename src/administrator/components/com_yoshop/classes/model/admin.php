<?php
/**
 * @version     0.5
 * @package     com_yoshop
 * @copyright   © 2013. Все права защищены.
 * @license     GNU General Public License версии 2 или более поздней; Смотрите LICENSE.txt
 * @author      Andreyalek <andreyalek@gmail.com> - http://
 */

// No direct access.
defined('_JEXEC') or die;

jimport('joomla.application.component.modeladmin');
jimport('joomla.event.dispatcher');

/**
 * Yoshop model.
 */
abstract class YoshopModelAdmin extends JModelAdmin
{
    protected $text_prefix = 'COM_YOSHOP';

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
        parent::__construct($config);

        if (!empty($config['di'])) {
            $this->di = $config['di'];
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
        $item = parent::getItem($id);

        $this->state = $item;

        $this->populateState();

        return $this->state;
    }

}
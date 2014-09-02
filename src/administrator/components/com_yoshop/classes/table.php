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

jimport('joomla.table.table');

/**
 * Yoshop Table.
 */
class YoshopTable extends JTable
{
    public function __construct($table, $key, $db, $config = array())
    {
        parent::__construct($table, $key, $db);

        $this->di = !empty($config['di'])?
            $config['di'] : YoshopDi::getInstance();
    }
}
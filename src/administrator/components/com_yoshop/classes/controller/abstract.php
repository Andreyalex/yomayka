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

jimport('joomla.application.component.controller');

class YoshopControllerAbstract extends JControllerLegacy
{
    public function __construct($config = array())
    {
        parent::__construct($config);

        if (!empty($config['di'])) {
            $this->di = $config['di'];
        }
    }

    protected function createModel($name, $prefix = 'YoshopModel', $config = array())
    {
        if (empty($config['di'])) {
            $config['di'] = $this->di;
        }
        return parent::createModel($name, $prefix, $config);
    }

    protected function createView($name, $prefix = '', $type = '', $config = array())
    {
        if (empty($config['di'])) {
            $config['di'] = $this->di;
        }
        return parent::createView($name, $prefix, $type, $config);
    }
}
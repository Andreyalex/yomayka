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

/**
 * Products list controller class.
 */
class YoshopControllerProducts extends YoControllerJson
{
    /**
    * @param   boolean  $cachable   If true, the view output will be cached
    * @param   array    $urlparams  An array of safe url parameters and their variable types, for valid values see {@link JFilterInput::clean()}.
    *
    * @return  JControllerLegacy  A JControllerLegacy object to support chaining.
    */
	public function display($cachable = false, $urlparams = array())
    {
        $model = new YoshopModelProducts();
        $this->setData($model->getItems());
    }
}
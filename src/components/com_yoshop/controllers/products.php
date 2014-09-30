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
class YoshopControllerProducts extends YoControllerAbstract
{
	/**
	 * Proxy for getModel.
	 * @since	1.6
	 */
	public function &getModel($name = 'Products', $prefix = 'YoshopModel')
	{
		$model = parent::getModel($name, $prefix, array('ignore_request' => true));
		return $model;
	}
}
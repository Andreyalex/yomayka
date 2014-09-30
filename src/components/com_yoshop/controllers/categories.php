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
 * Categories list controller class.
 */
class YoshopControllerCategories extends YoControllerAbstract
{
	/**
	 * Proxy for getModel.
	 * @since	1.6
	 */
	public function &getModel($name = 'Categories', $prefix = 'YoshopModel')
	{
		$model = parent::getModel($name, $prefix, array('ignore_request' => true));
		return $model;
	}
}
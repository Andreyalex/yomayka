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

/**
 * Yoshop helper.
 */
class YoshopHelper
{
	/**
	 * Configure the Linkbar.
	 */
	public static function addSubmenu($vName = '')
	{
		JHtmlSidebar::addEntry(
			JText::_('COM_YOSHOP_TITLE_PRODUCTS'),
			'index.php?option=com_yoshop&view=products',
			$vName == 'products'
		);
		JHtmlSidebar::addEntry(
			JText::_('COM_YOSHOP_TITLE_CATEGORIES'),
			'index.php?option=com_categories&extension=com_yoshop',
			$vName == 'categories'
		);
        JHtmlSidebar::addEntry(
            JText::_('COM_YOSHOP_TITLE_ORDERS'),
            'index.php?option=com_yoshop&view=orders',
            $vName == 'orders'
        );
    }

	/**
	 * Gets a list of the actions that can be performed.
	 *
	 * @return	JObject
	 * @since	1.6
	 */
	public static function getActions()
	{
		$user	= JFactory::getUser();
		$result	= new JObject;

		$assetName = 'com_yoshop';

		$actions = array(
			'core.admin', 'core.manage', 'core.create', 'core.edit', 'core.edit.own', 'core.edit.state', 'core.delete'
		);

		foreach ($actions as $action) {
			$result->set($action, $user->authorise($action, $assetName));
		}

		return $result;
	}
}

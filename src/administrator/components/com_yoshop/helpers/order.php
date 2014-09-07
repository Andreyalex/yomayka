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
class YoshopHelperOrder
{
	/**
	 * Gets a list of the actions that can be performed.
	 *
	 * @return	JObject
	 * @since	1.6
	 */
	public static function getStatusFilter($status, $all = false)
	{
        // Build the active state filter options.
        $options = array();
        foreach (self::getStatusesList() as $key => $value) {
            $options[] = JHtml::_('select.option', $key, JText::_($value));
        }

        if ($all) {
            $options[] = JHtml::_('select.option', '*', JText::_('JALL'));
        }

        return JHtml::_('select.options', $options, "value", "text", $status, false);
	}

    public static function getStatusDescription($status)
    {
        $list = self::getStatusesList();
        return !empty($list[$status])? JText::_($list[$status]) : '---';
    }

    public static function getStatusesList()
    {
        return array(
            YOSHOP_ORDER_STATUS_CREATED => 'COM_YOSHOP_ORDER_CREATED',
            YOSHOP_ORDER_STATUS_IN_PROGRESS => 'COM_YOSHOP_ORDER_IN_PROGRESS',
            YOSHOP_ORDER_STATUS_COMPLETED => 'COM_YOSHOP_ORDER_COMPLETED',
            YOSHOP_ORDER_STATUS_CANCELED => 'COM_YOSHOP_ORDER_CANCELED'
        );
    }
}

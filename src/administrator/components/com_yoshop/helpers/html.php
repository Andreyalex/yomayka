<?php
/**
 * @version     0.5
 * @package     com_yoshop
 * @copyright   © 2013. Все права защищены.
 * @license     GNU General Public License версии 2 или более поздней; Смотрите LICENSE.txt
 * @author      Andreyalek <andreyalek@gmail.com> - http://
 */

defined('_JEXEC') or die;

class YoshopHelperHtml
{
    public static function renderPrice($value, $options = array())
    {
        $options['value'] = (int)$value;
        $defaults = array('currency' => JText::_('COM_YOSHOP_CURRENCY_UAH'));

        return self::render(
            '<span class="value">{value}</span>&nbsp;<span class="currency">{currency}</span>',
            $options,
            $defaults
        );
    }

    public static function renderCount($value, $options = array())
    {
        $options['value'] = (int) $value;
        $defaults = array('countItem' => JText::_('COM_YOSHOP_COUNT_ITEM'));

        return self::render(
            '<span class="value">{value}</span>&nbsp;<span class="countItem">{countItem}</span>',
            $options,
            $defaults
        );
    }

    public static function addStylesheet($url)
    {
        $base = YOSHOP_ASSETS_BASEURL;
        JHtml::stylesheet($base.'/'.$url);
    }

    public static function addScript($url)
    {
        $base = YOSHOP_ASSETS_BASEURL;
        JHtml::stylesheet($base.'/'.$url);
    }
}



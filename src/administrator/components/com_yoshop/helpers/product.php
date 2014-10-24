<?php
/**
 * @version     0.5
 * @package     com_yoshop
 * @copyright   © 2013. Все права защищены.
 * @license     GNU General Public License версии 2 или более поздней; Смотрите LICENSE.txt
 * @author      Andreyalek <andreyalek@gmail.com> - http://
 */

defined('_JEXEC') or die;

require_once JPATH_SITE . '/components/com_yoshop/router.php';

class YoshopHelperProduct
{
    /**
     * @param $item
     * @param null $base
     * @return string
     */
    public static function createUrl($item, $base = null)
    {
        $params = array(
            'category_id' => $item->category,
            'product_id' => $item->id
        );
        $segments = yoshopBuildRoute($params);

        $route = !empty($params['Itemid'])?
            $route = JRoute::_('index.php?Itemid='.$params['Itemid']) :
            ($base? $base : '/component/yoshop/product');

        return $route.'/'.implode('/', $segments);
    }

    public static function printViewsCount($productData)
    {
         return JText::_("Просмотров").':'.(int)$productData->stat->viewsPerDay.'/'.(int)$productData->stat->views;
    }

    public static function printMessagesCount($productData)
    {
         return JText::_("Сообщений").':'.(int)$productData->stat->messagesNew.'/'.(int)$productData->stat->messages;
    }
}


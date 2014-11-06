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
         return '<span class="glyphicon glyphicon-eye-open"></span>&nbsp;<span>'.(int)$productData->stat->viewsPerDay.'/'.(int)$productData->stat->views.'</span>';
    }

    public static function printMessagesCount($productData)
    {
         return '<span class="glyphicon glyphicon-comment"></span>&nbsp;<span>'.(int)$productData->stat->messagesNew.'/'.(int)$productData->stat->messages.'</span>';
    }
    public static function printFavoritesCount($productData)
    {
        return '<span class="glyphicon glyphicon-heart"></span>&nbsp;<span>'.(int)$productData->favorites_count.'/'.(int)$productData->favorites_day_count.'</span>';
    }

    public function renderField($item, $options = array())
    {
        $element = new stdClass();
        $element->name = $item->name;
        $element->title = JText::_('COM_YOSHOP_PRODUCT_FIELD_'.strtoupper($item->name));

        switch ($item->type) {
            case '1': // integer
            case '2': // string
                return YoViewHelperHtml::renderFormElement($element);
            case '4': // multi check
                $options = array_merge($options, array(
                    'options' => $item->params,
                    'name' => 'field-'.$item->name,
                    'values' => (array) $item->value
                ));
                $element->input = YoViewHelperHtml::renderMultiCheck($options);
                return YoViewHelperHtml::renderFormElement($element);
        }
    }
}


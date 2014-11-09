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
    public static $conditionsList;

    public static $regionsList;

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
                    'name' => 'field-'.$item->name.($item->metaId? '-'.$item->metaId : ''),
                    'values' => (array) $item->value
                ));
                $element->input = YoViewHelperHtml::renderMultiCheck($options);
                return YoViewHelperHtml::renderFormElement($element);
        }
    }

    public static function getConditionsList()
    {
        if (!self::$conditionsList) {
            self::$conditionsList = array(
                1 => JText::_('COM_YOSHOP_CONDITION_1'),
                2 => JText::_('COM_YOSHOP_CONDITION_2'),
                3 => JText::_('COM_YOSHOP_CONDITION_3'),
                4 => JText::_('COM_YOSHOP_CONDITION_4'),
                5 => JText::_('COM_YOSHOP_CONDITION_5'),
                6 => JText::_('COM_YOSHOP_CONDITION_NEW')
            );
        }
        return self::$conditionsList;
    }

    public static function getRegionsList()
    {
        if (!self::$regionsList) {
            self::$regionsList = array(
                '01' => JText::_('АР Крим'),
                '05' => JText::_('Вінницька обл.'),
                '07' => JText::_('Волинська обл.'),
                '12' => JText::_('Дніпропетровська обл.'),
                '14' => JText::_('Донецька обл.'),
                '18' => JText::_('Житомирська обл.'),
                '21' => JText::_('Закарпатська обл.'),
                '23' => JText::_('Запорізька обл.'),
                '26' => JText::_('Івано-Франківська обл.'),
                '32' => JText::_('Київська обл.'),
                '35' => JText::_('Кіровоградська обл.'),
                '44' => JText::_('Луганська обл.'),
                '46' => JText::_('Львівська обл.'),
                '48' => JText::_('Миколаївська обл.'),
                '51' => JText::_('Одеська обл.'),
                '53' => JText::_('Полтавська обл.'),
                '56' => JText::_('Рівненська обл.'),
                '59' => JText::_('Сумська обл.'),
                '61' => JText::_('Тернопільська обл.'),
                '63' => JText::_('Харківська обл.'),
                '65' => JText::_('Херсонська обл.'),
                '68' => JText::_('Хмельницька обл.'),
                '71' => JText::_('Черкаська обл.'),
                '73' => JText::_('Чернівецька обл.'),
                '74' => JText::_('Чернігівська обл.')
            );
        }
        return self::$regionsList;
    }
}


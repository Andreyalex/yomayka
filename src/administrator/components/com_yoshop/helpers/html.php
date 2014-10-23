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
    /**
     * @param $media stdClass
     * @param $options array [size]
     */
    public static function renderMedia($media, $options = array())
    {
        $options = array_merge(array(
            'size' => 'normal',
            'link' => '#'
        ), (array) $options);

        switch($options['size']) {
            case 'preview': $options['src'] = $media->path_prev; break;
            case 'large'  : $options['src'] = $media->path; break;
            case 'normal' :
            default:
                $options['src'] = $media->path; break;
        }

        $options['src']   = YOSHOP_PRODUCT_MEDIA_BASEURL.'/'.$options['src'];
        $options['class'] = 'media-'.$options['size'];

        $tpl = '<a href="{src}" class="image media-entity {class}"><img src="{src}" /></a>';

        return self::render($tpl, $options);
    }

    public static function renderTitle($options)
    {
        $tpl = '
            <div class="page-header">
                <a href="{link}" class="alias-{alias}">
                    <span class="icon icon-{icon}"></span>
                    <span class="content">{title}</span>
                </a>
            </div>';

        return self::render($tpl, $options);
    }

    public static function renderFormElement($fieldElement)
    {
        $options = array(
            'id'          => $fieldElement->id,
            'value'       => $fieldElement->value,
            'label'       => $fieldElement->title,
            'type'        => $fieldElement->type,
            'input'       => str_replace('name=', "placeholder=\"{$fieldElement->title}\" name=", $fieldElement->input)
        );

        return self::renderControl($options);
    }

    public static function renderControl($options)
    {
        $options = array_merge(array(
            'type' => 'text'
        ), $options);

        $input = $options['input']? $options['input'] :
             '<input name="{name}" type="{type}" id="{id}" placeholder="{placeholder}" value="{value}"/>';
        $tpl = '
            <div class="control-group">
                <label class="control-label" for="{id}">{label}</label>
                <div class="controls">'
                .$input.
                '</div>
            </div>';

        return self::render($tpl, $options);
    }


    public static function render($tpl, $data, $defaults = array())
    {
        $data = array_merge($defaults, (array)$data);

        $reps = array();
        $matches = array();
        preg_match_all('/{([^}]+)}/', $tpl, $matches);
        foreach($matches[1] as $key) {
            $reps["{{$key}}"] = isset($data[$key])? $data[$key] : '';
        }

        return str_replace(array_keys($reps), array_values($reps), $tpl);
    }


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

    public static function renderPagination($pagination)
    {
        $tpl = '';
        if ($pagination->get('pages.total') > 1) {
            $tpl .= '
              <div class="pagination">
                <p class="counter pull-right">' . $pagination->getPagesCounter() . '</p>' .
                $pagination->getPagesLinks() . '</div>';
        }

        return $tpl;

    }
}



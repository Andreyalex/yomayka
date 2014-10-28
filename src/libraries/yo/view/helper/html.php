<?php
/**
 * @version     0.5
 * @package     com_yoshop
 * @copyright   © 2013. Все права защищены.
 * @license     GNU General Public License версии 2 или более поздней; Смотрите LICENSE.txt
 * @author      Andreyalek <andreyalek@gmail.com> - http://
 */

defined('_JEXEC') or die;

class YoViewHelperHtml
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
        ), $options);

        switch($options['size']) {
            case 'preview': $options['src'] = $media->path_prev; break;
            case 'large'  : $options['src'] = $media->path; break;
            case 'normal' :
            default:
                $options['src'] = $media->path; break;
        }

        $options['src']   = YOSHOP_PRODUCT_MEDIA_BASEURL.'/'.$options['src'];
        $options['class'] = 'media-'.$options['size'];

        $tpl = '<a href="{{src}}" class="image media-entity {{class}}"><img src="{{src}}" /></a>';

        return self::render($tpl, $options);
    }

    public static function renderTitle($options)
    {
        $tpl = '
            <div class="page-header">
                <a href="{{link}}" class="alias-{{alias}}">
                    <span class="icon icon-{{icon}}"></span>
                    <span class="content">{{title}}</span>
                </a>
            </div>';

        return self::render($tpl, $options);
    }

    public static function renderFormAssets($resource, $returnValue = null)
    {
        list($component, $controller, $action, $id) = explode('.', $resource);

        if (!$returnValue) {
            $uri = JUri::getInstance();
            $returnValue = $uri->toString(array('path', 'query', 'fragment'));
        }

        $res =
            '<input type="hidden" name="option" value="com_'.$component.'" />
             <input type="hidden" name="task" value="'.$controller.'.'.$action.'" />
             <input type="hidden" name="return" value="'.base64_encode($returnValue).'" />'.
             ($id? '<input type="hidden" name="id" value="'.$id.'" />' : '').
             JHtml::_('form.token');

        return $res;
    }

    public static function renderFormElement($fieldElement)
    {
        $options = array(
            'id'          => $fieldElement->id,
            'value'       => $fieldElement->value,
            'label'       => $fieldElement->title,
            'name'        => $fieldElement->name,
            'class'       => $fieldElement->class,
            'size'        => $fieldElement->size,
            'type'        => strtolower($fieldElement->type),
            'required'    => $fieldElement->required? 'required aria-required="true"' : ''
        );

        switch ($fieldElement->type) {
            case 'Text':
            case 'Hidden':
            case 'Password':
                (trim($fieldElement->input)=='') && ($options['input'] = '');
                break;
            case 'Textarea':
                $options['input'] = str_replace('<textarea', '<textarea class="form-control"', $fieldElement->input);
                break;
            default:
                $options['input'] = $fieldElement->input;
        }

        $req = $options['required']? ' <span class="text-danger">*</span>' : '';
        $tpl =
            '<div class="form-group">
                <label class="col-sm-2 control-label" for="{{id}}">{{label}}'.$req.'</label>
                <div class="col-sm-10">{{control}}</div>
            </div>';


        $options['control'] = self::renderControl($options);

        return self::render($tpl, $options);
    }

    public static function renderDataAsControl($label, $value)
    {
        $options = (object) array(
            'value'       => $value,
            'label'       => JText::_($label),
            'disabled'    => true
        );

        return self::renderFormElement($options);
    }

    public static function renderControl($options)
    {
        $input = !isset($options['input'])? '<input class="form-control" name="{{name}}" type="{{type}}" id="{{id}}" placeholder="{{placeholder}}" value="{{value}}" {{required}} {{disabled}} />' : $options['input'];

        if ($options['disabled'] === true) {
            $options['disabled'] = 'disabled="disabled"';
        }

        return self::render($input, $options);
    }

    /**
     * @param $options ['name', value:[[id: value]]]
     * @param $checked [ids]
     */
    public function renderMultiCheck($options)
    {
        $res = '<ul>';
        $fieldName = $options['name'];
        foreach($options['value'] as $id => $value) {
            $checked = '';//in_array($id, $checked)? 'checked=" checked"' : '';
            $res .= "<li><input type=\"checkbox\" name=\"jform[{$fieldName}][{$id}]\" value=\"1\"{$checked}><span>{$value}</span></li>";
        }

        return $res . '</ul>';
    }

    public static function renderCancel($formId, $modelName)
    {
        return
            '<button '.
                "onclick=\"Joomla.submitform('{$modelName}.cancel', document.getElementById('{$formId}')); return false;\" ".
                'class="btn btn-danger"'.
            '>' . JText::_('JCANCEL') . '</button>';
    }

    public static function renderSubmit($formId, $actionText)
    {
        ob_start();
        ?><button type="submit" class="btn btn-success"><?=JText::_($actionText)?></button>
        <script type="text/javascript">
            Joomla.submitbutton = function(task) {
                var form = document.getElementById('<?=$formId?>')
                (document.formvalidator && !document.formvalidator.isValid(form))?
                    alert('<?=JText::_('JGLOBAL_VALIDATION_FORM_FAILED')?>') :
                    Joomla.submitform(task, form);
                return false;
            }
        </script><?php
        return ob_get_clean();
    }

    public static function render($tpl, $data, $defaults = array())
    {
        $data = array_merge($defaults, (array)$data);

        $reps = array();
        $matches = array();
        preg_match_all('/{{([^}]+)}}/', $tpl, $matches);
        foreach($matches[1] as $key) {
            $reps["{{{$key}}}"] = isset($data[$key])? $data[$key] : '';
        }

        return str_replace(array_keys($reps), array_values($reps), $tpl);
    }


    public static function renderPrice($value, $options = array())
    {
        $options['value'] = (int)$value;
        $defaults = array('currency' => JText::_('COM_YOSHOP_CURRENCY_UAH'));

        return self::render(
            '<span class="value">{{value}}</span>&nbsp;<span class="currency">{{currency}}</span>',
            $options,
            $defaults
        );
    }

    public static function renderCount($value, $options = array())
    {
        $options['value'] = (int) $value;
        $defaults = array('countItem' => JText::_('COM_YOSHOP_COUNT_ITEM'));

        return self::render(
            '<span class="value">{{value}}</span>&nbsp;<span class="countItem">{{countItem}}</span>',
            $options,
            $defaults
        );
    }

    public static function initJsApp($route = null, $data = array())
    {
        $document = JFactory::getDocument();

        if (!isset($document->customAssets)) {
            $document->customAssets = array();
        }

        $document->customAssets[] =
            '<script type="text/javascript">'.
                ($route? "window.yoshopJsRoute='$route'\n" : '').
                "window.yoshopJsData=".json_encode($data)."\n".
            '</script>';

        $base = JUri::base().'templates/yomayka/assets';
        $document->customAssets[] =
            '<script type="text/javascript" src="'.$base.'/require.js" data-main="'.$base.'/main"></script>';
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



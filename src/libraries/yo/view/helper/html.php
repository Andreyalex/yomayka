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
        $options['target'] = $options['target'] == 'blank'? ' target="_blank"' : '';

        $tpl = '<a href="{{src}}" {{target}} class="image media-entity {{class}}"><img src="{{src}}" /></a>';

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
            case 'List':
            case 'Category':
                $options['input'] = str_replace('<select', '<select class="form-control"', $fieldElement->input);
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
     * @return string
     */
    public static function renderMultiCheck($options)
    {
        is_array($options['values']) || ($options['values'] = (array) $options['values']);
        $res = '<div class="pane">';
        $fieldName = !empty($options["form"])? "{$options["form"]}[{$options["name"]}]" : $options["name"];
        foreach($options['options'] as $id => $value) {
            $checked = in_array($id, $options['values'])? ' checked="checked"' : '';
            $text = JText::_(strtoupper($value));
            $res .= "<div class=\"pane-item\"><input type=\"checkbox\" name=\"{$fieldName}[{$id}]\" value=\"1\"{$checked}><span>{$text}</span></div>";
        }

        return $res . '</div>';
    }

    /**
     * @param $options ['name', value:[[id: value]]]
     * @return string
     */
    public static function renderCategoryList($options)
    {
        $fieldName = !empty($options["form"])? "{$options["form"]}[{$options["name"]}]" : $options["name"];
        $class = !empty($options["class"])? $options["class"] : 'form-control';
        $list = JHtml::_('category.options', $options['extension']);
        $res = '';
        foreach($list as $item) {
            $disabled = $item->disable? ' disabled="disabled"' : '';
            $selected = (!empty($options['selected']) && $options['selected'] == $item->value)? ' selected="selected"' : '';
            $res .= "<option value=\"{$item->value}\"{$disabled}{$selected}>{$item->text}</option>";
        }

        return
            empty($options["optionsOnly"])?
                "<select class=\"{$class}\" name=\"{$fieldName}\">{$res}</select>" :
                $res;
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

    public static function renderFeedPagination($pagination, $url, $container, $control, $model)
    {
        if ($pagination->get('pages.total') > 1) {

            ob_start(); ?>
            <div class="pagination">
                <button class="btn btn-info" role="paginator"><?=JText::_("Больше")."..."?></button>
            </div>
            <script>
                jQuery(function(){
                    new yo.Pagination({
                        url: '<?=$url?>',
                        container: jQuery('<?=$container?>'),
                        control: jQuery('<?=$control?>'),
                        limit: '<?=$model->getState('list.limit')?>'
                    })
                })
            </script>
            <?php
            return ob_get_clean();
        }
    }
}



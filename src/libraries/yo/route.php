<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Bee
 * Date: 30.10.13
 * Time: 23:03
 * To change this template use File | Settings | File Templates.
 */

class YoRoute
{
    public static function _($path, $params = array())
    {
        $exploded = explode(':', $path);
        $parts = array();
        !empty($exploded[0]) && ($parts['option'] = "com_{$exploded[0]}");
        !empty($exploded[1]) && (strpos($exploded[1], '.')===false? ($parts['view'] = $exploded[1]) : ($parts['task'] = $exploded[1]));
        !empty($exploded[2]) && ($parts['layout'] = $exploded[2]);
        !empty($exploded[3]) && ($parts['id'] = $exploded[3]);

        $paramsString = JUri::buildQuery(array_merge($parts, $params));

        return JRoute::_('index.php?'.$paramsString, false);
    }
}
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
    public static function _($path, $params = null)
    {
        $exploded = explode(':', $path);
        $parts = array();
        !empty($exploded[0]) && ($parts[] = "option=com_{$exploded[0]}");
        !empty($exploded[1]) && ($parts[] = strpos($exploded[1], '.')===false? "view={$exploded[1]}" : "task={$exploded[1]}");
        !empty($exploded[2]) && ($parts[] = "layout={$exploded[2]}");

        return JRoute::_('index.php?'.implode('&', $parts), false);
    }
}
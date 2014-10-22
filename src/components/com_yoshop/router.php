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

class YoshopRouter {

    public static $parsed = array();

    /**
     * Should create:
     * <categoryAlias>
     * <categoryAlias>/<itemAlias>
     * <categoryAlias>/<itemAlias>/[add/edit]
     * @param	array	A named array
     * @return	array
     */
    public static function build(&$query)
    {
        $segments = array();

        if (!empty($query['category_id'])) {

            if(empty($query['Itemid'])) {
                // Create category route
                $dbo = JFactory::getDbo();
                $dbo->setQuery("SELECT * FROM #__menu WHERE link LIKE \"index.php?option=com_yoshop&view=category&id={$query['category_id']}%\"");
                $menu = $dbo->loadObject();
                if ($menu) {
                    $query['Itemid'] = $menu->id;
                } else {
                    // Create custom category route
                }

            }
        }

        if (!empty($query['product_id'])) {
            $segments[] = $query['product_id'];
        }

        return $segments;
    }

    /**
     * @param $segments
     * @return array
     */
    public static function parse($segments)
    {
        $route = implode('/', $segments);

        if (isset(self::$parsed[$route])) {
            return self::$parsed[$route];
        }

        $routes = array(
            'regexp' => array( // without "components/yoshop"
                '([a-z]+)(?:/([0-9]+))?(?:/([a-z]+))?' => array(
                    'view' => 'products',
                    'id' => null,
                    'layout' => 'default'
                )
            )
        );

        $vars = array();
        $vars['option'] = 'com_yoshop';

        foreach($routes['regexp'] as $pattern => $defaults) {
            $matches = array();
            if (!preg_match("|^$pattern$|", $route, $matches)) {
                continue;
            }

            $i=1;
            foreach($defaults as $key => $defaultValue) {
                $vars[$key] = !empty($matches[$i])? $matches[$i] : $defaultValue;
                $i++;
            }
            self::$parsed[$route] = $vars;
            return $vars;
        }


        // Absolute defaults
        $vars['view'] = 'product';
        $vars['layout'] = 'default';
        $vars['id'] = $segments[0];

        self::$parsed[$route] = $vars;
        return $vars;
    }
}

function YoshopBuildRoute(&$query) {
    return YoshopRouter::build($query);
}

function YoshopParseRoute(&$query) {
    return YoshopRouter::parse($query);
}
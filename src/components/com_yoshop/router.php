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

    public static $built = array();

    public static $routes = array( // without "components/yoshop"

        'user/products' => array(
            'view' => 'userproducts'
        ),

        'user/product/:id:/:layout:' => array(
            'view' => 'userproduct'
        ),

        'user/product/:id:' => array(
            'view' => 'userproduct'
        ),

        ':view:/:id:/:layout:' => array(), // product/16/edit

        ':view:/:id:' => array( // product/16
            'layout' => 'default'
        ),

        ':view:' => array( // product/16
            'view' => 'products',
            'layout' => 'default'
        )
    );


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
        if (count($query) == 1 && isset($query['option'])) {
            return array();
        }

        $sig = implode('-',$query);

        if (isset(self::$built[$sig])) {
            return self::$built[$sig];
        }

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

        $preserved = $query;

        foreach(self::$routes as $pattern => $predefined) {

            $query = $preserved;

            $matches = array();
            preg_match_all("|(?::([^/:]+))|", $pattern, $matches);
            $sequence = $matches[1];

            // #1 Check if query has all route's values (predefined or not)
            $required = array_merge(
                array_fill_keys($sequence, null),
                $predefined
            );

            $segments = array();

            foreach ($required as $key => $val) {
                if (!isset($query[$key]) || ($val !== null && $query[$key] != $val)) {
                    continue 2;
                }
                unset($query[$key]);
            }

            $combined = str_replace(
                array(':view:', ':id:', ':layout:'),
                array($required['view'], $required['id'], $required['layout']),
                $pattern
            );

            $segments = explode('/', $combined);
            break;
        }

        self::$built[$sig] = $segments;
        return self::$built[$sig];
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

        $vars = array();
        $vars['option'] = 'com_yoshop';

        foreach(self::$routes as $pattern => $defaults) {

            $matches = array();
            preg_match_all("|(?::([^/:]+))|", $pattern, $matches);
            $keys = !empty($matches[1])? $matches[1] : array();

            $regular = str_replace(
                array(':view:', ':id:', ':layout:'),
                array('([^/]+)', '([0-9]+)', '([^/]+)'),
                $pattern
            );

            $matches = array();
            if (!preg_match("|^$regular$|", $route, $matches)) {
                continue;
            }
            array_shift($matches);

            $vars = array_merge(
                $defaults,
                array_combine($keys, $matches)
            );

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
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
        ':view:/:id:/:layout:' =>  // product/16/edit
            array(),
        ':view:/:id:' =>  // product/16
            array(
                'layout' => 'default'
            ),
        ':view:' =>  // product/16
            array(
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

        foreach(self::$routes as $pattern => $sequence) {

            $matches = array();
            preg_match_all("|(?::([^/:]+))|", $pattern, $matches);
            $sequence = !empty($matches[1])? $matches[1] : array();

            $matched = true;
            $preserved = $query;
            $segments = array();
            foreach($sequence as $key) {
                if (!isset($query[$key])) {
                    $matched = false;
                    break;
                }
                $segments[] = $query[$key];
                unset($query[$key]);
            }

            if ($matched) {
                break;
            } else {
                $query = $preserved;
            }

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
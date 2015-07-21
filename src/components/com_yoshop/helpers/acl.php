<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_content
 *
 * @copyright   Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/**
 * Content Component Category Tree
 *
 * @package     Joomla.Site
 * @subpackage  com_content
 * @since       1.6
 */
class YoshopAcl
{
    static public $resourcesMap = array(
        'favorite' => array('add', 'delete')
    );

    /**
     * @param $subject
     * @param $action
     * @param $resource
     *
     * @return boolean
     */
    public static function allow($resource, $action, $object = null)
    {
        foreach(self::$resourcesMap as $res => $actions) {
            if ($res == $resource) {
                if (!in_array($action, $actions)) {
                    return false;
                } else {
                    $do = $resource.'.'.$action;
                    break;
                }
            }
        }

        switch ($do) {
            case 'favorite.add':
                $user = JUser::getInstance();
                return (!empty($user->id) && $object && $object->user_id != $user->id)?
                    true: false;

            case 'favorite.delete':
                $user = JUser::getInstance();
                return (!empty($user->id) && $object && $object->user_id != $user->id)?
                    true: false;

        }
    }
}

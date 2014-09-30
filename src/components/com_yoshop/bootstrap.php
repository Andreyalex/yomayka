<?php

class YoshopBootstrap
{
    public static function init()
    {
        self::initConstants();
        self::initAutoload();
    }

    public static function initConstants()
    {
        $ds = DIRECTORY_SEPARATOR;
        require_once(JPATH_ADMINISTRATOR . $ds.'components'.$ds.'com_yoshop'.$ds.'constants.php');
    }

    public static function initAutoload()
    {
        $ds = DIRECTORY_SEPARATOR;
        $site  = JPATH_SITE.$ds.'components'.$ds.'com_yoshop';
        $admin = JPATH_ADMINISTRATOR.$ds.'components'.$ds.'com_yoshop';

        if (JFactory::getApplication()->isSite()) {
            YoAutoloader::registerPrefix('YoshopHelper', $site.$ds.'helpers');
            YoAutoloader::registerPrefix('YoshopModel',  $site.$ds.'models');
        }

        // Register the base path for Joomla platform libraries.
        YoAutoloader::registerPrefix('YoshopHelper', $admin.$ds.'helpers');
        YoAutoloader::registerPrefix('YoshopModel',  $admin.$ds.'models');
        YoAutoloader::registerPrefix('YoshopTable',  $admin.$ds.'tables');
    }
}
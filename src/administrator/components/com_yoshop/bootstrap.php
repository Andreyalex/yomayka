<?php

class YoshopBootstrap
{
    public static function init()
    {
        self::initConstants();
        self::initAutoload();
        self::initPaths();
    }

    public static function initConstants()
    {
        define('YOSHOP_MEDIA_TYPE_IMAGE', 1);

        define('YOSHOP_MEDIA_BASEURL', JUri::base().'media/com_yoshop');

        define('YOSHOP_CONTENT_BASEURL', YOSHOP_MEDIA_BASEURL.'/content');
        define('YOSHOP_PRODUCT_MEDIA_PATH', JPATH_ROOT . '/media/com_yoshop/content/product/images');
        define('YOSHOP_PRODUCT_MEDIA_BASEURL', YOSHOP_MEDIA_BASEURL.'/content/product/images');

        define('YOSHOP_ASSETS_BASEURL', JUri::base().'templates/yomayka/html/com_yoshop');

        define('YOSHOP_ORDER_STATUS_CREATED', 1);
        define('YOSHOP_ORDER_STATUS_IN_PROGRESS', 2);
        define('YOSHOP_ORDER_STATUS_SHIPPING', 3);
        define('YOSHOP_ORDER_STATUS_COMPLETED', 4);
        define('YOSHOP_ORDER_STATUS_CANCELED', 5);
    }

    public static function initAutoload()
    {
        $ds = DIRECTORY_SEPARATOR;
        $site  = JPATH_SITE.$ds.'components'.$ds.'com_yoshop';
        $admin = JPATH_ADMINISTRATOR.$ds.'components'.$ds.'com_yoshop';

        YoAutoloader::registerPrefix('YoshopHelper', $site.$ds.'helpers');
        YoAutoloader::registerPrefix('YoshopModel',  $site.$ds.'models');
        YoAutoloader::registerPrefix('YoshopView',   $site.$ds.'views', 'view');

        YoAutoloader::registerPrefix('YoshopHelper', $admin.$ds.'helpers');
        YoAutoloader::registerPrefix('YoshopModel',  $admin.$ds.'models');
        YoAutoloader::registerPrefix('YoshopTable',  $admin.$ds.'tables');
        YoAutoloader::registerPrefix('YoshopView',   $admin.$ds.'views', 'view');
    }

    public static function initPaths()
    {
        YoDi::$defaultContext = 'Yoshop';

        JFormHelper::addFieldPath(
            JPATH_ADMINISTRATOR.'/components/com_yoshop/models/fields'
        );
    }
}
<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Bee
 * Date: 16.11.13
 * Time: 18:53
 * To change this template use File | Settings | File Templates.
 */

class YoshopDi
{
    protected static $_instance;

    public function getInstance($name = 'common', $options = array())
    {
        if (!self::$_instance[$name]) {
            self::$_instance[$name] = new self($options);
        }

        return self::$_instance[$name];
    }

    public function __get($name)
    {
        switch($name){
            case 'app':
                return JFactory::getApplication();
            case 'doc':
                return JFactory::getDocument();
            case 'session':
                return JFactory::getSession();
            case 'config':
                return JFactory::getConfig();
        }

        throw new Exception("Service $name does not exist in Di");
    }

    public function createModel($type, $prefix = 'YoshopModel', $config = array())
    {
        if (!isset($config['di'])) {
            $config['di'] = $this;
        }
        return JModelLegacy::getInstance($type, $prefix, $config);
    }

    public function createTable($type, $prefix = 'Yoshop Table', $config = array())
    {
        if (!isset($config['di'])) {
            $config['di'] = $this;
        }
        return JTable::getInstance($type, $prefix, $config);
    }

    public function get($name, $config = array())
    {
        $class = 'Yoshop'.ucfirst(strtolower($name));
        if (!class_exists($class)) {
            throw new Exception('Cannot find class '. $class);
        } else {
            return new $class($config);
        }
    }
}
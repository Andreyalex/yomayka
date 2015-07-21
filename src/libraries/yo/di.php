<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Bee
 * Date: 16.11.13
 * Time: 18:53
 * To change this template use File | Settings | File Templates.
 */

class YoDi
{
    protected static $instance;

    public static $defaultContext = 'Yo';

    protected $context;

    public static function getInstance($context = null, $options = array())
    {
        $context || $context = self::$defaultContext;

        if (!self::$instance[$context]) {
            $di = new self($options);
            $di->setContext($context);

            $bootstrap = JPATH_ADMINISTRATOR. '/components/com_'.strtolower($context).'/bootstrap.php';
            if (file_exists($bootstrap)) {
                require_once $bootstrap;
                $className = ucfirst($context).'Bootstrap';
                $className::init($di);
            }

            self::$instance[$context] = $di;
        }

        return self::$instance[$context];
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

    public function createModel($type, $prefix = null, $config = array())
    {
        $prefix || $prefix = ucfirst($this->context) . 'Model';
        $result = JModelLegacy::getInstance($type, $prefix, $config);
        if ($result === false) {
            throw new \Exception('Model not found:'.$prefix.$type);
        }
        return $result;
    }

    public function createTable($type, $prefix = null, $config = array())
    {
        $prefix || $prefix = ucfirst($this->context) . 'Table';
        $result = JTable::getInstance($type, $prefix, $config);
        if ($result === false) {
            throw new \Exception('Table not found:'.$prefix.$type);
        }
        return $result;
    }

    public function get($name, $config = array())
    {
        $class = 'Yo'.ucfirst(strtolower($name));
        if (!class_exists($class)) {
            throw new Exception('Cannot find class '. $class);
        } else {
            return new $class($config);
        }
    }

    public function setContext($context)
    {
        $this->context = strtolower($context);
    }
}
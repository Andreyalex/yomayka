<?php

class YoAutoloader
{
    public static $isSetup = false;

    public static $prefixes;

    /**
     * Method to setup the autoloaders for the Joomla Platform.  Since the SPL autoloaders are
     * called in a queue we will add our explicit, class-registration based loader first, then
     * fall back on the autoloader based on conventions.  This will allow people to register a
     * class in a specific location and override platform libraries as was previously possible.
     *
     * @return  void
     *
     * @since   11.3
     */
    public static function setup()
    {
        if (self::$isSetup) return;

        $ds = DIRECTORY_SEPARATOR;
        $lib = JPATH_LIBRARIES.$ds.'yo';
        self::registerPrefix('Yo', $lib);
        // Register the autoloader functions.
        spl_autoload_register(array('YoAutoloader', '_autoload'));
        self::$isSetup = true;
    }

    /**
     * Register a class prefix with lookup path.  This will allow developers to register library
     * packages with different class prefixes to the system autoloader.  More than one lookup path
     * may be registered for the same class prefix, but if this method is called with the reset flag
     * set to true then any registered lookups for the given prefix will be overwritten with the current
     * lookup path.
     *
     * @param   string   $prefix  The class prefix to register.
     * @param   string   $path    Absolute file path to the library root where classes with the given prefix can be found.
     * @param   boolean  $reset   True to reset the prefix with only the given lookup path.
     *
     * @return  void
     *
     * @since   12.1
     */
    public static function registerPrefix($prefix, $path, $type = null, $reset = false)
    {
        // Verify the library path exists.
        if (!file_exists($path)) {
            throw new Exception('Path '.$path.' cannot be found.', 500);
        }

        // If the prefix is not yet registered or we have an explicit reset flag then set set the path.
        if (!isset(self::$prefixes[$prefix]) || $reset) {
            self::$prefixes[$prefix] = array(array($path, $type));
        }
        // Otherwise we want to simply add the path to the prefix.
        else {
            self::$prefixes[$prefix][] = array($path, $type);
        }
    }

    /**
     * Autoload a class based on name.
     *
     * @param   string  $class  The class to be loaded.
     *
     * @return  void
     *
     * @since   11.3
     */
    private static function _autoload($class)
    {
        foreach (self::$prefixes as $prefix => $lookup) {
            if (strpos($class, $prefix) === 0) {
                if(self::_load(substr($class, strlen($prefix)), $lookup)) {
                    return true;
                };
            }
        }
    }

    /**
     * Load a class based on name and lookup array.
     *
     * @param   string  $class   The class to be loaded (wihtout prefix).
     * @param   array   $lookup  The array of base paths to use for finding the class file.
     *
     * @return  void
     *
     * @since   12.1
     */
    private static function _load($class, $lookup)
    {
        // Split the class name into parts separated by camelCase.
        $parts = preg_split('/(?<=[a-z0-9])(?=[A-Z])/x', $class);

        // If there is only one part we want to duplicate that part for generating the path.
        //$parts = (count($parts) === 1) ? array($parts[0], $parts[0]) : $parts;

        foreach ($lookup as $base) {

            $folders = $base[0];
            $type = $base[1];

            switch($type) {
                case 'view':
                    // Generate the path based on the class name parts.
                    $path = $folders.'/'.implode('/', array_map('strtolower', $parts)).'/view.html.php';
                    break;
                default:
                    // Generate the path based on the class name parts.
                    $path = $folders.'/'.implode('/', array_map('strtolower', $parts)).'.php';
            }

            // Load the file if it exists.
            if (file_exists($path)) {
                include_once $path;
                return true;
            }
        }

        return false;
    }

}

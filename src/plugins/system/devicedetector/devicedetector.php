<?php

defined('JPATH_BASE') or die;

jimport('joomla.application.component.helper');

class PlgSystemDevicedetector extends JPlugin
{
    public $deviceMode = null;
    
	public function onAfterInitialise()
	{
        $registry = JRegistry::getInstance('devicedetector');
        $registry->set('entity', $this);
        
        // Let's find WURFL...
        define('WURFL_BASE_PATH', JPATH_LIBRARIES . '/wurfl');
        
        if (file_exists(WURFL_BASE_PATH . '/wurfl_config_standard.php')) {

            $wurflDir = WURFL_BASE_PATH . '/WURFL';
            $resourcesDir = WURFL_BASE_PATH . '/resources';

            require_once WURFL_BASE_PATH.'/WURFL/Application.php';

            $persistenceDir = $resourcesDir.'/storage/persistence';
            $cacheDir = $resourcesDir.'/storage/cache';

            // Create WURFL Configuration
            $wurflConfig = new WURFL_Configuration_InMemoryConfig();

            // Set location of the WURFL File
            $wurflConfig->wurflFile($resourcesDir.'/wurfl.zip');

            // Set the match mode for the API ('performance' or 'accuracy')
            $wurflConfig->matchMode('performance');

            // Setup WURFL Persistence
            $wurflConfig->persistence('file', array('dir' => $persistenceDir));

            // Setup Caching
            $wurflConfig->cache('file', array('dir' => $cacheDir, 'expiration' => 36000));

            // Create a WURFL Manager Factory from the WURFL Configuration
            $wurflManagerFactory = new WURFL_WURFLManagerFactory($wurflConfig);

            // Create a WURFL Manager
            /* @var $wurflManager WURFL_WURFLManager */
            $wurflManager = $wurflManagerFactory->create();
            $requestingDevice = $wurflManager->getDeviceForHttpRequest($_SERVER);

            $is_wireless = ($requestingDevice->getCapability('is_wireless_device') == 'true');
            $is_tablet = ($requestingDevice->getCapability('is_tablet') == 'true');

            if ($is_wireless) {
                $deviceClass = $is_tablet? 20 : 10;
            } else {
                $deviceClass = 30;
            }

            $maxResolution = max(array($requestingDevice->getCapability('resolution_width'), $requestingDevice->getCapability('resolution_height')));

            if ($maxResolution > 0 && $maxResolution < 768) {
                $deviceClass = 10;
            }

            if ($maxResolution >= 768 && $deviceClass < 20) {
                $deviceClass = 20;
            }

            if ($maxResolution >= 980 && $deviceClass < 30) {
                $deviceClass = 30;
            }

            $this->deviceMode = 
                 ($deviceClass <= 10)? 'phone' :
                (($deviceClass <= 20)? 'tablet' : 'desktop');

            $this->deviceType = (!$is_wireless && !$is_tablet)? 
                'desktop' : (($is_wireless)? 'phone' : 'tablet'); 
        }
	}
}

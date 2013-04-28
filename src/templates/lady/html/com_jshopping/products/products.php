<?php 

//    $devdetector = JRegistry::getInstance('devicedetector')->get('entity');
//
//    $sceneMode = JRequest::getString('scenemode');
//    //var_dump($sceneMode); die;
//    $sess = JFactory::getSession();
//
//    if (!empty($sceneMode)) {
//        $sess->set('template.lady.jshopping.scenemode', $sceneMode);
//    } else {
//        $sceneMode = $sess->get('template.lady.jshopping.scenemode');
//    }
//
//    if (!empty($sceneMode)) {
//        include ($sceneMode == 'desktop')? 'products-desktop.php' : 'products-mobile.php';
//        return;
//    }
//    
//    if ($devdetector) {
//        $mode = $devdetector->deviceType;
//        if ($mode == 'tablet' || $mode == 'phone') {
//            include 'products-mobile.php';
//            return;
//        }
//    }
//    
//    include 'products-desktop.php';

      include 'products-mobile.php';
?>    

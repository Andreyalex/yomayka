<?php
/**
* @version      3.3.0 20.12.2011
* @author       MAXXmarketing GmbH
* @package      Jshopping
* @copyright    Copyright (C) 2010 webdesigner-profi.de. All rights reserved.
* @license      GNU/GPL
*/

abstract class ShippingExtRoot{
    
    /**
    * Show form Shipping price
    * 
    * @param mixed $params - shipping price params
    * @param mixed $shipping_ext_row - exstension row
    * @param mixed $template - template view object
    */
    abstract function showShippingPriceForm($params, &$shipping_ext_row, &$template);
    
    /**
    * show form config
    * 
    * @param mixed $config - config extension
    * @param mixed $shipping_ext - object jshopShippingExt
    * @param mixed $template - template view object
    */    
    abstract function showConfigForm($config, &$shipping_ext, &$template);
    
    /**
    * calculate price for shipping
    * 
    * @param mixed $cart - cart object
    * @param mixed $params - shipping price params
    * @param mixed $price - price before
    * @param mixed $shipping_ext_row - exstension row
    * @param mixed $shipping_method_price - object jshopShippingMethodPrice
    */
    abstract function getPrice($cart, $params, $price, &$shipping_ext_row, &$shipping_method_price);
}
?>
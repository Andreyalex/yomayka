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

define('YOSHOP_MEDIA_TYPE_IMAGE', 1);

define('YOSHOP_MEDIA_BASEURL', JUri::root().'media/com_yoshop');

define('YOSHOP_PRODUCT_MEDIA_PATH', JPATH_ROOT . '/media/com_yoshop/content/product/images');
define('YOSHOP_PRODUCT_MEDIA_BASEURL', YOSHOP_MEDIA_BASEURL.'/content/product/images');

define('YOSHOP_ASSETS_BASEURL', YOSHOP_MEDIA_BASEURL.'/assets');

define('YOSHOP_CONTENT_BASEURL', YOSHOP_MEDIA_BASEURL.'/content');

define('YOSHOP_ORDER_STATUS_CREATED', 1);
define('YOSHOP_ORDER_STATUS_IN_PROGRESS', 2);
define('YOSHOP_ORDER_STATUS_SHIPPING', 3);
define('YOSHOP_ORDER_STATUS_COMPLETED', 4);
define('YOSHOP_ORDER_STATUS_CANCELED', 5);

<?php
define('K_TCPDF_EXTERNAL_CONFIG', true);
// Installation path
define("K_PATH_MAIN", JPATH_SITE.DS."components".DS."com_jshopping".DS."lib".DS."tcpdf");
// URL path
define("K_PATH_URL", JPATH_SITE);
// Fonts path
define("K_PATH_FONTS", JPATH_SITE.DS."components".DS."com_jshopping".DS."lib".DS."tcpdf".DS."fonts".DS);
// Cache directory path
define("K_PATH_CACHE", K_PATH_MAIN.DS."cache");
// Cache URL path
define("K_PATH_URL_CACHE", K_PATH_URL.DS."cache");
// Images path
define("K_PATH_IMAGES", K_PATH_MAIN.DS."images");
// Blank image path
define("K_BLANK_IMAGE", K_PATH_IMAGES.DS."_blank.png");

// Cell height ratio
define("K_CELL_HEIGHT_RATIO", 1.5);
// Magnification scale for titles
define("K_TITLE_MAGNIFICATION", 1);
// Reduction scale for small font
define("K_SMALL_RATIO", 2/3);
// Magnication scale for head
define("HEAD_MAGNIFICATION", 1);
?>
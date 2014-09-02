<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_yoshop_featured
 *
 * @copyright   Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

// Include the syndicate functions only once
require_once __DIR__ . '/helper.php';

$items = ModYoshopFeaturedHelper::getGroupedProducts($params->get('ids'));

$moduleclass_sfx = htmlspecialchars($params->get('moduleclass_sfx'));
$frameborder = htmlspecialchars($params->get('frameborder'));



require JModuleHelper::getLayoutPath('mod_yoshop_featured', $params->get('layout', 'default'));

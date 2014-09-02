<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_random_text
 *
 * @copyright   Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

$rows = explode("\n", $params->get('content'));
foreach ($rows as &$row) {
    list ($text, $name) = explode("--", $row);
    $row = array('text' => trim($text, "\r "), 'name' => trim($name, "\r "));
}
?>


<div class="random_text<?php echo $moduleclass_sfx ?>"></div>

<script>
    modRandomText = {
        rows: <?php echo json_encode($rows); ?>
    }
</script>
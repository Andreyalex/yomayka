<?php
/**
 * @version		$Id: default.php 22355 2011-11-07 05:11:58Z github_bot $
 * @package		Joomla.Site
 * @subpackage	mod_menu
 * @copyright	Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */
?>

<?php 
    $target = rand(10000, 99999); 
    $nav_list = true;
?>

<div class="navbar<?php echo $class_sfx; ?>">
	<div class="navbar-inner">
		<div class="container-fluid">
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-responsive-collapse-<?php echo $target; ?>">
			  <span class="icon-bar"></span>
			  <span class="icon-bar"></span>
			  <span class="icon-bar"></span>
			</a>
			<div class="nav-collapse collapse navbar-responsive-collapse-<?php echo $target; ?>">

		
		<?php 
            $class = "nav nav-list";
            $class_sfx = '';
			require JModuleHelper::getLayoutPath('mod_menu', 'default'); 
		?>
		
			</div>
		</div>				
	</div>
</div>
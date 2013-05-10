<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_search
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

    if (($button_pos && $button)) {
        $params->set('_moduleContainerClass', 
                $params->get('_moduleContainerClass') . ' modvariant-button' . $button_pos 
        );
    }
?>



<form action="<?php echo JRoute::_('index.php');?>" method="post" class="form-search">
	<div class="search-module">
		<?php
			$output = '<input name="searchword" id="mod-search-searchword" maxlength="'.$maxlength.'"  class="inputbox'.$moduleclass_sfx.'" type="text" size="'.$width.'" value="'.$text.'"  onblur="if (this.value==\'\') this.value=\''.$text.'\';" onfocus="if (this.value==\''.$text.'\') this.value=\'\';" />';

			if ($button) :
				if ($imagebutton) :
					$button = ' <input type="image" value="'.$button_text.'" class="button btn'.$moduleclass_sfx.'" src="'.$img.'" onclick="this.form.searchword.focus();"/>';
				else :
					$button = ' <input type="submit" value="'.$button_text.'" class="button btn btn-primary'.$moduleclass_sfx.'" onclick="this.form.searchword.focus();"/>';
				endif;
			endif;

			switch ($button_pos) :
				case 'top' :
					$button = $button.'<br />';
					$output = $button.$output;
					break;

				case 'bottom' :
					$button = '<br />'.$button;
					$output = $output.$button;
					break;

				case 'left' :
					$output = $output.$button;
					break;

				case 'right' :
				default :
					$output = $button.$output;
					break;
			endswitch;

			echo $output;
		?>
		<input type="hidden" name="task" value="search" />
		<input type="hidden" name="option" value="com_search" />
		<input type="hidden" name="Itemid" value="<?php echo $mitemid; ?>" />
	</div>
</form>

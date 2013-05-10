<?php
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
        <input 
            class="inputbox" 
            type="text" 
            name="searchword" 
            id="mod-search-searchword" 
            maxlength="<?php echo $maxlength; ?>"
            size="<?php echo $width; ?>" 
            value="<?php echo $text; ?>"  
            onblur="if (this.value=='') this.value='<?php echo $text; ?>'"
            onfocus="if (this.value=='<?php echo $text; ?>') this.value=''"
            >
        <button onclick="this.form.searchword.focus();"><span class="icon-search" ></span></button>
		<input type="hidden" name="task" value="search" />
		<input type="hidden" name="option" value="com_search" />
		<input type="hidden" name="Itemid" value="<?php echo $mitemid; ?>" />
	</div>
</form>

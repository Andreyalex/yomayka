<?php
/**
 * @package		Joomla.Site
 * @subpackage	com_search
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;
$lang = JFactory::getLanguage();
$upper_limit = $lang->getUpperLimitSearchWord();
?>

<form id="searchForm" action="<?php echo JRoute::_('index.php?option=com_search');?>" method="post" class="form-horizontal">
	<fieldset class="word">
		<div class="control-group">
			<label for="search-searchword"> <?php echo JText::_('COM_SEARCH_SEARCH_KEYWORD'); ?> </label>
			<div class="controls">
				<input type="text" name="searchword" id="search-searchword" size="30" maxlength="<?php echo $upper_limit; ?>" value="<?php echo $this->escape($this->origkeyword); ?>" class="inputbox" />
			</div>
		</div>
	</fieldset>
	<fieldset class="phrases">
		<div class="phrases-box control-group">
            <label for="searchphrase">Способ поиска:</label>
			<div class="controls">
                <?php $phrases = $this->get('state')->get('match'); ?>
                <select id="searchphrase" name="searchphrase">
                    <option value="all" <?php echo $phrases=='all'? 'selected="selected"' : '' ?>>Все слова</option>
                    <option value="any" <?php echo $phrases=='any'? 'selected="selected"' : '' ?>>Любое из слов</option>
                    <option value="exact" <?php echo $phrases=='exact'? 'selected="selected"' : '' ?>>Точное совпадение</option>
                </select>
			</div>
		</div>
		<div class="ordering-box control-group">
			<label for="ordering" class="ordering"> <?php echo JText::_('COM_SEARCH_ORDERING');?> </label>
			<div class="controls"> <?php echo $this->lists['ordering'];?> </div>
		</div>
	</fieldset>
	<?php if ($this->params->get('search_areas', 1)) : ?>
	<fieldset class="only">
		<legend><?php echo JText::_('COM_SEARCH_SEARCH_ONLY');?></legend>
		
		<?php foreach ($this->searchareas['search'] as $val => $txt) :
			$checked = is_array($this->searchareas['active']) && in_array($val, $this->searchareas['active']) ? 'checked="checked"' : '';
		?>
		<div class="control-group">
		<label for="area-<?php echo $val;?>"> <?php echo JText::_($txt); ?> </label>
		<div class="controls">
		<label class="checkbox">
		<input type="checkbox" name="areas[]" value="<?php echo $val;?>" id="area-<?php echo $val;?>" <?php echo $checked;?> />
		</label>
		</div>
		</div>
		<?php endforeach; ?>
		
	</fieldset>
	<?php endif; ?>
	<?php if ($this->total > 0) : ?>
	<div class="form-limit control-group">
		<label for="limit"> <?php echo JText::_('JGLOBAL_DISPLAY_NUM'); ?> </label>
		<div class="controls"><?php echo $this->pagination->getLimitBox(); ?> </div>
		</div>
	<p class="counter"> <?php echo $this->pagination->getPagesCounter(); ?> </p>
	<?php endif; ?>
    <div class="submit-group">
        <button name="Search" onclick="this.form.submit()" class="btn btn-success button btn-large"><?php echo JText::_('COM_SEARCH_SEARCH');?></button>
    </div>
    <input type="hidden" name="task" value="search" />


</form>

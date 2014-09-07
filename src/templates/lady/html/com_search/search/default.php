<?php
/**
 * @package		Joomla.Site
 * @subpackage	com_search
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

JHTML::stylesheet('templates/lady/assets/css/com_search/default.css');
?>

<div class="search-component<?php echo $this->pageclass_sfx; ?> row-fluid">
	<?php if ($this->params->get('show_page_heading', 1)) : ?>
	<div class="page-header">
		<h1>
			<?php if ($this->escape($this->params->get('page_heading'))) :?>
			<?php echo $this->escape($this->params->get('page_heading')); ?>
			<?php else : ?>
			<?php echo $this->escape($this->params->get('page_title')); ?>
			<?php endif; ?>
		</h1>
	</div>
	<?php endif; ?>

    <blockquote>
        <small><?php echo JText::_('TPL_LADY_COMSEARCH_DESCRIPTION'); ?></small>
    </blockquote>

    <div class="accordion" id="accordion2">
        <div class="accordion-group">
            <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
                    <div class="btn"><span>Критерии поиска</span>&nbsp;&nbsp;<i class="icon-chevron-down"></i></div>
                </a>
            </div>
            <div id="collapseOne" class="accordion-body collapse <?php echo !empty($this->searchword)? '': 'in' ?>">
                <div class="accordion-inner">
                    <?php echo $this->loadTemplate('form'); ?>
                </div>
            </div>
        </div>
    </div>


    <div class="searchintro<?php echo $this->params->get('pageclass_sfx'); ?>">
        <?php if (!empty($this->searchword)):?>
            <h2 style="text-align: center; display: block;"><?php echo JText::plural('TPL_LADY_COMSEARCH_RESULTS', $this->total);?></h2>
        <?php endif;?>
    </div>

	<?php if ($this->error==null) :
	echo $this->loadTemplate('results');
else :
	echo $this->loadTemplate('error');
endif; ?>
</div>

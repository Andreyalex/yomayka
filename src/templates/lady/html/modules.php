<?php
/*
 * Module chrome that adds slides for modules
 * based on xhtml chrome (if your module is styled with xhtml chrome selected, you won't lose css when you change to this chrome )
 */
// no direct access
defined('_JEXEC') or die('Restricted access');

function modChrome_standard($module, $params, $attribs) {
    
    $doc = JFactory::getDocument();
    
    //var_dump($doc->deviceClass); die;
    // Determines H tag level (ie. h1, h2, h3)
    $headerTag = isset($attribs['headerLevel']) ? $attribs['headerLevel'] : 'h3';
    $width = isset($attribs['width']) ? $attribs['width'] : '';
    // Badge?
    $badge = preg_match('/badge/', $params->get('moduleclass_sfx')) ? '<span class="badge"></span>' : '';
    // Add module class suffix and unique class name
    $moduleClassSfx = '';
    $moduleUniqueClass = ' modid-' . $module->id;
    $moduleType = ' modtype-' . $module->module;
    $moduleLayout = $moduleType . '-' . trim(array_pop(split(':', $params->get('layout', 'default'))), ':_');
    if ($params->get('moduleclass_sfx') != NULL) {
        $moduleClassSfx = ' ' . $params->get('moduleclass_sfx');
    }

    $containerClass = ' ' . (string) $params->get('_moduleContainerClass', '');
    
    // Determine if title is on or off and add class
    // Output module
    echo '<div class="moduletable module-column' . $moduleUniqueClass . $moduleClassSfx . $moduleType . $containerClass . ' ' . $moduleLayout . ' clearfix">' . "\n";
    echo '<div class="module-block">' . "\n";

    if ($module->showtitle == 1) {
        
        echo "\t\t" . '<div class="module-header">' . "\n";
        echo $badge;

        // Creates span around first word of module title for unique styling
        $part_one = explode(' ', $module->title);
        $part_one = $part_one[0];

        if (count(explode(' ', $module->title)) > 1) {
            $part_two = substr($module->title, strpos($module->title, ' '));
        } else {
            $part_two = '';
        }
        echo "\t\t\t\t" . '<' . $headerTag . ' class="module-title"><span>' . $part_one . '</span>' . $part_two . '</' . $headerTag . '>' . "\n";
        echo "\t\t\t" . '</div>' . "\n";
    }

    if (!empty($module->content)) :
        echo "\t\t\t" . '<div class="module-content">' . "\n";
        echo "\t\t\t\t" . $module->content . "\n";
        echo "\t\t\t\t" . '<div class="clear"></div>' . "\n";
        echo "\t\t\t" . '</div>' . "\n";
    endif;
    echo "\t\t" . '</div>';
    echo "\t" . '</div>';
}

function modChrome_basic($module, $params, $attribs) {
    if (!empty($module->content)) {
        echo $module->content;
    }
}

function modChrome_slider($module, &$params, &$attribs) {
    echo JHtml::_('sliders.start', 'module-slider' . $module->id, array('startOffset' => 0));
    echo JHtml::_('sliders.panel', JText::_($module->title), 'moduletable' . $module->id);
//  Initialize variables
    echo $module->content;
    echo JHtml::_('sliders.end');
}

function modChrome_tabpane($module, &$params, &$attribs) {
    static $modulecount;
    static $modules;

    if ($modulecount < 1) {
        $modulecount = count(JModuleHelper::getModules($attribs['name']));
        $modules = array();
    }

    if ($modulecount > 1) {

        $temp = new stdClass();
        $temp->content = $module->content;
        $temp->params = $module->params;
        $temp->title = $module->title;
        $temp->id = $module->id;
        $modules[] = $temp;
        $modulecount--;
    } else {

        $temp = new stdClass();
        $temp->content = $module->content;
        $temp->title = $module->title;
        $temp->params = $module->params;
        $temp->id = $module->id;
        $modules[] = $temp;
        // list of moduletitles
        ?>


        <ul class="nav nav-tabs">
        <?php $isTabActive = 'active';
        foreach ($modules as $mod): ?>
                <li 
                    class="<?php echo $isTabActive; ?>"
                    id="tab_<?php echo $mod->id; ?>"
                    >
                    <a href="#module_<?php echo $mod->id; ?>" data-toggle="tab"><?php echo $mod->title; ?></a>
                </li>
            <?php $isTabActive = '';
        endforeach; ?>
        </ul>

        <div class="tab-content">
            <?php $isTabActive = ' active';
            foreach ($modules as $mod): ?>

                <div 
                    class="tab-pane<?php echo $isTabActive; ?>"
                    id="module_<?php echo $mod->id; ?>"
                    >
                        <?php echo $mod->content; ?>
                </div>
            <?php endforeach; ?>	
        </div>

        <?php
        $modulecount--;
    }
}
?>

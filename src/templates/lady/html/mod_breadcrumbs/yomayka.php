    <?php 
    
    $app	= JFactory::getApplication();
    $menu	= $app->getMenu();
    $active	= $menu->getActive();
    $path	= isset($active) ? $active->tree : array();

    if (!empty($path[1])) {
        $menuItem = $menu->getItem($path[1]); 
        //var_dump(JRoute::_("index.php?Itemid=".$menuItem->id)); die;
        ?><div class="jshop-topbar">
            <a href="<?php echo JRoute::_("index.php?Itemid=".$menuItem->id); ?>" class="category-title menuitem alias-<?php echo $menuItem->alias; ?>">
                <span class="icon"></span>
                <span class="content"><?php echo $menuItem->title; ?></span>
            </a>
        </div>    
    <?php } ?>

<?php 
if (!function_exists('modJoomshoppingCategoriesLayoutWalker')) {
    

function modJoomshoppingCategoriesLayoutWalker (&$collection, $idx, $categories_id) {

    ?><ul class="nav nav-list nav-pills"><?php
    
    for (; $idx < count($collection); $idx++) {

        $curr = $collection[$idx];
        $next = isset($collection[$idx+1])? $collection[$idx+1] : null;
        $active = end($categories_id);
        
        $class = "jshop_category jshop_menu_level_" . $curr->level;
        if ($active == $curr->category_id) $class = $class . " active";
        if ($next && $next->level > $curr->level)  $class = $class . " parent";

        ?>
        <li class = "<?php print $class ?>">
            <a href = "<?php print $curr->category_link ?>"><?php print $curr->name ?>
                <?php if ($show_image && $curr->category_image) { ?>
                <img align = "absmiddle" src = "<?php print $jshopConfig->image_category_live_path . "/" . $curr->category_image ?>" alt = "<?php print $curr->name ?>" />
                <?php } ?>
            </a>

        <?php
        
        if ($next->level > $curr->level) {
            $idx = modJoomshoppingCategoriesLayoutWalker ($collection, $idx+1, $categories_id);
        }    

        ?></li><?php

        $next = isset($collection[$idx+1])? $collection[$idx+1] : null;
        if (!$next || $next->level < $curr->level) {
            break;
        }
    }
    
    ?></ul><?php
        
    return $idx;
}

}

modJoomshoppingCategoriesLayoutWalker ($categories_arr, 0, $categories_id);

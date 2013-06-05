<div id="jshop-categories-list">
    <?php
    if (count($this->categories)){
        $i=0;
        foreach($this->categories as $k=>$category){
    ?>        
        <div class="item grid-2col-item<?php echo $i % 2; ?> grid-3col-item<?php echo $i % 3; ?>">

            <a class="nonlink" href="<?php print $category->category_link; ?>">
                <img class="image" src="<?php print $this->image_category_path.'/'.$category->category_image; ?>" alt="<?php print htmlspecialchars($category->name);?>" title="<?php print htmlspecialchars($category->name);?>" />
            </a>    

            <h2 class="title">
                <a class="nonlink" href="<?php print $category->category_link; ?>">
                    <?php print $category->name; ?>
                </a>    
            </h2>

            <div class="thin-line"></div>
            <p class="description-short">
                <?php print $category->short_description?>
            </p>
        </div>
    <?php 
        $i++; 
    } } 
    ?>
</div>

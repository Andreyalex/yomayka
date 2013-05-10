<?php if ($this->params->get('show_page_heading') && $this->params->get('page_heading')) {?>    
<div class="shophead<?php print $this->params->get('pageclass_sfx');?>"><h1><?php print $this->params->get('page_heading')?></h1></div>
<?php }?>
<div class="jshop">
<?php print $this->category->description?>

<div id="jshop-category-list">
<?php if (count($this->categories)){
    $i=0;
    foreach($this->categories as $k=>$category){
?>
        <div class="category grid-2col-item<?php echo $i % 2; ?>  grid-3col-item<?php echo $i % 3; ?>">
            <a class="nonlink" href="<?php print $category->category_link;?>"><img class="image" src = "<?php print $this->image_category_path;?>/<?php if ($category->category_image) print $category->category_image; else print $this->noimage;?>" alt="<?php print htmlspecialchars($category->name);?>" title="<?php print htmlspecialchars($category->name);?>" /></a>
            <h2 class="title">
               <?php print $category->name?>
            </h2>
            <a class="readmore nonlink" href="<?php print $category->category_link;?>">&#xf0a9;</a>
            <div class="thin-line"></div>
            <p class="description">
                <?php print $category->short_description?>
            </p>
        </div>
<?php 
        $i++; 
    } } 
?>
</div>
</div>
<?php 

$doc = JFactory::getDocument(); 
    $doc->addScript(JUri::root() . 'templates/lady/assets/js/yo.js');
    $doc->addScript(JUri::root() . 'templates/lady/assets/js/yo/drag.js');
    $doc->addScript(JUri::root() . 'templates/lady/html/com_jshopping/products/js/scene.js');
    $doc->addScript(JUri::root() . 'templates/lady/html/com_jshopping/products/js/sceneitem.js');
    $doc->addScript(JUri::root() . 'templates/lady/html/com_jshopping/products/js/slideitem.js');

    $this->sceneSkin = array(
        'scale' => 0.8,
        'background' => JUri::root() . 'templates/lady/assets/img/scene/divan-blue.png',
        'droppable' => array(
            'top' => 155,
            'left' => 180,
            'width' => 400,
            'height' => 150
        )
    );
    
    ?>

<div class="jshop scenemode">

    <div class="listproduct" data-role="items-container">

            <div class="context-menu">
                <ul>
                    <li><a >Подробнее</a></li>
                </ul>
                <div class="caret"></div>
            </div>    
        

        <?php foreach ($this->rows as $k=>$product): ?>
        <div class="product" data-role="item">
            <a href="<?php echo $product->product_link; ?>" class="image">
                <img src="<?php echo $product->image; ?>" />
            </a>    
        </div>
        <?php endforeach; ?>    
        
    </div>

    <div class="scene" data-role="scene-container">
        <div class="prev"></div>
        <div class="next"></div>
        <div class="skin-container"></div>
    </div>
    
</div>

<script type="text/javascript">
    
    
    
    jQuery(document).ready(function($){
        console.log(this, arguments);
        
        var items = $('[data-role="items-container"] [data-role="item"]');
        
        /* Init items in the slide panel */
        $.each(items, function(idx, node){
            $(node).data('widget', new yo.models.SlideItem(node));
        });
        
        /* Init scene widget */
        new yo.models.Scene($('[data-role="scene-container"]')[0], {
            sources: items,
            skin: <?php echo json_encode($this->sceneSkin); ?>
        });
        
    });
</script>
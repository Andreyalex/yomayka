<?php 
    $doc = JFactory::getDocument(); 
    $doc->addScript(JUri::root() . 'templates/lady/assets/js/yo.js');
    $doc->addScript(JUri::root() . 'templates/lady/assets/js/yo/drag.js');
    $doc->addScript(JUri::root() . 'templates/lady/html/com_jshopping/products/js/slide.js');
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

    <div class="scenemode-list">
        <a class="btn btn-mini btn-warning" href="<?php echo JUri::current() . '?scenemode=thumbs'; ?>">
            <span class="icon-th-large icon-white"></span>
        </a>
    </div>    
    
    <div class="listproduct" data-role="items-container">

        <div class="items">
            <?php foreach ($this->rows as $k=>$product): ?>
            <div class="product" data-role="item">
                <a href="<?php echo $product->product_link; ?>" class="image">
                    <img src="<?php echo $product->image; ?>" />
                </a>    
            </div>
            <?php endforeach; ?>    
            <?php foreach ($this->rows as $k=>$product): ?>
            <div class="product" data-role="item">
                <a href="<?php echo $product->product_link; ?>" class="image">
                    <img src="<?php echo $product->image; ?>" />
                </a>    
            </div>
            <?php endforeach; ?>    
        </div>    

        <div class="edge-left"></div>
        <div class="edge-right"></div>

        <a href="#" class="prev"></a>
        <a href="#" class="next"></a>
    </div>

    <div class="scene" data-role="scene-container">
        <div class="prev"></div>
        <div class="next"></div>
        <div class="skin-container"></div>
    </div>
    
</div>

<script type="text/javascript">
    
    
    
    jQuery(document).ready(function($){
        
        var items = $('[data-role="items-container"] [data-role="item"]');

        new yo.models.Slide($('.listproduct')[0], {items: items});

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

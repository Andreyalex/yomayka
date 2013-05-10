<div class="list_product">
    
<?php
$i=0;
foreach ($this->rows as $k=>$product){
    include(dirname(__FILE__)."/".$product->template_block_product);
    $i++; 
}
?>
    
</div>
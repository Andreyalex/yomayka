<div class="list_product">
    
<?php
$i=0;
foreach ($this->rows as $k=>$product){
    $rowIdx = $i % $this->count_product_to_row;
    //$productClass='';
    if ($rowIdx == 0) {
        //$productClass='cell-first';
        ?><div class="row-fluid"><?php
    }
    include(dirname(__FILE__)."/".$product->template_block_product);
    
    if ($rowIdx == ($this->count_product_to_row-1)) {
        //$productClass='cell-last';
        ?></div><?php
    }
    $i++; 
}
?>
    
</div>
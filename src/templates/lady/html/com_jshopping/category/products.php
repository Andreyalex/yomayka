<?php if ($this->display_list_products) { ?>
<div class="jshop_list_product">    

    <?php if ($this->display_pagination) { ?>
    <div class="pull-left">
            <?php include(dirname(__FILE__)."/../".$this->template_block_pagination); ?>
    </div>
    <?php } ?>

    <div class="pull-right">
        <?php include(dirname(__FILE__)."/../".$this->template_block_form_filter); ?>
    </div>
        
    <div>
    <?php if (count($this->rows)) { ?>
            <?php include(dirname(__FILE__)."/../".$this->template_block_list_product); ?>
    </div>    
    <?php } ?>
        

    <?php if ($this->display_pagination){ ?>
    <div class="pull-left">
            <?php include(dirname(__FILE__)."/../".$this->template_block_pagination); ?>
    </div>    
    <?php } ?>

</div>
<?php } ?>
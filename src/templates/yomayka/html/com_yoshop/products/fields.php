<?php

    defined('_JEXEC') or die;

    foreach($this->fields as $item) {
?>
        <div class="thumbnail">
        <?= YoshopHelperProduct::renderField($item, array('form' => 'filter')); ?>
        </div>
<?php } ?>

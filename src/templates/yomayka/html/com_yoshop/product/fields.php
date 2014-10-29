<?php

    defined('_JEXEC') or die;

    foreach($this->fields as $item) {
        echo YoshopHelperProduct::renderField($item);
    }

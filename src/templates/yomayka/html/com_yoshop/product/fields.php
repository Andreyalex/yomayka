<?php

    defined('_JEXEC') or die;

    foreach($this->fieldsMeta as $item) {
        echo YoshopHelperProduct::renderField($item);
    }

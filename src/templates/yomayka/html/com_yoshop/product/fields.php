<?php

    defined('_JEXEC') or die;

    if ($this->fields) {
        foreach($this->fields as $item) {
            echo YoshopHelperProduct::renderField($item, array('form' => 'jform'));
        }
    }

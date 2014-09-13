<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Bee
 * Date: 21.11.13
 * Time: 0:58
 * To change this template use File | Settings | File Templates.
 */

class YoMailLetterRendererHtmlString extends YoMailLetterRenderer
{
    public function render($name)
    {
        $data = $this->getData($name);
        return empty($data[0])? '' : $data[0];
    }
}
<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Bee
 * Date: 21.11.13
 * Time: 0:58
 * To change this template use File | Settings | File Templates.
 */

class YoMailLetterRenderer
{
    protected $_letter;

    public function __construct(YoMailLetter $letter)
    {
        $this->_letter = $letter;
    }

    protected function getData($name)
    {
        return $this->_letter->getData($name);
    }

    public function render($tpl, $data, $defaults = array())
    {
        $data = array_merge($defaults, (array)$data);

        $reps = array();
        $matches = array();
        preg_match_all('/{([^}]+)}/', $tpl, $matches);
        foreach($matches[1] as $key) {
            $reps["{{$key}}"] = isset($data[$key])? $data[$key] : '';
        }

        return str_replace(array_keys($reps), array_values($reps), $tpl);
    }
}
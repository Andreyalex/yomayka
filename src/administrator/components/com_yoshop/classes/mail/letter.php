<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Bee
 * Date: 20.11.13
 * Time: 21:44
 * To change this template use File | Settings | File Templates.
 */

class YoshopMailLetter
{
    protected $_templatesPath = 'assets/mail/templates';

    protected $_renderers = array();

    protected $_recipients = array();

    protected $_sender = array();

    protected $_subject = array();

    protected $_content = '';

    protected $_data = array();

    public function __construct($name)
    {
        $this->loadFromFile($name);
    }

    public function loadFromFile($name)
    {
        $filepath = JPATH_COMPONENT_ADMINISTRATOR . '/' . $this->_templatesPath . '/' . $name . '.txt';
        if (!file_exists($filepath)) {
            throw new Exception('File template '.$filepath.' not found.');
        }

        $data = file_get_contents($filepath);

        list($subject, $ignored, $content) = explode("\n", $data, 3);

        $this->_subject = trim($subject, "\r\n");
        $this->_content = trim($content, "\r\n");
    }

    public function addData($name, $value)
    {
        if (!isset($this->_data[$name])) {
            $this->_data[$name] = array();
        }
        $this->_data[$name][] = $value;
    }

    public function getData($name = null)
    {
        return $name?
            (isset($this->_data[$name])? $this->_data[$name] : null) :
            $this->_data;
    }

    public function addRecipient($email, $name = null)
    {
        $this->_recipients[] = array($email, $name);
        $this->addData('recipient email', $email);
        $this->addData('recipient name', $name);
    }

    public function setSender($email, $name = null)
    {
        $this->_sender = array($email, $name);
        $this->addData('sender email', $email);
        $this->addData('sender name', $name);
    }

    public function getSender()
    {
        return $this->_sender;
    }

    public function getSubject()
    {
        return $this->_subject;
    }

    public function getRecipients()
    {
        return $this->_recipients;
    }

    public function render()
    {
        return $this->_parseString($this->_content);
    }

    protected function _parseString($content)
    {
        $content = (string) $content;

        $matches = array();
        preg_match_all('/\{\{(?:([^\:]+)\:)?([^\:}]+)\}\}/imU', $content, $matches, PREG_SET_ORDER);

        if (!empty($matches)) {
            $replaces = array();
            foreach($matches as $item) {
                $renderer = $this->_getRenderer($item[1]);
                $replaces[$item[0]] = $this->_parseString($renderer->render($item[2]));
            }

            $content = str_replace(array_keys($replaces), array_values($replaces), $content);
        }
        return $content;
    }

    protected function _getRenderer($name)
    {
        $name = $name? $name : 'string';
        $class = 'YoshopMailLetterRendererHtml'.ucfirst($name);

        if (!isset($this->_renderers[$class])) {
            if (!class_exists($class)) {
                throw new Exception('Cannot load renderer '. $class);
            }
            $this->_renderers[$class] = new $class($this);
        }
        return $this->_renderers[$class];
    }
}
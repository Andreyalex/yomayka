<?php
/**
 * @version     0.5
 * @package     com_yoshop
 * @copyright   © 2013. Все права защищены.
 * @license     GNU General Public License версии 2 или более поздней; Смотрите LICENSE.txt
 * @author      Andreyalek <andreyalek@gmail.com> - http://
 */
 
// No direct access
defined('_JEXEC') or die;

jimport('joomla.application.component.controller');

class YoshopControllerJson extends YoshopControllerAbstract
{
    protected $_response;

    public function setStatus($data)
    {
        $this->_response['status'] = (bool) $data;
    }

    public function setMessages($data, $append = false)
    {
        $data = (array) $data;
        if (!isset($this->_response['messages'])) {
            $this->_response['messages'] = array();
        }
        $this->_response['messages'] = $append? array_merge($this->_response['messages'], $data) : $data;
    }

    public function setData($data)
    {
        $this->_response['data'] = $data;
    }

    public function setArtefacts($data)
    {
        $this->_response['_artefacts'] = (string) $data;
    }

    public function setResponse($status, $messages = array(), $data = array())
    {
        $this->setStatus($status);
        $this->setMessages($messages);
        $this->setData($data);
    }

    public function execute($task)
    {
        $this->_response = array(
            'status' => true,
            'data' => array(),
            'messages' => array()
        );

        ob_start();
        try {
            parent::execute($task);
        } catch (Exception $e) {
            $this->setStatus(false);
            $this->setMessages(array($e->getMessage()));
        }
        $content = ob_get_contents();
        $this->setArtefacts($content);
        ob_end_clean();

        echo $this->render();
        jexit();
    }

    public function render()
    {

        $attributes = array(
            'charset' => 'utf-8',
            'lineend' => 'unix',
            'tab' => '  '
        );

        /** @var JDocumentJSON $doc */
        $doc = JDocument::getInstance('json', $attributes);

        $doc->setBuffer(json_encode($this->_response));
        return $doc->render();
    }
}
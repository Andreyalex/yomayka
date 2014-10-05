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

/**
 * Product controller class.
 */
class YoshopControllerLogger extends YoControllerJson
{
    public function add()
    {
        $item = JFactory::getApplication()->input->post->get('item', array(), 'array');

        switch($item['context']) {
            case 'client':
            case 'server':
                $context = $item['context'];
                break;
            default:
                $context = 'common';
        }

        switch($item['type']) {
            case 'error':
                $priority = JLOG::ERROR;
                break;
            default:
                $priority = JLOG::INFO;
        }

        jimport('joomla.log.log');
        JLog::addLogger(
            array(
                // Sets file name
                'text_file' => date('Y-m-d').'/'.$context.'.php',
                'text_entry_format' => '{DATE} {TIME} {PRIORITY} {MESSAGE} {ASSETS}'
            ),
            // Sets messages of all log levels to be sent to the file
            JLog::ALL
        );

        $entry = new JLogEntry($item['message'], $priority);
        $entry->assets = json_encode($item['assets']);
        JLog::add($entry);
    }
}
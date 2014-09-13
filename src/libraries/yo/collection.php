<?php
/**
 * @version     0.5
 * @package     yo
 * @copyright   © 2013. Все права защищены.
 * @license     GNU General Public License версии 2 или более поздней; Смотрите LICENSE.txt
 * @author      Andreyalek <andreyalek@gmail.com> - http://
 */

// No direct access.
defined('_JEXEC') or die;

class YoCollection implements ArrayAccess, Iterator, Countable
{
    protected $_collection = array();

    protected $_rowClass = null;

    protected $_idx = 0;

    /** @var YoDi di */
    protected $di;

    public function __construct($collection = array(), $options = array())
    {
        $this->_collection = (array) $collection;

        if (!empty($options['rowClass'])) $this->_rowClass = $options['rowClass'];
        if (!empty($options['idx'])) $this->_idx = $options['idx'];

        $this->di = !empty($config['di'])?
            $config['di'] : YoDi::getInstance();
    }

    public function valid()
    {
        return ($this->_idx !== null) && isset($this->_collection[$this->_idx]);
    }

    public function next()
    {
        $newIdx = null;
        $keys = array_keys($this->_collection);
        for($i=0; $i < count($keys); $i++) {
            if ($this->_idx == $keys[$i] && isset($keys[$i+1])) {
                $newIdx = $keys[$i+1];
                break;
            }
        }
        $this->_idx = $newIdx;
    }

    public function rewind()
    {
        $keys = array_keys($this->_collection);
        $this->_idx= empty($keys)? null : $keys[0];
    }

    public function current()
    {
        return $this->_getItem($this->_idx);
    }

    public function key()
    {
        return $this->_idx;
    }

    public function offsetSet($idx, $value)
    {
        $this->_collection[$idx] = $value;
    }

    public function offsetGet($idx)
    {
        return $this->_getItem($idx);
    }

    public function offsetUnset($idx)
    {
        $this->_collection[$idx] = null;
    }

    public function offsetExists($idx)
    {
        return isset($this->_collection[$idx]);
    }

    public function count() {
        return count($this->_collection);
    }

    protected function _getItem($idx)
    {
        $item = $this->_collection[$idx];

        if (!$item) return null;

        if (!$item instanceof $this->_rowClass) {

            if ($this->_rowClass) {

                $parts = explode('Model', $this->_rowClass);

                $this->_collection[$idx] = ($parts[0] == 'Yo')?
                    $this->di->createModel($parts[1], 'YoModel', array('state' => new JObject($item))) :
                    new $this->_rowClass($item);
            }
        }

        return $this->_collection[$idx];
    }

    public function addItem($item)
    {
        array_push($this->_collection, $item);
    }

    public function removeItem($idx)
    {
        unset($this->_collection[$idx]);
    }

    public function clear()
    {
        $this->_collection = array();
    }
}
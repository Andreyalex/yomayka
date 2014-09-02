<?php
/**
 * @version     0.5
 * @package     com_yoshop
 * @copyright   © 2013. Все права защищены.
 * @license     GNU General Public License версии 2 или более поздней; Смотрите LICENSE.txt
 * @author      Andreyalek <andreyalek@gmail.com> - http://
 */

// No direct access.
defined('_JEXEC') or die;

jimport('joomla.application.component.modeladmin');

/**
 * Yoshop model.
 */
class YoshopModelOrderproduct extends YoshopModel
{
    public function getTotalPrice()
    {
        $res = (int)$this->state->price_base * (int)$this->state->count;
        return $res;
    }

    public function toArray()
    {
        $res = (array) $this->state;
        $res['total_price'] = $this->getTotalPrice();
        return $res;
    }
}
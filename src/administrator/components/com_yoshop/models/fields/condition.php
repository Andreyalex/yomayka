<?php
/**
 * @version     0.5
 * @package     com_yoshop
 * @copyright   © 2013. Все права защищены.
 * @license     GNU General Public License версии 2 или более поздней; Смотрите LICENSE.txt
 * @author      Andreyalek <andreyalek@gmail.com> - http://
 */

defined('JPATH_BASE') or die;

jimport('joomla.form.formfield');

/**
 * Supports an HTML select list of categories
 */
class JFormFieldCondition extends JFormField
{
    public $optionsOnly = false;

    public $selected = null;

    public $rough = false;

	/**
	 * Method to get the field input markup.
	 *
	 * @return	string	The field input markup.
	 * @since	1.6
	 */
	protected function getInput()
	{
		// Initialize variables.
		$html = '';

        $data = !$this->rough?
            YoshopHelperProduct::getConditionsList() :
            array(
                5 => JText::_('COM_YOSHOP_CONDITION_NEW_PRODUCTS'),
                6 => JText::_('COM_YOSHOP_CONDITION_USED_PRODUCTS')
            );

        $this->optionsOnly || ($html .= '<select name="'.$this->name.'">');

        foreach($data as $id => $name) {
            $selected = $id == $this->selected? ' selected="selected"' : '';
            $html .= '<option value="'.$id.'"'.$selected.'>'.$name.'</option>';
        }

        $this->optionsOnly || ($html .= '</select>');

        return $html;
	}
}
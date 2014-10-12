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
 * Renders html list of images
 */
class JFormFieldProductimages extends JFormField
{
	/**
	 * The form field type.
	 *
	 * @var		string
	 * @since	1.6
	 */
	protected $type = 'productimages';

	/**
	 * Method to get the field input markup.
	 *
	 * @return	string	The field input markup.
	 * @since	1.6
	 */
	protected function getInput()
	{
        if (!$this->form->getValue('id')) {
            return '<div style="text-align:center">'.JText::_('COM_YOSHOP_PRODUCT_IMAGES_SAVE_FIRST').'</div>';
        }

        $values = $this->_getItems();

        JHtml::_('jquery.ui', array('core', 'sortable'));

        $root = JUri::base().'administrator/components/com_yoshop/models/fields/productimages';
        JHTML::stylesheet($root . '/productimages.css');
        JHTML::script($root . '/jquery.ui.widget.js');
        JHTML::script($root . '/jquery.iframe-transport.js');
        JHTML::script($root . '/jquery.fileupload.js');
        JHTML::script($root . '/productimages.js');

        ob_start(); ?>

        <div id="piContainer">
            <div class="pane-block">
                <div>Подождите...</div>
            </div>
            <div class="pane-main">
                <div class="place-titled"></div>
                <ul class="pane-images"></ul>
                <input id="piFileupload" type="file" name="files[]" multiple>
            </div>
        </div>

        <script>
            jQuery(function(){
                window.productimagesFormElement.init({
                    'view': '#piContainer',
                    'data': <?php echo json_encode($values); ?>,
                    'uploadControl': '#piFileupload',
                    'basePath': '<?php echo YOSHOP_CONTENT_BASEURL; ?>/product/images/'
                });
            });
        </script>

        <?php
        $html = ob_get_contents();
        ob_end_clean();

        return $html;
	}

    protected function _getItems()
    {
        $dbo = JFactory::getDbo();

        $dbo->setQuery(
            ' SELECT `id`, `path`, `path_prev`, `path_large`, `is_title`, `ordering`, `parent_id` FROM `#__yoshop_media` '.
            ' WHERE `parent_id`='.(int)$this->form->getValue('id').
            ' ORDER BY is_title DESC, ordering ASC'
        );

        return $dbo->loadAssocList();
    }
}
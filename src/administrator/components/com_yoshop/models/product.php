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

jimport('joomla.application.component.modelform');
jimport('joomla.event.dispatcher');

require_once JPATH_ADMINISTRATOR . '/components/com_yoshop/helpers/product.php';

/**
 * Yoshop model.
 */
class YoshopModelProduct extends YoModelAdmin
{
    public $name = 'product';

    protected $text_prefix = 'COM_YOSHOP';

    /**
     * Method to get a single record.
     *
     * @param	integer	The id of the primary key.
     *
     * @return	mixed	Object on success, false on failure.
     * @since	1.6
     */
    public function getImages($pk = null)
    {
        $dbo = JFactory::getDbo();

        $dbo->setQuery(
            'SELECT `id`, `path`, `is_title`, `parent_id` FROM `#__yoshop_media` '.
            'WHERE '.
            '`type`='.YOSHOP_MEDIA_TYPE_IMAGE.' and '.
            '`parent_id`='.(int)$pk
        );

        return $dbo->loadObjectList();
    }

    public function delete(&$pks)
    {
        $pks = (array) $pks;

        $media = $this->createModel('media');

        // Iterate the items to delete each one.
        foreach ($pks as $i => $pk)
        {
            $parentPk = array($pk);
            if(!parent::delete($parentPk)) {
                throw new Exception('Cannot delete the media');
            }

            $images = (array) $this->getImages($pk);

            $imgPks = array(); foreach($images as $img) $imgPks[] = $img->id;

            if (!$media->delete($imgPks)) {
                throw new Exception($this->getError());
            }
        }

        return true;
    }

    public function populateState()
    {
        if (empty($this->state->id)) return;

        parent::populateState();

        $this->state->link = YoshopHelperProduct::createUrl((object)$this->state);
    }

    /**
     * Lazy load for media files
     * @return mixed
     */
    public function getStateMedia()
    {
        if (!$this->state->media) {
            $dbo = JFactory::getDbo();
            $dbo->setQuery('SELECT * from #__yoshop_media WHERE parent_id='.$this->state->id.' ORDER BY is_title DESC');
            $this->state->media = new YoCollection($dbo->loadObjectList(), array('rowClass' => 'YoshopModelMedia'));
        }
        return $this->state->media;
    }

    public function getTable($type = 'Product', $prefix = 'YoshopTable', $config = array())
    {
        $this->addTablePath(JPATH_COMPONENT_ADMINISTRATOR.'/tables');
        return JTable::getInstance($type, $prefix, $config);
    }

    function getCategoryName($id){
        $db = JFactory::getDbo();
        $query = $db->getQuery(true);
        $query
            ->select('title')
            ->from('#__categories')
            ->where('id = ' . $id);
        $db->setQuery($query);
        return $db->loadObject();
    }

    public function isInCart()
    {
        /** @var YoshopModelCart $cart */
        $cart = $this->createModel('cart');
        $cart->getProduct($this->state->id);
    }

    /**
     * Method to get the record form.
     *
     * @param	array	$data		An optional array of data for the form to interogate.
     * @param	boolean	$loadData	True if the form is to load its own data (default case), false if not.
     * @return	JForm	A JForm object on success, false on failure
     * @since	1.6
     */
    public function getForm($data = array(), $loadData = true)
    {
        // Initialise variables.
        $app	= JFactory::getApplication();

        // Get the form.
        $form = $this->loadForm('com_yoshop.product', 'product', array('control' => 'jform', 'load_data' => $loadData));


        if (empty($form)) {
            return false;
        }

        return $form;
    }

    /**
     * Method to get the data that should be injected in the form.
     *
     * @return	mixed	The data for the form.
     * @since	1.6
     */
    protected function loadFormData()
    {
        // Check the session for previously entered form data.
        $data = JFactory::getApplication()->getUserState('com_yoshop.edit.product.data', array());

        if (empty($data)) {
            $data = $this->getItem();

        }

        return $data;
    }

    public function createDraft()
    {
        $user = JFactory::getUser();

        $this->save(array(
            'id'               => null,
            'state'            => '-5',
            'created_by'       => $user->id,
            'isDraft'          => true
        ));

        return $this->getState('product.id');
    }

    public function save($data)
    {
        if($data['state'] == -5 && empty($data['isDraft'])) {
            $data['state'] = 1;
        }

        return parent::save($data);
    }
}
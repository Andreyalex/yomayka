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
class YoshopModelProductform extends YoshopModelAdmin
{
    public $name = 'product';

	/**
	 * @var		string	The prefix to use with controller messages.
	 * @since	1.6
	 */
	protected $text_prefix = 'COM_YOSHOP';


	/**
	 * Returns a reference to the a Table object, always creating it.
	 *
	 * @param	type	The table type to instantiate
	 * @param	string	A prefix for the table class name. Optional.
	 * @param	array	Configuration array for model. Optional.
	 * @return	JTable	A database object
	 * @since	1.6
	 */
	public function getTable($type = 'Product', $prefix = 'YoshopTable', $config = array())
	{
		return JTable::getInstance($type, $prefix, $config);
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
		$app	= $this->di->app;

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
		$data = $this->di->app->getUserState('com_yoshop.edit.product.data', array());

		if (empty($data)) {
			$data = $this->getItem();
            
		}

		return $data;
	}

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

        $media = $this->di->createModel('media');

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

    public function populateState()
    {
        parent::populateState();

        if (!$this->state->id) return;

        $this->state->link = JRoute::_('index.php?option=com_yoshop&task=product.edit&id='.$this->state->id);

        $dbo = JFactory::getDbo();
        $dbo->setQuery('SELECT * from #__yoshop_media WHERE parent_id='.$this->state->id.' ORDER BY is_title DESC');
        $this->state->media = $dbo->loadObjectList();
    }
}
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
class YoshopModelMedia extends YoshopModel
{
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
	public function getTable($type = 'Media', $prefix = 'YoshopTable', $config = array())
	{
		return JTable::getInstance($type, $prefix, $config);
	}

    public function delete($pks)
    {
        $pks = (array) $pks;

        $table = $this->getTable();

        // Iterate the items to delete each one.
        foreach ($pks as $i => $pk)
        {
            if (!$table->load($pk)) {
                throw new Exception('Cannot find the media');
            }

            if(!parent::delete($pk)) {
                throw new Exception('Cannot delete the media');
            }

            if ($table->type == YOSHOP_MEDIA_TYPE_IMAGE) {
                @unlink(YOSHOP_PRODUCT_MEDIA_PATH . '/' . $table->path);
                @unlink(YOSHOP_PRODUCT_MEDIA_PATH . '/' . $table->path_prev);
                @unlink(YOSHOP_PRODUCT_MEDIA_PATH . '/' . $table->path_large);
            }
        }

        return true;
    }

    /**
     * Method to save the form data.
     *
     * @param   array  $data  The form data.
     *
     * @return  boolean  True on success, False on error.
     *
     * @since   12.2
     */
    public function save($data)
    {
        if (!empty($data['file'])) {

            jimport('joomla.filesystem.folder');
            jimport('joomla.filesystem.file');

            list($mime, $type) = explode('/', $data['file']['tmp_name']);
            $target = $data['parent_id'] . '-' . rand(10000, 99999) . rand(10000, 99999) . '.'.$type;
            $source = $data['file']['tmp_name'];

            if (!JFile::upload($source, YOSHOP_PRODUCT_MEDIA_PATH . '/' . $target)) {
                throw new Exception(sprintf('Cannot upload file %s to %s', $source, $target));
            }

            $img = new JImage(YOSHOP_PRODUCT_MEDIA_PATH . '/' . $target);
            $thumbs = $img->createThumbs(array('300x9999', '1000x9999'), JImage::SCALE_INSIDE, YOSHOP_PRODUCT_MEDIA_PATH);

            $data['path_prev']  = array_pop(explode('/',$thumbs[0]->getPath()));
            $data['path_large'] = array_pop(explode('/',$thumbs[1]->getPath()));

            $data['path'] = $target;
            unset ($data['file']);
        }

        return parent::save($data);
    }

    /**
     * Method to make media titled.
     *
     * @param   array  $data  The form data.
     *
     * @return  boolean  True on success, False on error.
     *
     * @since   12.2
     */
    public function title($pk)
    {
        $data = array(
            'id' => $pk,
            'is_title' => 1
        );

        $table = $this->getTable();

        if (!$table->load($pk)) {
            throw new Exception('Cannot find the media');
        }

        /** @var JDatabaseDriverMysqli $dbo */
        $dbo = JFactory::getDbo();
        $dbo->setQuery('UPDATE #__yoshop_media SET is_title=0 WHERE parent_id='.(int)$table->parent_id);
        $dbo->execute();

        return parent::save($data);
    }

    public function getPreview()
    {
        return YOSHOP_CONTENT_BASEURL . '/product/images/' . $this->state->path_prev;
    }

}
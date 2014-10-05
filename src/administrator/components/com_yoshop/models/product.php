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

    public $prefix = 'yoshop';

    protected $text_prefix = 'COM_YOSHOP';

    /**
     * Method to get a single record.
     *
     * @param	integer	The id of the primary key.
     *
     * @return	mixed	Object on success, false on failure.
     * @since	1.6
     */
    public function getMedia($pk = null)
    {
        $dbo = JFactory::getDbo();

        $dbo->setQuery(
            ' SELECT * FROM `#__yoshop_media` WHERE `parent_id`='.(int)$pk.
            ' ORDER BY is_title DESC, ordering ASC'
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

    public function setItem($data)
    {
        if (!empty($data->id)) {
            $data->media = new YoCollection($this->getMedia($data->id), array('rowClass' => 'YoshopModelMedia'));
            $data->link = YoshopHelperProduct::createUrl((object)$data);
        }

        parent::setItem($data);
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
        $cart->getProduct($this->data->id);
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

    public function setOrderMedia($ids)
    {
        $flip = array_flip($ids);
        foreach($this->data->media as $media) {
            if (in_array($media->data->id, $ids)) {
                $media->data->ordering = $flip[$media->data->id];
                $media->data->is_title = (int) ($media->data->ordering == 0);
                $media->save();
            } else {
                $media->data->ordering = count($ids);
                $media->save();
            }
        }

        return true;
    }
}
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
    protected $text_prefix = 'COM_YOSHOP';

    /**
     * @param	integer	The id of the primary key.
     * @return	mixed	Object on success, false on failure.
     * @since	1.6
     */
    public function getMedia($pk)
    {
        $dbo = JFactory::getDbo();

        $dbo->setQuery(
            ' SELECT * FROM `#__yoshop_media` WHERE `parent_id`='.(int)$pk.
            ' ORDER BY is_title DESC, ordering ASC'
        );

        return $dbo->loadObjectList();
    }

    /**
     * We need 2 ids. Product id and cat id.
     * @param	integer	The id of the primary key.
     * @return	mixed	Object on success, false on failure.
     * @since	1.6
     */
    public function getFields()
    {
        $pk  = $this->data->id;
        $typeId  = $this->data->category_id;
        $dbo = JFactory::getDbo();
        $dbo->setQuery(
            ' SELECT f.id, f.value_int, f.value_string, f.product_id, m.id as meta_id, m.name, m.type, m.params '.
            ' FROM `#__yoshop_product_field_meta` AS m '.
            ' JOIN `#__yoshop_product_type` AS t ON t.meta_id = m.id '.
            ($pk? ' LEFT JOIN `#__yoshop_product_field` AS f ON (m.id = f.meta_id AND f.product_id='.(int)$pk.') ' : '').
            ' WHERE t.category_id = '.(int)$typeId
        );
        $items = $dbo->loadObjectList();

        $grouped = array();
        foreach ($items as $item) {

            $id = $item->meta_id;
            $value = $item->value_int !== null? $item->value_int : $item->value_string;

            if ($value === null) {
                continue;
            }

            if (!isset($grouped[$id])) {
                $grouped[$id] = (object) array(
                    'name' => $item->name,
                    'type' => $item->type,
                    'params' => (array) json_decode($item->params),
                    'value' => $value
                );
            } else { // convert to multi-value
                $grouped[$id]->value = (array) $grouped[$id]->value;
                $grouped[$id]->value[] = $value;
            }
        }

        return $grouped;
    }

    /**
     * @param	integer	The id of the primary key.
     * @return	mixed	Object on success, false on failure.
     * @since	1.6
     */
    public function getFieldsMeta($categoryId)
    {
        $dbo = JFactory::getDbo();
        $dbo->setQuery(
            ' SELECT m.* FROM `#__yoshop_product_field_meta` as m'.
            ' JOIN `#__yoshop_product_type` as t on m.id = t.meta_id'.
            ' WHERE `t`.`category_id`='.(int)$categoryId
        );
        $data = $dbo->loadObjectList();
        foreach($data as &$item) {
            $item->params = json_decode($item->params);
        }
        return $data;
    }

    public function delete(&$pks = null)
    {
        $pks || $pks = array($this->data->id);
        $pks = (array) $pks;

        $media = new YoshopModelMedia();

        // Iterate the items to delete each one.
        foreach ($pks as $i => $pk)
        {
            if(!parent::delete($pk)) {
                throw new Exception('Cannot delete the media');
            }

            $images = (array) $this->getMedia($pk);

            $imgPks = array(); foreach($images as $img) $imgPks[] = $img->id;

            if (!$media->delete($imgPks)) {
                throw new Exception($this->getError());
            }
        }

        return true;
    }

    /**
     * Implements lazy loading for relations
     *
     * @param $name
     * @return null|void
     */
    public function getItemProperty($name)
    {
        switch ($name) {
            case 'media':
                $this->data->media = $this->data->id? new YoCollection($this->getMedia($this->data->id), array('rowClass' => 'YoshopModelMedia')) : null;
                return $this->data->media;
            case 'link':
                $this->data->link = $this->data->id? YoshopHelperProduct::createUrl((object)$this->data) : null;
                return $this->data->link;
            case 'fields':
                $this->data->fields = $this->getFields($this->data->id);
                return $this->data->fields;
            case 'fieldsMeta':
                $this->data->fieldsMeta = $this->getFieldsMeta($this->data->id);
                return $this->data->fieldsMeta;
        }
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

    public function save($data = null)
    {

        if(!empty($data) && $data['state'] == -5 && empty($data['isDraft'])) {
            $data['state'] = 1;
        }

        $dbo = JFactory::getDbo();
        try {
            $dbo->transactionStart();
            if (!parent::save($data) || !$this->saveFields()) {
                throw new Exception('Cannot save product '.json_encode($this->data));
            }
            $dbo->transactionCommit();
        } catch (Exception $e) {
            $dbo->transactionRollback();
            throw $e;
        }

        return true;
    }

    public function saveFields()
    {
        $formFields = array();
        $formKeys = array_keys($this->rawData);
        foreach ($this->data->fieldsMeta as $item) {
            $name = 'field-' . $item->name;
            if (in_array($name, $formKeys)) {
                $formFields[$name] = $this->rawData[$name];
            }
        }

        return $this->saveEav(
            $this->rawData->params,
            $this->data->fields,
            array(
                'table' => 'table_name',
                'name' => 'field_name',
                'value' => 'value',
                'insert' => "INSERT INTO `#__table_name` (`{name}`) values('{value}')"
            )
        );
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
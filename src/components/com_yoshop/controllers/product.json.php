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
class YoshopControllerProduct extends YoControllerJson
{
    public function addMedia()
    {
        $input = JFactory::getApplication()->input;

        $jform = $input->post->get('jform', array(), 'array');
        $id = $jform['id'];
        $files = $input->files->get('files');

        if (empty($id))    throw new Exception('No parent ID found.');
        if (empty($files)) throw new Exception('No files found. Nothing to add.');


        $product = new YoshopModelProduct($id);
        $medias = $product->data->media;

        $orderingValue = count($medias)>0? $medias[count($medias)-1]->data->ordering + 1 : 0;

        $medias = array();
        foreach($files as $file) {

            /** @var YoshopModelMedia $model */
            $model = new YoshopModelMedia();
            $res = $model->save(array(
                    'parent_id' => $id,
                    'file' => $file,
                    'type' => YOSHOP_MEDIA_TYPE_IMAGE,
                    'ordering' => $orderingValue,
                    'is_title' => (int) $orderingValue == 0
                ));

            if (!$res) {
                throw new Exception('Cannot create media');
            }

            $orderingValue++;

            $item = $model->data;
            $medias[] = array(
                'id' => $item->id,
                'path' => $item->path,
                'path_prev' => $item->path_prev,
                'path_large' => $item->path_large,
                'is_title' => $item->is_title
            );
        }

        $this->setData($medias);
    }

    public function deleteMedia()
    {
        $input = JFactory::getApplication()->input;

        $id = $input->post->get('id');

        if (empty($id))
            throw new Exception('No ID found.');

        $model = new YoshopModelMedia();

        if (!$model->delete($id))
            throw new Exception('Cannot delete media');

        $this->setData(array(array('id' => $id)));
    }

    public function titleMedia()
    {
        $input = JFactory::getApplication()->input;

        $id = $input->post->get('id');

        if (empty($id))
            throw new Exception('No ID found.');

        $model = new YoshopModelMedia();

        if (!$model->title($id))
            throw new Exception('Cannot make media titled');

        $this->setData(array(array('id' => $id)));
    }

    public function saveOrderMedia()
    {
        $input = JFactory::getApplication()->input;
        $id = $input->post->getInt('id');
        $ids = $input->post->get('ids', array(), 'array');

        $product = new YoshopModelProduct($id);
        $this->setStatus($product->setOrderMedia($ids));
    }

    public function getImages()
    {
        $input = JFactory::getApplication()->input;

        $id = $input->get('id');

        if (empty($id))
            throw new Exception('No ID found.');

        $model = new YoshopModelProduct();
        $collection = $model->getImages();
        $this->setData($collection);
    }

    public function publish()
    {
        $input = JFactory::getApplication()->input->post;
        $jform = $input->get('jform', array(), 'array');

        if (empty($jform['id'])) {
            throw new Exception('Product id absent');
        }

        $product = new YoshopModelProduct($jform['id']);

        $product->data->state = (int) $jform['value'];
        if (!$product->save()) {
            throw new Exception($product->getError());
        }
    }
}
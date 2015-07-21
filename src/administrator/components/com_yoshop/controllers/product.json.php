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
        $res = new stdClass();
        $res->status = true;
        $res->messages = array();
        $res->data = array();


        try {
            $input = JFactory::getApplication()->input;

            $jform = $input->post->get('jform', array(), 'array');
            $id = $jform['id'];
            $files = $input->files->get('files');

            if (empty($id))    throw new Exception('No parent ID found.');
            if (empty($files)) throw new Exception('No files found. Nothing to add.');


                $ids = array();
                foreach($files as $file) {

                    /** @var YoshopModelMedia $model */
                    $model = YoDi::getInstance()->createModel('media');
                    if (
                        !$model->save(array(
                            'parent_id' => $id,
                            'file' => $file,
                            'type' => YOSHOP_MEDIA_TYPE_IMAGE
                        ))
                    ) throw new Exception('Cannot create media');

                    $item = $model->getItem($model->getState('id'));
                    $ids[] = array(
                        'id' => $item->id,
                        'path' => $item->path,
                        'path_prev' => $item->path_prev,
                        'path_large' => $item->path_large,
                        'is_title' => $item->is_title
                    );
                }

                $res->messages = array('done');
                $res->data = $ids;

        } catch (Exception $e) {
                $res->status = false;
            $res->messages = array($e->getMessage());
        }

        echo json_encode($res);
        jexit();
    }

    public function deleteMedia()
    {
        $res = new stdClass();
        $res->status = true;
        $res->messages = array();
        $res->data = array();


        try {
            $input = JFactory::getApplication()->input;

            $id = $input->post->get('id');

            if (empty($id))
                throw new Exception('No ID found.');

            /** @var YoshopModelMedia $model */
            $model = YoDi::getInstance()->createModel('media');

            if (!$model->delete($id))
                throw new Exception('Cannot delete media');

            $ids[] = array('id' => $id);

            $res->messages = array('done');
            $res->data = $ids;

        } catch (Exception $e) {
            $res->status = false;
            $res->messages = array($e->getMessage());
        }

        echo json_encode($res);
        jexit();
    }

    public function titleMedia()
    {
        $input = JFactory::getApplication()->input;

        $id = $input->post->get('id');

        if (empty($id))
            throw new Exception('No ID found.');

        /** @var YoshopModelMedia $model */
        $model = YoDi::getInstance()->createModel('media');

        if (!$model->title($id))
            throw new Exception('Cannot make media titled');

        $ids = array();
        $ids[] = array('id' => $id);

        $this->setData($ids);
    }

    public function getImages()
    {
        $res = new stdClass();
        $res->status = true;
        $res->messages = array();
        $res->data = array();

        try {

            $input = JFactory::getApplication()->input;

            $id = $input->get('id');

            if (empty($id))
                throw new Exception('No ID found.');

            /** @var YoshopModelProduct $model */
            $model = YoDi::getInstance()->createModel('product');
            $collection = $model->getImages();
            $res->messages = array('done');
            $res->data = $collection;

        } catch (Exception $e) {
            $res->status = false;
            $res->messages = array($e->getMessage());
        }

        echo json_encode($res);
        jexit();
    }

}
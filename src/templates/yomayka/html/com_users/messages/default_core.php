<?php
/**
 * @version     0.5
 * @package     com_yoshop
 * @copyright   © 2013. Все права защищены.
 * @license     GNU General Public License версии 2 или более поздней; Смотрите LICENSE.txt
 * @author      Andreyalek <andreyalek@gmail.com> - http://
 */
// no direct access
defined('_JEXEC') or die;


//JHTML::script('templates/lady/assets/js/yo.js');

//Load admin language file
$lang = JFactory::getLanguage();
$lang->load('com_yoshop', JPATH_ADMINISTRATOR);
$canEdit = JFactory::getUser()->authorise('core.edit', 'com_yoshop');
if (!$canEdit && JFactory::getUser()->authorise('core.edit.own', 'com_yoshop')) {
    $canEdit = JFactory::getUser()->id == $this->item->created_by;
}
?>
<div id="yoshop-products-list">
    <?php if (count($this->products) > 0) {
        $i=0;
        foreach ($this->products as $k => $row){
            $productData = $row->data;
            $media = $productData->media[0]->data->path_prev;
            ?>
            <div class="item grid-2col-item<?php echo $i % 2; ?> grid-3col-item<?php echo $i % 3; ?>  grid-4col-item<?php echo $i % 4; ?>" data-id="<?php echo $productData->id; ?>">
                <?php include 'itemPanel.php'; ?>
            </div>
            <?php
            $i++;
        }

    } else { ?>
        <h3 style="text-align:center;display: block;">
            <?php echo JText::_('COM_YOSHOP_CATEGORY_IS_EMPTY'); ?>
        </h3>
    <?php } ?>

</div>

<script>
    jQuery(function(){

        yo.enableEvents()

        yo.on('publish.product', function(event){
            jQuery.ajax({
                url: window.siteBaseUrl,
                method: 'post',
                data: {
                    option: 'com_yoshop',
                    format: 'json',
                    task: 'product.publish',
                    jform: event.params
                },
                error: function(res) {
                    yo.trigger('error.notify', res.messages.join(', '))
                }
            })
        })
    })
</script>

<?php defined('_JEXEC') or die;

if (count($this->items) > 0) {

    foreach ($this->items as $k => $row) {
        $data = $row->data;
        $editUrl = YoRoute::_("yoshop:product.edit", array('id' => $data->id)) ;
        include __DIR__.'/../message.php';
    }

} else { ?>
    <h3 style="text-align:center;display: block;">
        <?php echo JText::_('В переписке нет сообщений'); ?>
    </h3>
<?php } ?>

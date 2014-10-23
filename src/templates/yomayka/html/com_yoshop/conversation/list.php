<?php defined('_JEXEC') or die;

if (count($this->items) > 0) {

    foreach ($this->items as $k => $row) {
        $data = $row->data;
        $editUrl = YoRoute::_('yoshop:product.edit:'.$data->id);
        $isMy = $data->created_by == $this->user->id
        ?>
        <div class="item panel panel-default<?=($isMy? ' my':'')?>">
            <div class="panel-heading">
                <span class="glyphicon glyphicon-comment"></span>
                &nbsp;&nbsp;
                <span><?=$data->user_username;?></span>
            </div>
            <div class="panel-body user-pane">
                <span><?=$data->content;?></span>
            </div>
        </div>
<?php
    }
} else { ?>
    <h3 style="text-align:center;display: block;">
        <?php echo JText::_('В переписке нет сообщений'); ?>
    </h3>
<?php } ?>

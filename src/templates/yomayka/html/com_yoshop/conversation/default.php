<?php

    defined('_JEXEC') or die;

    JHtml::_('jquery.framework', false, null, false);
    JHtml::script(JUri::root().'templates/yomayka/assets/bootstrap/js/bootstrap.min.js');

    $listOrdering = $this->model->getState('list.direction');
    $filterSearch = $this->model->getState('filter.search');

    YoViewHelperHtml::initJsApp();

    ob_start();
?>

    <div class="cpanel" style="float:right">
        <div class="pull-right" style="margin-left:40px">
            <button class="btn btn-info glyphicon glyphicon-th"></button>
        </div>
        <div class="col-xs-6 pull-right" style="padding-top:1px;padding-left:4px">
            <input
                class="form-control col-xs-1"
                type="search"
                placeholder="<?php echo JText::_("Поиск"); ?>"
                data-event="change:filter"
                value="<?php echo $filterSearch; ?>"
            >
        </div>
    </div>

    <div class="clearfix"></div>

    <div id="yoshop-conversations-list" class="smoothed">
        <?php include 'list.php'; ?>
    </div>

    <script>
        window.requireJsAppInit = function(){
            require(['jquery', 'yo', 'messenger', 'preloader'], function($, yo, Messenger, Preloader) {

                /* Set common event system */

                yo.enableEvents()

                var preloader = new Preloader;
                preloader.initDefaultBehavior();

                var messenger = new Messenger;
                messenger.initDefaultBehavior();

                /* Handle page business actions */

                yo.on('filter', function(event){
                    yo.request(
                        'post html|yoshop:conversations:list:partial',
                        {data:{ 'filter': {search: event.params.value}}},
                        jQuery('#yoshop-conversations-list')
                    )
                })
            })
        }
    </script>

<?php
    $content = ob_get_clean();
    include __DIR__.'/../../panel.php';

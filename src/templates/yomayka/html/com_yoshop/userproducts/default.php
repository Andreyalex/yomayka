<?php

    defined('_JEXEC') or die;

    JHtml::_('jquery.framework', false, null, false);
    JHtml::script(JUri::root().'templates/yomayka/assets/bootstrap/js/bootstrap.min.js');

    $listOrdering = $this->model->getState('list.direction');
    $filterSearch = $this->model->getState('filter.search');

    $urlAdd = YoRoute::_('yoshop:product.add');

    YoViewHelperHtml::initJsApp();

    ob_start();

    if (count($this->products) > 0) {
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
            <div class="pull-right">

                <a class="btn btn-success glyphicon glyphicon-plus" href="<?=$urlAdd?>"></a>

                <button
                    class="btn btn-default glyphicon glyphicon-sort"
                    data-event="click:ordering"
                    data-behavior="toggle:asc,desc:<?=$listOrdering?>"
                >
                </button>

                <button class="btn btn-default glyphicon glyphicon-arrow-up"></button>

            </div>
        </div>

        <div class="clearfix"></div>

        <div id="yoshop-products-list" class="smoothed">
            <?php include 'list.php'; ?>
        </div>

<?php } else { ?>

    <h3 style="text-align:center;display: block;">
        <?php echo JText::_('COM_YOSHOP_CATEGORY_IS_EMPTY'); ?>
    </h3>

<?php } ?>

    <script>
        window.requireJsAppInit = function(){
            require(['jquery', 'yo', 'messenger', 'preloader'], function($, yo, Messenger, Preloader) {

                /* Set common event system */

                yo.enableEvents()

                var preloader = new Preloader;
                preloader.initDefaultBehavior();

                var messenger = new Messenger;
                messenger.initDefaultBehavior();

                yo.on('product.publish', function(event){
                    yo.request(
                        'post json|yoshop:product.publish',
                        {data:{jform: event.params}}
                    )
                })

                /* Handle page business actions */

                yo.on('product.delete', function(event){
                    yo.request(
                        'post json|yoshop:product.delete',
                        {data:{jform: event.params}},
                        null,
                        function(res){
                            jQuery(event.target).parents('.item').remove()
                        }
                    )
                })

                yo.on('ordering', function(event){
                    yo.request(
                        'post html|yoshop:userproducts:list:partial',
                        {data:{'filter_order_Dir': event.params.value}},
                        jQuery('#yoshop-products-list')
                    )
                })

                yo.on('filter', function(event){
                    yo.request(
                        'post html|yoshop:userproducts:list:partial',
                        {data:{ 'filter': {search: event.params.value}}},
                        jQuery('#yoshop-products-list')
                    )
                })
            })
        }
    </script>

<?php
    $content = ob_get_clean();
    include __DIR__.'/../../panel.php';

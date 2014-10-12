<?php

    defined('_JEXEC') or die;

    JHtml::_('jquery.framework', false, null, false);
    JHtml::script(JUri::root().'templates/yomayka/assets/bootstrap/js/bootstrap.min.js');

    $listOrdering = $this->model->getState('list.direction');
    $filterSearch = $this->model->getState('filter.search');

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

    <div id="yoshop-products-list">
        <?php include 'list.php'; ?>
    </div>

    <script>
        jQuery(function(){

            yo.enableEvents()

            yo.on('product.publish', function(event){
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

            yo.on('ordering', function(event){

                jQuery.ajax({
                    url: window.siteCurrentUrl,
                    method: 'get',
                    data: {
                        layout: 'list',
                        tmpl: 'component',
                        'filter_order_Dir': event.params.value
                    },
                    error: function(res) {
                        yo.trigger('error.notify', res.messages.join(', '))
                    },
                    success: function(res) {
                        var container = jQuery('#yoshop-products-list')
                        container.css('width', container.width())
                        container.css('height', container.height())
                        jQuery('#yoshop-products-list').html(res)
                        setTimeout(function(){
                            container.css('width', '')
                            container.css('height', '')
                        }, 100)
                    }
                })
            })

            yo.on('filter', function(event){

                jQuery.ajax({
                    url: window.siteCurrentUrl,
                    method: 'get',
                    data: {
                        layout: 'list',
                        tmpl: 'component',
                        'filter': {search: event.params.value}
                    },
                    error: function(res) {
                        yo.trigger('error.notify', res.messages.join(', '))
                    },
                    success: function(res) {
                        container.css('width', container.width())
                        container.css('height', container.height())
                        jQuery('#yoshop-products-list').html(res)
                        setTimeout(function(){
                            container.css('width', '')
                            container.css('height', '')
                        }, 100)
                    }
                })
            })

        })
    </script>

<?php
    $content = ob_get_clean();
    include __DIR__.'/../panel.php';

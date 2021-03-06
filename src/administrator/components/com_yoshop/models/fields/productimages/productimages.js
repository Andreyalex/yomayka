/**
 * Created with JetBrains PhpStorm.
 * User: Bee
 * Date: 13.10.13
 * Time: 18:04
 * To change this template use File | Settings | File Templates.
 */

window.productimagesFormElement = (function($){

    var _view = null,
        _data = null,
        _uploadControl = null,
        _basePath = '/',
        _itemTemplate =
            '<li class="item {item.class}" data-id="{item.id}"><img width="200px" src="{item.path}"><span class="remove">X</span><span class="main">T</span></li>';

    var module = {

        init: function(options)
        {
            _view          = $(options.view);

            _uploadControl = $(options.uploadControl);

            _data          = options.data || [];

            _basePath      = options.basePath

            //_data = $(options.formElement);

            _uploadControl.click(function(){
                $('[name="task"]') && $('[name="task"]').attr('value', 'product.addMedia');
            })

            _uploadControl.fileupload({
                dataType: 'json',
                singleFileUploads: false,
                done: function (e, data)
                {
                    var res = data.result;

                    if (!res.status) {
                        res.messages && module.showMessages(res.messages);
                        return;
                    }

                    module.addItems(res.data);

                    module.unblockUI();
                }
            });
            _uploadControl.bind('fileuploadsend', function(){
                module.blockUI();
            })

            module.render();
        },

        addItems: function(data) {
            module.setData(
                $.merge(module.getData(), data || [])
            );

            module.render();
        },

        deleteItem: function(id)
        {
            $.ajax({
                type: 'POST',
                url: 'index.php?option=com_yoshop',
                dataType: 'json',
                data: {
                    'task': 'product.deleteMedia',
                    'format': 'json',
                    'id': id
                },
                success: function(res)
                {
                    if (!res.status) {
                        res.messages && module.showMessages(res.messages);
                        return;
                    }

                    var data    = module.getData(),
                        newData = [],
                        ids     = [];

                    // get ids
                    $.each(res.data, function(idx, item){
                        ids.push(item.id);
                    })

                    $.each(data, function(idx, item){
                        if ($.inArray(item.id, ids) == -1)
                            newData.push(item);
                    })

                    module.setData(newData);
                    module.render();
                    module.unblockUI();
                }
            });

            module.blockUI();
        },

        titleItem: function(id)
        {
            $.ajax({
                type: 'POST',
                url: 'index.php?option=com_yoshop',
                dataType: 'json',
                data: {
                    'task': 'product.titleMedia',
                    'format': 'json',
                    'id': id
                },
                success: function(res)
                {
                    if (!res.status) {
                        res.messages && module.showMessages(res.messages);
                        return;
                    }

                    var
                        localData = module.getData(),
                        data = res.data[0];

                    $.each(localData, function(idx, item){
                        if (item.id == data.id) {
                            localData[idx]['is_title'] = 1;
                        } else {
                            localData[idx]['is_title'] = 0;
                        }
                    })

                    module.setData(localData);
                    module.render();
                    module.unblockUI();
                }
            });

            module.blockUI();
        },

        render: function()
        {
            var
                data = module.getData(),
                html = '';

            $.each(data, function(idx, item){

                var reps = {
                    'item.id':  item['id'],
                    'item.path': _basePath + item['path_prev'],
                    'item.class': (item['is_title']==1 ? ' title' : '')
                };

                html += "\n" + _itemTemplate.replace(/{([^}]+)}/g, function(found, key){
                    return (typeof reps[key] != 'undefined')? reps[key] : found;
                });
            });

            _view.find('.pane-images').html(html);

            _view.find('.remove').on('click', function(){
                module.deleteItem($(this).parent().attr('data-id'));
            })
            _view.find('.main').on('click', function(){
                module.titleItem($(this).parent().attr('data-id'));
            })
        },

        getData: function()
        {
            return _data;
            //var val = _data.attr('value').replace('%22', '"');
            //return $.parseJSON(val) || [];
        },

        setData: function(data)
        {
            _data = data;
            //_data.attr('value', $.toJSON(data).replace('"', '%22') || '[]');
        },

        blockUI: function(messages){
            !messages && (messages = ['Подождите...']);
            _view.find('.pane-block > div').html(messages.join("<br/>"));
            _view.addClass('blocked');
        },

        unblockUI: function(){
            _view.removeClass('blocked');
        },
        showMessages: function(messages){
            setTimeout(function(){
                module.unblockUI();
            },2000);
            module.blockUI(messages);
        }

    }

    return module;

})(jQuery)
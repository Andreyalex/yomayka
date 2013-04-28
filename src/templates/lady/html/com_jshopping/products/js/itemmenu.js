;(function($) {

    yo.models.SceneItem = function(node, options) {

        var _this = this;

        this.minWidth = options.minWidth;
        this.minHeight = options.minHeight;

        this.width = 100;
        this.height = 100;

        // Droppable area of scene in which this item is placed
        this.target = null;

        this.destroy = function () {
            _this.target = null;
            _this.manager = null;
            $(_this.node).remove();
            delete(_this);
        }

        this.setSize = function(event, ui) {
            
            var scale = _this.manager.skin.scale;
            
            var droppable = _this.manager.droppables[0];
            var offset = $(droppable).offset();
            var maxY = offset.top;
            var distY = offset.top - $(this).offset().top;
            if (distY > 0) {
                scale = ((maxY - distY) / maxY) * scale;
            }
            
            yo.debug(maxY, distY, scale, scale * _this.height, scale * _this.width);
            
            var width = scale * _this.width;
            var height = scale * _this.height;
            _this.node.css('width', width > _this.minWidth? width : _this.minWidth);
            _this.node.css('height', height > _this.minHeight? height : _this.minHeight);
        }


        /* Init */
        this.node = node;
        $(this.node).data('widget', _this);

        this.node.css({
            width: _this.minWidth,
            height: _this.minHeight
        });

        this.manager = options.manager;

        $(this.node).draggable({
            drag: _this.setSize 
        });

        if (options.events) {
            $.each(options.events, function(eventName, handler){
                if (typeof handler == 'function') {
                    $(_this.node).bind(eventName, handler);  
                }
            });
        }
        
    }

})(jQuery)
;(function($){
    
    yo.models.Scene = function(node, options) {

        var _this = this;

        // Container dom element of scene
        this.node = node;

        // All the items that CAN be placed into scene
        this.sources = options.sources;

        // Items that are placed on scene now
        this.items = [];

        // The appearance of scene
        this.skin = options.skin;


        /**
         *  Clones slideitem markup and 
         *  pushes new sceneitem into stack
         */
        this.createItem = function(node, ev) {
            yo.debug('scene:createItem '+node);
            
            node = $(node);
            
            // Stop the slideitem
            node.data('widget').bounceStop();
            
            // Clone it!
            var slideItemNode = node.clone().appendTo(_this.node);

            // Adjust position for new steneitem
            var offset = node.offset();
            $('#loggg').html(offset.top + '-' + offset.left);
            //offset.top += (ev.currentCoords.y - ev.mousedownCoords.y);
            //offset.left += (ev.currentCoords.x - ev.mousedownCoords.x);
            

            // Save link to each oter
            _this.items.push(
                new yo.models.SceneItem(slideItemNode, {
                    manager: _this,
                    events: {
                        'dragstart': _this.showDroppables,
                        'dragstop': _this.onItemDragstop
                    },
                    minWidth: node.width(),
                    minHeight: node.height(),
                    top: offset.top,
                    left: offset.left
                })
            );

            // Programmaticaly re-trigger mousedown event
            // to start DND for new element of scene.
            ev.currentTarget = slideItemNode;
            ev.delegateTarget = slideItemNode;
            ev.type = 'mousedown';
            $(slideItemNode).trigger(ev);


            return slideItemNode;
        }

        this.destroyItem = function(node) {
            var widget = $(node).data('widget');
            $.each(_this.items, function(idx, item){
                if (item == widget) _this.items[idx] = null; 
            }); 
            widget.destroy();
            $(node).remove();
        }


        /**
         * Should be bound to sceneItem's dragstart event 
         * this - draggable SteneItem DOM
         */
        this.showDroppables = function() {
            yo.debug('scene:showDroppables')

            $.each(_this.droppables, function(idx, item){
                $(item).addClass('highlight');
            })

            // Need to be jquery plugin
            var bounceIt = function(el) {
                // If dragging process is started
        //                if(el.hasClass('ui-draggable-dragging')) {
        //                    el.clearQueue().stop();
        //                    return;
        //                }
                // If mouse was leave the element
                if(!el.hasClass('highlight')) {
//                    el.animate({'top': '0'}, 200, 'swing');
                    return;
                }

                // If mouse is over the element
                el.animate({'top': '+=6'}, 200, 'swing');
                el.animate({'top': '-=6'}, 200, 'swing', function(){ bounceIt(el); });
            }

            bounceIt(
                $(_this.node).find('.pointer-left')
                    .addClass('highlight')
            );    

            bounceIt(
                $(_this.node).find('.pointer-right')
                    .addClass('highlight')
            );
        } 

        /**
         * Should be bound to sceneItem's dragstop event 
         * this - draggable SteneItem DOM
         */
        this.onItemDragstop = function(event, ui) {
            yo.debug('scene:onItemDragstop', this, event, ui)

            $.each(_this.droppables, function(idx, item){
                $(item).removeClass('highlight');
            })

            $(_this.node).find('.pointer-left, .pointer-right')
                .removeClass('highlight');
            
            var draggable = $(this);
            var widget = draggable.data('widget');
            widget.setSize(_this.skin.scale)
            // If drop area is exist then adjust draggable's position
            // If no then remove this item
                console.log('widgettarget', widget.target);
            if (widget.target != null) {
                var droppable = $(widget.target);
                var dropOffset = droppable.offset();
                var dropHeight = droppable.height();
                var dragOffset = draggable.offset();
                var dragHeight = draggable.height();
                console.log(dropOffset, dropHeight, dragOffset, dragHeight)
                draggable.offset({
                    top: dropOffset.top + dropHeight - dragHeight, 
                    left: dragOffset.left
                });
            } else {
                _this.destroyItem(draggable);
            }    
        } 

        this.onItemOver = function(event, ui) {
            yo.debug('scene:onItemOver'/*, this, event, ui*/);
            var node = ui.draggable;
            var widget = node.data('widget');
            widget.target = event.target;
        } 

        this.onItemOut = function(event, ui) {
            yo.debug('scene:onItemOut'/*, this, event, ui*/);
            var node = ui.draggable;
            var widget = node.data('widget');
            widget.target = null;
        } 

        this.onSlideitemDragstart = function(ev) {
            ev.preventDefault();
            _this.createItem(this, ev);
        }

        this.init = function(node, options) {

            // Process items list
            $.each(_this.sources, function(idx, item){
                $(item).bind('dragstart', _this.onSlideitemDragstart)
            }); 

            var container = $(_this.node).find('.skin-container');

            var skin = $('<div>', {'class': 'skin'});
            container.append(skin);
            skin.css('background', 'url("' + _this.skin.background + '") 0 0 no-repeat');

            var dp = _this.skin.droppable;
            // Create droppable area
            var droppable = $('<div class="droppable" data-role="droppable"></div>');
            container.append(droppable);
            droppable.css({
                top: dp.top,
                left: dp.left,
                width: dp.width,
                height: dp.height
            }) 
            // Process droppables of each skin
            $(droppable).droppable({
                over: _this.onItemOver,
                out:  _this.onItemOut
            });

            container.append(
                $('<div class="pointer-left"></div>')
                    .css({ 
                        top: dp.top + dp.height/2 - 50,
                        left: dp.left - 70 
                    })
            );    

            container.append(
                $('<div class="pointer-right"></div>')
                    .css({ 
                        top: dp.top + dp.height/2 - 50,
                        left: dp.left + dp.width + 20
                })
            );    

            // All droppable areas that scene has 
            _this.droppables = [droppable.get()];
        }

        this.init(node, options);
    }
    
    return yo.models.Scene;
    
})(jQuery)
;(function($){

    yo.models.SlideItem = function(node, options) {

        var _this = this;
        
        this.customDragTolerance = 10;
        
        /**
         * Some stuff when mouse is on item
         */
        this.bounceStart = function(){
            yo.debug('slideitem:onMouseOver'/*, this*/);

            var el = $(_this.node);

            el.addClass('item-hovered');
            el.clearQueue().stop().animate({'top': '-3'}, 100, 'swing');

            var bounceIt = function() {
                // If dragging process is started
//                if(el.hasClass('ui-draggable-dragging')) {
//                    el.clearQueue().stop();
//                    return;
//                }
                // If mouse was leave the element
                if(!el.hasClass('item-hovered')) {
                    el.animate({'top': '0'}, 200, 'swing');
                    return;
                }

                // If mouse is over the element
                el.animate({'top': '+=6'}, 200, 'swing');
                el.animate({'top': '-=6'}, 200, 'swing', function(){ bounceIt(); });
            }

            bounceIt();
        }

        /**
         * Revert item's state when mouse lives it
         */
        this.bounceStop = function(){
            $(_this.node).removeClass('item-hovered');
            $(_this.node).removeClass('state-predrag');
        }
        
        this.onMousemove = function(ev) {
            ev.preventDefault();
            
            if (!$(this).hasClass('state-predrag')) {
                return
            }
            
            // Let's determine if moving of mouse is greater than 
            // tolerance value in some px;
            var cc = { x: ev.pageX, y: ev.pageY };
            var mc = _this.mousedownCoords;
            
            var dist = Math.sqrt(Math.pow(cc.x - mc.x, 2) + Math.pow(cc.y - mc.y, 2));
            if (dist < _this.customDragTolerance) return 

            // Finish with PREDRAG state.
            // Since now it is DRAG state.
            $(this).removeClass('state-predrag')

            // It is not a jquery native drag.
            // Just emulation because it is not need to be 
            // SLIDEITEM draggable
            ev.currentTarget = _this.node;
            ev.delegateTarget = _this.node;
            ev.type = 'customdragstart';
            ev.mousedownCoords = mc;
            ev.currentCoords = cc;
            $(this).trigger(ev);
        }
        
        /* Init */
        this.init = function(node, options) {
            this.node = node;

            var n = $(node);
            n.clearQueue().stop().css('top', 0);

            n.bind('mouseover', this.bounceStart);
            n.bind('mouseleave', this.bounceStop);

            n.bind('mousedown touchstart', function(ev) {
                ev.preventDefault();

                _this.mousedownCoords = { x: ev.pageX, y: ev.pageY }
                $(this).addClass('state-predrag');
            });

            n.bind('mousemove touchmove', _this.onMousemove);

            n.bind('mouseup touchend', function() {
                this.removeClass('state-predrag')
            });
        }
        this.init(node, options);
    }

    return yo.models.SlideItem;

})(jQuery)
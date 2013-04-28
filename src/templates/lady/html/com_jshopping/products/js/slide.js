;(function($){

    yo.models.Slide = function(node, options) {

        var _this = this;

        this.node = $(node);
        this.prev = $(node).find('.prev');
        this.next = $(node).find('.next');
        this.itemsContainer = $(node).find('.items');
        
        this.items = options.items;
        
        this.step = 200;
        this.containerPosition = 0;

        this.wakeup = function() {
            _this.node.addClass('highlight');
            _this.prev.addClass('highlight');
            _this.next.addClass('highlight');
        }

        this.pressPrev = function(ev) {
            ev.preventDefault();
            _this.setContainerPos(_this.step);
        }

        this.pressNext = function(ev) {
            ev.preventDefault();
            _this.setContainerPos(0 - _this.step);
        }

        this.scrollContainer = function(ev) {
            ev.preventDefault();
            console.log(ev);
            
            // If FF
            var delta = ev.originalEvent.detail? 
                ev.originalEvent.detail * (-30) : ev.originalEvent.wheelDelta;
            
            _this.setContainerPos(0 - delta);
        }

        this.sleep = function() {
            _this.node.removeClass('highlight');
            _this.prev.removeClass('highlight');
            _this.next.removeClass('highlight');
        }
        
        this.setContainerPos = function(delta, options) {
            
            if (options && options.absolute) {
                _this.containerPosition = delta;
            } else {
                _this.containerPosition += delta;
            }    
            
            // Calculate dimensions 
            var nodeWidth = $(_this.node).width();
            var containerWidth = $(_this.itemsContainer).width();
            
            var maxOffset = 50;
            var minOffset = nodeWidth - containerWidth;
            
            if (_this.containerPosition > maxOffset) _this.containerPosition = maxOffset;
            if (_this.containerPosition < minOffset) _this.containerPosition = minOffset;
            
            if (options && options.nosliding) {
                $(_this.itemsContainer).stop().css({'left': _this.containerPosition});
            } else {
                $(_this.itemsContainer).stop().animate({'left': _this.containerPosition}, 800, 'easeOutCubic');
            }    
        } 

        this.getItemPosition = function(item) {
            var itemOffset = $(item).offset();
            var nodeOffset = $(_this.node).offset();
            return itemOffset.left - nodeOffset.left;
        }

        this.node.bind('mousewheel DOMMouseScroll', _this.scrollContainer);
        this.node.bind('mouseover', _this.wakeup);
        this.node.bind('mouseleave', _this.sleep);
        this.prev.bind('click', _this.pressPrev);
        this.next.bind('click', _this.pressNext);

        var lastItem = this.items[this.items.length-1];
        var lastPixel = this.getItemPosition(lastItem) + parseInt($(lastItem).css('width')) + 70;
        $(this.itemsContainer).css('width', lastPixel);

        this.setContainerPos(50, {'absolute': true, 'nosliding': true});
    }

    return yo.models.Slide;

})(jQuery)
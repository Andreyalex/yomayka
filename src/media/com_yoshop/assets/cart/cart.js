
define(['yo', 'messenger'], function(yo, messenger){

    var
        $ = jQuery,// assume that jq is already loaded. It is loaded
        _addItemUrl    = siteBaseUrl+'index.php?option=com_yoshop&format=json&task=cart.addProduct',
        _removeItemUrl = siteBaseUrl+'index.php?option=com_yoshop&format=json&task=cart.removeProduct',
        module = function(options)
        {
            var $this = this

            if (options) {
                options.counterNode && ($this.counterNode = $(options.counterNode))
                options.domNode && ($this.domNode = $(options.domNode))
                options.products && ($this.products = $(options.products))
                options.data && ($this.data = $(options.data))
                options.priceNode && ($this.priceNode = $(options.priceNode))
            }

            $this.domNode.on('click',
                '.action-remove', function(ev){
                    ev.preventDefault()
                    $this.productEventHandler(this)
                })

            $this.messenger = yo.getShared('messenger') || new messenger();
        }

    /**
     * Cart's own methods
     */
    jQuery.extend(module.prototype, {

        domNode:   null,
        data:      null,
        messenger: null,

        /** @var DOMElement this */
        productEventHandler: function(control)
        {
            var $this = this,
                container = $(control).parents('tr'),
                id      = container.attr('data-id')

            //$this.messenger.show('Ждем', 'info')
            $this.removeFromCart(id, 1, function(res){

                if (!res || !res.status) {
                    $this.messenger.show('Не удалось удалить товар из корзины', 'error')
                    return
                }
                //control.attr('data-cart-action', 'add')
                if ($this.data.price > 0){
                    $this.messenger.show(';-)', 'success')
                } else {
                    window.location.reload()
                }
            })
        },

        removeFromCart: function(id, count, callback)
        {
            var $this = this,
                onComplete = function(res) {
                    if (res && res.status) {
                        $this.data = res.data;
                        $this.render();
                    }
                    callback && callback(res);
                }
            $.ajax({
                url: _removeItemUrl,
                type: 'post',
                data: {id: id, count: count},
                dataType: 'json',
                success: onComplete,
                error: onComplete
            })
        },

        /**
         * We need just to find cart items count
         * and up it. Simplest case.
         */
        render: function()
        {
            var $this = this

            /** update items count */
            $this.counterNode.html($this.data.count)

            $this.priceNode.html($this.data.price)

            /** update controls state */
            $($this.products).each(function(){
                var item = $(this),
                id = item.attr('data-id')
                if (id > 0 && !$this.isProductInCart(id)) {
                    item.fadeOut()
                }
            })

        },

        isProductInCart: function(pid)
        {
            var is = false
            $(this.data.products).each(function(){
                if (this.id == pid) is=true
            })
            return is
        }
    })

    return module
});

define(['jquery', 'yo'], function($, yo){

    var _tpl =
    '<div class="alert alert-block {status}"><button type="button" class="close" data-dismiss="alert">&times;</button>{content}</div>',


    module = function(options)
    {
        var $this = this

        $this.domNode = $('<div class="messenger"></div>'),
        $('body').append($this.domNode)

        options && options.text && options.status && $this.show(options.text, options.status)
    }

    /**
     * Cart's own props and methods
     */
    $.extend(module.prototype, {

        domNode: null,

        messageId: null,

        show: function(text, status)
        {
            var $this = this,
                className = (!status? 'error' : status),
                compiled  = yo.render(_tpl, {content: text, status: 'alert-'+status}),
                messageId = Math.random(10000, 99999)

            $this.domNode.html(compiled);
            $this.domNode.css('display', 'block');
            setTimeout(function(){
                $this.domNode.addClass('visible');
            },10)

            $this.messageId = messageId;
            setTimeout(function(){
                if ($this.messageId != messageId) return
                $this.hide()
            },4000)
        },

        hide: function(){
            var $this = this
            $this.domNode.removeClass('visible')
            setTimeout(function(){
                $this.domNode.css('display', 'block');
            },1000)
        }
    })

    return module
});

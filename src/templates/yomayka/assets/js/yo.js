// Yo declaration and creation
; window.yo = (function() {

    var module = this;

    module.options = {
        baseUrl: window.siteBaseUrl,
        debug: false,
        sendLogs: true
    }

    module.models = {}

    module.debug = function() {
        if (module.options.debug && console && console.log) {
            try {
                console.log.apply(console, arguments)
            } catch(e) {}
        }
    }

    module.log = function(message, type, assets) {

        assets || (assets = {})
        type || (type = 'message');

        assets.url = window.location.href

        module.options.debug && module.debug(type, message);

        module.options.sendLogs && jQuery && jQuery.ajax({
            url: module.options.baseUrl + 'index.php?format=json',
            type: 'post',
            dataType: 'json',
            data: {
                option: 'com_yoshop',
                task: 'logger.add',
                item: {
                    type: type,
                    message: message,
                    assets: assets,
                    context: 'client'
                }
            }
        })
    }

    return module;
})();

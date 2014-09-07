// Yo declaration and creation
define(['jquery'], function($) {

    var yo = {};
    yo.models = {}
    yo.widgets = {}

    var _registry = {};

    // Default settings
    yo.config = {
        debug: 1
    }


    yo.debug = function() {
        if (_this.config.debug && console && console.log) {
            try { 
                console.log.apply(console, arguments)
            } catch(e) {}
        }
    }


    yo.render = function(tpl, data)
    {
        return tpl.replace(/{([^}]+)}/g, function(found, key){
            return (typeof data[key] != 'undefined')? data[key] : found;
        });
    }

    yo.getShared = function(name)
    {
        if (!_registry[name]) {
            throw 'Shared resource '+name+' not found.'
        }
        return _registry[name]
    }

    yo.setShared = function(name, value, overwrite)
    {
        if (_registry[name] && !overwrite) {
            throw 'Shared resource '+name+' already exists.'
        }

        _registry[name] = value;
    }

    yo.isSharedExist = function(name)
    {
        return _registry[name] != undefined;
    }

    yo.loadCss = function(url) {
        var link = document.createElement("link");
        link.type = "text/css";
        link.rel = "stylesheet";
        link.href = url;
        document.getElementsByTagName("head")[0].appendChild(link);
    }

    return yo;
})

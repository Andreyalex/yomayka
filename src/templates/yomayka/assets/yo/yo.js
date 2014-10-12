;
(function () {

  var module = function () {

    var yo = this;

    yo.models = {}
    yo.widgets = {}
    yo.events = {}

    var _registry = {};

    yo.options = {
      baseUrl: window.siteBaseUrl,
      debug: true,
      sendLogs: true
    }

    yo.debug = function () {
      if (yo.options.debug && console && console.log) {
        try {
          console.log.apply(console, arguments)
        } catch (e) {
        }
      }
    }

    yo.log = function (message, type, assets) {
      assets || (assets = {})
      type || (type = 'message');

      assets.url = window.location.href

      yo.options.debug && yo.debug(type, message);

      yo.options.sendLogs && jQuery && jQuery.ajax({
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

    yo.render = function (tpl, data) {
      return tpl.replace(/{([^}]+)}/g, function (found, key) {
        return (typeof data[key] != 'undefined') ? data[key] : found;
      });
    }

    yo.getShared = function (name) {
      if (!_registry[name]) {
        throw 'Shared resource ' + name + ' not found.'
      }
      return _registry[name]
    }

    yo.setShared = function (name, value, overwrite) {
      if (_registry[name] && !overwrite) {
        throw 'Shared resource ' + name + ' already exists.'
      }

      _registry[name] = value;
    }

    yo.isSharedExist = function (name) {
      return _registry[name] != undefined;
    }

    yo.loadCss = function (url) {
      var link = document.createElement("link");
      link.type = "text/css";
      link.rel = "stylesheet";
      link.href = url;
      document.getElementsByTagName("head")[0].appendChild(link);
    }

    yo.trigger = function (eventName, data) {
      data || (data = {})
      if (typeof data === 'string') {
        data = {'text': data};
      }
      var evt = jQuery.Event(eventName);
      evt.params = data
      yo.debug('triggering event: ' + eventName, data);
      jQuery('body').trigger(evt);
    }

    yo.on = function (eventName, callback) {
      jQuery('body').on(eventName, callback)
      yo.debug('added listener to event '+eventName)
    }

    yo.enableEvents = function () {

      jQuery('[data-event]').each(function (idx, element) {

        var
          dataEvent = jQuery(element).attr('data-event'),
          parts = dataEvent.split(':'),
          targetEvent = parts[1],
          sourceEvent = parts[0]

          yo.debug('parsed event: '+targetEvent)

        yo.createEvent(targetEvent, sourceEvent, '[data-event="'+dataEvent+'"]')
      })

      yo.debug('Extended events enabled.');
    }

    /**
     *
     * @param selector '.product-publish-button'
     * @param targetEvent 'products.publish'
     * @param sourceEvent 'click'
     * @param behavior 'toggle'
     */
    yo.createEvent = function(targetEvent, sourceEvent, selector)
    {
      var idx = sourceEvent+'-'+selector+'-'+targetEvent;
      if (yo.events[idx]){
        yo.debug('Event '+idx+' already exists');
        return;
      }

      jQuery('body').on(sourceEvent, selector, function (event) {

        yo.debug('catched event', event)

        var parts, behavior, dataBehavior, el = jQuery(this)

        dataBehavior = el.attr('data-behavior');

        if (dataBehavior) {
          parts = dataBehavior.split(':')
          behavior = parts[0]
        }

        var
          data = {
            id: el.attr('data-id')
          }

        switch (behavior) {
          case 'toggle': // toggle:[currentState]:[toggleVal1],[toggleVal2]
            var state = parts[2], values = parts[1].split(',')
            data.value = (values[0] == state? values[1] : values[0])
            el.attr('data-behavior', parts[0]+':'+parts[1]+':'+data.value)
            break

          default:
            data.value = el.val();
        }

        yo.trigger(targetEvent, data);
      })

      yo.events[idx] = true;

    }

    return yo;
  }

  if (window['define']) {  // Yo declaration and creation
    define(['jquery'], module);
  } else {
      window.yo = new module;
  }

})()



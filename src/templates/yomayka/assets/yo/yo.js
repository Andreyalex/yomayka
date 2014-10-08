;
(function () {

  var module = function () {

    var yo = this;

    yo.models = {}
    yo.widgets = {}

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
          eventDef = jQuery(element).data('event').split(':'),
          sourceEvent = eventDef[0],
          eventToGenerate = eventDef[1],
          dataSource = eventDef[2],
          itemId = eventDef[3]

        yo.debug('parsed event: '+eventDef)

        jQuery(element).on(sourceEvent, function (event) {

          yo.debug('catched event: ' + event.name, event)

          var data = {
            id: itemId
          }

          switch (dataSource) {
            case 'radio':
              data.value = jQuery('[type="radio"]:checked', element).val()
              break
            case 'toggle':
              data.value = jQuery(element).attr('data-state')=='1'?0:1
              jQuery(element).attr('data-state', data.value)
              break
          }

          yo.trigger(eventToGenerate, data);
        })
      })
      yo.debug('Extended events enabled.');
    }


    return yo;
  }

  if (window['define']) {  // Yo declaration and creation
    define(['jquery'], module);
  } else {
    jQuery(function (jQuery) {
      window.yo = new module(jQuery);
    });
  }

})()



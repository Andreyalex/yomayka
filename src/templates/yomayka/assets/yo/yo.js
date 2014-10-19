;(function(){

  var yo = {}; // Singleton

  yo.models = {}
  yo.widgets = {}
  yo.events = {}
  yo.texts = {
    errors: {
      general: 'Произошла ошибка. Попробуйте повторить операцию позже'
    }
  }

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
      url: yo.options.baseUrl + 'index.php?format=json',
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

  yo.trigger = function (eventName, data, target) {
    data || (data = {})
    if (typeof data === 'string') {
      data = {'text': data};
    }
    var evt = jQuery.Event(eventName);
    evt.params = data
    target && (evt.target = target)
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
        case 'confirm': // confirm:text
          if (!confirm(parts[1])) {
            return;
          }
          break

        default:
          data.value = el.val();
      }

      yo.trigger(targetEvent, data, event.target);
    })

    yo.events[idx] = true;

  }

  /**
   * Wrapper for regular request to server's json API.
   * May easily inject data into DOM element on success
   * or notify an error event.
   *
   * @param path
   * @param ajaxRequestObj
   * @param container - additional behavior to easely inject
   * @param successCallback
   * @param errorCallback
   */
  yo.request = function() {
    return new yo.Request(arguments[0], arguments[1], arguments[2], arguments[3], arguments[4]);
  }

  /**
   * Easily injects data into DOM element without height or width shaking
   * data should be a string
   *
   * @param container
   * @param content
   */
  yo.inject = function(container, content) {
    container.addClass('transparent')
    container.css('min-width', container.width())
    container.css('min-height', container.height())
    container.html(content)
    setTimeout(function(){
      container.css('min-width', '')
      container.css('min-height', '')
      container.removeClass('transparent')
    }, 100)
  }

  yo.notificator = {}

  yo.notificator.error = function(messages, namespace) {
    var namespace = namespace || 'error.notify';
    yo.trigger(
      namespace,
      messages || 'Произошла ошибка. Попробуйте повторить операцию позже'
    )
  }

  yo.notificator.message = function(messages, namespace) {
    var namespace = namespace || 'error.notify';
    yo.trigger(namespace, messages)
  }

  /**
   * Request object that is a wrapper for regular request to server's json API.
   * May easily inject data into DOM element on success
   * and notify process, error and message event.
   *
   * @param path
   * @param ajaxRequestObj
   * @param container - additional behavior to easely inject
   * @param successCallback
   * @param errorCallback
   */
  var Request = function(path, ajaxRequestObj, container, successCallback, errorCallback) {

    this.errorEvent = 'error.notify'
    this.messageEvent = 'message.notify'

    this.ajaxRequestObj = ajaxRequestObj
    this.ajaxRequestObj.context = this
    this.container = container
    this.successCallback = successCallback
    this.errorCallback = errorCallback


    ajaxRequestObj || (ajaxRequestObj = {data:{}})

    // Fill ajaxRequestObj with parsed "path" data
    var parts = path.match(/^((?:get)|(?:post))\s((?:html)|(?:json))(?:\|(.+))?$/);
    ajaxRequestObj.method = parts[1]
    ajaxRequestObj.dataType = parts[2]
    ajaxRequestObj.data.format = parts[2]
    if (parts[3]) {
      var rsc = parts[3].split(':')
      rsc[0] && (ajaxRequestObj.data.option = 'com_'+rsc[0])
      rsc[1] && (rsc[1].indexOf('.') > -1 ? ajaxRequestObj.data.task = rsc[1] : ajaxRequestObj.data.view = rsc[1])
      rsc[2] && (ajaxRequestObj.data.layout = rsc[2])
      rsc[3] && (ajaxRequestObj.data.tmpl = rsc[3])
      ajaxRequestObj.url = window.siteBaseUrl
    }

    // Set defaults if not set yet
    ajaxRequestObj.url || (ajaxRequestObj.url = window.location.href)
    ajaxRequestObj.method || (ajaxRequestObj.method = 'post')

    // Default error handler
    ajaxRequestObj.error || (ajaxRequestObj.error = this.errorHandler)

    // Default error handler
    ajaxRequestObj.success || (ajaxRequestObj.success = this.successHandler)

    ajaxRequestObj.complete = function() {
      yo.trigger('done.process')
      this.behaviorOnComplete()
    }

    jQuery.ajax(ajaxRequestObj)
    yo.trigger('start.process')
    this.behaviorOnStart()
  }

  /**
   * Default handler for YO system success response.
   * THIS should be Request object
   *
   * @param res
   * @returns {*}
   */
  Request.prototype.successHandler = function(res) {

    if (this.ajaxRequestObj.dataType == 'json') { // json response

      res || (res = {});
      if (!res.status) { // Error
        return this.errorHandler(res)
      }
      res.messages && yo.trigger(this.messageEvent, res.messages.join(' '))
      return this.successCallback && this.successCallback(res)

    } else {

      // html or any string response to inject
      this.container && yo.inject(this.container, res)
      return this.successCallback && this.successCallback(res)
    }
  }

  /**
   * Default handler for YO system error response.
   * THIS should be Request object
   *
   * @param res
   * @returns {*}
   */
  Request.prototype.errorHandler = function(res) {
    res || (res = {});
    yo.log('Request error', 'error', {
      request: this.ajaxRequestObj.data,
      response: {
        responseText: res.responseText,
        status: res.status,
        messages: res.messages,
        data: res.data,
        artefacts:res._artefacts
      }
    })
    var text = (res.errorCode && res.errorCode == 500 || !res.messages)?
      yo.texts.errors.general : res.messages.join(' ')
    yo.trigger(this.errorEvent, text)

    return this.errorCallback && this.errorCallback(res)
  }

  /**
   * Default additional behavior
   */
  Request.prototype.behaviorOnStart = function() {
    this.container && this.container.addClass('transparent')
  }

  /**
   * Default additional behavior
   */
  Request.prototype.behaviorOnComplete = function() {
    this.container && this.container.removeClass('transparent')
  }


  yo.Request = Request

  if (window['define']) {
    // If there is require.js then register as a module
    define(function(){ return yo; })
  } else {
    // or just set it into global scope
    window.yo = yo;
  }

})()

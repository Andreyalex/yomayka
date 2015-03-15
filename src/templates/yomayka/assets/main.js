;(function(){

  var library =  window.siteBaseUrl+'templates/yomayka/assets/yo/'

  requirejs.config({
      baseUrl: window.siteBaseUrl+'templates/yomayka/html/com_yoshop',
      paths: {
          jquery: window.siteBaseUrl+'media/jui/js/jquery.min',
          messenger: library+'messenger',
          message: library+'message',
          preloader: library+'preloader',
          wizard: library+'wizard',
          cart: library+'cart',
          yo: library+'yo',
          share: library+'share/share',
          modal: library+'modal/modal'
      }
  });
  window['requireJsAppInit'] && window.requireJsAppInit()
})()
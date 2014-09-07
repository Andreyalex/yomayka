requirejs.config({

    //By default load any module IDs from js/lib
    baseUrl: window.siteBaseUrl+'media/com_yoshop/assets',
    
    //except, if the module ID starts with "app",
    //load it from the js/app directory. paths
    //config is relative to the baseUrl, and
    //never includes a ".js" extension since
    //the paths config could be for a directory.
    paths: {
        yo: 'yo',
        jquery: '../../../templates/lady/assets/js/jquery'
    }
});

// Let's load the page controller
require([window.yoshopJsRoute])
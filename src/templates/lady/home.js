/**
 * Created with JetBrains PhpStorm.
 * User: Bee
 * Date: 13.08.13
 * Time: 23:05
 * To change this template use File | Settings | File Templates.
 */

// jQuery('.carousel').carousel();
!function($){

    var idx = 0;
    var node = '#carousel';
    var itemPath = '.inner .item';

    setInterval(function(){

    var items = $(node).find(itemPath);

    items.removeClass('prev');
    items[idx].addClass('prev');

    (idx+1 >= items.length)? idx=0 : idx++ ;

    items.removeClass('active');
    var current = $(items[idx]);
    current.addClass('preactive');
    setTimeout(function(){
    current.removeClass('preactive');
    current.addClass('active');
    }, 100);

}, 5000)



}(jQuery)



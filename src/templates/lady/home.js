/**
 * Created with JetBrains PhpStorm.
 * User: Bee
 * Date: 13.08.13
 * Time: 23:05
 * To change this template use File | Settings | File Templates.
 */

// jQuery('.carousel').carousel();
jQuery(function($) {
    var idx = 0;
    var node = '#carousel';
    var itemPath = '.inner .item';
    var bckgPath = '#homepage .slideshow-background'


    var setCitation = function(domNode) {
      if (window.modRandomText && window.modRandomText.rows) {
        var citateIdx = Math.floor(Math.random() * (modRandomText.rows.length - 1));
        domNode.find('.title').html(
          '<div class="text">&quot;'+modRandomText.rows[citateIdx].text+'&quot;</div>'+
          '<div class="name">- '+modRandomText.rows[citateIdx].name+'</div>');
      }
    }

    setCitation($($(node + ' ' + itemPath)[idx]));

    setInterval(function(){
        var items = $(node + ' ' + itemPath);
        var bckgItems = $(bckgPath);

        items.removeClass('prev');
        bckgItems.removeClass('prev');

        $(items[idx]).addClass('prev');
        $(bckgItems[idx]).addClass('prev');
        //$(items[idx]).animate({'opacity':0}, 2000);
        //$(bckgItems[idx]).animate({'opacity':0}, 2000);

        (idx+1 >= items.length)? idx=0 : idx++ ;

        items.removeClass('active');
        bckgItems.removeClass('active');

        var
            current = $(items[idx]),
            bckgCurrent = $(bckgItems[idx]);

        current.addClass('preactive');
        bckgCurrent.addClass('preactive');
        current.css({'opacity': 0});
        bckgCurrent.css({'opacity': 0});

        items.removeClass('preactive');
        bckgItems.removeClass('preactive');

        setCitation(current);

        current.addClass('active');
        bckgCurrent.addClass('active');
        $(items[idx]).animate({'opacity':1}, 2000);
        $(bckgItems[idx]).animate({'opacity':1}, 2000);

    }, 10000);
});



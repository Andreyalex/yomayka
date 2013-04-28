window.addEvent('domready', function() {
    
    if ($$('.mod-login-switcher').length == 0) {
        return;
    }    
     
    $$('.mod-login-switcher')[0].addEvent('click', function(ev){

        ev.stop();

        var form = this.getSiblings('.expandable')[0];
        form.setStyle('visibility', 'visible');

    });
});

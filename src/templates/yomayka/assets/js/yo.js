// Yo declaration and creation
;(function() {

    var _this = this;

    // Default settings
    this.config = {
        debug: 1
    }

    this.models = {}

    this.debug = function() {
        if (_this.config.debug && console && console.log) {
            try { 
                console.log.apply(console, arguments)
            } catch(e) {}
        }
    }

    window.yo = this;
})();

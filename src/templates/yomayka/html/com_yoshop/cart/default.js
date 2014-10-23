/**
 * Created with JetBrains PhpStorm.
 * User: Bee
 * Date: 25.11.13
 * Time: 22:30
 * To change this template use File | Settings | File Templates.
 */
require(['jquery', 'yo', 'wizard', 'messenger', 'cart/cart', 'modal'], function($, Yo, Wizard, Messenger, Cart, Modal)
{
    $(document).ready(function(){

        Yo.setShared('messenger', new Messenger());

        new Modal({
            domNode: '#modal-fullscreen',
            itemsContainer: '.widget-cart'
        });

        var wiz = new Wizard({domNode: '.form-multistep'})

        var cart = new Cart({
            domNode: '.widget-cart',
            products: '.widget-cart tr',
            counterNode: '#jshop_module_cart .count',
            priceNode:  '#yoshop-cart .summary .value'
        })

        var returnUrl = window.yoshopJsData.returnUrl

        var orderCreated = function(){
            $('#yoshop-cart .summary').hide();
        }

        $('.step2 .submit').click(function(ev){
            ev.preventDefault()
            var isValid = document.formvalidator.isValid(this.form);
            if (isValid) {
                $.ajax({
                    type: 'post',
                    url: '/index.php?option=com_yoshop&format=json',
                    data: $(this.form).serialize(),
                    dataType: 'json',
                    success: function(res){
                        if (res && res.status) {
                            wiz.next()
                            orderCreated()
                        } else {
                            yo.getShared('messenger').show(res.messages[0])
                        }
                    }
                })
            }
        })

        $('.step3 .finish').click(function(){
            document.location.href = returnUrl;
        })
    })
})
/**
 * Created with JetBrains PhpStorm.
 * User: Bee
 * Date: 25.11.13
 * Time: 22:30
 * To change this template use File | Settings | File Templates.
 */
require(['jquery', 'yo', 'share/share', 'product/cart', 'modal', 'messenger'], function($, Yo, Share, Cart, Modal, Messenger)
{
    $(document).ready(function(){

        Yo.setShared('messenger', new Messenger())

        Share();

        var modal = new Modal({
            domNode: '#modal-fullscreen',
            itemsContainer: '#myCarousel'
        });

        var cart = new Cart({
            domNode:  '#apex .modrole-cart .count',
            products: '#yoshop-products-list .item',
            data:     window.yoshopJsData,
            onSuccess: function (action){
                action == 'added'?
                    $('#yoshop-product .cart-add').hide() + $('#yoshop-product .cart-remove').show() :
                    $('#yoshop-product .cart-add').show() + $('#yoshop-product .cart-remove').hide();
            }
        });

    })
})
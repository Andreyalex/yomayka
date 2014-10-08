/**
 * Created with JetBrains PhpStorm.
 * User: Bee
 * Date: 25.11.13
 * Time: 22:46
 * To change this template use File | Settings | File Templates.
 */
require(['jquery','yo', 'search/cart', 'modal', 'messenger'], function($, Yo, Cart, Modal, Messenger)
{
    $(document).ready(function(){

        Yo.setShared('messenger', new Messenger())

        var modal = new Modal({
            domNode: '#modal-fullscreen',
            itemsContainer: '#yoshop-products-list'
        });

        var cart = new Cart({
            domNode:  '#apex .modrole-cart .count',
            products: '#yoshop-products-list .item',
            data:     window.yoshopJsData
        });
    })
})

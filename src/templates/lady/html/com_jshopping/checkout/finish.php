<?php

JHTML::stylesheet(JUri::root() . 'templates/lady/assets/css/com_jshopping/default.css');
JHTML::stylesheet(JUri::root() . 'templates/lady/assets/css/com_jshopping/checkout.css');

$session = JFactory::getSession();
$jshopConfig = JSFactory::getConfig();

$shopurl = SEFLink('index.php?option=com_jshopping&controller=category',1);
if ($jshopConfig->cart_back_to_shop=="product"){
    $endpagebuyproduct = xhtmlUrl($session->get('jshop_end_page_buy_product'));
}elseif ($jshopConfig->cart_back_to_shop=="list"){
    $endpagebuyproduct = xhtmlUrl($session->get('jshop_end_page_list_product'));
}
if ($endpagebuyproduct){
    $shopurl = $endpagebuyproduct;
}

?>

<div class="jshop">

    <div class="page-header">
        <div class="category-title menuitem">
            <span class="icon icon-thumbs-up"></span>
            <span class="content"><?php echo JText::_("TPL_LADY_CHECKOUT"); ?></span>
        </div>
    </div>

    <div class="result-message">
        <span class="text-success"><?php echo JText::_('TPL_LADY_CHECKOUT_COMPLETE_RESULT'); ?></span>
    </div>

    <blockquote>
        <small><?php echo JText::_('TPL_LADY_CHECKOUT_COMPLETE_DESC'); ?></small>
    </blockquote>

    <div class="control-panel">
        <a href="<?php echo $shopurl; ?>" class="btn btn-large"><?php echo JText::_('TPL_LADY_BACK_TO_SHOP'); ?></a>
    </div>

</div>

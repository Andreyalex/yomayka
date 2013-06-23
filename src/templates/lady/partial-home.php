<?php 
	JFactory::getLanguage()->load('tpl_lady');
    $imgPath = JUri::root() . 'components/com_jshopping/files/img_products/';
?>

<div id="main_place" class="layout-case">
    <div id="homepage">
        <div id="categories" class="container">
            <div class="row">
                <div class="span12">
                    <div id="carousel" class="slideshow">
                        <div class="inner">
                            <div class="item active">
                                <div class="inner">
                                    <div class="title"><?php echo JText::_('TPL_LADY_PILLOWS'); ?></div>
                                    <div class="img"><img src="<?php echo $imgPath ?>thumb_7b3d662f3623a726092b4b364472fa3a.JPG"></div>
                                    <div class="img"><img src="<?php echo $imgPath ?>thumb_96b9352e4ec68fa2662018894d25eda6.JPG"></div>
                                    <div class="img"><img src="<?php echo $imgPath ?>thumb_16cc7d2801060e40ca4e955600b6cdc0.JPG"></div>
                                </div>    
                            </div>
                            <div class="item">
                                <div class="inner">
                                    <div class="title"><?php echo JText::_('TPL_LADY_TSHIRTS'); ?></div>
                                    <div class="img"><img src="<?php echo $imgPath ?>1a24c913d7571b1c945ce19088a7b91e.jpg"></div>
                                    <div class="img"><img src="<?php echo $imgPath ?>2513deb32a5b6a7132d3d09cc92349a8.jpg"></div>
                                    <div class="img"><img src="<?php echo $imgPath ?>b335a7c483498c22b9b0f85788fe7db8.jpg"></div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="inner">
                                    <div class="title"><?php echo JText::_('TPL_LADY_BAGS'); ?></div>
                                    <div class="img"><img src="<?php echo JUri::root() ?>templates/lady/assets/img/slideshow/b1.jpg"></div>
                                    <div class="img"><img src="<?php echo JUri::root() ?>templates/lady/assets/img/slideshow/b2.jpg"></div>
                                    <div class="img"><img src="<?php echo JUri::root() ?>templates/lady/assets/img/slideshow/b3.jpg"></div>
                                </div>    
                            </div>
                        </div>
                    </div>
                </div>
            </div>            
        </div>    

        <div id="aboutus" class="container">
            <div class="row">
                <div class="span12">
                    <div class="divider"></div>
                    <!--<div class="title">О нас</div>-->
                    <p>Душа моя озарена неземной радостью, как эти чудесные весенние утра, которыми я наслаждаюсь от всего сердца.</p> 
                    <p>Я совсем один и блаженствую в здешнем краю, словно созданном для таких, как я.</p> 
                    <p>Я так счастлив, мой друг, так упоен ощущением покоя, что искусство мое страдает от этого.</p> 
                    <p>Ни одного штриха не мог бы я сделать, а никогда не был таким большим художником, как в эти минуты.</p>    
                </div>
            </div>    
        </div>    
        <div id="news" class="container">
            <div class="row">
                <div class="span12">
                    <div class="divider"></div>
                    <div class="title"><?php echo JText::_('TPL_LADY_NEW_PRODUCTS'); ?></div>
                    <div class="slides">
                    </div>
                </div>
            </div>    
        </div>    
    </div>
</div>
            
<style>
    
    .divider {
        width:33%;
        height:1px;
        border-top: 1px solid #bed5e8;
        margin: 40px auto;
    }
    
    #categories {
        margin-top: 20px;
    }
    
    #categories .slideshow {
        background: #fff;
        
    }
    
    #categories .slideshow > .inner {
        position: relative;
        overflow: hidden;
        width: 100%;
        height: 400px;
    }    
        
    #categories .slideshow .item {
        position: absolute;
        top: 0px;
        left: 0px;
        height: 400px;
        width: 100%;
        overflow: hidden;
        vertical-align: middle;
        display: none;
        z-index: 0;
    }    

    #categories .slideshow .item .title {
        text-align: center;
        font-family: 'TickerTape';
        font-size: 54px;
        line-height: 100px;
        font-weight: 100;
        color: #bed5e8;
        text-shadow: 0 0 1px rgba(0,0,0,0.2) ;    
    }
    
    #categories .slideshow .item .inner {    
        vertical-align: middle;
        overflow: hidden;
        width: 100%;
        background: #fff;
    }
    
    #categories .slideshow .item.prev {
        margin-left: 0%;
        display: block;
        z-index: 1;
    }    

    #categories .slideshow .item.preactive {
        margin-left: 100%;
        display: block;
        z-index: 2;
    }    

    #categories .slideshow .item.preactive .inner{
        margin-left: -100%;
    }    
    
    #categories .slideshow .item.active {
        transition: 2s margin-left;
        margin-left: 0%;
        display: block;
        z-index: 2;
    }    

    #categories .slideshow .item.active .inner {
        transition: 2s margin-left;
        margin-left: 0%;
    }
    
    #categories .slideshow .item .img {
        width: 33%;
        height: 300px;
        text-align: center;
        float: left;
        line-height: 300px; 
    }    
    
    #categories .slideshow .item .img img {
        height: 250px;
        vertical-align: middle;
    }

    #aboutus p {
        font-size: 20px;
        line-height: 20px;
        font-weight: 100;
        color: #888888;
        text-shadow: rgba(255,255,255,1) 1px 1px 1px;    
    }

    #news .title {
        text-align: center;
        font-family: 'TickerTape';
        font-size: 60px;
        line-height: 60px;
        font-weight: 100;
        color: #bed5e8;
        text-shadow: rgba(0,0,0,0.5) 1px 1px 2px;    
    }
    
</style>

<script>
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


</script>
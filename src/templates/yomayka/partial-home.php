<?php 
	JFactory::getLanguage()->load('tpl_lady');
    $imgPath = JUri::root() . 'media/com_yoshop/content/frontpage';

    JHtml::script('templates/lady/home.js');
?>

<div id="main_place" class="layout-case">
    <div id="homepage">
        <div class="slideshow-background role-handmade active"></div>
        <div class="slideshow-background role-wear"></div>
        <div class="slideshow-background role-jewelry"></div>
        <div id="categories" class="container">
            <div class="row">
                <div class="span12">
                    <div id="carousel" class="slideshow">
                        <div class="inner">
                            <div class="item role-handmade active">
                                <div class="inner">
                                    <div class="title"><?php echo 'Хендмейд'; ?></div>
<!--                                    <div class="img"><img src="--><?php //echo JUri::root() ?><!--7.jpg"></div>-->
                                </div>
                            </div>
                            <div class="item role-wear">
                                <div class="inner">
                                    <div class="title"><?php echo 'Одежда, шапочки' ?></div>
<!--                                    <div class="img"><img src="--><?php //echo $imgPath ?><!--1.JPG"></div>-->
                                </div>
                            </div>
                            <div class="item role-jewelry">
                                <div class="inner">
                                    <div class="title"><?php echo 'Украшения' ?></div>
<!--                                    <div class="img"><img src="--><?php //echo $imgPath ?><!--4.jpg"></div>-->
                                </div>
                            </div>
                        </div>
                    </div>

                    <jdoc:include type="modules" name="homepage-center" />

                    <div class="slogan">Бренд - ничто. Стиль - всё!</div>

                    <div class="description">Первый интернет-сток эксклюзивных вещей!</div>

                </div>
            </div>            
        </div>    
    </div>
</div>
            
<style>

    #homepage {
        position: relative;
    }

    #homepage .slideshow-background {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 700px;
        display: none;
    }

    #homepage .slideshow-background.prev {
        display: block;
        z-index: 1;
    }

    #homepage .slideshow-background.preactive {
        display: block;
        z-index: 2;
    }

    #homepage .slideshow-background.active {
        display: block;
        z-index: 2;
    }

    #homepage .slideshow-background.role-handmade {
        background: url('/media/com_yoshop/content/frontpage/1-bkg.jpg') repeat-x top left;
    }

    #homepage .slideshow-background.role-jewelry {
        background: url('/media/com_yoshop/content/frontpage/2-bkg.jpg') repeat-x top left;
    }

    #homepage .slideshow-background.role-wear {
        background: url('/media/com_yoshop/content/frontpage/3-bkg.jpg') repeat-x top left;
    }

    #homepage .span12 {
        position: relative;
    }

    #homepage .slogan {
        position: absolute;
        top: 20px;
        right: 0px;

        font-size: 70px;
        line-height: 70px;

        font-family:'Eurofurencelight', 'Open Sans Condensed', Helvetica, Arial, sans-serif;
        text-shadow: 2px 2px 7px #fff, 2px -2px 7px #fff, -2px -2px 7px #fff, -2px 2px 7px #fff;

        z-index: 90;
    }

    #homepage .description {
        font-size: 50px;
        line-height: 70px;

        font-family:'Eurofurencelight', 'Open Sans Condensed', Helvetica, Arial, sans-serif;
        position: absolute;
        bottom: 60px;
        z-index: 90;
        text-shadow: 2px 2px 7px #fff, 2px -2px 7px #fff, -2px -2px 7px #fff, -2px 2px 7px #fff;
    }

    .divider {
        width:33%;
        height:1px;
        border-top: 1px solid #bed5e8;
        margin: 40px auto;
    }
    
    #categories {
        /*margin-top: 20px;*/
    }
    
    #categories .slideshow {
        /*-moz-box-shadow:    0 0 10px 10px #ffffff;*/
        /*-webkit-box-shadow: 0 0 10px 10px #ffffff;*/
        /*box-shadow: 0 0 10px 10px #ffffff;*/
        overflow: hidden;
    }
    
    #categories .slideshow > .inner {
        position: relative;
        overflow: hidden;
        width: 100%;
        height: 500px;
    }    
        
    #categories .slideshow .item {
        position: absolute;
        top: 0px;
        left: 0px;
        height: 400px;
        width: 100%;
        vertical-align: middle;
        display: none;
        z-index: 0;
    }

    #categories .slideshow .item .title {
        position: absolute;
        right: 0px;
        bottom: 110px;

        font-size: 50px;
        line-height: 70px;

        font-family:'Eurofurencelight', 'Open Sans Condensed', Helvetica, Arial, sans-serif;
        text-shadow: 2px 2px 7px #fff, 2px -2px 7px #fff, -2px -2px 7px #fff, -2px 2px 7px #fff;

        text-align: right;
        font-style: italic;
        padding:5px 10px;
    }

    #categories .slideshow .item.role-jewelry .title {
        color: #808000;
        text-shadow: 2px 2px 7px #ff8, 2px -2px 7px #ff8, -2px -2px 7px #ff8, -2px 2px 7px #ff8;
    }

    #categories .slideshow .item.role-handmade .title {
        color: #008000;
        text-shadow: 2px 2px 7px #8f8, 2px -2px 7px #8f8, -2px -2px 7px #8f8, -2px 2px 7px #8f8;
    }

    #categories .slideshow .item.role-wear .title {
        color: #000080;
        text-shadow: 2px 2px 7px #88f, 2px -2px 7px #88f, -2px -2px 7px #88f, -2px 2px 7px #88f;
    }

    #categories .slideshow .item .inner {    
        vertical-align: middle;
        overflow: hidden;
        width: 100%;
        /*background: #fff;*/
    }
    
    #categories .slideshow .item.prev {
        display: block;
        z-index: 1;
    }    

    #categories .slideshow .item.preactive {
        display: block;
        z-index: 2;
    }

    #categories .slideshow .item.active {
        display: block;
        z-index: 2;
    }    

    #categories .slideshow .item .img {
        width: 150px;
        text-align: center;
        float: left;
        line-height: 300px;
    }    
    
    #categories .slideshow .item .img img {
        width: 100%;
        vertical-align: middle;
    }

    #aboutus {
        /*width: 50%;*/
        /*margin-left: 50%;*/
    }

    #aboutus .icon-quote-left {
        color: #eeeeee;
        text-shadow: 1px 1px 0 #cccccc;
        font-size: 30px;
        line-height: 24px;
        display:inline-block;
        vertical-align: text-bottom;
        margin: 0 20px 20px 20px;
    }
    #aboutus .icon-quote-right {
        color: #eeeeee;
        text-shadow: 1px 1px 0 #cccccc;
        font-size: 30px;
        line-height: 24px;
        display:inline-block;
        vertical-align: text-top;
        margin: 20px 20px 0 20px;
    }

    #aboutus p {
        font-size: 20px;
        font-style: italic;
        line-height: 26px;
        font-weight: 100;
        color: #888888;
        text-shadow: 0 0 1px #dddddd;
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

    #homepage .random_text {

    }

</style>


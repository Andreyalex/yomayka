<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <meta charset="utf-8" >
<!--    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"> -->
    <link rel="stylesheet" href="<?php echo $tplBaseUrl; ?>/assets/bootstrap/css/bootstrap.min.css">
<!--    <link rel="stylesheet" href="--><?php //echo $tplBaseUrl; ?><!--/assets/bootstrap/css/bootstrap-theme.min.css">-->

    <link rel="stylesheet" href="<?php echo $tplBaseUrl; ?>/assets/fonts/eurofurencelight/styles.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="<?php echo $tplBaseUrl; ?>/assets/fonts/tickertape/styles.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="<?php echo $tplBaseUrl; ?>/assets/fonts/awesome/css/font-awesome.min.css" type="text/css" media="screen" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,400,300,700&subset=latin,cyrillic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300&subset=latin,cyrillic' rel='stylesheet' type='text/css'>

    <script type="text/javascript" src="<?php echo $tplBaseUrl; ?>/assets/jquery/jquery.js"></script>
    <script type="text/javascript" src="<?php echo $tplBaseUrl; ?>/assets/jquery/ui/js/jquery-ui-1.10.0.custom.min.js"></script>
    <script type="text/javascript" src="<?php echo $tplBaseUrl; ?>/assets/bootstrap/js/bootstrap.min.js"></script>

    <script type="text/javascript"> window.siteBaseUrl = "<?php echo JUri::base(); ?>"</script>

    <?php
        if (isset($this->customAssets)) {
            foreach($this->customAssets as $asset) {
                echo $asset."\n";
            }
        }
    ?>

    <jdoc:include type="head" />

    <?php // If there is other jQuery has been loaded then revert to our first one ?>
    <!--<script type="text/javascript">window.jQCustom = jQuery.noConflict(true);</script>-->

    <link rel="stylesheet" href="<?php echo $tplBaseUrl; ?>/assets/css/template.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="<?php echo $tplBaseUrl; ?>/assets/css/extensions.css" type="text/css" media="screen" />
    <!--[if lt IE 8]>
    <!--<link rel="stylesheet" href="<?php echo $tplBaseUrl; ?>/assets/css/ie7.css" type="text/css" />-->
    <![endif]-->
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <!--<link rel="stylesheet" href="<?php echo $tplBaseUrl; ?>/assets/css/ie8.css" type="text/css" />-->
    <!--<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>-->
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="<?php echo $tplBaseUrl; ?>/assets/assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<?php echo $tplBaseUrl; ?>/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?php echo $tplBaseUrl; ?>/assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?php echo $tplBaseUrl; ?>/assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="<?php echo $tplBaseUrl; ?>/assets/ico/apple-touch-icon-57-precomposed.png">
</head>

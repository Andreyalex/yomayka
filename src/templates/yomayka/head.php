<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <meta charset="utf-8" >

    <script type="text/javascript">
        window.siteBaseUrl = "<?php echo JUri::base(); ?>"
        window.siteCurrentUrl = "<?php echo JUri::current(); ?>"
    </script>

    <link rel="stylesheet" href="<?php echo $tplBaseUrl; ?>/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo $tplBaseUrl; ?>/assets/fonts/eurofurencelight/styles.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="<?php echo $tplBaseUrl; ?>/assets/fonts/tickertape/styles.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="<?php echo $tplBaseUrl; ?>/assets/fonts/awesome/css/font-awesome.min.css" type="text/css" media="screen" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,400,300,700&subset=latin,cyrillic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300&subset=latin,cyrillic' rel='stylesheet' type='text/css'>

    <script type="text/javascript" src="<?php echo $tplBaseUrl; ?>/assets/yo/yo.js"></script>

    <jdoc:include type="head" />

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

    <link rel="shortcut icon" href="<?php echo $tplBaseUrl; ?>/assets/assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<?php echo $tplBaseUrl; ?>/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?php echo $tplBaseUrl; ?>/assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?php echo $tplBaseUrl; ?>/assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="<?php echo $tplBaseUrl; ?>/assets/ico/apple-touch-icon-57-precomposed.png">

      <?php
      if (isset($this->customAssets)) {
          foreach($this->customAssets as $asset) {
              echo $asset."\n";
          }
      }
      ?>

  </head>

<?php

defined('_JEXEC') or die;
// detecting site title
$app = JFactory::getApplication();

//JHtml::_('behavior.framework', true);



$this->deviceMode = null;

// Let's find WURFL...
define('WURFL_BASE_PATH', JPATH_LIBRARIES . '/wurfl');
if (file_exists(WURFL_BASE_PATH . '/wurfl_config_standard.php')) {
    
    $wurflDir = WURFL_BASE_PATH . '/WURFL';
    $resourcesDir = WURFL_BASE_PATH . '/resources';

    require_once WURFL_BASE_PATH.'/WURFL/Application.php';

    $persistenceDir = $resourcesDir.'/storage/persistence';
    $cacheDir = $resourcesDir.'/storage/cache';

    // Create WURFL Configuration
    $wurflConfig = new WURFL_Configuration_InMemoryConfig();

    // Set location of the WURFL File
    $wurflConfig->wurflFile($resourcesDir.'/wurfl.zip');

    // Set the match mode for the API ('performance' or 'accuracy')
    $wurflConfig->matchMode('performance');

    // Setup WURFL Persistence
    $wurflConfig->persistence('file', array('dir' => $persistenceDir));

    // Setup Caching
    $wurflConfig->cache('file', array('dir' => $cacheDir, 'expiration' => 36000));

    // Create a WURFL Manager Factory from the WURFL Configuration
    $wurflManagerFactory = new WURFL_WURFLManagerFactory($wurflConfig);

    // Create a WURFL Manager
    /* @var $wurflManager WURFL_WURFLManager */
    $wurflManager = $wurflManagerFactory->create();
	$requestingDevice = $wurflManager->getDeviceForHttpRequest($_SERVER);
    
    $is_wireless = ($requestingDevice->getCapability('is_wireless_device') == 'true');
    $is_tablet = ($requestingDevice->getCapability('is_tablet') == 'true');

    if ($is_wireless) {
        $deviceClass = $is_tablet? 20 : 10;
    } else {
        $deviceClass = 30;
    }

    $maxResolution = max(array($requestingDevice->getCapability('resolution_width'), $requestingDevice->getCapability('resolution_height')));
    
    if ($maxResolution > 0 && $maxResolution < 768) {
        $deviceClass = 10;
    }

    if ($maxResolution >= 768 && $deviceClass < 20) {
        $deviceClass = 20;
    }

    if ($maxResolution >= 980 && $deviceClass < 30) {
        $deviceClass = 30;
    }
    
    $this->deviceClass = 
         ($deviceClass <= 10)? 'phone' :
        (($deviceClass <= 20)? 'tablet' : 'desktop');
}

$option = JRequest::getVar('option', null);

$bodyClass = '';

$menu = JFactory::getApplication()->getMenu();

$isHomePage = ( $menu->getActive() == $menu->getDefault() );

$countModuleHeaderTop		= $this->countModules('header-top');
$countModuleHeaderBottom	= $this->countModules('header-bottom');
$countModuleLogo			= $this->countModules('logo');
$countModuleToolbar			= $this->countModules('toolbar');
$countModuleMenu			= $this->countModules('menu');
$countModuleSearch			= $this->countModules('search');
$countModuleBreadcrumbsTop	= $this->countModules('breadcrumbs_top');

$countModuleLeft			= $this->countModules('left');

$countModuleTop				= $this->countModules('top');
$countModuleBreadcrumbs		= $this->countModules('breadcrumbs');
$countModuleInnerTop		= $this->countModules('inner_top');
$countModuleInnerLeft		= $this->countModules('inner_left');
$countModuleContent			= $this->countModules('content');
$countModuleInnerRight		= $this->countModules('inner_right');
$countModuleInnerBottom		= $this->countModules('inner_bottom');
$countModuleBottom			= $this->countModules('bottom');

$countModuleRightTop		= $this->countModules('right_top');
$countModuleRightTab		= $this->countModules('right_tab');
$countModuleRight			= $this->countModules('right');

$countModuleFooterTop		= $this->countModules('footer-top');
$countModuleFooterMiddle	= $this->countModules('footer-middle');

$isShowCenter		= ($countModuleInnerTop  || $countModuleInnerBottom
					|| $countModuleInnerLeft || $countModuleInnerRight
					|| $countModuleContent	 || $countModuleBreadcrumbs
					|| !is_null($option));
$isShowCenterInner	= ($countModuleContent	 || $countModuleBreadcrumbs || !is_null($option));
$isShowAllRightBar	= ($countModuleRightTop	 || $countModuleRightTab || $countModuleRight);

$centerWidth = 12;
$centerWidth -= $countModuleLeft? 3 : 0;
$centerWidth -= $isShowAllRightBar? 3 : 0;

$innerCenterWidth = 12;
$innerCenterWidth -= $countModuleInnerLeft? 3 : 0;
$innerCenterWidth -= $countModuleInnerRight? 3 : 0;

$apexFixed = $this->countModules('apex-top') || $this->countModules('apex-left') || $this->countModules('apex-right') || $this->countModules('apex-bottom');

if($apexFixed) {
    $bodyClass .= ' apex-present';
}

?>
<!DOCTYPE html>
<html lang="en">
  <head>
      
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/assets/fonts/eurofurencelight/styles.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/assets/fonts/tickertape/styles.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/assets/fonts/awesome/css/font-awesome.min.css" type="text/css" media="screen" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,400,300,700&subset=latin,cyrillic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300&subset=latin,cyrillic' rel='stylesheet' type='text/css'>
	
    <script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/assets/js/jquery.js"></script>
    <script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/assets/js/jquery-ui/js/jquery-ui-1.10.0.custom.min.js"></script>
    <script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/assets/js/bootstrap-collapse.js"></script>
    <?php // Release $ sign for Mootools ?>
    <script type="text/javascript">jQuery.noConflict();</script>

    <jdoc:include type="head" />

    <?php // If there is other jQuery has been loaded then revert to our first one ?>
    <!--<script type="text/javascript">window.jQCustom = jQuery.noConflict(true);</script>-->

    <link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/assets/css/bootstrap.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/assets/css/bootstrap-responsive.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/assets/css/template.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/assets/css/overrides.css" type="text/css" media="screen" />
    <!--[if lt IE 8]>
        <link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/assets/css/ie7.css" type="text/css" />
    <![endif]-->
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
        <link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/assets/css/ie8.css" type="text/css" />
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/assets/assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/assets/ico/apple-touch-icon-57-precomposed.png">
  </head>
  <body class="<?php echo $bodyClass; ?>">

    <div id="overall">
        <div id="non-footer">

		<?php if ($apexFixed): ?>
		<div id="apex">
            
            <?php if ($this->countModules('apex-top')): ?>
            <div id="pos-apex-top" class="layout-case">
                <div class="container">
                    <div class="row-fluid">
                        <jdoc:include type="modules" name="apex-top" style="standard"/>
                    </div>    
                </div>	
            </div>
            <?php endif; ?>
            
            <?php if ($this->countModules('apex-left') || $this->countModules('apex-right')): ?>
            <div id="pos-apex-middle" class="layout-case">
                <div class="container">
                    <div class="row-fluid">
                        <div id="pos-apex-left" class="pull-left">    
                            <jdoc:include type="modules" name="apex-left" style="standard" />
                        </div>    
                        <div id="pos-apex-right" class="pull-right">    
                            <jdoc:include type="modules" name="apex-right" style="standard" />
                        </div>    
                    </div>    
                </div>
            </div>    
            <?php endif; ?>

            <?php if ($this->countModules('apex-bottom')): ?>
            <div id="pos-apex-bottom" class="layout-case">
                <div class="container">
                    <div class="row-fluid">
                        <jdoc:include type="modules" name="apex-bottom" style="standard" />
                    </div>    
                </div>
            </div>	
            <?php endif; ?>
        </div>
        
        <div id="apex-spacer"></div>
        
<!--		<script type="text/javascript">
			(function(){
				var height = document.getElementById('apex').offsetHeight;
				document.getElementById('apex-spacer').style.height = height + 'px';
			})()	
		</script>-->
		
		<?php endif; ?>

			
			
            <div id="layout">

			<?php if ($countModuleHeaderTop): ?>
            <div id="header-top_bar" class="layout-case">
                <div class="container">
					<div id="header-top">
						<jdoc:include type="modules" name="header-top" />
					</div>
                </div>    
            </div>    
            <?php endif; ?>
            
			<?php if ($countModuleLogo || $countModuleToolbar): ?>
			<div id="logo_bar" class="layout-case">
				<div class="container">
					
					<?php if ($countModuleLogo): ?>
					<div id="logo_place" class="pull-left">
                        <div class="logo">YOmayka</div>
						<!--<jdoc:include type="modules" name="logo" />-->
					</div><!--logo_place-->
					<?php endif; ?>

					<?php if ($countModuleToolbar): ?>
					<div id="toolbar_place" class="pull-right">
						<jdoc:include type="modules" name="toolbar" />
					</div><!--toolbar_place-->
					<?php endif; ?>
				
				</div>
			</div><!--logo_bar-->
			<?php endif; ?>

			
			
			<?php if ($countModuleMenu|| $countModuleSearch): ?>
			<div id="menu_bar" class="layout-case">
				<div class="container">

					<?php if ($countModuleMenu): ?>
					<div id="menu_place" class="pull-left">
						<jdoc:include type="modules" name="menu" />
					</div><!--menu_place-->
					<?php endif; ?>

					<?php if ($countModuleSearch): ?>
					<div id="search_place" class="pull-right">
						<jdoc:include type="modules" name="search" />
					</div><!--search_place-->
					<?php endif; ?>

				</div>	
			</div><!--menu_bar-->
			<?php endif; ?>

            <?php if ($countModuleHeaderTop): ?>
            <div id="header-bottom_bar" class="layout-case">
                <div class="container">
					<div id="header-bottom" class="pull-left">
						<jdoc:include type="modules" name="header-bottom" />
					</div>
                </div>    
            </div>    
            <?php endif; ?>

			
			<?php if ($countModuleBreadcrumbsTop): ?>
			<div id="breadcrumbs_bar" class="layout-case">
				<div class="container">
					<jdoc:include type="modules" name="breadcrumbs_top" />
				</div>	
			</div><!--breadcrumbs_bar-->
			<?php endif; ?>

			
			
			<?php if ($countModuleTop): ?>
			<div id="top_bar" class="group layout-case">
				<div class="container">
					<jdoc:include type="modules" name="top" style="standard" />
				</div>	
			</div><!--top_bar-->
			<?php endif; ?>

			<?php 
            if ($isHomePage) : 
                require_once 'partial-home.php';
            else:
            if ($countModuleLeft || $countModuleRight || $isShowCenter):?>
			<div id="main_place" class="layout-case">
				<div class="container">
					<div class="row">
					
						<?php if ($countModuleLeft): ?>
						<div id="left_bar" class="span3 pull-left">
							<jdoc:include type="modules" name="left" style="standard" />
						</div><!--left_bar-->
						<?php endif; ?>

						<?php if ($isShowCenter): ?>
						<div id="inner_place" class="span<?php echo $centerWidth; ?>">
							
							<?php if ($countModuleInnerTop): ?>
							<div id="inner_top_bar" class="group">
								<jdoc:include type="modules" name="inner_top" style="standard" />
							</div><!--inner_top_bar-->
							<?php endif; ?>

							<?php if ($countModuleInnerLeft || $countModuleInnerRight || $isShowCenterInner): ?>
							<div id="inner_main_place" class="row-fluid">

								<?php if ($countModuleInnerLeft): ?>
								<div id="inner_left_bar" class="span3">
									<jdoc:include type="modules" name="inner_left" style="standard" />
								</div><!--inner_left_bar-->
								<?php endif; ?>

								<?php if ($isShowCenterInner): ?>
								<div id="inner_center_bar" class="span<?php echo $innerCenterWidth; ?>">

									<?php if ($countModuleBreadcrumbs): ?>
									<div id="inner_breadcrumbs_place">
										<jdoc:include type="modules" name="breadcrumbs" />
									</div><!--inner_breadcrumbs_place-->
									<?php endif; ?>

									<?php if ($countModuleContent || !is_null($option)): ?>
									<div id="inner_content_place">
										<div id="lang_flag">
											<jdoc:include type="modules" name="lang_flag" />
										</div><!--lang_flag-->
										<jdoc:include type="modules" name="content" style="standard" />
										<jdoc:include type="message" />
										<jdoc:include type="component" />
									</div><!--inner_content_place-->
									<?php endif; ?>

								</div><!--inner_center_bar-->
								<?php endif; ?>

								<?php if ($countModuleInnerRight): ?>
								<div id="inner_right_bar" class="span3">
									<jdoc:include type="modules" name="inner_right" style="standard" />
								</div><!--inner_right_bar-->
								<?php endif; ?>

							</div><!--inner_main_place-->
							<?php endif; ?>

							<?php if ($countModuleInnerBottom): ?>
							<div id="inner_bottom_bar" class="">
								<div class="group">
									<jdoc:include type="modules" name="inner_bottom" style="standard" />
								</div>
							</div><!--inner_bottom_bar-->
							<?php endif; ?>
								
						</div><!--inner_place-->
						<?php endif; ?>

						<?php if ($isShowAllRightBar): ?>
						<div id="all_right_bar" class="span3">

							<?php if ($countModuleRightTop): ?>
							<div id="right_top_bar">
								<jdoc:include type="modules" name="right_top" style="standard" />
							</div><!--right_top_bar-->
							<?php endif; ?>

							<?php if ($countModuleRightTab): ?>
							<div id="right_tab_place">
								<jdoc:include type="modules" name="right_tab" style="tabpane"/>
							</div><!--right_tab_place-->
							<?php endif; ?>

							<?php if ($countModuleRight): ?>
							<div id="right_bar">
								<jdoc:include type="modules" name="right" style="standard" />
							</div><!--right_bar-->
							<?php endif; ?>

						</div><!--all_right_bar-->
						<?php endif; ?>
						
					</div>	
				</div>
			</div><!--main_place-->
			<?php endif; ?>

            <?php endif; ?>

			<?php if ($countModuleBottom): ?>
			<div id="bottom_bar" class="group layout-case">
				<div class="container">
					<jdoc:include type="modules" name="bottom" style="standard" />
				</div>	
			</div><!--bottom_bar-->
			<?php endif; ?>

		</div><!--layout-->

                <?php if ($countModuleFooterTop || $countModuleFooterMiddle): ?>
                <div id="footer" class="layout-case">
                        <div id="footer_bar" class="container">

                            <?php if ($countModuleFooterTop): ?>
                            <div class="row">
                                <div id="footer_top_place" class="span12">
                                        <jdoc:include type="modules" name="footer-top" style="standard" />
                                </div>	
                            </div>    
                            <?php endif; ?>

                            <?php if ($countModuleFooterMiddle): ?>
                            <div class="row">
                                <div id="footer_middle_place" class="span12">
                                        <jdoc:include type="modules" name="footer-middle" style="standard" />
                                </div>	
                            </div>    
                            <?php endif; ?>

                        </div><!--footer_bar-->
                </div><!--footer_container-->
                <?php endif; ?>

          </div>      
                
	</div><!--overall-->

        
        
        
        <div id="back_to_top"></div>

	<jdoc:include type="modules" name="debug" />
	  
  </body>
</html>

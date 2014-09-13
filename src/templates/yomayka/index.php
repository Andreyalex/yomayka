<?php
defined('_JEXEC') or die;
// detecting site title
$app = JFactory::getApplication();

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

$tplBaseUrl = $this->baseurl.'/templates/'.$this->template;

include('head.php');

?>

<body class="<?php echo $bodyClass; ?>">

    <div id="overall">
        <div id="non-footer">

		<?php if ($apexFixed) { ?>
		<div id="apex">
            
            <?php if ($this->countModules('apex-top')) { ?>
            <div id="pos-apex-top" class="layout-case">
                <div class="container">
                    <div class="row-fluid">
                        <jdoc:include type="modules" name="apex-top" style="standard"/>
                    </div>    
                </div>	
            </div>
            <?php } ?>
            
            <?php if ($this->countModules('apex-left') || $this->countModules('apex-right')) { ?>
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
            <?php } ?>

            <?php if ($this->countModules('apex-bottom')) { ?>
            <div id="pos-apex-bottom" class="layout-case">
                <div class="container">
                    <div class="row-fluid">
                        <jdoc:include type="modules" name="apex-bottom" style="standard" />
                    </div>    
                </div>
            </div>	
            <?php } ?>
        </div>
        
        <div id="apex-spacer"></div>
        
<!--		<script type="text/javascript">
			(function(){
				var height = document.getElementById('apex').offsetHeight;
				document.getElementById('apex-spacer').style.height = height + 'px';
			})()	
		</script>-->
		
		<?php } ?>

			
			
            <div id="layout">

			<?php if ($countModuleHeaderTop) { ?>
            <div id="header-top_bar" class="layout-case">
                <div class="container">
					<div id="header-top">
						<jdoc:include type="modules" name="header-top" />
					</div>
                </div>    
            </div>    
            <?php } ?>
            
			<?php if ($countModuleLogo || $countModuleToolbar) { ?>
			<div id="logo_bar" class="layout-case">
				<div class="container">
					
					<?php if ($countModuleLogo) { ?>
					<div id="logo_place" class="pull-left">
						<jdoc:include type="modules" name="logo" />
					</div><!--logo_place-->
					<?php } ?>

					<?php if ($countModuleToolbar) { ?>
					<div id="toolbar_place" class="pull-right">
						<jdoc:include type="modules" name="toolbar" />
					</div><!--toolbar_place-->
					<?php } ?>
				
				</div>
			</div><!--logo_bar-->
			<?php } ?>

			
			
			<?php if ($countModuleMenu|| $countModuleSearch) { ?>
			<div id="menu_bar" class="layout-case">
				<div class="container">

					<?php if ($countModuleMenu) { ?>
					<div id="menu_place" class="pull-left">
						<jdoc:include type="modules" name="menu" />
					</div><!--menu_place-->
					<?php } ?>

					<?php if ($countModuleSearch) { ?>
					<div id="search_place" class="pull-right">
						<jdoc:include type="modules" name="search" />
					</div><!--search_place-->
					<?php } ?>

				</div>	
			</div><!--menu_bar-->
			<?php } ?>

            <?php if ($countModuleHeaderTop) { ?>
            <div id="header-bottom_bar" class="layout-case">
                <div class="container">
					<div id="header-bottom" class="pull-left">
						<jdoc:include type="modules" name="header-bottom" />
					</div>
                </div>    
            </div>    
            <?php } ?>

			
			<?php if ($countModuleBreadcrumbsTop) { ?>
			<div id="breadcrumbs_bar" class="layout-case">
				<div class="container">
					<jdoc:include type="modules" name="breadcrumbs_top" />
				</div>	
			</div><!--breadcrumbs_bar-->
			<?php } ?>

			
			
			<?php if ($countModuleTop) { ?>
			<div id="top_bar" class="group layout-case">
				<div class="container">
					<jdoc:include type="modules" name="top" style="standard" />
				</div>	
			</div><!--top_bar-->
			<?php } ?>

			<?php
            if (!empty($this->applicationError)) {
                require_once 'partial-error.php';

            } elseif (!empty($isHomePage)) {
                require_once 'partial-home.php';

            } else {
            if ($countModuleLeft || $countModuleRight || $isShowCenter) {?>
			<div id="main_place" class="layout-case">
				<div class="container">
					<div class="row">
					
						<?php if ($countModuleLeft) { ?>
						<div id="left_bar" class="span3 pull-left">
							<jdoc:include type="modules" name="left" style="standard" />
						</div><!--left_bar-->
						<?php } ?>

						<?php if ($isShowCenter) { ?>
						<div id="inner_place" class="span<?php echo $centerWidth; ?>">
							
							<?php if ($countModuleInnerTop) { ?>
							<div id="inner_top_bar" class="group">
								<jdoc:include type="modules" name="inner_top" style="standard" />
							</div><!--inner_top_bar-->
							<?php } ?>

							<?php if ($countModuleInnerLeft || $countModuleInnerRight || $isShowCenterInner) { ?>
							<div id="inner_main_place" class="row-fluid">

								<?php if ($countModuleInnerLeft) { ?>
								<div id="inner_left_bar" class="span3">
									<jdoc:include type="modules" name="inner_left" style="standard" />
								</div><!--inner_left_bar-->
								<?php } ?>

								<?php if ($isShowCenterInner) { ?>
								<div id="inner_center_bar" class="span<?php echo $innerCenterWidth; ?>">

									<?php if ($countModuleBreadcrumbs) { ?>
									<div id="inner_breadcrumbs_place">
										<jdoc:include type="modules" name="breadcrumbs" />
									</div><!--inner_breadcrumbs_place-->
									<?php } ?>

									<?php if ($countModuleContent || !is_null($option)) { ?>
									<div id="inner_content_place">
										<div id="lang_flag">
											<jdoc:include type="modules" name="lang_flag" />
										</div><!--lang_flag-->
										<jdoc:include type="modules" name="content" style="standard" />
                                        <?php if (empty($this->customMessages)){ ?>
										    <jdoc:include type="message" />
                                        <?php } ?>
										<jdoc:include type="component" />
									</div><!--inner_content_place-->
									<?php } ?>

								</div><!--inner_center_bar-->
								<?php } ?>

								<?php if ($countModuleInnerRight) { ?>
								<div id="inner_right_bar" class="span3">
									<jdoc:include type="modules" name="inner_right" style="standard" />
								</div><!--inner_right_bar-->
								<?php } ?>

							</div><!--inner_main_place-->
							<?php } ?>

							<?php if ($countModuleInnerBottom) { ?>
							<div id="inner_bottom_bar" class="">
								<div class="group">
									<jdoc:include type="modules" name="inner_bottom" style="standard" />
								</div>
							</div><!--inner_bottom_bar-->
							<?php } ?>
								
						</div><!--inner_place-->
						<?php } ?>

						<?php if ($isShowAllRightBar) { ?>
						<div id="all_right_bar" class="span3">

							<?php if ($countModuleRightTop) { ?>
							<div id="right_top_bar">
								<jdoc:include type="modules" name="right_top" style="standard" />
							</div><!--right_top_bar-->
							<?php } ?>

							<?php if ($countModuleRightTab) { ?>
							<div id="right_tab_place">
								<jdoc:include type="modules" name="right_tab" style="tabpane"/>
							</div><!--right_tab_place-->
							<?php } ?>

							<?php if ($countModuleRight) { ?>
							<div id="right_bar">
								<jdoc:include type="modules" name="right" style="standard" />
							</div><!--right_bar-->
							<?php } ?>

						</div><!--all_right_bar-->
						<?php } ?>
						
					</div>	
				</div>
			</div><!--main_place-->
			<?php } ?>

            <?php } ?>

			<?php if ($countModuleBottom) { ?>
			<div id="bottom_bar" class="group layout-case">
				<div class="container">
					<jdoc:include type="modules" name="bottom" style="standard" />
				</div>	
			</div><!--bottom_bar-->
			<?php } ?>

		</div><!--layout-->

                <?php if ($countModuleFooterTop || $countModuleFooterMiddle) { ?>
                <div id="footer" class="layout-case">
                        <div id="footer_bar" class="container">

                            <?php if ($countModuleFooterTop) { ?>
                            <div class="row">
                                <div id="footer_top_place" class="span12">
                                        <jdoc:include type="modules" name="footer-top" style="standard" />
                                </div>	
                            </div>    
                            <?php } ?>

                            <?php if ($countModuleFooterMiddle) { ?>
                            <div class="row">
                                <div id="footer_middle_place" class="span12">
                                        <jdoc:include type="modules" name="footer-middle" style="standard" />
                                </div>	
                            </div>    
                            <?php } ?>

                        </div><!--footer_bar-->
                </div><!--footer_container-->
                <?php } ?>

          </div>      
                
	</div><!--overall-->

        
        
        
    <div id="back_to_top"></div>

	<jdoc:include type="modules" name="debug" />

    <style>
        #main_place {
            opacity: 1;
        }
    </style>

  </body>
</html>

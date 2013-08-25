<?php
/**
 * @author    Johan Sundell
 * @copyright Copyright (C) 2013 - PixPro Stockholm AB. All rights reserved.
 * @license	  GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;


class plgSystemPixanalytic extends JPlugin
{
	public function __construct( &$subject, $config )
	{
		parent::__construct( $subject, $config );
	}

	public function onAfterDispatch()
	{
		$app = JFactory::getApplication();
		if( $app->isAdmin() || JDEBUG )
			return;

		$params = $this->getParams();
   
		if ($params->classicAccountId != '') {
		
			if ($params->classicModeEnabled) {

				$script =  
					"\n\n". 
					"var _gaq = _gaq || [];";

				if ($params->enchancedAttributionEnabled) {
					$script .=
						"var pluginUrl = '//www.google-analytics.com/plugins/ga/inpage_linkid.js';".
						"_gaq.push(['_require', 'inpage_linkid', pluginUrl]);";
				}

				$script .=	"_gaq.push(['_setAccount', '{$params->classicAccountId}']);";

				if ($params->classicCookieDomain) {
					$script .= "_gaq.push(['_setDomainName', '{$params->classicCookieDomain}']);";
				}	

				$script .= "_gaq.push(['_trackPageview']);";            

				JFactory::getDocument()->addScriptDeclaration($script);
			}
		}	
	}


	public function onAfterRender()
	{
		$app = JFactory::getApplication();
		if( $app->isAdmin() || JDEBUG )
			return;

		$params = $this->getParams();

		$script	= "\n\n<script type=\"text/javascript\">";

		if ($params->classicModeEnabled && $this->isCookiesAllowed()) {

			// If there is Standard analytics
			$script .=
				"(function() {".
				"var ga = document.createElement('script');     ga.type = 'text/javascript'; ga.async = true;".
				"ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';".
				"var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);".
				"})();";
		}
			
		if ($params->universalModeEnabled) {

			if ($this->isCookiesAllowed()) {
				$script .= 
					"(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){".
					"(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),".
					"m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)".
					"})(window,document,'script','//www.google-analytics.com/analytics.js','_pixGAnalytics');".
					"_pixGAnalytics('create', '{$params->universalAccountId}', {cookieDomain: '{$params->universalCookieDomain}'});".
					"_pixGAnalytics('send', 'pageview');";
					
			} else if ($params->ipAsClientId) {
				
				$script .= 
					"(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){".
					"(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),".
					"m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)".
					"})(window,document,'script','//www.google-analytics.com/analytics.js','_pixGAnalytics');".
					"_pixGAnalytics('create', '{$params->universalAccountId}', {cookieDomain: '{$params->universalCookieDomain}', 'storage': 'none', clientId:'{$this->getClientId()}'});".
					"_pixGAnalytics('send', 'pageview');";
			}
		}    
            
		$script .= "</script>\n";
		
		$out = JResponse::getBody();
		$out = $this->str_lreplace( '</body>', $script.'</body>', $out );
		JResponse::setBody( $out );
	}

	private function str_lreplace($search, $replace, $subject)
	{
		return preg_replace('~(.*)' . preg_quote($search, '~') . '~', '$1' . $replace, $subject, 1);
	}

	private function isCookiesAllowed()
	{
		if (JLoader::import('modules.mod_pixcookies_restrict.helper', JPATH_ROOT)){
			return ModPixCookiesRestrictHelper::isCookiesAllowed();
		}
		return true;
	}
	
	/**
	 * Normalizes params and returns it.
	 * Set defaults if param is not set.
	 */
	private function getParams() 
	{
		$params = new stdClass();
		
		// Name should be the same as in prev versions
		$params->classicAccountId = trim($this->params->get( 'account_id', '' ));
		
		$params->universalAccountId = trim($this->params->get( 'universal_account_id', '' ));

		// Is classic analytics turned on?
		// Default to YES. Because this settings was absent in prev versions.
		$params->classicModeEnabled = $this->params->get( 'classic_mode_enabled', '1' ) == '1';

		// Default is OFF
		$params->universalModeEnabled = $this->params->get( 'universal_mode_enabled', '0' ) == '1';

		// Is enchanced attribution on? Default is OFF.
		$params->enchancedAttributionEnabled = $this->params->get( 'enchanced_attribution_enabled', '0' ) == '1';

		// If there is Universal analytics
		$arr = explode('.', $_SERVER['HTTP_HOST']);
		$topLevelDomain = $arr[count($arr)-2].'.'.$arr[count($arr)-1]; 
		
		// Is enchanced attribution on? Default is OFF.
		$params->classicCookieDomain = trim($this->params->get( 'classic_cookie_domain', '' ));
		if ($params->classicCookieDomain == '') {
			$params->classicCookieDomain = null;
		}
		
		$params->universalCookieDomain = trim($this->params->get( 'universal_cookie_domain', '' ));
		if ($params->universalCookieDomain == '') {
			$params->universalCookieDomain = $topLevelDomain;
		}

		$params->ipAsClientId = $this->params->get( 'ip_as_clientid', '0' ) == '1';
		
		return $params;
	}
	
	function getClientId() 
	{
		return md5(
			(!empty($_SERVER['REMOTE_ADDR'])? $_SERVER['REMOTE_ADDR']:'') . 
			(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])? $_SERVER['HTTP_X_FORWARDED_FOR']:'') .
			(!empty($_SERVER['HTTP_USER_AGENT'])? $_SERVER['HTTP_USER_AGENT']:'')
		);
		
	} 

}

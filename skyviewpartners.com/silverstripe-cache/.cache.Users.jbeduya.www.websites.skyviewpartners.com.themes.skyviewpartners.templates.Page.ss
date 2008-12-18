<?php $val .= <<<SSVIEWER

<head>
	<base href="
SSVIEWER;
$val .=  Director::absoluteBaseURL(); ;
 $val .= <<<SSVIEWER
" />
	
SSVIEWER;
$val .=  $item->XML_val("MetaTags",null,true) ;
 $val .= <<<SSVIEWER

	<link rel="shortcut icon" href="/favicon.ico" />
	
	<link rel="stylesheet" href="
SSVIEWER;
$val .=  $item->XML_val("ThemeDir",null,true) ;
 $val .= <<<SSVIEWER
/css/extjs.css" type="text/css" charset="utf-8">
	<link rel="stylesheet" href="http://extjs.com/deploy/dev/resources/css/core.css" type="text/css" media="screen" title="no title" charset="utf-8">
	<link rel="stylesheet" href="
SSVIEWER;
$val .=  $item->XML_val("ThemeDir",null,true) ;
 $val .= <<<SSVIEWER
/css/layout.css" type="text/css" charset="utf-8">
	<link rel="stylesheet" href="
SSVIEWER;
$val .=  $item->XML_val("ThemeDir",null,true) ;
 $val .= <<<SSVIEWER
/css/typography.css" type="text/css" charset="utf-8">
	
	<!--[if IE 6]>
		<style type="text/css">
		 @import url(themes/blackcandy/css/ie6.css);
		</style> 
	<![endif]-->
	
	<!--[if IE 7]>
		<style type="text/css">
		 @import url(themes/blackcandy/css/ie7.css);
		</style> 
	<![endif]-->
	
	<script src="
SSVIEWER;
$val .=  $item->XML_val("ThemeDir",null,true) ;
 $val .= <<<SSVIEWER
/javascripts/extjs.js" type="text/javascript" charset="utf-8"></script>
	<script src="
SSVIEWER;
$val .=  $item->XML_val("ThemeDir",null,true) ;
 $val .= <<<SSVIEWER
/javascripts/site.js" type="text/javascript" charset="utf-8"></script>
</head>

<body>
	<div id="container" class="main-pages">
		<table border="0" cellspacing="0" cellpadding="0" width="100%">
			<tr>
				<!-- SIDEBAR -->
				<td class="sidebar" id="sidebar">
					<div class="logo"><img src="
SSVIEWER;
$val .=  $item->XML_val("ThemeDir",null,true) ;
 $val .= <<<SSVIEWER
/images/logo.gif" /></div>
					
					<div class="slogan">
						<b>Leaders</b> in Policy Compliance Software and Services
					</div>
					
					<img src="
SSVIEWER;
$val .=  $item->XML_val("ThemeDir",null,true) ;
 $val .= <<<SSVIEWER
/images/m-sidebar-separator.gif" /><br />
					
					<div id="sidebar-products">
						<div id="sidebar-products-title">SkyView Products</div>
						
						<div class="sidebar-products-item"><a href="products-policy-minder">Policy Minder</a></div>
						<div class="sidebar-products-item">Risk Assessor</div>
						<div class="sidebar-products-item">Complimentary Products</div>
					</div>
					
					<img src="
SSVIEWER;
$val .=  $item->XML_val("ThemeDir",null,true) ;
 $val .= <<<SSVIEWER
/images/m-sidebar-separator2.gif" /><br />
					
					<div class="sidebar-links">
	
	<div class="sidebar-links-title green">Resources</div>

	<div class="sidebar-links-item">Sign up for a Webinar</div>
	<div class="sidebar-links-item">Request a 30-day FREE Trial</div>
	<div class="sidebar-links-item">Read the Fact Sheet</div>
	<div class="sidebar-links-item">Read about the many uses of Policy Minder</div>
	<div class="sidebar-links-item">Read about What's New in the Latest Release</div>
	<div class="sidebar-links-item">Watch an Introductory Video</div>
	
	<!-- ----- -->
	
	<div class="sidebar-links-title">Case Studies</div>
	
	<div class="sidebar-links-item">How Policy Minder helps Quixtar with Compliance</div>
	<div class="sidebar-links-item">SOX Compliance Case Study</div>
	
	<!-- ----- -->
	
	<div class="sidebar-links-title">White Papers</div>
	
	<div class="sidebar-links-item">Request a copy of Carol Woodbury's Handbook - <i>Compliance without the Complexities</i></div>
	
</div>
					
 					
				</td>
				<!-- END OF SIDEBAR -->
				
				<td class="content">
					<div class="content-topbar">
						<div id="hd">
							<div id="hd-holder">
								

SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Menu", array("1"))) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER
	  
	<a href="
SSVIEWER;
$val .=  $item->XML_val("Link",null,true) ;
 $val .= <<<SSVIEWER
" id="
SSVIEWER;
$val .=  $item->XML_val("MenuTitle",null,true) ;
 $val .= <<<SSVIEWER
-link" class="
SSVIEWER;
$val .=  $item->XML_val("LinkingMode",null,true) ;
 $val .= <<<SSVIEWER
"><span>
SSVIEWER;
$val .=  $item->XML_val("MenuTitle",null,true) ;
 $val .= <<<SSVIEWER
</span></a>
 
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER


							</div>
						</div>
					</div>
					
					<div class="context">
						
SSVIEWER;
$val .=  $item->XML_val("Layout",null,true) ;
 $val .= <<<SSVIEWER

					</div>
				</td>
			</tr>
		</table>
		
		<div id="footer-separator">
			

SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Menu", array("1"))) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER
	  
	<a href="
SSVIEWER;
$val .=  $item->XML_val("Link",null,true) ;
 $val .= <<<SSVIEWER
" id="
SSVIEWER;
$val .=  $item->XML_val("MenuTitle",null,true) ;
 $val .= <<<SSVIEWER
-link" class="
SSVIEWER;
$val .=  $item->XML_val("LinkingMode",null,true) ;
 $val .= <<<SSVIEWER
"><span>
SSVIEWER;
$val .=  $item->XML_val("MenuTitle",null,true) ;
 $val .= <<<SSVIEWER
</span></a>
 
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER


		</div>
		
		<div id="footer-businesspartner">
			<div class="footer-businesspartner-text">
				<div class="footer-businesspartner-header">
					SkyView Partners is an IBM Advanced Business Partner.
				</div>
				The IBM and the Business Partner emblem are trademarks of International Business Machines Corporation in the United States, other countries, or both.
			</div>
		</div>
		
		
		<div id="Products-menu" class="flyout-menu" style="display: none;">
			<a href="products-policy-minder">Policy Minder</a> <br />
			<a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? Convert::raw2att( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#">Risk Assessor</a> <br />
			<a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? Convert::raw2att( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#">Policy Minder Real Time</a>
		</div>
		
		<div id="Services-menu" class="flyout-menu" style="display: none;">
			<a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? Convert::raw2att( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#">Security Check-up</a> <br />
			<a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? Convert::raw2att( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#">Remediation Services</a>
		</div>
		
		<div id="Downloads-menu" class="flyout-menu" style="display: none;">
			<a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? Convert::raw2att( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#">Login</a> <br />
			<a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? Convert::raw2att( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#">Download Registration</a>
		</div>
		
		<div id="Support-menu" class="flyout-menu" style="display: none;">
			<a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? Convert::raw2att( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#">Login &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</a>
		</div>
		
		<div id="Information-menu" class="flyout-menu" style="display: none;">
			<a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? Convert::raw2att( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#">Security Information</a> <br />
			<a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? Convert::raw2att( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#">Laws and Regulations</a>
		</div>
		
		<div id="About Us-menu" class="flyout-menu" style="display: none;">
			<a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? Convert::raw2att( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#">Business Partners</a> <br />
			<a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? Convert::raw2att( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#">Mission Statement</a> <br />
			<a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? Convert::raw2att( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#">Privacy Policy</a>
		</div>
	</div>
<body
</html>
SSVIEWER;
 ?>

<head>
	<% base_tag %>
	$MetaTags
	<link rel="shortcut icon" href="/favicon.ico" />
	
	<link rel="stylesheet" href="$ThemeDir/css/extjs.css" type="text/css" charset="utf-8">
	<link rel="stylesheet" href="http://extjs.com/deploy/dev/resources/css/core.css" type="text/css" media="screen" title="no title" charset="utf-8">
	<link rel="stylesheet" href="$ThemeDir/css/layout.css" type="text/css" charset="utf-8">
	<link rel="stylesheet" href="$ThemeDir/css/typography.css" type="text/css" charset="utf-8">
	
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
	
	<script src="$ThemeDir/javascripts/extjs.js" type="text/javascript" charset="utf-8"></script>
	<script src="$ThemeDir/javascripts/site.js" type="text/javascript" charset="utf-8"></script>
</head>

<body>
	<div id="container">
		<table border="0" cellspacing="0" cellpadding="0" width="100%">
			<tr>
				<!-- SIDEBAR -->
				<td class="sidebar" id="sidebar">
					<div class="logo"><a href="home"><img src="$ThemeDir/images/logo.gif" /></a></div>
					
					<div class="slogan">
						<b>Leaders</b> in Policy Compliance Software and Services
					</div>
					
					<img src="$ThemeDir/images/sidebar-separator.gif" /><br />
					
					<div id="sidebar-products">
						<div id="sidebar-products-title">SkyView Products</div>
						
						<div class="sidebar-products-item"><a href="products-policy-minder">Policy Minder</a></div>
						<div class="sidebar-products-item">Risk Assessor</div>
						<div class="sidebar-products-item">Complimentary Products</div>
					</div>
					
					<img src="$ThemeDir/images/sidebar-separator2.gif" /><br />
					
					<% include SidebarMenu %>
					
 					
				</td>
				<!-- END OF SIDEBAR -->
				
				<td class="content">
					<div class="content-topbar">
						<div id="hd">
							<div id="hd-holder">
								<% include Navigation %>
							</div>
						</div>
					</div>
					
					<div class="content-ads">
						<div class="content-ads-title">
							Policy Minder <br /> Saves Time Resulting in <br /> a Measurable ROI
						</div>
						
						<div class="content-ads-quote">
							
							<div class="content-ads-quote-icon"><img src="$ThemeDir/images/icon-pm.png" /></div>
							
							When you factor the complicated and costly task of maintaining
							and providing compliance, SkyView Policy Minder for i5/os and
							IBM i is the only security policy compliance management tool
							that equates to a measurable ROI in actual time saved. <a href="#">READ MORE>></a>
						</div>
					</div>
					
					<div class="content-feedback">
						<div class="content-feedback-text">
							<div class="content-feedback-open">
								<div class="content-feedback-close">
									The level of detail covered by Policy Minder is impressive. The ability to check
									compliance is great, but the fact that you can, for example, create a template
									for user profile settings and see who has more authority than they should, or
									create a library and file policy template and see whether these files are secured
									appropriately, or discover newly created profiles, libraries and files, makes this a
									tool that you quickly begin to rely on from a systems management point of view.
								</div>
								<div class="content-feedback-author">
									- Brian Hole Manager, iSeries Technology <br />
									Les Schwab Tire Company
								</div>
							</div>
						</div>
					</div>
				</td>
			</tr>
		</table>
		
		<div id="footer-separator">
			<% include Navigation %>
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
			<a href="#">Risk Assessor</a> <br />
			<a href="#">Policy Minder Real Time</a>
		</div>
		
		<div id="Services-menu" class="flyout-menu" style="display: none;">
			<a href="#">Security Check-up</a> <br />
			<a href="#">Remediation Services</a>
		</div>
		
		<div id="Downloads-menu" class="flyout-menu" style="display: none;">
			<a href="#">Login</a> <br />
			<a href="#">Download Registration</a>
		</div>
		
		<div id="Support-menu" class="flyout-menu" style="display: none;">
			<a href="#">Login &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</a>
		</div>
		
		<div id="Information-menu" class="flyout-menu" style="display: none;">
			<a href="#">Security Information</a> <br />
			<a href="#">Laws and Regulations</a>
		</div>
		
		<div id="About Us-menu" class="flyout-menu" style="display: none;">
			<a href="#">Business Partners</a> <br />
			<a href="#">Mission Statement</a> <br />
			<a href="#">Privacy Policy</a>
		</div>
	</div>
<body
</html>
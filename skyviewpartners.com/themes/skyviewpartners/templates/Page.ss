
<head>
	<% base_tag %>
	$MetaTags
	<link rel="shortcut icon" href="/favicon.ico" />
	
	<link rel="stylesheet" href="$ThemeDir/css/extjs.css" type="text/css" charset="utf-8">
	<link rel="stylesheet" href="http://extjs.com/deploy/dev/resources/css/core.css" type="text/css" media="screen" title="no title" charset="utf-8">
	
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
	<div id="container" class="main-pages">
		<table border="0" cellspacing="0" cellpadding="0" width="100%">
			<tr>
				<!-- SIDEBAR -->
				<td class="sidebar" id="sidebar">
					<div class="logo"><a href="home"><img src="$ThemeDir/images/logo.gif" /></a></div>
					
					<div class="slogan">
						<b>Leaders</b> in Policy Compliance Software and Services
					</div>
					
					<img src="$ThemeDir/images/m-sidebar-separator.gif" /><br />
					
					<% include SidebarProducts %>
					
					<img src="$ThemeDir/images/m-sidebar-separator2.gif" /><br />
					
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
					
					<div class="context">
						$Layout
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
		
		<% include FlyoutMenu %>
		
	</div>
<body
</html>
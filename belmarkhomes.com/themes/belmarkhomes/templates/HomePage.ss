<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" >

  <head>
		<% base_tag %>
		$MetaTags
		<link rel="shortcut icon" href="/favicon.ico" />
		
		<!--[if IE 6]>
			<style type="text/css">
			 @import url(themes/belmarkhomes/css/ie6.css);
			</style> 
		<![endif]-->
		
		<!--[if IE 7]>
			<style type="text/css">
			 @import url(themes/belmarkhomes/css/ie7.css);
			</style> 
		<![endif]-->
	</head>
<body>

<div id="container">
	<% include MenuHeader %>
	
	<div id="middle">
	<% if FlashUrl %>
		<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" width="975" height="316" id="home-slideshow" align="middle">
			<param name="allowFullScreen" value="false" />
			<param name="movie" value="$FlashUrl" />
			<param name="quality" value="high" />
			<param name="loop" value="true" />
			<param name="bgcolor" value="#ffffff" />
			<param name="wmode" value="transparent" />	
			<embed src="$FlashUrl" quality="high" loop="true" bgcolor="#ffffff" wmode="transparent" width="975" height="316" name="home-slideshow" align="middle" allowFullScreen="false" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />
		</object>
	<% else %>
		<img src="$ThemeDir/images/temp.gif" width="975" height="316" />
	<% end_if %>
	</div>
	
	<% include Bottom %>
	
	<% include HomePageFooter %>
	
</div>

</body>
</html>
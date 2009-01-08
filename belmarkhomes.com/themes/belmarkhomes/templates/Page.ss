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
	
	<% include MenuBar %>	
	
	<div id="middle">
		<% include TestimonyLink %>
		$Layout
	</div>
	
	<% include HomePageFooter %>
	
</div>

</body>
</html>
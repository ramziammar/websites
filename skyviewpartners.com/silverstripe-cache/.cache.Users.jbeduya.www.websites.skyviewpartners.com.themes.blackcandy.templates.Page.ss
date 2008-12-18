<?php $val .= <<<SSVIEWER
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" >

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
	</head>
<body>
<div id="BgContainer">
	<div id="Container">
		<div id="Header">
	   		<h1>Your Site Name</h1>
	    	<p>your site&#39;s tagline here</p>
		</div>
		
		<div id="Navigation">
			<ul>
 	
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Menu", array("1"))) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER
	  
  		<li><a href="
SSVIEWER;
$val .=  $item->XML_val("Link",null,true) ;
 $val .= <<<SSVIEWER
" title="Go to the 
SSVIEWER;
$val .=  $item->obj("Title",null,true)->XML_val("XML",null,true) ;
 $val .= <<<SSVIEWER
 page" class="
SSVIEWER;
$val .=  $item->XML_val("LinkingMode",null,true) ;
 $val .= <<<SSVIEWER
"><span>
SSVIEWER;
$val .=  $item->XML_val("MenuTitle",null,true) ;
 $val .= <<<SSVIEWER
</span></a></li>
   	
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

 </ul>
	  	</div>
	  	
	  	<div class="clear"><!-- --></div>
		
		<div id="Layout">
		  
SSVIEWER;
$val .=  $item->XML_val("Layout",null,true) ;
 $val .= <<<SSVIEWER

		</div>
		
	   <div class="clear"><!-- --></div>
	</div>
	<div id="Footer">
		<div class="footerTop">
	<!-- -->
</div>
<p>Copyright &copy; 2007-2008 | Powered by <a href="http://www.silverstripe.com" title="This site runs on the SilverStripe CMS">SilverStripe Open Source CMS</a></p>

	</div> 
</div>

</body>
</html>
SSVIEWER;
 ?>
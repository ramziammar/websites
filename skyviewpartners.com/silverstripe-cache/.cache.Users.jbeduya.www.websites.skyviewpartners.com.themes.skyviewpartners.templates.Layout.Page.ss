<?php $val .= <<<SSVIEWER
<div class="typography">
			
	
SSVIEWER;
 if($item->hasValue("Level",array("2"))) {  ;
 $val .= <<<SSVIEWER

	  	
SSVIEWER;
 if($item->hasValue("Level",array("1"))) {  ;
 $val .= <<<SSVIEWER

	<div id="Breadcrumbs">
	   	<p>Home » 
SSVIEWER;
$val .=  $item->XML_val("Breadcrumbs",null,true) ;
 $val .= <<<SSVIEWER
</p>
	</div>

SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

	
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

	
		
SSVIEWER;
$val .=  $item->XML_val("Content",null,true) ;
 $val .= <<<SSVIEWER

		
SSVIEWER;
$val .=  $item->XML_val("Form",null,true) ;
 $val .= <<<SSVIEWER

		
SSVIEWER;
$val .=  $item->XML_val("PageComments",null,true) ;
 $val .= <<<SSVIEWER

	
</div>

	
	
	
SSVIEWER;
 ?>
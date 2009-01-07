<?php $val .= <<<SSVIEWER
<div class="typography">
	
SSVIEWER;
 if($item->hasValue("Menu",array("2"))) {  ;
 $val .= <<<SSVIEWER

		<div id="Sidebar" class="typography">
	<div class="sidebarBox">
 		<h3>
			
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Level", array("1"))) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

				
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER

			
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

  		</h3>
  		
  		<ul id="Menu2">
		  	
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Menu", array("2"))) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

  	    		
SSVIEWER;
 if($item->hasValue("Children")) {  ;
 $val .= <<<SSVIEWER

			  	    <li class="
SSVIEWER;
$val .=  $item->XML_val("LinkingMode",null,true) ;
 $val .= <<<SSVIEWER
"><a href="
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
 levela"><span><em>
SSVIEWER;
$val .=  $item->XML_val("MenuTitle",null,true) ;
 $val .= <<<SSVIEWER
</em></span></a>
	  	    	
SSVIEWER;
 } else { ;
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
 levela"><span><em>
SSVIEWER;
$val .=  $item->XML_val("MenuTitle",null,true) ;
 $val .= <<<SSVIEWER
</em></span></a>
				
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER
	  
	  		
	  			
SSVIEWER;
 if($item->XML_val("LinkOrSection",null,true) == "section") {  ;
 $val .= <<<SSVIEWER

	  				
SSVIEWER;
 if($item->hasValue("Children")) {  ;
 $val .= <<<SSVIEWER

						<ul class="sub">
							<li>
				 				<ul>
								 	<span class="roundWhite">
								  	
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Children")) foreach($loop as $key => $item) { ;
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
 levelb"><span><em>
SSVIEWER;
$val .=  $item->XML_val("MenuTitle",null,true) ;
 $val .= <<<SSVIEWER
</em></span></a></li>
 				 					
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

 				 					</span>
			 				 	</ul>
			 				 </li>
					  	</ul>
			 		 
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

				
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER
 
			</li> 
  			
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

  		</ul>
		<div class="clear"></div>
		</div>
	<div class="sidebarBottom"></div>
</div>
  
		<div id="Content">
	
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

			
	
SSVIEWER;
 if($item->hasValue("Level",array("2"))) {  ;
 $val .= <<<SSVIEWER

	  	
SSVIEWER;
 if($item->hasValue("Level",array("2"))) {  ;
 $val .= <<<SSVIEWER

	<div id="Breadcrumbs">
	   	<p>
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

	
		<h2>
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER
</h2>
	
		
SSVIEWER;
$val .=  $item->XML_val("Content",null,true) ;
 $val .= <<<SSVIEWER

		
SSVIEWER;
$val .=  $item->XML_val("Form",null,true) ;
 $val .= <<<SSVIEWER

		
SSVIEWER;
$val .=  $item->XML_val("PageComments",null,true) ;
 $val .= <<<SSVIEWER

	
	
SSVIEWER;
 if($item->hasValue("Menu",array("2"))) {  ;
 $val .= <<<SSVIEWER

		</div>
	
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

</div>

	
	
	
SSVIEWER;
 ?>
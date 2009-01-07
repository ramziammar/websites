<?php $val .= <<<SSVIEWER
<div id="
SSVIEWER;
$val .=  $item->XML_val("Name",null,true) ;
 $val .= <<<SSVIEWER
" class="
SSVIEWER;
$val .=  $item->XML_val("Type",null,true) ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("extraClass",null,true) ;
 $val .= <<<SSVIEWER
">	
	<h
SSVIEWER;
$val .=  $item->XML_val("HeadingLevel",null,true) ;
 $val .= <<<SSVIEWER
 style="cursor: pointer;" class="trigger
SSVIEWER;
$val .=  $item->XML_val("ClosedClass",null,true) ;
 $val .= <<<SSVIEWER
">
		<img class="triggerClosed" src="sapphire/images/toggle-closed.gif" alt="+" style="display:none;" title="
SSVIEWER;
$val .=  _t('ToggleCompositeField.ss.SHOW', 'Show') ;
 $val .= <<<SSVIEWER
" />
		<img class="triggerOpened" src="sapphire/images/toggle-open.gif" alt="-" style="display:none;" title="
SSVIEWER;
$val .=  _t('ToggleCompositeField.ss.HIDE', 'Hide') ;
 $val .= <<<SSVIEWER
" /> 
		
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER

	</h
SSVIEWER;
$val .=  $item->XML_val("HeadingLevel",null,true) ;
 $val .= <<<SSVIEWER
>
	<div class="contentMore">
	
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("FieldSet")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

	
SSVIEWER;
$val .=  $item->XML_val("FieldHolder",null,true) ;
 $val .= <<<SSVIEWER

	
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

	</div>
</div>
SSVIEWER;
 ?>
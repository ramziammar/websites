<?php $val .= <<<SSVIEWER


SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("EditorToolbar")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

<div class="mceToolbarExternal" id="mce_editor_toolbar">
<table width="100%" border="0">
<tbody>
<tr>
<td>
<!--
<a title="Jump to tool buttons - Alt+Q, Jump to editor - Alt-Z, Jump to element path - Alt-X" accesskey="q" href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? Convert::raw2att( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#">
</a>
-->


SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Buttons")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

	
SSVIEWER;
 if($item->XML_val("Type",null,true) == "button") {  ;
 $val .= <<<SSVIEWER

	<a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? Convert::raw2att( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#
SSVIEWER;
$val .=  $item->XML_val("Command",null,true) ;
 $val .= <<<SSVIEWER
">
	<img width="20" height="20" class="mceButtonNormal" title="
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER
" alt="
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER
" src="
SSVIEWER;
$val .=  $item->XML_val("Icon",null,true) ;
 $val .= <<<SSVIEWER
" id="mce_editor_
SSVIEWER;
$val .=  $item->XML_val("IDSegment",null,true) ;
 $val .= <<<SSVIEWER
" />
	</a>
	
SSVIEWER;
 } else if($item->XML_val("Type",null,true) == "dropdown") {  ;
 $val .= <<<SSVIEWER

	<select name="
SSVIEWER;
$val .=  $item->XML_val("Command",null,true) ;
 $val .= <<<SSVIEWER
" class="mceSelectList" id="mce_editor_
SSVIEWER;
$val .=  $item->XML_val("IDSegment",null,true) ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  $item->XML_val("Options",null,true) ;
 $val .= <<<SSVIEWER
</select>
	
SSVIEWER;
 } else if($item->XML_val("Type",null,true) == "separator") {  ;
 $val .= <<<SSVIEWER

	<img width="1" height="15" class="mceSeparatorLine" src="jsparty/tiny_mce2/themes/advanced/images/spacer.gif" alt="|" />
	
SSVIEWER;
 } else if($item->XML_val("Type",null,true) == "break") {  ;
 $val .= <<<SSVIEWER

	<br />
	
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER


SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER


<br />
<!--<a onfocus="tinyMCE.getInstanceById('mce_editor_0').getWin().focus();" accesskey="z" href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? Convert::raw2att( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#">
</a>-->
</td>
</tr>
</tbody>
</table>
</div>


SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER



<span id="Translating_Message" class="translatingMessage 
SSVIEWER;
 if($item->hasValue("EditingLang")) {  ;
 $val .= <<<SSVIEWER

SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER
nonTranslating
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER
"></span>

<div id="form_actions_right" class="ajaxActions">
</div>

<form class="actionparams" id="action_submit_options" style="display:none" action="admin/submit">
	<fieldset>
	<input type="hidden" name="ID" />
	<div class="field" id="action_submit_options_recipient">
		<label class="left">
SSVIEWER;
$val .=  _t('CMSMain_right.ss.SENDTO','Send to') ;
 $val .= <<<SSVIEWER
</label>
		<span>
SSVIEWER;
$val .=  _t('CMSMain_right.ss.LOADING','loading...') ;
 $val .= <<<SSVIEWER
</span>
	</div>
	<div class="field" id="action_submit_options_status">
		<label class="left">
SSVIEWER;
$val .=  _t('CMSMain_right.ss.STATUS','Status') ;
 $val .= <<<SSVIEWER
</label>
		<input type="hidden" name="Status" />
		<span></span>
	</div>
	<p class="label">
SSVIEWER;
$val .=  _t('CMSMain_right.ss.ANYMESSAGE','Do you have any message for your editor?') ;
 $val .= <<<SSVIEWER
</p>
	<textarea name="
SSVIEWER;
$val .=  _t('CMSMain_right.ss.MESSAGE','Message') ;
 $val .= <<<SSVIEWER
" rows="4" cols="20"></textarea>
	</fieldset>
	
	<p class="actions">
		<input type="submit" value="
SSVIEWER;
$val .=  _t('CMSMain_right.ss.SUBMIT','Submit for approval') ;
 $val .= <<<SSVIEWER
" />
	</p>
</form>


SSVIEWER;
 if($item->hasValue("EditForm")) {  ;
 $val .= <<<SSVIEWER

	
SSVIEWER;
$val .=  $item->XML_val("EditForm",null,true) ;
 $val .= <<<SSVIEWER


SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

	<form id="Form_EditForm" action="admin?executeForm=EditForm" method="post" enctype="multipart/form-data">
		<h1>
SSVIEWER;
$val .=  $item->XML_val("ApplicationName",null,true) ;
 $val .= <<<SSVIEWER
</h1>

		<p>
SSVIEWER;
$val .=  _t('CMSMain_right.ss.WELCOMETO','Welcome to') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("ApplicationName",null,true) ;
 $val .= <<<SSVIEWER
! 
SSVIEWER;
$val .=  _t('CMSMain_right.ss.CHOOSEPAGE','Please choose a page from the left.') ;
 $val .= <<<SSVIEWER
</p>
	</form>

SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER


<p id="statusMessage" style="visibility:hidden"></p>

SSVIEWER;
 ?>
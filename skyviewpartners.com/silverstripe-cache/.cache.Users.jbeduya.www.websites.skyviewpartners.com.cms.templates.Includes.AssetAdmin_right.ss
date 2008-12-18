<?php $val .= <<<SSVIEWER
<div id="form_actions_right" class="ajaxActions">
</div>

<!--
<form class="actionparams" id="action_movemarked_options" style="display:none" action="admin/assets/movemarked">
	<fieldset>
	<input type="hidden" name="ID" />
	<div class="field">
		<label class="left">Move files to</label>
		
SSVIEWER;
$val .=  $item->XML_val("ChooseFolderField",null,true) ;
 $val .= <<<SSVIEWER

	</div>
	</fieldset>
	
	<p class="actions">
		<input type="submit" value="Move marked files" />
	</p>
</form>
-->


SSVIEWER;
 if($item->hasValue("EditForm")) {  ;
 $val .= <<<SSVIEWER

	
SSVIEWER;
$val .=  $item->XML_val("EditForm",null,true) ;
 $val .= <<<SSVIEWER


SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

	<form id="Form_EditForm" action="admin/assets/?executeForm=EditForm" method="post" enctype="multipart/form-data">
		<h1>
SSVIEWER;
$val .=  $item->XML_val("ApplicationName",null,true) ;
 $val .= <<<SSVIEWER
</h1>

		<p>
SSVIEWER;
$val .=  _t('AssetAdmin_right.ss.WELCOME','Welcome to') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("ApplicationName",null,true) ;
 $val .= <<<SSVIEWER
! 
SSVIEWER;
$val .=  _t('AssetAdmin_right.ss.CHOOSEPAGE','Please choose a page from the left.') ;
 $val .= <<<SSVIEWER
</p>
	</form>

SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER


<p id="statusMessage" style="visibility:hidden"></p>

SSVIEWER;
 ?>
<?php $val .= <<<SSVIEWER
<div id="
SSVIEWER;
$val .=  $item->XML_val("id",null,true) ;
 $val .= <<<SSVIEWER
" class="
SSVIEWER;
$val .=  $item->XML_val("Classes",null,true) ;
 $val .= <<<SSVIEWER
">
	
SSVIEWER;
 if($item->hasValue("ShowPagination")) {  ;
 $val .= <<<SSVIEWER

	<div class="PageControls">
		
SSVIEWER;
 if($item->hasValue("LastLink")) {  ;
 $val .= <<<SSVIEWER
<a class="Last" href="
SSVIEWER;
$val .=  $item->XML_val("LastLink",null,true) ;
 $val .= <<<SSVIEWER
" title="
SSVIEWER;
$val .=  _t('AssetTableField.ss.VIEWLAST', 'View last') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("PageSize",null,true) ;
 $val .= <<<SSVIEWER
"><img src="cms/images/pagination/record-last.png" alt="
SSVIEWER;
$val .=  _t('AssetTableField.ss.VIEWLAST', 'View last') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("PageSize",null,true) ;
 $val .= <<<SSVIEWER
" /></a>
		
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER
<span class="Last"><img src="cms/images/pagination/record-last-g.png" alt="
SSVIEWER;
$val .=  _t('AssetTableField.ss.VIEWLAST', 'View last') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("PageSize",null,true) ;
 $val .= <<<SSVIEWER
" /></span>
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

		
SSVIEWER;
 if($item->hasValue("FirstLink")) {  ;
 $val .= <<<SSVIEWER
<a class="First" href="
SSVIEWER;
$val .=  $item->XML_val("FirstLink",null,true) ;
 $val .= <<<SSVIEWER
" title="
SSVIEWER;
$val .=  _t('AssetTableField.ss.VIEWFIRST', 'View first') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("PageSize",null,true) ;
 $val .= <<<SSVIEWER
"><img src="cms/images/pagination/record-first.png" alt="
SSVIEWER;
$val .=  _t('AssetTableField.ss.VIEWFIRST', 'View first') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("PageSize",null,true) ;
 $val .= <<<SSVIEWER
" /></a>
		
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER
<span class="First"><img  src="cms/images/pagination/record-first-g.png" alt="
SSVIEWER;
$val .=  _t('AssetTableField.ss.VIEWFIRST', 'View first') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("PageSize",null,true) ;
 $val .= <<<SSVIEWER
" /></span>
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

		
SSVIEWER;
 if($item->hasValue("PrevLink")) {  ;
 $val .= <<<SSVIEWER
<a class="Prev" href="
SSVIEWER;
$val .=  $item->XML_val("PrevLink",null,true) ;
 $val .= <<<SSVIEWER
" title="
SSVIEWER;
$val .=  _t('AssetTableField.ss.VIEWPREVIOUS', 'View previous') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("PageSize",null,true) ;
 $val .= <<<SSVIEWER
"><img src="cms/images/pagination/record-prev.png" alt="
SSVIEWER;
$val .=  _t('AssetTableField.ss.VIEWPREVIOUS', 'View previous') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("PageSize",null,true) ;
 $val .= <<<SSVIEWER
" /></a>
		
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER
<img class="Prev" src="cms/images/pagination/record-prev-g.png" alt="
SSVIEWER;
$val .=  _t('AssetTableField.ss.VIEWPREVIOUS', 'View previous') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("PageSize",null,true) ;
 $val .= <<<SSVIEWER
" />
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

		<span class="Count">
			
SSVIEWER;
$val .=  _t('AssetTableField.ss.DISPLAYING', 'Displaying') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("FirstItem",null,true) ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  _t('AssetTableField.ss.TO', 'to') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("LastItem",null,true) ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  _t('AssetTableField.ss.OF', 'of') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("TotalCount",null,true) ;
 $val .= <<<SSVIEWER

		</span>
		
SSVIEWER;
 if($item->hasValue("NextLink")) {  ;
 $val .= <<<SSVIEWER
<a class="Next" href="
SSVIEWER;
$val .=  $item->XML_val("NextLink",null,true) ;
 $val .= <<<SSVIEWER
" title="
SSVIEWER;
$val .=  _t('AssetTableField.ss.VIEWNEXT', 'View next') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("PageSize",null,true) ;
 $val .= <<<SSVIEWER
"><img src="cms/images/pagination/record-next.png" alt="
SSVIEWER;
$val .=  _t('AssetTableField.ss.VIEWNEXT', 'View next') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("PageSize",null,true) ;
 $val .= <<<SSVIEWER
" /></a>
		
SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER
<img class="Next" src="cms/images/pagination/record-next-g.png" alt="
SSVIEWER;
$val .=  _t('AssetTableField.ss.VIEWNEXT', 'View next') ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("PageSize",null,true) ;
 $val .= <<<SSVIEWER
" />
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

	</div>

SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

	<table class="data">
		<thead>
			<tr>
				
SSVIEWER;
 if($item->hasValue("Markable")) {  ;
 $val .= <<<SSVIEWER
<th width="36">&nbsp;</th>
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

				
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Headings")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

				<th class="
SSVIEWER;
$val .=  $item->XML_val("Name",null,true) ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER
</th>
				
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

				<th width="18">&nbsp;</th>
				
SSVIEWER;
 if($item->hasValue("Can",array("delete"))) {  ;
 $val .= <<<SSVIEWER
<th width="18">&nbsp;</th>
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

			</tr>
		</thead>
		<tbody>
			
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Items")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

				<tr id="record-
SSVIEWER;
$val .=  $item->obj("Parent",null,true)->XML_val("Name",null,true) ;
 $val .= <<<SSVIEWER
-
SSVIEWER;
$val .=  $item->XML_val("ID",null,true) ;
 $val .= <<<SSVIEWER
">
					
SSVIEWER;
 if($item->hasValue("Markable")) {  ;
 $val .= <<<SSVIEWER
<td width="36" class="markingcheckbox"><div class="dragfile" id="drag-
SSVIEWER;
$val .=  $item->obj("Parent",null,true)->XML_val("Name",null,true) ;
 $val .= <<<SSVIEWER
-
SSVIEWER;
$val .=  $item->XML_val("ID",null,true) ;
 $val .= <<<SSVIEWER
"><img id="drag-img-
SSVIEWER;
$val .=  $item->obj("Parent",null,true)->XML_val("Name",null,true) ;
 $val .= <<<SSVIEWER
-
SSVIEWER;
$val .=  $item->XML_val("ID",null,true) ;
 $val .= <<<SSVIEWER
" alt="Drag" title="
SSVIEWER;
$val .=  _t('AssetTableField.ss.DRAGTOFOLDER','Drag to folder on left to move file') ;
 $val .= <<<SSVIEWER
" src="sapphire/images/drag.gif" /></div> 
SSVIEWER;
$val .=  $item->XML_val("MarkingCheckbox",null,true) ;
 $val .= <<<SSVIEWER
</td>
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

					
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Fields")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

					<td>
SSVIEWER;
$val .=  $item->XML_val("Value",null,true) ;
 $val .= <<<SSVIEWER
</td>
					
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

					
SSVIEWER;
 if($item->hasValue("Can",array("show"))) {  ;
 $val .= <<<SSVIEWER

                        <td width="18">
                            <a class="popuplink showlink" href="
SSVIEWER;
$val .=  $item->XML_val("ShowLink",null,true) ;
 $val .= <<<SSVIEWER
" target="_blank" title="
SSVIEWER;
$val .=  _t('AssetTableField.ss.SHOW', 'Show asset') ;
 $val .= <<<SSVIEWER
"><img src="cms/images/show.png" alt="
SSVIEWER;
$val .=  _t('AssetTableField.ss.SHOW', 'Show asset') ;
 $val .= <<<SSVIEWER
" /></a>
                        </td>
                    
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

					
SSVIEWER;
 if($item->hasValue("Can",array("edit"))) {  ;
 $val .= <<<SSVIEWER

    					<td width="18">
    						<a class="popuplink editlink" href="
SSVIEWER;
$val .=  $item->XML_val("EditLink",null,true) ;
 $val .= <<<SSVIEWER
" target="_blank" title="
SSVIEWER;
$val .=  _t('AssetTableField.ss.EDIT', 'Edit asset') ;
 $val .= <<<SSVIEWER
"><img src="cms/images/edit.gif" alt="
SSVIEWER;
$val .=  _t('AssetTableField.ss.EDIT', 'Edit asset') ;
 $val .= <<<SSVIEWER
" /></a>
    					</td>
			        
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

			        
SSVIEWER;
 if($item->hasValue("Can",array("delete"))) {  ;
 $val .= <<<SSVIEWER

					<td width="18">
						<a class="deletelink" href="admin/assets/removefile/
SSVIEWER;
$val .=  $item->XML_val("ID",null,true) ;
 $val .= <<<SSVIEWER
" title="
SSVIEWER;
$val .=  _t('AssetTableField.ss.DELFILE', 'Delete this file') ;
 $val .= <<<SSVIEWER
"><img src="cms/images/delete.gif" alt="
SSVIEWER;
$val .=  _t('AssetTableField.ss.DELFILE', 'Delete this file') ;
 $val .= <<<SSVIEWER
" title="
SSVIEWER;
$val .=  _t('AssetTableField.ss.DELFILE','Delete this file') ;
 $val .= <<<SSVIEWER
" /></a>
					</td>
					
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

				</tr>
			
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

		</tbody>
	</table>
</div>
SSVIEWER;
 ?>
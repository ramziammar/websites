<?php $val .= <<<SSVIEWER
<!-- <div class="title"><div style="background-image : url(cms/images/panels/MySite.png)">My Site</div></div> -->

	<div id="treepanes">
		<h2 id="heading_sitetree" class="selected">
			<img id="sitetree_toggle_closed" src="sapphire/images/toggle-closed.gif" alt="+" style="display:none;" title="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.OPENBOX','click to open this box') ;
 $val .= <<<SSVIEWER
" />
			<img id="sitetree_toggle_open" src="sapphire/images/toggle-open.gif" alt="-" title="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.CLOSEBOX','click to close box') ;
 $val .= <<<SSVIEWER
" />
			
SSVIEWER;
$val .=  _t('CMSMain_left.ss.SITECONTENT TITLE','Site Content and Structure',PR_HIGH) ;
 $val .= <<<SSVIEWER

		</h2>
		<div id="sitetree_holder">

			<ul id="TreeActions">
				<li class="action" id="addpage"><button>
SSVIEWER;
$val .=  _t('CMSMain_left.ss.CREATE','Create',PR_HIGH) ;
 $val .= <<<SSVIEWER
</button></li>
				<li class="action" id="search"><button>
SSVIEWER;
$val .=  _t('CMSMain_left.ss.SEARCH','Search',PR_HIGH) ;
 $val .= <<<SSVIEWER
</button></li>
				<li class="action" id="batchactions"><button>
SSVIEWER;
$val .=  _t('CMSMain_left.ss.BATCHACTIONS','Batch Actions',PR_HIGH) ;
 $val .= <<<SSVIEWER
</button></li>
				<!-- <li class="action" id="duplicate"><a href="
SSVIEWER;
$val .=  SSViewer::$options['rewriteHashlinks'] ? Convert::raw2att( $_SERVER['REQUEST_URI'] ) : "" ;
 $val .= <<<SSVIEWER
#">Duplicate</a></li>
				Sam: this should be put into the Create area, I think, so we don't stuff up the layout -->
			</ul>
			<div style="clear:both;"></div>
			
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("AddPageOptionsForm")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

			<form class="actionparams" id="
SSVIEWER;
$val .=  $item->XML_val("FormName",null,true) ;
 $val .= <<<SSVIEWER
" style="display: none" action="
SSVIEWER;
$val .=  $item->XML_val("FormAction",null,true) ;
 $val .= <<<SSVIEWER
">
				
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("Fields")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

				
SSVIEWER;
$val .=  $item->XML_val("FieldHolder",null,true) ;
 $val .= <<<SSVIEWER

				
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

				<!--
				<div>
				<select name="Type">
					
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("PageTypes")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

					<option value="
SSVIEWER;
$val .=  $item->XML_val("ClassName",null,true) ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  $item->XML_val("AddAction",null,true) ;
 $val .= <<<SSVIEWER
</option>
					
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

				</select>
				<input type="hidden" name="ParentID" />
				</div>
				-->
				<div>
				<input class="action" type="submit" value="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.GO','Go') ;
 $val .= <<<SSVIEWER
" />
				</div>
			</form>
			
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

			<form class="actionparams" style="display: none" id="search_options" action="admin/filterSiteTree">
				<div>
				<input type="hidden" id="SiteTreeIsFiltered" value="0" />
				<input type="text" id="SiteTreeSearchTerm" name="SiteTreeSearchTerm" />
				<input type="submit" id="SiteTreeSearchButton" class="action" value="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.SEARCH') ;
 $val .= <<<SSVIEWER
" title="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.SEARCHTITLE','Search through URL, Title, Menu Title, &amp; Content') ;
 $val .= <<<SSVIEWER
" />
				<div style="display:none" id="TextSiteTreeFilterDate" class="SearchCriteria">
SSVIEWER;
$val .=  _t('CMSMain_left.ss.EDITEDSINCE','Edited Since') ;
 $val .= <<<SSVIEWER
:</div>
				<div style="display:none" id="InputSiteTreeFilterDate">
SSVIEWER;
$val .=  $item->XML_val("SiteTreeFilterDateField",null,true) ;
 $val .= <<<SSVIEWER
</div>
				
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("SiteTreeFilterOptions")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

					<div style="display:none" id="Text
SSVIEWER;
$val .=  $item->XML_val("Column",null,true) ;
 $val .= <<<SSVIEWER
" class="SearchCriteria">
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER
:</div>
					<input style="display:none" id="Input
SSVIEWER;
$val .=  $item->XML_val("Column",null,true) ;
 $val .= <<<SSVIEWER
" name="
SSVIEWER;
$val .=  $item->XML_val("Column",null,true) ;
 $val .= <<<SSVIEWER
" class="SearchCriteria" />
				
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

				<select id="SiteTreeFilterAddCriteria">
					<option>
SSVIEWER;
$val .=  _t('CMSMain_left.ss.ADDSEARCHCRITERIA','Add Criteria...') ;
 $val .= <<<SSVIEWER
</option>
					<option value="SiteTreeFilterDate">
SSVIEWER;
$val .=  _t('CMSMain_left.ss.EDITEDSINCE','Edited Since') ;
 $val .= <<<SSVIEWER
</option>
					
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("SiteTreeFilterOptions")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

        				<option value="
SSVIEWER;
$val .=  $item->XML_val("Column",null,true) ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER
</option>
					
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

				</select>
				</div>
			</form>
			<div id="batchactionsforms" style="display: none">
				<form class="actionparams" style="border:0" id="deletepage_options" action="admin/deleteitems">
					<p>
SSVIEWER;
$val .=  _t('CMSMain_left.ss.SELECTPAGESACTIONS','Select the pages that you want to change &amp; then click an action:') ;
 $val .= <<<SSVIEWER
</p>
					<div>		
					<input type="hidden" name="csvIDs" />
					<input type="submit" id="action_delete_selected" class="action delete" value="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.DELETECONFIRM','Delete the selected pages') ;
 $val .= <<<SSVIEWER
" />
					</div>
				</form>
				<form class="actionparams" style="border:0" id="publishpage_options" action="admin/publishitems">
					<div>
					<input type="hidden" name="csvIDs" />
					<input type="checkbox" id="publishpage_show_drafts" /> <label for="publishpage_show_drafts">
SSVIEWER;
$val .=  _t('CMSMain_left.ss.SHOWONLYCHANGED','Show only changed pages') ;
 $val .= <<<SSVIEWER
</label>
					<input type="submit" id="action_publish_selected" class="action" value="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.PUBLISHCONFIRM','Publish the selected pages') ;
 $val .= <<<SSVIEWER
" />
					</div>
				</form>
			</div>
			
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("DuplicatePagesOptionsForm")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

			<form class="actionparams" id="duplicate_options" style="display: none" action="admin/duplicateSiteTree">
				<p>
SSVIEWER;
$val .=  _t('CMSMain_left.ss.SELECTPAGESDUP','Select the pages that you want to duplicate, whether it\'s children should be included, and where you want the duplicates placed') ;
 $val .= <<<SSVIEWER
</p>
				<div>		
					<input type="hidden" name="csvIDs" />
					<input type="submit" value="Duplicate" />
				</div>
			</form>
			
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

			<div id="SortItems">
					<input type="checkbox" id="sortitems" /> <label for="sortitems">
SSVIEWER;
$val .=  _t('CMSMain_left.ss.ENABLEDRAGGING','Allow drag &amp; drop reordering', PR_HIGH) ;
 $val .= <<<SSVIEWER
</label>
			</div>
			<div id="sitetree_ul">
				
SSVIEWER;
$val .=  $item->XML_val("SiteTreeAsUL",null,true) ;
 $val .= <<<SSVIEWER

			</div>
		</div>

		<div id="publication_key">
			
SSVIEWER;
$val .=  _t('CMSMain_left.ss.KEY','Key:') ;
 $val .= <<<SSVIEWER

			<ins style="cursor: help" title="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.ADDEDNOTPUB','Added to the draft site and not published yet') ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  _t('CMSMain_left.ss.NEW','new') ;
 $val .= <<<SSVIEWER
</ins>
			<del style="cursor: help" title="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.DELETEDSTILLLIVE','Deleted from the draft site but still on the live site') ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  _t('CMSMain_left.ss.DEL','deleted') ;
 $val .= <<<SSVIEWER
</del>
			<span style="cursor: help" title="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.EDITEDNOTPUB','Edited on the draft site and not published yet') ;
 $val .= <<<SSVIEWER
" class="modified">
SSVIEWER;
$val .=  _t('CMSMain_left.ss.CHANGED','changed') ;
 $val .= <<<SSVIEWER
</span>
		</div>		
		
		<div id="LangSelector_holder" 
SSVIEWER;
 if($item->hasValue("MultipleLanguages")) {  ;
 $val .= <<<SSVIEWER

SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER
 class="onelang"
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER
>
			Language: 
SSVIEWER;
$val .=  $item->XML_val("LangSelector",null,true) ;
 $val .= <<<SSVIEWER

		</div>
		<!--
		<div id="search_holder" style="display:none">
			<h2>Search</h2>
			<div class="unitBody"></div>
		</div>
		-->

		
SSVIEWER;
 if($item->hasValue("EnterpriseCMS")) {  ;
 $val .= <<<SSVIEWER

		<h2 id="heading_tasklist">
			<img id="tasklist_toggle_closed" src="sapphire/images/toggle-closed.gif" alt="+" title="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.OPENBOX') ;
 $val .= <<<SSVIEWER
" />
			<img id="tasklist_toggle_open" src="sapphire/images/toggle-open.gif" alt="-" style="display:none;" title="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.CLOSEBOX') ;
 $val .= <<<SSVIEWER
" /> 
			
SSVIEWER;
$val .=  _t('CMSMain_left.ss.TASKLIST','Tasklist') ;
 $val .= <<<SSVIEWER

		</h2>
		<div class="listpane" id="tasklist_holder" style="display:none">	
			<div class="unitBody">
			</div>
		</div>
		<h2 id="heading_waitingon">
			<img id="waitingon_toggle_closed" src="sapphire/images/toggle-closed.gif" alt="+" title="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.OPENBOX') ;
 $val .= <<<SSVIEWER
" />
			<img id="waitingon_toggle_open" src="sapphire/images/toggle-open.gif" alt="-" style="display:none;" title="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.CLOSEBOX') ;
 $val .= <<<SSVIEWER
" /> 
			
SSVIEWER;
$val .=  _t('CMSMain_left.ss.WAITINGON','Waiting on') ;
 $val .= <<<SSVIEWER

		</h2>
		<div class="listpane" id="waitingon_holder" style="display:none">	
			<div class="unitBody">
			</div>
		</div>
		
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

		<h2 id="heading_versions">
			<img id="versions_toggle_closed" src="sapphire/images/toggle-closed.gif" alt="+" title="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.OPENBOX') ;
 $val .= <<<SSVIEWER
" />
			<img id="versions_toggle_open" src="sapphire/images/toggle-open.gif" alt="-" style="display:none;" title="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.CLOSEBOX') ;
 $val .= <<<SSVIEWER
" /> 
			
SSVIEWER;
$val .=  _t('CMSMain_left.ss.PAGEVERSIONH','Page Version History') ;
 $val .= <<<SSVIEWER

		</h2>
		<div class="listpane" id="versions_holder" style="display:none">
			<p class="pane_actions" id="versions_actions">
				<input type="checkbox" id="versions_comparemode" /> <label for="versions_comparemode">
SSVIEWER;
$val .=  _t('CMSMain_left.ss.COMPAREMODE','Compare mode (click 2 below)') ;
 $val .= <<<SSVIEWER
</label>
				<br />

				<input type="checkbox" id="versions_showall" /> <label for="versions_showall">
SSVIEWER;
$val .=  _t('CMSMain_left.ss.SHOWUNPUB','Show unpublished versions') ;
 $val .= <<<SSVIEWER
</label>
			</p>
			
			<div class="unitBody">
			</div>
		</div>
		
SSVIEWER;
 if($item->hasValue("EnterpriseCMS")) {  ;
 $val .= <<<SSVIEWER

		<h2 id="heading_comments">
			<img id="comments_toggle_closed" src="sapphire/images/toggle-closed.gif" alt="+" title="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.OPENBOX') ;
 $val .= <<<SSVIEWER
" />
			<img id="comments_toggle_open" src="sapphire/images/toggle-open.gif" alt="-" style="display:none;" title="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.CLOSEBOX') ;
 $val .= <<<SSVIEWER
" /> 
			
SSVIEWER;
$val .=  _t('CMSMain_left.ss.COMMENTS','Comments') ;
 $val .= <<<SSVIEWER

		</h2>
		<div class="listpane" id="comments_holder" style="display:none">	
			<div class="unitBody">
			</div>
		</div>
		
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

		<h2 id="heading_reports">
			<img id="reports_toggle_closed" src="sapphire/images/toggle-closed.gif" alt="+" title="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.OPENBOX') ;
 $val .= <<<SSVIEWER
" />
			<img id="reports_toggle_open" src="sapphire/images/toggle-open.gif" alt="-" style="display:none;" title="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.CLOSEBOX') ;
 $val .= <<<SSVIEWER
" /> 
			
SSVIEWER;
$val .=  _t('CMSMain_left.ss.SITEREPORTS','Site Reports') ;
 $val .= <<<SSVIEWER

		</h2>
		<div class="listpane" id="reports_holder" style="display:none">
			<p id="ReportSelector_holder">
SSVIEWER;
$val .=  $item->XML_val("ReportSelector",null,true) ;
 $val .= <<<SSVIEWER
 <input class="action" type="submit" id="report_select_go" value="
SSVIEWER;
$val .=  _t('CMSMain_left.ss.GO','Go') ;
 $val .= <<<SSVIEWER
" /></p>
			<div class="unitBody">
			</div>
		</div>
	</div>

SSVIEWER;
 ?>
<?php $val .= <<<SSVIEWER
<script>
	_TREE_ICONS = {};
	_TREE_ICONS['Folder'] = {
			fileIcon: 'jsparty/tree/images/page-closedfolder.gif',
			openFolderIcon: 'jsparty/tree/images/page-openfolder.gif',
			closedFolderIcon: 'jsparty/tree/images/page-closedfolder.gif'
	};
</script>

<h2>
SSVIEWER;
$val .=  _t('AssetAdmin_left.ss.FOLDERS','Folders') ;
 $val .= <<<SSVIEWER
</h2>
	<div id="treepanes" style="overflow-y: auto;">
			<ul id="TreeActions">
				<li class="action" id="addpage"><button>
SSVIEWER;
$val .=  _t('AssetAdmin_left.ss.CREATE','Create') ;
 $val .= <<<SSVIEWER
</button></li>
				<li class="action" id="deletepage"><button>
SSVIEWER;
$val .=  _t('AssetAdmin_left.ss.DELETE','Delete') ;
 $val .= <<<SSVIEWER
</button></li>
			</ul>
			<div style="clear:both;"></div>
			<form class="actionparams" id="addpage_options" style="display: none" action="admin/assets/addfolder">
				<div>
				<input type="hidden" name="ParentID" />
				<input class="action" type="submit" value="
SSVIEWER;
$val .=  _t('AssetAdmin_left.ss.GO','Go') ;
 $val .= <<<SSVIEWER
" />
				</div>
			</form>
		
			<form class="actionparams" id="deletepage_options" style="display: none" action="admin/assets/deletefolder">
				<p>
SSVIEWER;
$val .=  _t('AssetAdmin_left.ss.SELECTTODEL','Select the folders that you want to delete and then click the button below') ;
 $val .= <<<SSVIEWER
</p>
				<div>		
				<input type="hidden" name="csvIDs" />
				<input type="submit" value="
SSVIEWER;
$val .=  _t('AssetAdmin_left.ss.DELFOLDERS','Delete the selected folders') ;
 $val .= <<<SSVIEWER
" />
				</div>
			</form>
		
			<form class="actionparams" id="sortitems_options" style="display: none">
				<p id="sortitems_message" style="margin: 0">
SSVIEWER;
$val .=  _t('AssetAdmin_left.ss.TOREORG','To reorganise your folders, drag them around as desired.') ;
 $val .= <<<SSVIEWER
</p>
			</form>
			<div id="SortItems">
					<input type="checkbox" id="sortitems" /> <label for="sortitems">
SSVIEWER;
$val .=  _t('AssetAdmin_left.ss.ENABLEDRAGGING','Allow drag &amp; drop reordering', PR_HIGH) ;
 $val .= <<<SSVIEWER
</label>
			</div>
		
			
SSVIEWER;
$val .=  $item->XML_val("SiteTreeAsUL",null,true) ;
 $val .= <<<SSVIEWER

	</div>
SSVIEWER;
 ?>
<div id="$id" class="$Classes">
	<% include TableListField_PageControls %>
	<table class="data">
		<thead>
			<tr>
				<% if Markable %><th width="36">&nbsp;</th><% end_if %>
				<% control Headings %>
				<th class="$Name">$Title</th>
				<% end_control %>
				<th width="18">&nbsp;</th>
				<% if Can(delete) %><th width="18">&nbsp;</th><% end_if %>
			</tr>
		</thead>
		<tbody>
			<% control Items %>
				<tr id="record-$Parent.Name-$ID">
					<% if Markable %><td width="36" class="markingcheckbox"><div class="dragfile" id="drag-$Parent.Name-$ID"><img id="drag-img-$Parent.Name-$ID" alt="Drag" title="<% _t('DRAGTOFOLDER','Drag to folder on left to move file') %>" src="sapphire/images/drag.gif" /></div> $MarkingCheckbox</td><% end_if %>
					<% control Fields %>
					<td>$Value</td>
					<% end_control %>
					<% if Can(show) %>
                        <td width="18">
                            <a class="popuplink showlink" href="$ShowLink" target="_blank" title="<% _t('SHOW', 'Show asset') %>"><img src="cms/images/show.png" alt="<% _t('SHOW', 'Show asset') %>" /></a>
                        </td>
                    <% end_if %>
					<% if Can(edit) %>
    					<td width="18">
    						<a class="popuplink editlink" href="$EditLink" target="_blank" title="<% _t('EDIT', 'Edit asset') %>"><img src="cms/images/edit.gif" alt="<% _t('EDIT', 'Edit asset') %>" /></a>
    					</td>
			        <% end_if %>
			        <% if Can(delete) %>
					<td width="18">
						<a class="deletelink" href="admin/assets/removefile/$ID" title="<% _t('DELFILE', 'Delete this file') %>"><img src="cms/images/delete.gif" alt="<% _t('DELFILE', 'Delete this file') %>" title="<% _t('DELFILE','Delete this file') %>" /></a>
					</td>
					<% end_if %>
				</tr>
			<% end_control %>
		</tbody>
	</table>
</div>
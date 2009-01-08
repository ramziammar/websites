<div id="menubar">
	<div class="menubar-title">$MenuBarTitle</div>
	<div class="menubar-items">
		<% if Menu(2) %>
			<% control Menu(2) %>
				<a href="$Link" id="$MenuTitle" class="$LinkingMode"><div>$Title</div></a>
			<% end_control %>	
		<% end_if %>	
	</div>
</div>
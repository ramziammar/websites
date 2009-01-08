<% if Menu(3) %>
<div id="content-menu">
	<% control Menu(3) %>
		<a href="$Link" class="$LinkingMode">$MenuTitle</a> &nbsp;
		<% control Parent %>	
		<script type="text/javascript" charset="utf-8">
			var activeMenubar = Ext.get('$MenuTitle');
		</script>
		<% end_control %>
	<% end_control %>
	<script type="text/javascript" charset="utf-8">
		if (activeMenubar) {
			activeMenubar.addClass('current');
		}
	</script>
</div>
<% end_if %>
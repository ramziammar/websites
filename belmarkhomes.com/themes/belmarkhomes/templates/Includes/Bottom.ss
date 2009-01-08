<table border="0" cellspacing="0" cellpadding="0" width="100%" id="bottom">
	<tr>
		<td id="bottom-left">
			<% include TestimonyLink %>
			<div class="bottom-title title-long">Featured Community</div>
			
			<table border="0" cellspacing="0" cellpadding="0" class="bottom-items">
				<tr>
					<td>
						<img src="$ThemeDir/images/abbeyroad.jpg" /> <br /><br />
						Mill Creek, Washington
					</td>
					<td><img src="$ThemeDir/images/house-1.jpg" /></td>
					<td><img src="$ThemeDir/images/house-2.jpg" /></td>
					<td class="bottom-box">VIEW HOMES AVAILABLE AT ABBEY ROAD</td>
				</tr>
			</table>
		</td>
		<td id="bottom-separator">&nbsp;</td>
		<td id="bottom-right">
			<div class="bottom-title title-short">News</div>
			
			<div class="bottom-news">
				<% control LatestNews %>
					<div class="news-item news-item-separator">
						<span class="news-item-title">$Title</span> <span class="news-item-date">$Date.Format(M d - Y)</span> <br />
						$IntroText
					</div>
				<% end_control %>
			</div>
			
		</td>
	</tr>
</table>
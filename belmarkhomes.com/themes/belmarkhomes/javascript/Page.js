
// align the testimony-link
Ext.onReady(function() {
	// Ext.get('testimony-link').alignTo('middle', 'tr-tl', [19, 50]);
	
	var topImage = Ext.get('top-image');
	if (topImage) {
		topImage.alignTo('menubar', 'tr-tr', [-10, 10]);
	}
});
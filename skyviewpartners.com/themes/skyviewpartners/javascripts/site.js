Ext.onReady(function() {
	if(!Ext.getDom('hd')){
		return;
	}

	var activeMenu;

	function createMenu(name){
		var el = Ext.get(name+'-link');
		var tid = 0, menu, doc = Ext.getDoc();
		
		var handleOver = function(e, t){
			if(t != el.dom && t != menu.dom && !e.within(el) && !e.within(menu)){
				hideMenu();
			}	
		};
			
		var hideMenu = function(){
			if(menu){
				menu.hide();
				//el.setStyle('text-decoration', '');
				el.removeClass('active');
				doc.un('mouseover', handleOver);
				doc.un('mousedown', handleDown);
			}
		}
	
		var handleDown = function(e){
			if(!e.within(menu)){
				hideMenu();
			}
		}
	
		var showMenu = function(){
			clearTimeout(tid);
			tid = 0;
		
			if (!menu) {
				menu = new Ext.Layer({shadow:'sides', hideMode: 'display'}, name+'-menu');
			}
			menu.hideMenu = hideMenu;
			
			menu.el = el;
			if(activeMenu && menu != activeMenu){
				activeMenu.hideMenu();
			}
			activeMenu = menu;
		
			if (!menu.isVisible()) {
				menu.show();
				menu.alignTo(el, 'tl-bl?');
				menu.sync();
				el.addClass('active');
				// el.setStyle('text-decoration', 'underline');
			
				doc.on('mouseover', handleOver, null, {buffer:150});
				doc.on('mousedown', handleDown);
			}
		}
	
		el.on('mouseover', function(e){
			if(!tid){
				tid = showMenu.defer(150);				
			}
		});
	
		el.on('mouseout', function(e){
			if(tid && !e.within(el, true)){
				clearTimeout(tid);
				tid = 0;				
			}
		});
	}
	
	function alignHdToSidebar() {
		var el = Ext.get('hd');
		var offset = 50;
		if (Ext.select('.main-pages').elements.length > 0) {
			el.alignTo('sidebar', 'tr?', [-13, offset]);
		} else {
			el.alignTo('sidebar', 'tr?', [0, offset]);
		}
	}

	createMenu('Products');
	createMenu('Services');
	createMenu('Downloads');
	createMenu('Support');
	createMenu('Information');
	createMenu('About Us');
	alignHdToSidebar();
//	createMenu('support');
//	createMenu('store');
});

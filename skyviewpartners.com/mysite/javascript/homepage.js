Ext.onReady(function(){
	var testimonyMsg = Ext.get('testimony-message');
	var testimonyAuthor = Ext.get('testimony-author');
	var testimonyHolder = Ext.get('testimony-holder');
	var messages = [], authors = [];
	
	testimonyMsg.addClassOnOver('msg-over');
	
	Ext.select('.testimony-message-temp').each(function(o) {
		messages.push(o.dom.innerHTML);
	});
	Ext.select('.testimony-author-temp').each(function(o) {
		authors.push( o.dom.innerHTML );
	});
	
	var activeIndex = 0;
	
	function updateTestimony() {
		testimonyMsg.update(messages[activeIndex]);
		testimonyAuthor.update(authors[activeIndex]);
		testimonyMsg.fadeIn();
	}
	
	function showMsg(idx) {
		if (!testimonyMsg.hasClass('msg-over')) {
			activeIndex = idx;
			updateTestimony();
		}
	}
	
	setInterval(function() {
		activeIndex = messages[activeIndex+1] ? activeIndex + 1 : 0;
		showMsg(activeIndex);
	}, 5000);
	showMsg(0);
});
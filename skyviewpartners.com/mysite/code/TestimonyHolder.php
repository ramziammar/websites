<?php


class TestimonyHolder extends Page {
	
	static $db = array();
	
	static $has_one = array();
	
	static $allow_children = array('TestimonyPage');
	
	static $icon = 'mysite/images/comment';
	
	static $defaults = array(
		'ShowInMenus' => false
	);
	
}

class TestimonyHolder_Controller extends Page_Controller {
}

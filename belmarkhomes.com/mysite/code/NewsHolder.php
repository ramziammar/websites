<?php

/**
* TestimonyHolder
*/
class NewsHolder extends Page {
	
	static $db = array();

	static $has_one = array();

	static $allow_children = array('NewsPage');

	static $icon = 'mysite/images/comment';

	static $defaults = array(
		'ShowInMenus' => false
	);

}

class NewsHolder_Controller extends Page_Controller {
}

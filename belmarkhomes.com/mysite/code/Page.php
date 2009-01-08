<?php

class Page extends SiteTree {
	static $db = array(
		'MenuBarTitle' => 'Varchar(50)'
	);
	static $has_one = array(
		'TopImage' => 'Image',
		'FloatingImage' => 'Image'
   );

	public function getCmsFields() {
		$fields = parent::getCmsFields();
		$fields->addFieldToTab('Root.Content.Images', new ImageField('TopImage', 'Image on Top Right'));
		$fields->addFieldToTab('Root.Content.Images', new ImageField('FloatingImage', 'An image that floats on the right side'));

		$fields->addFieldToTab('Root.Content.Main', new TextField('MenuBarTitle', 'MenuBar Title (text to be displayed on the left side of the MenuBar)'), 'Content');
		return $fields;
	}
}

class Page_Controller extends ContentController {
	function init() {
		parent::init();
		
		Requirements::themedCSS("layout");
		Requirements::themedCSS("typography");
		Requirements::themedCSS("form");
		Requirements::javascript('mysite/javascript/extjs.js');
		Requirements::javascript('themes/belmarkhomes/javascript/Page.js');
	}
}

?>
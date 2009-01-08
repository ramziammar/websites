<?php

class HomePage extends Page {
	
	static $db = array(
		'FlashUrl' => 'Varchar(255)'
	);
	static $has_one = array(
	);
	
	static $icon = 'mysite/images/house';
	
	public function getCmsFields() {
		$fields = parent::getCMSFields();
		/*@var $fields FieldSet */
		
		$fields->removeFieldFromTab('Root.Content.Main', 'Content');
		$fields->removeFieldFromTab('Root.Content.Images', 'TopImage');
		
		$fields->addFieldToTab('Root.Content.Main', new TextField('FlashUrl', 'Flash Url'), 'Content');
		
		return $fields;
	}
	
	public function LatestNews($num = 2) {
		$news = DataObject::get_one('NewsHolder');
		return $news ? DataObject::get('NewsPage', "ParentID = $news->ID", "Sort", "", $num) : false;
	}
   
}

class HomePage_Controller extends Page_Controller {
	
	public function init() {
		parent::init();
		
		Requirements::themedCSS('HomePage');

		Requirements::javascript('themes/belmarkhomes/javascript/HomePage.js');
	}
}
<?php

class TestimonyPage extends Page {
	
	static $db = array(
		'Message' => 'Text',
		'Author' => 'Text',
		'Company' => 'Text'
	);
	
	static $has_one = array();
	
	static $defaults = array(
		'ShowInMenus' => false
	);
	
	static $icon = 'mysite/images/comment';
	
	public function getCmsFields() {
		$fields = parent::getCMSFields();
		/*@var $fields FieldSet */
		$fields->removeFieldFromTab('Root.Content.Main', 'Content');
		$fields->removeFieldFromTab('Root.Content.Main', 'PageName');
		$fields->removeFieldFromTab('Root.Content.Main', 'NavigationLabel');
		
		$fields->addFieldToTab('Root.Content.Main', new TextareaField('Message', 'Message'));
		$fields->addFieldToTab('Root.Content.Main', new TextField('Author', 'Author'));
		$fields->addFieldToTab('Root.Content.Main', new TextField('Company', 'Company'));
		
		return $fields;
	}
	
}

class TestimonyPage_Controller extends Page_Controller {
	function init() {
		parent::init();
	}
}

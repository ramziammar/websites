<?php

class NewsPage extends Page {
	
	static $db = array(
		'Date' => 'Date',
		'Author' => 'Varchar(255)',
		'IntroText' => 'Text'
	);
	
	static $has_one = array();
	
	static $defaults = array(
		'ShowInMenus' => false
	);
	
	static $icon = 'mysite/images/comment';
	
	public function getCmsFields() {
		$fields = parent::getCMSFields();
		
		/*@var $fields FieldSet */
		$fields->removeFieldFromTab('Root.Content.Main', 'PageName');
		$fields->removeFieldFromTab('Root.Content.Main', 'NavigationLabel');
		
		$fields->addFieldToTab('Root.Content.Main', new TextareaField('IntroText', 'Introduction Text (This will be shown on the main page)'), 'Content');
		$fields->addFieldToTab('Root.Content.Main', new TextField('Author', 'Author'), 'IntroText');
		$fields->addFieldToTab('Root.Content.Main', new CalendarDateField('Date', 'News Date'), 'Author');
		
		return $fields;
	}
	
}

class NewsPage_Controller extends Page_Controller {
	function init() {
		parent::init();
	}
}

<?php

class HomePage extends Page {
	static $db = array(
		'Message' => 'HTMLText',
		'Header' => 'Text'
	);
	static $has_one = array(
		'IconImage' => 'Image'
  );
  
  static $icon = 'mysite/images/house';
   
	public function getCmsFields() {
		$fields = parent::getCMSFields();
		/*@var $fields FieldSet */
		$fields->removeFieldFromTab('Root.Content.Main', 'Content');
		
		$fields->addFieldToTab('Root.Content.Main', new TextareaField('Header', 'Header'));
		$fields->addFieldToTab('Root.Content.Main', new HtmlEditorField('Message', 'Message', 10));
		$fields->addFieldToTab('Root.Content.Main', new ImageField('IconImage', 'Icon'));
		
		return $fields;
	}
	
	public function testimonies($num = 5) {
		Requirements::javascript("mysite/javascript/homepage.js");
		Requirements::css('mysite/css/homepage.css');
		$testimonies = DataObject::get_one('TestimonyHolder');
		return $testimonies ? DataObject::get('TestimonyPage', "ParentID = $testimonies->ID", "", "", $num) : false;
	}
	
}

class HomePage_Controller extends Page_Controller {
	function init() {
		parent::init();
	}
}

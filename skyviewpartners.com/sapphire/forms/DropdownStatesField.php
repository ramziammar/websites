<?php

class DropdownStatesField extends DropDownField {
	
	public function __construct($name, $title = "", $source = array(), $value = "", $form = null, $emptyString = null) {
		$source = array(
			'KY' => 'Kentucky',
			'CA' => 'California'
		);
		parent::__construct($name, $title, $source, $value, $form, $emptyString);
	}
	
}
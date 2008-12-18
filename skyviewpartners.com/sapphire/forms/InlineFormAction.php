<?php

/**
 * @package forms
 * @subpackage actions
 */

/**
 * Render a button that will act as 
 * If you want to add custom behaviour, please set {inlcudeDefaultJS} to false and work with behaviour.js.
 * @package forms
 * @subpackage actions
 */
class InlineFormAction extends FormField {
	
	protected $includeDefaultJS = true;

	/**
	 * Create a new action button.
	 * @param action The method to call when the button is clicked
	 * @param title The label on the button
	 * @param extraClass A CSS class to apply to the button in addition to 'action'
	 */
	function __construct($action, $title = "", $extraClass = '') {
		$this->extraClass = ' '.$extraClass;
		parent::__construct($action, $title, null, null);
	}
	
	function performReadonlyTransformation() {
		return new InlineFormAction_ReadOnly( $this->name, $this->title );
	}
	
	function Field() {
		if($this->includeDefaultJS) {
			Requirements::javascriptTemplate('sapphire/javascript/InlineFormAction.js',array('ID'=>$this->id()));
		}
		
		return "<input type=\"submit\" name=\"action_{$this->name}\" value=\"{$this->title}\" id=\"{$this->id()}\" class=\"action{$this->extraClass}\" />";
	}	
	
	function Title() { 
		return false; 
	}
	
	/**
	 * Optionally disable the default javascript include (sapphire/javascript/InlineFormAction.js),
	 * which routes to an "admin-custom"-URL.
	 * 
	 * @param $bool boolean
	 */
	function includeDefaultJS($bool) {
		$this->includeDefaultJS = (bool)$bool;
	}
}

/**
 * Readonly version of {@link InlineFormAction}.
 * @package forms
 * @subpackage actions
 */
class InlineFormAction_ReadOnly extends FormField {
	function Field() {
		return "<input type=\"submit\" name=\"action_{$this->name}\" value=\"{$this->title}\" id=\"{$this->id()}\" disabled=\"disabled\" class=\"action$extraClass\" />";
	}	
	
	function Title() { 
		return false; 
	}
}
?>
<?php

class WebcastForm extends SubscribeForm {
	
	static $required_fields = array(
		'First Name' => 'EditableTextField(CustomParameter=FirstName)',
		'Last Name' => 'EditableTextField(CustomParameter=Surname)',
		'Organisation' => 'EditableTextField(CustomParameter=Organisation)',
		'Email Address' => 'EditableEmailField(CustomParameter=Email,CanDelete=0)',
		'Address 1' => 'EditableTextField(CustomParameter=Address1)',
		'Address 2' => 'EditableTextField(CustomParameter=Address2)'
	);
	
	public function __construct( $data = null, $isSingleton = false ) {
		parent::__construct($data, $isSingleton);
		
		if( $data || $isSingleton )
            return;
                
        $this->addDefaultFields();
	}
	
	private function addDefaultFields() {
        $f = $this->Fields();       

        // check that the required fields exist
        $count = 1;
        
        foreach( self::$required_fields as $defaultName => $typeString ) {
            
            list( $type, $typeValue ) = $this->parseType( $typeString );
            $newField = new $type();
            $newField->Name = "Field" . (string)$count;
            $newField->Title = $defaultName;
            
            // TODO Map the field to a particular action
            
            if( !empty( $typeValue ) )  {
                $newField->prepopulate( $typeValue );  
            }

            $newField->ParentID = $this->ID;
            $newField->Sort = $count;
			$newField->write();
            $count++;
        }
    }
}

class WebcastForm_SubscribeEmail extends SubscribeForm_SubscribeEmail {

}

class WebcastForm_Controller extends SubscribeForm_Controller {
	
	public function Form() {
		$form = parent::Form();
		/*@var $form Form */
		
		// remove the Newsletters field where it adds a list of newsletters and just add
		// Webcast newsletter directly
		$form->Fields()->removeByName('Newsletters');
		$form->Fields()->push( new HiddenField('Newsletters[]', 'Newsletters', 2) );
		
		return $form;
	}
}
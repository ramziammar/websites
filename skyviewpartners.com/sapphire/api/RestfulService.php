<?php

/**
 * @package sapphire
 * @subpackage integration
 */

/**
 * RestfulService class allows you to consume various RESTful APIs.
 * Through this you could connect and aggregate data of various web services.
 * For more info visit wiki documentation - http://doc.silverstripe.com/doku.php?id=restfulservice  
 * @package sapphire
 * @subpackage integration
 */
class RestfulService extends ViewableData {
	protected $baseURL;
	protected $queryString;
	protected $rawXML;
	protected $errorTag;
	protected $checkErrors;
	protected $cache_expire;
	
	protected $authUsername, $authPassword;
	protected $customHeaders = array();
	
	/**
 	* Creates a new restful service.
 	* @param string $base Base URL of the web service eg: api.example.com 
 	* @param int $expiry Set the cache expiry interva. Defaults to 1 hour (3600 seconds)
 	*/
	function __construct($base, $expiry=3600){
		$this->baseURL = $base;
		$this->cache_expire = $expiry;
	}
	
	/**
 	* Sets the Query string parameters to send a request.
 	* @param array $params An array passed with necessary parameters. 
 	*/
	function setQueryString($params=NULL){
		$this->queryString = http_build_query($params,'','&');
	}
	
	/**
	 * Set basic authentication
	 */
	function basicAuth($username, $password) {
		$this->authUsername = $username;
		$this->authPassword = $password;
	}
	
	/**
	 * Set a custom HTTP header
	 */
	function httpHeader($header) {
		$this->customHeaders[] = $header;
	}
	
	protected function constructURL(){
		return "$this->baseURL" . ($this->queryString ? "?$this->queryString" : "");
	}
	
	/**
 	* Connects to the RESTful service and gets its response.
 	* @todo implement authentication via cURL for
 	*/
	
	function connect($subURL){
		$url = $this->constructURL() . $subURL; //url for the request
		
		//check for file exists in cache		
		//set the cache directory
		$cachedir=TEMP_FOLDER; //default silverstrip-cache
			
		$cache_file = md5($url); //encoded name of cache file
		$cache_path = $cachedir."/$cache_file";
				
		if( !isset($_GET['flush']) && ( @file_exists("$cache_path") && ((@filemtime($cache_path) + $this->cache_expire) > ( time() )))){
			$this->rawXML = file_get_contents($cache_path);
			
		} else {//not available in cache fetch from server
			
			$ch = curl_init();
			$timeout = 5;
			$useragent = "SilverStripe/2.2";
			curl_setopt($ch, CURLOPT_URL, $url);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
			curl_setopt($ch, CURLOPT_USERAGENT, $useragent);
			curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
			curl_setopt($ch, CURLOPT_FOLLOWLOCATION,1);

			if($this->customHeaders) curl_setopt($ch, CURLOPT_HTTPHEADER, $this->customHeaders);
			if($this->authUsername) curl_setopt($ch, CURLOPT_USERPWD, "$this->authUsername:$this->authPassword");
		
			$this->rawXML = curl_exec($ch);
			if($this->rawXML === false) {
				user_error("Curl Error:" . curl_error($ch), E_USER_WARNING);
				return;
			}
			
			$statusCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
			curl_close($ch);
			
			// Success
			if($statusCode >= 200 && $statusCode < 300) return $this->rawXML;

			// Failure
			switch($statusCode) {
				case 401: 
					user_error("Bad username/password given to RestfulService, url $url", E_USER_WARNING);
					break;

				default: 
					user_error("Error code $statusCode from url $url", E_USER_WARNING);
					break;
			}
			
		}
		
		//Try using file_get_contents if cURL is not installed in your system.
		//$this->rawXML = file_get_contents($url);
		
		//results returned - from cache / live
		if($this->rawXML != ""){
			//save the response in cache
			$fp = @fopen($cache_path,"w+");
			@fwrite($fp,$this->rawXML);
			@fclose($fp);
					
			if($this->checkErrors == true) {
				return $this->errorCatch($this->rawXML);
			}
			else {
				return $this->rawXML;
			}
		} else {
			user_error("Invalid Response (maybe your calling to wrong URL or server unavailable)", E_USER_ERROR);
		}
	}
	
	/**
 	* Gets attributes as an array, of a particular type of element.
 	* Example : <photo id="2636" owner="123" secret="ab128" server="2"> 
 	* returns id, owner,secret and sever attribute values of all such photo elements.
 	* @param string $xml The source xml to parse, this could be the original response received.
 	* @param string $collection The name of parent node which wraps the elements, if available
 	* @param string $element The element we need to extract the attributes.
 	*/
	
	function getAttributes($xml, $collection=NULL, $element=NULL){
		$xml = new SimpleXMLElement($xml);
		$output = new DataObjectSet();
		
		if($collection)
			$childElements = $xml->{$collection};
		if($element)
			$childElements = $xml->{$collection}->{$element};
		
		if($childElements){
		foreach($childElements as $child){
		$data = array();
			foreach($child->attributes() as $key => $value){
				$data["$key"] = Convert::raw2xml($value);
			}
			
			$output->push(new ArrayData($data));
		}
		}
		return $output;
		
	}
	
	/**
 	* Gets an attribute of a particular element.
 	* @param string $xml The source xml to parse, this could be the original response received.
 	* @param string $collection The name of the parent node which wraps the element, if available
 	* @param string $element The element we need to extract the attribute
 	* @param string $attr The name of the attribute
 	*/
	
	function getAttribute($xml, $collection=NULL, $element=NULL, $attr){
	$xml = new SimpleXMLElement($xml);
	$attr_value = "";
	
	if($collection)
			$childElements = $xml->{$collection};
		if($element)
			$childElements = $xml->{$collection}->{$element};
		
		if($childElements)
			$attr_value = (string) $childElements[$attr];
		
		return Convert::raw2xml($attr_value);
		
	}
	
	/**
 	* Gets set of node values as an array. 
 	* When you get to the depth in the hierachchy use node_child_subchild syntax to get the value.
 	* @param string $xml The the source xml to parse, this could be the original response received.
 	* @param string $collection The name of parent node which wraps the elements, if available
 	* @param string $element The element we need to extract the node values.
 	*/
	
	function getValues($xml, $collection=NULL, $element=NULL){
		$xml = new SimpleXMLElement($xml);
		$output = new DataObjectSet();
		
			$childElements = $xml;
		if($collection)
			$childElements = $xml->{$collection};
		if($element)
			$childElements = $xml->{$collection}->{$element};
		
		if($childElements){
		foreach($childElements as $child){
			$data = array();
			$this->getRecurseValues($child,$data);			
			$output->push(new ArrayData($data));
		}
		}
		return $output;
	}
	
	protected function getRecurseValues($xml,&$data,$parent=""){
		$conv_value = "";
		$child_count = 0;
		foreach($xml as $key=>$value)
		{
			$child_count++;    
			$k = ($parent == "") ? (string)$key : $parent . "_" . (string)$key;
			if($this->getRecurseValues($value,$data,$k) == 0){  // no childern, aka "leaf node"
				   $conv_value = Convert::raw2xml($value);
			}  
			//Review the fix for similar node names overriding it's predecessor
			if(array_key_exists($k, $data) == true) {	
				$data[$k] = $data[$k] . ",". $conv_value;		
			}
			else {
				 $data[$k] = $conv_value;
			}
			
			
		}
		return $child_count;
			
	}
	
	/**
 	* Gets a single node value. 
 	* @param string $xml The source xml to parse, this could be the original response received.
 	* @param string $collection The name of parent node which wraps the elements, if available
 	* @param string $element The element we need to extract the node value.
 	*/
	
	function getValue($xml, $collection=NULL, $element=NULL){
		$xml = new SimpleXMLElement($xml);
		
		if($collection)
			$childElements = $xml->{$collection};
		if($element)
			$childElements = $xml->{$collection}->{$element};
		
		if($childElements)
			return Convert::raw2xml($childElements);
	}
	
	/**
 	* Searches for a node in document tree and returns it value. 
 	* @param string $xml source xml to parse, this could be the original response received.
 	* @param string $node Node to search for
 	*/
	function searchValue($xml, $node=NULL){
		$xml = new SimpleXMLElement($xml);
		$childElements = $xml->xpath($node);
		
		if($childElements)
			return Convert::raw2xml($childElements[0]);
	}
	
	/**
 	* Searches for a node in document tree and returns its attributes. 
 	* @param string $xml the source xml to parse, this could be the original response received.
 	* @param string $node Node to search for
 	*/
	function searchAttributes($xml, $node=NULL){
		$xml = new SimpleXMLElement($xml);
		$output = new DataObjectSet();
	
		$childElements = $xml->xpath($node);
		
		if($childElements)
		foreach($childElements as $child){
		$data = array();
			foreach($child->attributes() as $key => $value){
				$data["$key"] = Convert::raw2xml($value);
			}
			
			$output->push(new ArrayData($data));
		}
		
		return $output;
	}
	
	
}
?>

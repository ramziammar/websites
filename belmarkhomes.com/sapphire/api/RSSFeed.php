<?php

/**
 * @package sapphire
 * @subpackage integration
 */

/**
 * RSSFeed class
 *
 * This class is used to create an RSS feed.
 * @package sapphire
 * @subpackage integration
 */
class RSSFeed extends ViewableData {
	/**
	 * Casting information for this object's methods.
	 * Let's us use $Title.XML in templates
	 */
	public static $casting = array(
		"Title" => "Varchar",
		"Description" => "Varchar",
	);

	/**
	 * Holds the feed entries
	 *
	 * @var DataObjectSet
	 */
	protected $entries;

	/**
	 * Title of the feed
	 *
	 * @var string
	 */
	protected $title;

	/**
	 * Description of the feed
	 *
	 * @var string
	 */
	protected $description;

	/**
	 * Link to the feed
	 *
	 * @var string
	 */
	protected $link;

	/**
	 * Name of the title field of feed entries
	 *
	 * @var string
	 */
	protected $titleField;

	/**
	 * Name of the description field of feed entries
	 *
	 * @var string
	 */
	protected $descriptionField;

	/**
	 * Name of the author field of feed entries
	 *
	 * @var string
	 */
	protected $authorField;

	/**
	 * Last modification of the RSS feed
	 *
	 * @var int Unix timestamp of the last modification
	 */
	protected $lastModified;

	/**
	 * ETag for the RSS feed (used for client-site caching)
	 *
	 * @var string The value for the HTTP ETag header.
	 */
	protected $etag;

	/**
	 * Constructor
	 *
	 * @param DataObjectSet $entries RSS feed entries
	 * @param string $link Link to the feed
	 * @param string $title Title of the feed
	 * @param string $description Description of the field
	 * @param string $titleField Name of the field that should be used for the
	 *                           titles for the feed entries
	 * @param string $descriptionField Name of the field that should be used
	 *                                 for the description for the feed
	 *                                 entries
	 * @param string $authorField Name of the field that should be used for
	 *                            the author for the feed entries
	 * @param int $lastModified Unix timestamp of the latest modification
	 *                          (latest posting)
	 * @param string $etag The ETag is an unique identifier that is changed
	 *                         every time the representation does
	 */
	function __construct(DataObjectSet $entries, $link, $title,
											 $description = null, $titleField = "Title",
											 $descriptionField = "Content", $authorField = null,
											 $lastModified = null, $etag = null) {
		$this->entries = $entries;
		$this->link = $link;
		$this->description = $description;
		$this->title = $title;

		$this->titleField = $titleField;
		$this->descriptionField = $descriptionField;
		$this->authorField = $authorField;

		$this->lastModified = $lastModified;
		$this->etag = $etag;
	}

	/**
	 * Include an link to the feed
	 *
	 * @param string $url URL of the feed
	 * @param string $title Title to show
	 */
	static function linkToFeed($url, $title = null) {
		$title = Convert::raw2xml($title);
		Requirements::insertHeadTags(
			'<link rel="alternate" type="application/rss+xml" title="' . $title .
			'" href="' . $url . '" />');
	}

	/**
	 * Get the RSS feed entries
	 *
	 * @return DataObjectSet Returns the {@link RSSFeed_Entry} objects.
	 */
	function Entries() {
		$output = new DataObjectSet();
		if(isset($this->entries)) {
			foreach($this->entries as $entry) {
				$output->push(new RSSFeed_Entry($entry, $this->titleField, $this->descriptionField, $this->authorField));
			}	
		}
		return $output;
	}

	/**
	 * Get the title of thisfeed
	 *
	 * @return string Returns the title of the feed.
	 */
	function Title() {
		return $this->title;
	}

	/**
	 * Get the URL of this feed
	 *
	 * @return string Returns the URL of the feed.
	 */
	function Link() {
		return Director::absoluteURL($this->link);
	}

	/**
	 * Get the description of this feed
	 *
	 * @return string Returns the description of the feed.
	 */
	function Description() {
		return $this->description;
	}

	/**
	 * Output the feed to the browser
	 */
	function outputToBrowser() {
		if(is_int($this->lastModified)) {
			HTTP::register_modification_timestamp($this->lastModified);
			header('Last-Modified: ' . gmdate("D, d M Y H:i:s", $this->lastModified) . ' GMT');
		}
		if(!empty($this->etag)) {
			HTTP::register_etag($this->etag);
		}

		$body = str_replace('&nbsp;', '&#160;', $this->renderWith('RSSFeed'));
		HTTP::add_cache_headers($body);
		header("Content-type: text/xml");
		echo $body;
	}
}

/**
 * RSSFeed_Entry class
 *
 * This class is used for entries of an RSS feed.
 *
 * @see RSSFeed
 * @package sapphire
 * @subpackage integration
 */
class RSSFeed_Entry extends ViewableData {
	/**
	 * The object that represents the item, it contains all the data.
	 *
	 * @var mixed
	 */
	protected $failover;

	/**
	 * Name of the title field of feed entries
	 *
	 * @var string
	 */
	protected $titleField;

	/**
	 * Name of the description field of feed entries
	 *
	 * @var string
	 */
	protected $descriptionField;

	/**
	 * Name of the author field of feed entries
	 *
	 * @var string
	 */
	protected $authorField;

	/**
	 * Create a new RSSFeed entry.
	 */
	function __construct($entry, $titleField, $descriptionField,
											 $authorField) {
		$this->failover = $entry;
		$this->titleField = $titleField;
		$this->descriptionField = $descriptionField;
		$this->authorField = $authorField;
	}

	/**
	 * Get the description of this entry
	 *
	 * @return string Returns the description of the entry.
	 */
	function Title() {
		if($this->titleField)
			return $this->failover->obj($this->titleField);
	}

	/**
	 * Get the description of this entry
	 *
	 * @return string Returns the description of the entry.
	 */
	function Description() {
		if($this->descriptionField)
			return $this->failover->obj($this->descriptionField);
	}

	/**
	 * Get the author of this entry
	 *
	 * @return string Returns the author of the entry.
	 */
	function Author() {
		if($this->authorField)
			return $this->failover->obj($this->authorField);
	}

	/**
	 * Get a link to this entry
	 *
	 * @return string Returns the URL of this entry
	 */
	function AbsoluteLink() {
		if($this->failover->hasMethod('AbsoluteLink')) return $this->failover->AbsoluteLink();
		else if($this->failover->hasMethod('Link')) return Director::absoluteURL($this->failover->Link());
		else user_error($this->failover->class . " object has either an AbsoluteLink nor a Link method.  Can't put a link in the RSS feed", E_USER_WARNING);
	}
}
?>

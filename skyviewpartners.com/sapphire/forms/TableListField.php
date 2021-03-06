<?php

/**
 * @package forms
 * @subpackage fields-relational
 */

/**
 * Form field that embeds a list into a form, such as a member list or a file list.
 * 
 * All get variables are namespaced in the format ctf[MyFieldName][MyParameter] to avoid collisions
 * when multiple TableListFields are present in a form.
 * 
 * @param $name string The fieldname
 * @param $sourceClass string The source class of this field
 * @param $fieldList array An array of field headings of Fieldname => Heading Text (eg. heading1)
 * @param $sourceFilter string The filter field you wish to limit the objects by (eg. parentID)
 * @param $sourceSort string
 * @param $sourceJoin string
 * @package forms
 * @subpackage fields-relational
 */
class TableListField extends FormField {
	
	/**
	 * @var $cachedSourceItems DataObjectSet Prevent {@sourceItems()} from being called multiple times.
	 */
	protected $cachedSourceItems;

	protected $sourceClass;

	protected $sourceFilter = array();
	
	protected $sourceSort = "";
	
	protected $sourceJoin = array();
	
	protected $fieldList;
	
	/**
	 * @var $fieldListCsv array
	 */
	protected $fieldListCsv;
	
	/**
	 * @var $clickAction
	 */
	protected $clickAction;
	
	/**
	 * @var bool
	 */
	public $IsReadOnly;
	
	/**
	 * Called method (needs to be retained for AddMode())
	 */
	protected $methodName;
	
	/**
	 * @var $summaryFieldList array Shows a row which summarizes the contents of a column by a predefined
	 * Javascript-function 
	 */
	protected $summaryFieldList;
	
	/**
	 * @var $summaryTitle string The title which will be shown in the first column of the summary-row.
	 * Accordingly, the first column can't be used for summarizing.
	 */
	protected $summaryTitle;
	
	/**
	 * @var $template string Template-Overrides
	 */
	protected $template = "TableListField";
	
	/**
	 * @var bool Do we use checkboxes to mark records, or delete them one by one?
	 */
	public $Markable;
	
	/**
	 * @var $readOnly boolean Deprecated, please use $permssions instead
	 */
	protected $readOnly;
	
	/**
	 * @var $permissions array Influence output without having to subclass the template.
	 */
	protected $permissions = array(
		//"print",
		//"export",
		"delete"
	);
	
	/**
	 * @var $customQuery Specify custom query, e.g. for complicated having/groupby-constructs.
	 * Caution: TableListField automatically selects the ID from the {@sourceClass}, because it relies
	 * on this information e.g. in saving a TableField. Please use a custom select if you want to filter
	 * for other IDs in joined tables: $query->select[] = "MyJoinedTable.ID AS MyJoinedTableID"
	 */
	protected $customQuery;

	/**
	 * @var $customCsvQuery Query for CSV-export (might need different fields or further filtering)
	 */
	protected $customCsvQuery;
	
	/**
	 * @var $customSourceItems DataObjectSet Use the manual setting of a result-set only as a last-resort
	 * for sets which can't be resolved in a single query.
	 *
	 * @todo: Add pagination support for customSourceItems.
	 */
	protected $customSourceItems;
	
	/**
	 * Character to seperate exported columns in the CSV file
	 */
	protected $csvSeparator = ",";
	
	/*
	 * Boolean deciding whether to include a header row in the CSV file
	 */
	protected $csvHasHeader = true;
	
	
	/**
	 * @var int Shows total count regardless or pagination
	 */
	protected $totalCount;
	
	/**
	 * @var boolean Trigger pagination
	 */
	protected $showPagination = false;
	
	/**
	 * @var int Number of items to show on a single page (needed for pagination)
	 */
	protected $pageSize = 10;
	
	/**
	 * @var array Definitions for highlighting table-rows with a specific class. You can use all column-names
	 * in the result of a query. Use in combination with {@setCustomQuery} to select custom properties and joined objects.
	 *  
	 * Example:
	 * array(
	 * 	array(
	 * 		"rule" => '$Flag == "red"',
	 *	 	"class" => "red"
	 * 	),
	 * 	array(
	 * 		"rule" => '$Flag == "orange"',
	 * 		"class" => "orange"
	 * 	)
	 * )
	 */
	public $highlightConditions = array();
	
	/**
	 * @var array Specify castings with fieldname as the key, and the desired casting as value.
	 * Example: array("MyCustomDate"=>"Date","MyShortText"=>"Text->FirstSentence")
	 */
	public $fieldCasting = array();
	
	/**
	 * @var array Specify custom formatting for fields, e.g. to render a link instead of pure text.
	 * Caution: Make sure to escape special php-characters like in a normal php-statement. 
	 * Example:	"myFieldName" => '<a href=\"custom-admin/$ID\">$ID</a>'
	 */
	public $fieldFormatting = array();
	
	/**
	 * @var string
	 */
	public $exportButtonLabel = 'Export as CSV';
	
	/**
	 * @var string $groupByField Used to group by a specific column in the DataObject
	 * and create partial summaries.
	 */
	public $groupByField = null;
	
	function __construct($name, $sourceClass, $fieldList, $sourceFilter = null, 
		$sourceSort = null, $sourceJoin = null) {

		$this->fieldList = $fieldList;
		$this->sourceClass = $sourceClass;
		$this->sourceFilter = $sourceFilter;
		$this->sourceSort = $sourceSort;
		$this->sourceJoin = $sourceJoin;
		$this->readOnly = false;

		parent::__construct($name);
		
		Requirements::javascript('jsparty/prototype.js');
		Requirements::javascript('jsparty/behaviour.js');
		Requirements::javascript('jsparty/prototype_improvements.js');
		Requirements::javascript('jsparty/scriptaculous/effects.js');
		Requirements::javascript('sapphire/javascript/TableListField.js');
		Requirements::css('sapphire/css/TableListField.css');
	}
	
	function FieldHolder() {
		
		if($this->clickAction) {
			$id = $this->id();
			Requirements::customScript(<<<JS
				Behaviour.register({
					'#$id tr' : {
						onclick : function() {
							$this->clickAction
							return false;
						}
				}
			});
JS
		);}
		return $this->renderWith($this->template);
	}
	
	function Headings() {
		foreach($this->fieldList as $fieldName => $fieldTitle) {
			$isSorted = (isset($_REQUEST['ctf'][$this->Name()]['sort']) && $fieldName == $_REQUEST['ctf'][$this->Name()]['sort']);
			// we can't allow sorting with partial summaries (groupByField)
			$isSortable = ($this->form && $this->isFieldSortable($fieldName) && !$this->groupByField);

			// sorting links (only if we have a form to refresh with)
			if($this->form) {
				$sortLink = $this->BaseLink();
				$sortLink = HTTP::setGetVar("ctf[{$this->Name()}][sort]", $fieldName, $sortLink);
				if(isset($_REQUEST['ctf'][$this->Name()]['dir'])) {
					$XML_sort = (isset($_REQUEST['ctf'][$this->Name()]['dir'])) ? Convert::raw2xml($_REQUEST['ctf'][$this->Name()]['dir']) : null;
					$sortLink = HTTP::setGetVar("ctf[{$this->Name()}][dir]", $XML_sort, $sortLink);
				}
			} else {
				$sortLink = '#';
			}
			
			$headings[] = new ArrayData(array(
				"Name" => $fieldName, 
				"Title" => $fieldTitle,
				"IsSortable" => $isSortable,
				"SortLink" => $sortLink,
				"SortBy" => $isSorted,
				"SortDirection" => (isset($_REQUEST['ctf'][$this->Name()]['dir'])) ? $_REQUEST['ctf'][$this->Name()]['dir'] : null 
			));
		}
		return new DataObjectSet($headings);
	}

	/**
	 * Determines if a field is "sortable".
	 * If the field is generated by a custom getter, we can't sort on it
	 * without generating all objects first (which would be a huge performance impact).
	 * 
	 * @param string $fieldName
	 * @return bool
	 */	
	function isFieldSortable($fieldName) {
		if($this->customSourceItems) {
			return false;
		}
		
		if($this->__cachedSQL) {
			$query = $this->__cachedQuery;
		} else {
			$query = $this->__cachedQuery = $this->getQuery();
		}
		$sql = $query->sql();
		$SQL_fieldName = Convert::raw2sql($fieldName);
		return (in_array($SQL_fieldName,$query->select) || stripos($sql,"AS {$SQL_fieldName}"));
	}
	
	/**
	 * Provide a custom query to compute sourceItems. This is the preferred way to using
	 * {@setSourceItems}, because we can still paginate.
	 * Caution: Other parameters such as {@sourceFilter} will be ignored.
	 * Please use this only as a fallback for really complex queries (e.g. involving HAVING and GROUPBY).  
	 * 
	 * @param $query Query
	 */
	function setCustomQuery($query) {
		$this->customQuery = $query;
	}

	function setCustomCsvQuery($query) {
		$this->customCsvQuery = $query;
	}
	
	function setCustomSourceItems($items) {
		$this->customSourceItems = $items;
	}
	
	function sourceItems() {
		$SQL_limit = ($this->pageSize) ? "{$this->pageSize}" : "0";
		if(isset($_REQUEST['ctf'][$this->Name()]['start']) && is_numeric($_REQUEST['ctf'][$this->Name()]['start'])) {
			$SQL_start = (isset($_REQUEST['ctf'][$this->Name()]['start'])) ? intval($_REQUEST['ctf'][$this->Name()]['start']) : "0";
		}
		if(isset($this->customSourceItems)) {
			if($this->customSourceItems) {
				$items = $this->customSourceItems->getRange($SQL_start, $SQL_limit);
			} else {
				$items = false;
			}
		} elseif(isset($this->cachedSourceItems)) {
			$items = $this->cachedSourceItems;
		} else {
			// get query
			$dataQuery = $this->getQuery();
			
			// we don't limit when doing certain actions
			if(!isset($_REQUEST['methodName']) || !in_array($_REQUEST['methodName'],array('printall','export'))) {
				$dataQuery->limit = $SQL_limit;
				if(isset($SQL_start)) {
					$dataQuery->limit .= " OFFSET {$SQL_start}";
				}
			}

			// get data
			$records = $dataQuery->execute();
			$sourceClass = $this->sourceClass;
			$dataobject = new $sourceClass();
			$items = $dataobject->buildDataObjectSet($records, 'DataObjectSet');
			
			$this->cachedSourceItems = $items;
		}

		return $items;
	}
	
	function Items() {
		$fieldItems = new DataObjectSet();
		if($items = $this->sourceItems()) foreach($items as $item) {
			if($item) $fieldItems->push(new TableListField_Item($item, $this));
		}

		return $fieldItems;
	}
	
	/**
	 * Generates the query for sourceitems (without pagination/limit-clause)
	 * 
	 * @return string
	 */
	function getQuery() {
		if($this->customQuery) {
			$query = $this->customQuery;
			$baseClass = ClassInfo::baseDataClass($this->sourceClass);
			$query->select[] = "{$baseClass}.ID AS ID";
			$query->select[] = "{$baseClass}.ClassName AS ClassName";
			$query->select[] = "{$baseClass}.ClassName AS RecordClassName";
		} else {
			$query = singleton($this->sourceClass)->extendedSQL($this->sourceFilter, $this->sourceSort, null, $this->sourceJoin);

			// Add more selected fields if they are from joined table.

			$SNG = singleton($this->sourceClass);
			foreach($this->FieldList() as $k=>$title){
				if(!$SNG->hasField($k) && !$SNG->hasMethod('get' . $k) && !strpos($k, "."))
					$query->select[] = $k;
			}
		}
		
		if(isset($_REQUEST['ctf'][$this->Name()]['sort'])) {
			$SQL_sort = Convert::raw2sql($_REQUEST['ctf'][$this->Name()]['sort']);
			$sql = $query->sql();
			// see {isFieldSortable}
			if(in_array($SQL_sort,$query->select) || stripos($sql,"AS {$SQL_sort}")) {
				$query->orderby = $SQL_sort;
			}
		}
		return clone $query;
	}

	function getCsvQuery() {
		$baseClass = ClassInfo::baseDataClass($this->sourceClass);
		if($this->customCsvQuery) {
			$query = $this->customCsvQuery;
			$query->select[] = "{$baseClass}.ID AS ID";
			$query->select[] = "{$baseClass}.ClassName AS ClassName";
			$query->select[] = "{$baseClass}.ClassName AS RecordClassName";
		} else if($this->customQuery) {
			$query = $this->customQuery;
			$query->select[] = "{$baseClass}.ID AS ID";
			$query->select[] = "{$baseClass}.ClassName AS ClassName";
			$query->select[] = "{$baseClass}.ClassName AS RecordClassName";
		} else {
			$query = singleton($this->sourceClass)->extendedSQL($this->sourceFilter, $this->sourceSort, null, $this->sourceJoin);
			
			// Add more selected fields if they are from joined table.
			foreach($this->FieldList() as $k=>$title){
				if(singleton($this->sourceClass)->hasDatabaseField($k))
					$query->select[] = $k;
			}
		}
		return clone $query;
	}
	
	function FieldList() {
		return $this->fieldList;
	}
	
	/**
	 * Configure this table to load content into a subform via ajax
	 */
	function setClick_AjaxLoad($urlBase, $formID) {
		$this->clickAction = "this.ajaxRequest('" . addslashes($urlBase) . "', '" . addslashes($formID) . "')";
	}

	/**
	 * Configure this table to open a popup window
	 */
	function setClick_PopupLoad($urlBase) {
		$this->clickAction = "var w = window.open(baseHref() + '$urlBase' + this.id.replace('record-',''), 'popup'); w.focus();";
	}
	
	function performReadonlyTransformation() {
		$this->setShowPagination(false);
		$this->setPermissions(array());
		$this->IsReadOnly = true;
		$this->addExtraClass( 'readonly' );
		return $this;
	}
	
	/**
	 * #################################
	 *           CRUD
	 * #################################
	 */
	
	/**
	 * @return String
	 */
	function delete() {
		if($this->Can('delete') !== true) {
			return false;
		}

		$this->methodName = "delete";
		
		$childId = Convert::raw2sql($_REQUEST['ctf']['childID']);

		if (is_numeric($childId)) {
			$childObject = DataObject::get_by_id($this->sourceClass, $childId);
			if($childObject) $childObject->delete();
		}

		// TODO return status in JSON etc.
		//return $this->renderWith($this->template);
	}
	 
	 
	/**
	 * #################################
	 *           Summary-Row
	 * #################################
	 */
	 
	/**
	 * Can utilize some built-in summary-functions, with optional casting. 
	 * Currently supported:
	 * - sum
	 * - avg
	 * 
	 * @param $summaryTitle string
	 * @param $summaryFields array 
	 * Simple Format: array("MyFieldName"=>"sum")
	 * With Casting: array("MyFieldname"=>array("sum","Currency->Nice"))
	 */
	function addSummary($summaryTitle, $summaryFieldList) {
		$this->summaryTitle = $summaryTitle;
		$this->summaryFieldList = $summaryFieldList;
	}
	
	function removeSummary() {
		$this->summaryTitle = null;
		$this->summaryFields = null;
	}
	
	function HasSummary() {
		return (isset($this->summaryFieldList));
	}
	
	function SummaryTitle() {
		return $this->summaryTitle;
	}
	
	/**
	 * @param DataObjectSet $items Only used to pass grouped sourceItems for creating
	 * partial summaries.
	 */
	function SummaryFields($items = null) {
		if(!isset($this->summaryFieldList)) {
			return false;
		}
		$summaryFields = array();
		$fieldListWithoutFirst = $this->fieldList;
		if(!empty($this->summaryTitle)) {
			array_shift($fieldListWithoutFirst);
		}
		foreach($fieldListWithoutFirst as $fieldName => $fieldTitle) {
			
			if(in_array($fieldName, array_keys($this->summaryFieldList))) {
				if(is_array($this->summaryFieldList[$fieldName])) {
					$summaryFunction = "colFunction_{$this->summaryFieldList[$fieldName][0]}";
					$casting = $this->summaryFieldList[$fieldName][1];
				} else {
					$summaryFunction = "colFunction_{$this->summaryFieldList[$fieldName]}";
					$casting = null;
				}

				// fall back to integrated sourceitems if not passed
				if(!$items) $items = $this->sourceItems();

				$summaryValue = ($items) ? $this->$summaryFunction($items->column($fieldName)) : null;
				
				// Optional casting, Format: array('MyFieldName'=>array('sum','Currency->Nice'))
				if(isset($casting)) {
					$fieldTypeParts = explode('->', $casting);
					$castingFieldType = $fieldTypeParts[0];	
					$castingMethod = $fieldTypeParts[1];
					$summaryValue = DBField::create($castingFieldType, $summaryValue)->$castingMethod();
				}
			} else {
				$summaryValue = null;
				$function = null;
			}
			
			$summaryFields[] = new ArrayData(array(
				'Function' => $function,
				'SummaryValue' => $summaryValue,
			));
		}
		return new DataObjectSet($summaryFields);
	}
	
	function HasGroupedItems() {
		return ($this->groupByField);	
	}
	
	function GroupedItems() {
		if(!$this->groupByField) {
			return false; 
		}
		
		$items = $this->sourceItems();
		if(!$items || !$items->Count()) {
			return false;
		}
		
		$groupedItems = $items->groupBy($this->groupByField);
		$groupedArrItems = new DataObjectSet();
		foreach($groupedItems as $key => $group) {
			$fieldItems = new DataObjectSet();
			foreach($group as $item) {
				if($item) $fieldItems->push(new TableListField_Item($item, $this));
			}
			$groupedArrItems->push(new ArrayData(array(
				'Items' => $fieldItems,
				'SummaryFields' => $this->SummaryFields($group)
			)));
		}
		
		return $groupedArrItems;
	}
	
	function colFunction_sum($values) {
		return array_sum($values);
	}

	function colFunction_avg($values) {
		return array_sum($values)/count($values);
	}
	
	 
	/**
	 * #################################
	 *           Permissions
	 * #################################
	 */
	
	/**
	 * Template accessor for Permissions
	 */
	function Can($mode) {
		if($mode == 'add' && $this->IsReadOnly) {
			return false;
		} else if($mode == 'delete' && $this->IsReadOnly) {
			return false;
		} else if($mode == 'edit' && $this->IsReadOnly) {
			return false;
		} else {
			return (in_array($mode, $this->permissions));
		}
		
	}
	
	function setPermissions($arr) {
		$this->permissions = $arr;
	}

	/**
	 * @return array
	 */
	function getPermissions($arr) {
		return $this->permissions;
	}
	
	
	
	
	
	/**
	 * #################################
	 *           Pagination
	 * #################################
	 */
	function setShowPagination($bool) {
		$this->showPagination = (bool)$bool;
	}

	/**
	 * @return boolean
	 */
	function ShowPagination() {
		if($this->showPagination && !empty($this->summaryFieldList)) {
			user_error("You can't combine pagination and summaries - please disable one of them.", E_USER_ERROR);
		}
		return $this->showPagination;
	}
	
	function setPageSize($pageSize) {
	 	$this->pageSize = $pageSize;
	}
	 
	 function PageSize() {
		return $this->pageSize;
	}
	 
	function ListStart() {
		return $_REQUEST['ctf'][$this->Name()]['start'];
	}
	
	function FirstLink() {
		$start = 0;
		
		if(!isset($_REQUEST['ctf'][$this->Name()]['start']) || !is_numeric($_REQUEST['ctf'][$this->Name()]['start']) || $_REQUEST['ctf'][$this->Name()]['start'] == 0) {
			return null;
		}
		
		return $this->BaseLink() . "&ctf[{$this->Name()}][start]={$start}{$this->filterString()}";
	}
	
	function PrevLink() {
		$currentStart = isset($_REQUEST['ctf'][$this->Name()]['start']) ? $_REQUEST['ctf'][$this->Name()]['start'] : 0;

		if($currentStart == 0) {
			return null;
		}
		
		$start = ($_REQUEST['ctf'][$this->Name()]['start'] - $this->pageSize < 0)  ? 0 : $_REQUEST['ctf'][$this->Name()]['start'] - $this->pageSize;
		
		return $this->BaseLink() . "&ctf[{$this->Name()}][start]=$start{$this->filterString()}";
	}
	
	function NextLink() {
		$currentStart = isset($_REQUEST['ctf'][$this->Name()]['start']) ? $_REQUEST['ctf'][$this->Name()]['start'] : 0;
		$start = ($currentStart + $this->pageSize < $this->TotalCount()) ? $currentStart + $this->pageSize : $this->TotalCount() % $this->pageSize > 0;
		if($currentStart >= $start-1) {
			return null;
		}
		return $this->BaseLink() . "&ctf[{$this->Name()}][start]={$start}{$this->filterString()}";
	}
	
	function LastLink() {
		$pageSize = ($this->TotalCount() % $this->pageSize > 0) ? $this->TotalCount() % $this->pageSize : $this->pageSize;
		$start = $this->totalCount - $pageSize;
		
		
		// Check if there is only one page, or if we are on last page
		if($this->totalCount <= $pageSize || (isset($_REQUEST['ctf'][$this->Name()]['start']) &&  $_REQUEST['ctf'][$this->Name()]['start'] >= $start)) {
			return null;
		}
		
		return $this->BaseLink() . "&ctf[{$this->Name()}][start]=$start{$this->filterString()}";
	}
	
	function FirstItem() {
		return isset($_REQUEST['ctf'][$this->Name()]['start']) ? $_REQUEST['ctf'][$this->Name()]['start'] + 1 : 1;
	}
	
	function LastItem() {
		if(isset($_REQUEST['ctf'][$this->Name()]['start'])) {
			return $_REQUEST['ctf'][$this->Name()]['start'] + min($this->pageSize, $this->TotalCount() - $_REQUEST['ctf'][$this->Name()]['start']);
		} else {
			return min($this->pageSize, $this->TotalCount());
		}
	}
	
	function TotalCount() {
		if($this->totalCount) {
			return $this->totalCount;
		}
		if($this->customSourceItems) {
			return $this->customSourceItems->Count();
		}
		$countQuery = $this->getQuery();
		$countQuery->orderby = array();
		$baseClass = ClassInfo::baseDataClass($this->sourceClass);

		// we can't clear the select if we're relying on its output by a HAVING clause
		if(count($countQuery->having) || count($countQuery->groupby)) {
			$records = $countQuery->execute();
			// TODO figure out how to use COUNT and GROUBY together to produce a single rowcount
			$this->totalCount = $records->numRecords();
		} else {
			$countQuery->select = array();
			$countQuery->groupby = array();
			$countQuery->select[] = "COUNT(DISTINCT {$baseClass}.ID) AS TotalCount";
			$records = $countQuery->execute();
			$record = $records->nextRecord();
			$this->totalCount = $record['TotalCount'];
		}

		return $this->totalCount;
	}
	
	
	
	/**
	 * #################################
	 *           Search
	 * #################################
	 * 
	 * @todo Not fully implemented at the moment
	 */
	 
	 /**
	  * Compile all request-parameters for search and pagination
	  * (except the actual list-positions) as a query-string.
	  * 
	  * @return String URL-parameters
	  */
	 function filterString() {
		
	}
	
	
	
	/**
	 * #################################
	 *           CSV Export
	 * #################################
	 */
	 function setFieldListCsv($fields) {
	 	$this->fieldListCsv = $fields;
	 }
	
	/**
	 * Set the CSV separator character.  Defaults to ,
	 */
	function setCsvSeparator($csvSeparator) {
		$this->csvSeparator = $csvSeparator;
	}
	
	/**
	 * Remove the header row from the CSV export
	 */
	function removeCsvHeader() {
		$this->csvHasHeader = false;
	}
	 
	/**
	 * Exports a given set of comma-separated IDs (from a previous search-query, stored in a HiddenField).
	 * Uses {$csv_columns} if present, and falls back to {$result_columns}.
	 * 
	 * @todo Make relation-syntax available (at the moment you'll have to use custom sql) 
	 */
	function export() {
		
		$now = Date("d-m-Y-H-i");
		$fileName = "export-$now.csv";
		$separator = $this->csvSeparator;
		$csvColumns = ($this->fieldListCsv) ? $this->fieldListCsv : $this->fieldList;

		$fileData = "";
		
		if($this->csvHasHeader) {
			$fileData .= "\"" . implode("\"{$separator}\"",array_values($csvColumns)) . "\"";
			$fileData .= "\n";
		}

		// get data
		$dataQuery = $this->getCsvQuery();
		$records = $dataQuery->execute();
		$sourceClass = $this->sourceClass;
		$dataobject = new $sourceClass();
		$items = $dataobject->buildDataObjectSet($records, 'DataObjectSet');
		
		if($items) {
			foreach($items as $item) {
				$columnData = array();
				foreach($csvColumns as $columnName => $columnTitle) {
					$tmpColumnData = "\"" . str_replace("\"", "\"\"", $item->$columnName) . "\"";
					$tmpColumnData = str_replace(array("\r", "\n"), "", $tmpColumnData);
					$columnData[] = $tmpColumnData;
				}
				$fileData .= implode($separator, $columnData);
				$fileData .= "\n";
			}
			HTTP::sendFileToBrowser($fileData, $fileName);
		} else {
			user_error("No records found", E_USER_ERROR);
		}

	}
	
	/**
	 * We need to instanciate this button manually as a normal button has no means of adding inline onclick-behaviour.
	 */
	function ExportLink() {
		return Director::absoluteURL($this->FormAction()) . "&action_callfieldmethod&fieldName={$this->Name()}&methodName=export";
	}

	function printall() {
		Requirements::clear();
		Requirements::css('cms/css/typography.css');
		Requirements::css('cms/css/cms_right.css');
		Requirements::css('sapphire/css/TableListField_print.css');
		$vd = new ViewableData();
		return $vd->customise(array(
			'Content' => $this->customise(array(
				'Print' => true
			))->renderWith($this->template)
		))->renderWith('TableListField_printable');
	}

	function PrintLink() {
		$link = Director::absoluteURL($this->FormAction()) . "&action_callfieldmethod&fieldName={$this->Name()}&methodName=printall";
		if(isset($_REQUEST['ctf'][$this->Name()]['sort'])) {
			$link = HTTP::setGetVar("ctf[{$this->Name()}][sort]",Convert::raw2xml($_REQUEST['ctf'][$this->Name()]['sort']), $link);
		}
		return $link;
	}
	
	/**
	 * #################################
	 *           Utilty
	 * #################################
	 */
	function Utility() {
		$links = new DataObjectSet();
		if($this->can('export')) {
			$links->push(new ArrayData(array(
				'Title' => _t('TableListField.CSVEXPORT', 'Export to CSV'),
				'Link' => $this->ExportLink()
			)));
		}
		if($this->can('print')) {
			$links->push(new ArrayData(array(
				'Title' => _t('TableListField.PRINT', 'Print'),
				'Link' => $this->PrintLink()
			)));
		}
		return $links;
		
	}
	
	function ajax_refresh() {
		// compute sourceItems here instead of Items() to ensure that
		// pagination and filters are respected on template accessors
		//$this->sourceItems();
		
		$response = $this->renderWith($this->template);
		FormResponse::update_dom_id($this->id(), $response);
		FormResponse::set_non_ajax_content($response);
		return FormResponse::respond();
	}
	
	function setFieldCasting($casting) {
		$this->fieldCasting = $casting;
	}

	function setFieldFormatting($formatting) {
		$this->fieldFormatting = $formatting;
	}
	
	/**
	 * @return String
	 */
	function Name() {
		return $this->name;
	}
	
	function Title() {
	  // adding translating functionality
	  // this is a bit complicated, because this parameter is passed to this class
	  // and should come here translated already
	  // adding this to TODO probably add a method to the classes
	  // to return they're translated string
	  // added by ruibarreiros @ 27/11/2007
		return singleton($this->sourceClass)->singular_name();
	}
	
	function NameSingular() {
	  // same as Title()
	  // added by ruibarreiros @ 27/11/2007
	        return singleton($this->sourceClass)->singular_name();
	}

	function NamePlural() {
	  // same as Title()
	  // added by ruibarreiros @ 27/11/2007
		return singleton($this->sourceClass)->plural_name();
	} 
	
	function setTemplate($template) {
		$this->template = $template;
	}
	
	function BaseLink() {
		$link = $this->FormAction() . "&action_callfieldmethod&fieldName={$this->Name()}&ctf[ID]={$this->sourceID()}&methodName=ajax_refresh&SecurityID=" . Session::get('SecurityID');
		if(isset($_REQUEST['ctf'][$this->Name()]['sort'])) {
			$link = HTTP::setGetVar("ctf[{$this->Name()}][sort]", $_REQUEST['ctf'][$this->Name()]['sort']);
		}
		if(isset($_REQUEST['ctf'][$this->Name()]['dir'])) {
			$link = HTTP::setGetVar("ctf[{$this->Name()}][dir]", $_REQUEST['ctf'][$this->Name()]['dir']);
		}
		return str_replace('&amp;','&',$link);
	}
	
	/**
	 * Returns the action of the surrounding form - needed to maintain context on subsequent calls.
	 * It is only needed to embed this field into a form if you want to use more than "display-functionality".
	 * We try to mirror the existing GET-properties to achieve the same application-state.
	 * 
	 * @return String
	 */
	function FormAction() {
		$params = $_GET;
		
		// we don't want this to be overriding our new actions
		unset($params['executeForm']); 
		unset($params['fieldName']); 
		unset($params['url']);
		unset($params['methodName']);
		unset($params['forcehtml']);
		// TODO Refactor
		unset($params['ctf']);
		$params['ctf'][$this->Name()]['search'] = (isset($_REQUEST['ctf'][$this->Name()]['search'])) ? $_REQUEST['ctf'][$this->Name()]['search'] : null;
		$params['SecurityID'] = Session::get('SecurityID');
		
		// unset all actions (otherwise they override action_callfieldmethod)
		foreach($params as $paramKey => $paramVal) {
			if(strpos($paramKey, 'action_') === 0) {
				unset($params[$paramKey]);
			}
		} 
		
		
		try {
			$link = $this->form->FormAction();
			$link .= (!strpos($link,'?')) ? '?' : '&'; 
			$link .= urldecode (http_build_query($params));
		} catch(Exception $e) {
			user_error('Please embed this field into a form if you want to use actions such as "add", "edit" or "delete"', E_USER_ERROR);
		}
		return $link;
	}

	/**
	 * Returns a link by which we can access this form
	 */
	function FormObjectLink($formName) {
		return $this->form->FormAction() . ".ReferencedField.$formName&fieldName={$this->Name()}";
	}
	
	/**
	 * @return Int
	 */
	function sourceID() {
		$idField = $this->form->dataFieldByName('ID');
		if(!isset($idField)) {
			user_error("TableListField needs a formfield named 'ID' to be present", E_USER_ERROR);
		}
		return $idField->Value();
	}

	/**
	 * Get part of class ancestry for css-class-usage.
	 * Avoids having to subclass just to built templates with new css-classes.
	 */	
	function Classes() {
		global $_ALL_CLASSES;
		
		$items = array();
		$parents = $_ALL_CLASSES['parents'][$this->class];
	  	foreach($parents as $parent) {
			if(!in_array($parent,$_ALL_CLASSES['parents']["TableListField"])) {
				$items[] = $parent;
			}
		}
		$items[] = $this->class;
		if($this->template != $this->class) {
			$items[] = $this->template;
		}

		return implode(" ", $items) . ' ' . $this->extraClass();
	}
	
	 
	 
	 
	/**
	 * #########################
	 *       Highlighting
	 * #########################
	 */
	function setHighlightConditions($conditions) {
		$this->highlightConditions = $conditions;
	}
}

/**
 * A single record in a TableListField.
 * @package forms
 * @subpackage fields-relational
 * @see TableListField
 */
class TableListField_Item extends ViewableData {
	protected $item, $parent;
	
	function __construct($item, $parent) {
		$this->failover = $this->item = $item;
		$this->parent = $parent;
		parent::__construct();
	}
	
	function ID() {
		return $this->item->ID;
	}
	
	function Parent() {
		return $this->parent;
	}
	
	function Fields() {
		$list = $this->parent->FieldList();
		foreach($list as $fieldName => $fieldTitle) {
			// This supports simple FieldName syntax
			if(strpos($fieldName,'.') === false) {
				$value = ($this->item->val($fieldName)) ? $this->item->val($fieldName) : $this->item->$fieldName;
			// This support the syntax fieldName = Relation.RelatedField				
			} else {					
				$fieldNameParts = explode('.', $fieldName)	;
				$tmpItem = $this->item;
				for($j=0;$j<sizeof($fieldNameParts);$j++) {
					$relationMethod = $fieldNameParts[$j];
					$idField = $relationMethod . 'ID';
					if($j == sizeof($fieldNameParts)-1) {
						$value = $tmpItem->$relationMethod;
					} else {
						$tmpItem = $tmpItem->$relationMethod();
					}
				}
			}
			// casting
			if(array_key_exists($fieldName, $this->parent->fieldCasting)) {
				$fieldType = $this->parent->fieldCasting[$fieldName];
				if(strpos($fieldType,'->') === false) {
					$castingFieldType = $fieldType;
					$castingField = new $castingFieldType($fieldName);
					$castingField->setValue($value);
					$value = $castingField->XML();
				} else {
					$fieldTypeParts = explode('->', $fieldType);
					$castingFieldType = $fieldTypeParts[0];	
					$castingMethod = $fieldTypeParts[1];
					$castingField = new $castingFieldType($fieldName);
					$castingField->setValue($value);
					$value = $castingField->$castingMethod();
				}
			}

			// formatting
			$item = $this->item;
			if(array_key_exists($fieldName, $this->parent->fieldFormatting)) {
				$format = str_replace('$value', "__VAL__", $this->parent->fieldFormatting[$fieldName]);
				$format = preg_replace('/\$([A-Za-z0-9-_]+)/','$item->$1', $format);
				$format = str_replace('__VAL__', '$value', $format);
				eval('$value = "' . $format . '";');
			}
						
			$fields[] = new ArrayData(array(
				"Name" => $fieldName, 
				"Title" => $fieldTitle,
				"Value" => $value,
			));
		}
		
		return new DataObjectSet($fields);
	}
	
	function Markable() {
		return $this->parent->Markable;
	}
	
	function Can($mode) {
		return $this->parent->Can($mode);
	}

	function BaseLink() {
		return $this->parent->FormAction() . "&action_callfieldmethod&fieldName={$this->parent->Name()}&ctf[childID]={$this->item->ID}";
	}

	function DeleteLink() {
		return $this->BaseLink() . "&methodName=delete";
	}
	
	function MarkingCheckbox() {
		$name = $this->parent->Name() . '[]';
		
		if($this->parent->IsReadOnly || !$this->Can('edit'))
			return "<input class=\"checkbox\" type=\"checkbox\" name=\"$name\" value=\"{$this->item->ID}\" disabled=\"disabled\" />";
		else
			return "<input class=\"checkbox\" type=\"checkbox\" name=\"$name\" value=\"{$this->item->ID}\" />";
	}
	
	function HighlightClasses() {
		$classes = array();
		foreach($this->parent->highlightConditions as $condition) {
			$rule = str_replace("\$","\$this->item->", $condition['rule']);
			$ruleApplies = null;
			eval('$ruleApplies = ('.$rule.');');
			if($ruleApplies) {
				if($condition['exclusive']) {
					return $condition['class'];
				} else {
					$classes[] = $condition['class']; 					
				}
			}
		}
		
		return (count($classes) > 0) ? " " . implode(" ", $classes) : false;
	}
	
	/**
	 * Legacy: Please use permissions instead
	 */
	function IsReadOnly() {
		return $this->parent->Can('delete');
	}
}

?>

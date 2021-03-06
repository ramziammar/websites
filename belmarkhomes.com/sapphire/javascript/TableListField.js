TableListField = Class.create();
TableListField.prototype = {
	
	deleteConfirmMessage: "Are you sure you want to delete this record?",
	
	errorMessage: "Error talking to server",
	
	initialize: function() {
		var rules = {};
		
		rules['#'+this.id+' table.data a.deletelink'] = {
			onclick: this.deleteRecord.bind(this)
		};
		
		rules['#'+this.id+' th a'] = {
			onclick: this.paginate.bind(this)
		};
		
		rules['#'+this.id+' th'] = {
			initialize: function() {
				var sortLinks = $$('span.sortLinkHidden a', this);
				if(sortLinks) Element.hide(sortLinks[0]);
			},	
			onmouseover: function(e) {
				var sortLinks = $$('span.sortLinkHidden a', this);
				if(sortLinks) Element.show(sortLinks[0]);
			},
			onmouseout: function(e) {
				var sortLinks = $$('span.sortLinkHidden a', this);
				if(sortLinks) Element.hide(sortLinks[0]);
			}
		};
		
		rules['#'+this.id+' div.PageControls a'] = {onclick: this.paginate.bind(this)};
		
		rules['#'+this.id+' table.data tr td.markingcheckbox'] = {
			onclick : function(e) {
			    // do nothing for clicks in marking box cells (e.g. if checkbox is missed)
			}
		};

		// initialize summary (if needed)
		// TODO Breaks with nested divs
		var summaryCols = $$('tfoot tr.summary td', this);
		this._summaryDefs = [];
		if(summaryCols) {
			rules['#'+this.id+' table.data tbody input'] = {
				onchange: function(e) {
					if (!e) e = window.event; // stupid IE
					// workaround for wrong scope with bind(this) and applyTo()
					var root = Event.findElement(e,'div');
					// TODO Fix slow $$()-calls and re-enable clientside summaries
					//root._summarise();
				}
			};
			rules['#'+this.id+' table.data  tbody select'] = {
				onchange: function(e) {
					if (!e) e = window.event; // stupid IE
					// workaround for wrong scope with bind(this) and applyTo()
					var root = Event.findElement(e,'div');
					// TODO Fix slow $$()-calls and re-enable clientside summaries
					//root._summarise();
				}.bind(this)
			};
		}
		
		Behaviour.register(rules);
		if(summaryCols) {
			//this._getSummaryDefs(summaryCols);
		}
	},
	
	/**
	 * TODO Evaluate server-status before visually deleting (might have caused an error)
	 */
	deleteRecord: function(e) {
		var img = Event.element(e);
		var link = Event.findElement(e,"a");
		var row = Event.findElement(e,"tr");
		
		// TODO ajaxErrorHandler and loading-image are dependent on cms, but formfield is in sapphire
		var confirmed = (this.deleteConfirmMessage != undefined) ? confirm(this.deleteConfirmMessage) : true;
		if(confirmed)
		{
			img.setAttribute("src",'cms/images/network-save.gif'); // TODO doesn't work in Firefox1.5+
			new Ajax.Request(
				link.getAttribute("href"),
				{
					method: 'post', 
					postBody: 'forceajax=1' + ($('SecurityID') ? '&SecurityID=' + $('SecurityID').value : ''),
					onComplete: function(){
						Effect.Fade(row);
					}.bind(this),
					onFailure: this.ajaxErrorHandler.bind(this)
				}
			);
		}
		Event.stop(e);
	},
	
	removeById: function(id) {
		var el =$('record-' + this.id + '-' + id);
		if(el) el.parentNode.removeChild(el);
		this._summarise();
	},
	
	paginate: function(e) {
		var el = Event.element(e);
		
		if(el.nodeName != "a") {
			var el = Event.findElement(e,"a");
		}
		new Ajax.Request( 
			el.href, 
			{
				postBody: 'update=1',
				onComplete: Ajax.Evaluator,
				onFailure: this.ajaxErrorHandler.bind(this)
			}
		);
		
		Event.stop(e);
		return false;
	},
	
	ajaxErrorHandler: function(response) {
		if(typeof(window.ajaxErrorHandler) == 'function') {
			window.ajaxErrorHandler();
		} else {
			alert(this.errorMessage);
		}
	},
	
	_getSummaryDefs: function(summaryCols) {
		summaryCols.each(function(col, pos) {
			if( col ) {
				var func = this._getSummaryFunction(col.className);
				this._summaryDefs[pos] = {col: col, pos: pos, func: func};
			}
		}.bind(this));
		
		this._summarise();
	},
	
	_summarise: function() {
		var rows = $$('tbody tr', this);
		if(!rows) return false;
		
		var columnData = [];
		// prepare the array (gets js-errors otherwise)
		var cols = $$('td', rows[0]);
		for(colPos=0; colPos<cols.length; colPos++) {
			columnData[colPos] = [];
		}

		for(rowPos=0; rowPos<rows.length; rowPos++) {
			// avoid wrong calculations for nested lists
			if(Element.hasClassName(rows[rowPos], "subitem")) continue;
			
			var cols = $$('td', rows[rowPos]);
			var colPos = 0;
			for(colPos; colPos<cols.length; colPos++) {
				//if(!columnData[colPos]) columnData[colPos] = [];
				if(this._summaryDefs[colPos] && this._summaryDefs[colPos].func) {
					columnData[colPos][rowPos] = this._getValue(cols[colPos]);
				} else {
					columnData[colPos][rowPos] = "";
				}
			}
		}

		for(colPos=0; colPos<columnData.length; colPos++) {
			if(this._summaryDefs[colPos] && this._summaryDefs[colPos].func) {
				var summaryVal = this._summaryDefs[colPos].func.apply(this,[columnData[colPos]]);
				this._summaryDefs[colPos].col.innerHTML = summaryVal;
			}
		}
	},
	
	_getSummaryFunction: function(func) {
		if(this[func] && typeof this[func] == "function") {
			// local
			return this[func];
		} else if(window[func] && typeof window[func] == "function") {
			// global
			return window[func];
		} else {
			// not existing
			return false
		}
	},
	
	_getValue: function(col) {
		var inputNode = $$('input', col);
		if(inputNode[0]) {
			return $F(inputNode[0]);
		}
		var selectNode = $$('select', col);
		if(selectNode[0]) {
			return $F(selectNode[0]);
		}
		return col.innerHTML.stripTags();			
	},
	
	/**
	 * ############# Summary Functions ##############
	 */
	
	sum: function(arr) {
		var sum = 0;
		arr.each(function(val) {
			sum += val*1; // convert to float
		});
		return sum;
	},

	sumCurrency: function(arr) {
		var sum = 0;
		arr.each(function(val) {
			if(!val) return;
			val = val.replace(/\$/,'');
			val = val.replace(/\,/,'');
			sum+= val*1; // convert to float
		});
		return sum.toCurrency();
	},
	
	max: function(arr) {
		return arr.max();
	}, 
	
	min: function(arr) {
		return arr.min();
	}
}

TableListRecord = Class.create();
TableListRecord.prototype = {
	
	onmouseover : function() {
		Element.addClassName(this,'over');
	},
	
	onmouseout : function() {
		Element.removeClassName(this,'over');
	},

	ajaxRequest : function(url, subform) {
		// Highlight the new row
		if(this.parentNode.selectedRow) {
			Element.removeClassName(this.parentNode.selectedRow,'current');
		}
		this.parentNode.selectedRow = this;
		Element.addClassName(this,'current');
		
		this.subform = $(subform);
		Element.addClassName(this, 'loading');
		statusMessage('loading');
		new Ajax.Request(url + this.id.replace('record-',''), {
			method : 'post', 
			postBody : 'ajax=1',
			onSuccess : this.select_success.bind(this),
			onFailure : ajaxErrorHandler
		});
	},
	
	select_success : function(response) {
		Element.removeClassName(this, 'loading');
		this.subform.loadNewPage(response.responseText);

		statusMessage('loaded','good');
	}
}

//TableListRecord.applyTo('div.TableListField tr');
TableListField.applyTo('div.TableListField');

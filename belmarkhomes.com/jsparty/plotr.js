/*
	Plotr.Base
	==========	
	Plotr.Base is part of the Plotr Charting Framework. Plotr.Base
	contains functions that are needed by the rest if the Plotr
	files.
	
	For license/info/documentation: http://www.solutoire.com/plotr/
	
	Credits
	-------
	Plotr is partially based on PlotKit (BSD license) by
	Alastair Tse <http://www.liquidx.net/plotkit>.
	
	Copyright
	---------
 	Copyright 2007 (c) Bas Wenneker <sabmann[a]gmail[d]com>
 	For use under the BSD license. <http://www.solutoire.com/plotr>
*/

if(typeof(Prototype) == 'undefined' || Prototype.Version < '1.5.1'){
	throw 'Plotr depends on the Prototype framework (version 1.5.1).';
}

if(typeof(Plotr) == 'undefined'){
	Plotr = {
		author:  'Bas Wenneker',
		name: 	 'Plotr',
		version: '0.2.0'
	};
}

if(typeof(Plotr.Base) == 'undefined'){
	Plotr.Base = {};
}

/** 
 * Returns an array of all values (!function) of the object obj.
 * 
 * @param {Object} 	obj
 * @return {Array} 	Array that contains all non function items of lst.
 */
Plotr.Base.items = function(obj){
	
	return Object.values(obj).reject(function(item){
		return (typeof(item) == 'function');
	});
};

/**
 * Check if obj is null or undefined.
 * 
 * @param {Object} 		obj
 * @return {Boolean} 	true if null or undefined.
 */
Plotr.Base.isNil = function(obj){
	
	return (obj === null || typeof(obj) == 'undefined');
};

/**
 * Checks if canvas simulation by ExCanvas is supported by 
 * the browser.
 *  
 * @return {Boolean} 	true if userAgent is IE
 */
Plotr.Base.excanvasSupported = function(){
	
	return (/MSIE/.test(navigator.userAgent) && !window.opera);
};

/**
 * Checks whether or not canvas is supported by the browser.
 * 
 * @param {String} canvasName	ID of the canvas element.
 * @return {Boolean} 			true if browser has canvas support supported.
 */
Plotr.Base.isSupported = function(canvasName){
    
    try{
		((Plotr.Base.isNil(canvasName)) ? document.createElement('canvas') : $(canvasName)).getContext('2d');
		
    }catch(e){
        
		var ie = navigator.appVersion.match(/MSIE (\d\.\d)/);
		return ((!ie) || (ie[1] < 6) || (navigator.userAgent.toLowerCase().indexOf('opera') != -1));
    }
	return true;
};

/**
 * Checks lst for the element with the largest length and
 * then returns an array with element 0 .. length.
 * 
 * @param {Array} arr	Array of arrays.
 * @return {Array} 		Returns an array with unique numbers.
 */
Plotr.Base.uniqueIndices = function(arr){
	
	return new ObjectRange(0,arr.max(function(item){		
		return item.length;
	})).toArray();	
};

Plotr.Base.sum = function(lst){
	
	return lst.flatten().inject(0, function(sum, n) { 
		return sum + n; 
	});
};

/** 
 * Plotr.Base.generateColorscheme returns an Array with string representations of
 * colors. The colors start from 'hex' and every color after hex has the same Hue
 * and Saturation but a leveled Brightness. So colors go from dark to light. 
 * If reverse is set to true, the colors go from light to dark. 
 * 
 * @param {String} hex		String with hexadecimal color code like '#ffffff' or 'ffffff'.
 * @param {Integer} size	Size of the colorScheme.
 * @return {Array} result	Returns a colorScheme Array of length 'size'.
 */
Plotr.Base.generateColorscheme = function(/*String*/ hex, /*String[]*/ setKeys){
	
	if(setKeys.length === 0){
		return new Hash();
	}
	
	var color = new Plotr.Color(hex);
	var result = new Hash();
	
	setKeys.each(function(index){
		result[index] = color.lighten(25).toHexString();
	});
	
	return result;
};

/**
 * Returns the default (green) colorScheme.
 * 
 * @param {Integer} size		Size of the colorScheme to return.
 * @return {Hash} colorScheme	Returns an Hash of colors of length 'size'.
 */
Plotr.Base.defaultScheme = function(/*String[]*/ setKeys){
	
	return Plotr.Base.generateColorscheme('#3c581a', setKeys);
};

/**
 * Function returns a colorScheme based on 'color' of length 'size'.
 * 
 * @see Plotr.Base.colorSchemes 
 * @param {String} color
 * @param {Array} setKeys		An array of keys in the dataset.
 * @return {Array} colorScheme	Returns an Array of colors of length 'size'.
 */
Plotr.Base.getColorscheme = function(/*String*/ color, /*String[]*/ setKeys){
	
	return Plotr.Base.generateColorscheme(Plotr.Base.colorSchemes[color] || color, setKeys);
};

/**
 * Storage of colors for predefined colorSchemes.
 */
Plotr.Base.colorSchemes = {
	red: '#6d1d1d',
	green: '#3c581a',
	blue: '#224565',
	grey: '#444444',
	black: '#000000'
};/*
	Plotr.Color
	==========	
	Plotr.Color is part of the Plotr Charting Framework.
	
	For license/info/documentation: http://www.solutoire.com/plotr/
	
	Credits
	-------
	Plotr is partially based on PlotKit (BSD license) by
	Alastair Tse <http://www.liquidx.net/plotkit>.
	
	Copyright
	---------
 	Copyright 2007 (c) Bas Wenneker <sabmann[a]gmail[d]com>
 	For use under the BSD license. <http://www.solutoire.com/plotr>
*/

Plotr.Color = Class.create();
Plotr.Color.prototype = {
	
	initialize: function(color){
		
		this.toHex(color);
	},
	
	/**
	 * Parses and stores the hex values of the input color string.
	 * 
	 * @param {String} color	Hex or rgb() css string.
	 */
	toHex: function(color){
		
		if(/^#?([\da-f]{3}|[\da-f]{6})$/i.test(color)){
		
			color = color.replace(/^#/, '').replace(/^([\da-f])([\da-f])([\da-f])$/i, "$1$1$2$2$3$3");
			this.r = parseInt(color.substr(0,2), 16);
			this.g = parseInt(color.substr(2,2), 16);
			this.b = parseInt(color.substr(4,2), 16);
   		}else if(/^rgb *\( *\d{0,3} *, *\d{0,3} *, *\d{0,3} *\)$/i.test(color)){
      		
			color = color.match(/^rgb *\( *(\d{0,3}) *, *(\d{0,3}) *, *(\d{0,3}) *\)$/i);
			this.r = parseInt(color[1], 10);
			this.g = parseInt(color[2], 10);
			this.b = parseInt(color[3], 10);
		}
		return this.check();
	},
	
	/**
	 * Lightens the color.
	 * 
	 * @param {integer} level	Level to lighten the color with.
	 */
	lighten: function(level){
		this.r += parseInt(level, 10);
   		this.g += parseInt(level, 10);
		this.b += parseInt(level, 10);

   		return this.check();
	},
	
	/**
	 * Darkens the color.
	 * 
	 * @param {integer} level	Level to darken the color with.
	 */
	darken: function(level){
		this.r -= parseInt(level, 10);
   		this.g -= parseInt(level, 10);
		this.b -= parseInt(level, 10);
		
   		return this.check();
	},
	
	/**
	 * Checks and validates if the hex values r, g and b are
	 * between 0 and 255.
	 */
	check: function(){
		if(this.r>255){this.r=255;}else if(this.r<0){this.r=0;}
		if(this.g>255){this.g=255;}else if(this.g<0){this.g=0;}
		if(this.b>255){this.b=255;}else if(this.b<0){this.b=0;}
	
	   return this;
	},
	
	/**
	 * Returns a css hex string.
	 */
	toHexString: function(){
		return '#' + [this.r, this.g, this.b].invoke('toColorPart').join('');
	},
	
	/**
	 * Returns a rgb() css string.
	 */
	toRgbString: function(){
		return 'rgb(' + this.r + ', ' + this.g + ', ' + this.b + ')';		
	},
	
	/**
	 * Returns a rgba() css string.
	 * 
	 * @param {Integer} alpha	rgba() css string.
	 */
	toRgbaString: function(alpha){
		return 'rgba(' + this.r + ', ' + this.g + ', ' + this.b + ', ' + alpha +')';		
	}	
	
};/*
	Plotr.Canvas
	============	
	Plotr.Canvas is part of the Plotr Charting Framework.
	
	For license/info/documentation: http://www.solutoire.com/plotr/
	
	Credits
	-------
	Plotr is partially based on PlotKit (BSD license) by
	Alastair Tse <http://www.liquidx.net/plotkit>.
	
	Copyright
	---------
 	Copyright 2007 (c) Bas Wenneker <sabmann[a]gmail[d]com>
 	For use under the BSD license. <http://www.solutoire.com/plotr>
*/

if(typeof(Plotr.Base) == 'undefined'){
	throw 'Plotr.Canvas depends on Plotr.Base.';
}

/**
 * Plotr.Canvas
 * 
 * @namespace Plotr 
 */
Plotr.Canvas = {
	
	/**
	 * Sets options of this chart. Current options are:
	 * - drawBackground: whether a background should be drawn. {Boolean}
	 * - backgroundLineColor: color of backgroundlines. {String}
	 * - backgroundColor: background color. {String}
	 * - padding: padding. {Object}
	 * - colorScheme: Array of colors used for chart. {Array}
	 * - strokeColor: color of a stroke. {String}
	 * - strokeWidth: width of a stroke. {Number}
	 * - shouldFill: whether bars/lines/pies should be filled. {Boolean}
	 * - shouldStroke: whether strokes should be drawn. {Boolean}
	 * - drawXAxis: whether the X axis should be drawn. {Boolean}
	 * - drawYAxis: whether the Y axis should be drawn. {Boolean}
	 * - axisTickSize: size of a tick in pixels. {Number}
	 * - axisLineColor: color of axis lines. {String}
	 * - axisLineWidth: line width of axis. {Number}
	 * - axisLabelColor: axis label color. {String}
	 * - axisLabelFont: font familily used for labels. {String}
	 * - axisLabelFontSize: font size used for labels. {String}
	 * - axisLabelWidth: axis label width. {Number} 
	 * - barWidthFillFraction: sets the bar width (>1 will cause bars to overlap eachother). {Integer} 
	 * - barOrientation: whether bars are horizontal. {'horizontal','vertical'} 
	 * - xOriginIsZero: whether or not the origin of the X axis starts at zero. {Boolean}
	 * - yOriginIsZero: whether or not the origin of the Y axis starts at zero. {Boolean}
	 * - xAxis: values of xAxis {[xmin,xmax]}
	 * - yAxis: values of yAxis {[ymin,ymax]}
	 * - xTicks: labels for the X axis. {[{label: "somelabel", v: value}, ..]} (label = optional)
	 * - yTicks: labels for the Y axis. {[{label: "somelabel", v: value}, ..]} (label = optional)
	 * - xNumberOfTicks: number of ticks on X axis when xTicks is null. {Integer}
	 * - yNumberOfTicks: number of ticks on Y axis when yTicks is null. {Integer}
	 * - xTickPrecision: decimals for the labels on the X axis. {Integer}
	 * - yTickPrecision: decimals for the labels on the Y axis. {Integer}
	 * - shadow: whether or not to show shadow. {Boolean}
	 * 
	 * @param {Object} options - Object with options.
	 */
	setOptions: function(options){
		
		if(!this.dataSets){
			this.dataSets = new Hash();
		}
		
		this.options = Object.extend({
	        drawBackground: 		true,
			backgroundLineColor:	'#ffffff',
	        backgroundColor: 		'#f5f5f5',
	        padding: 				{left: 30, right: 30, top: 5, bottom: 10},
			colorScheme: 			Plotr.Base.defaultScheme(this.dataSets.keys()),
			strokeColor: 			'#ffffff',
	        strokeWidth: 			2,
	        shouldFill: 			true,
			shouldStroke: 			true,
	        drawXAxis: 				true,
	        drawYAxis: 				true,			
	        axisTickSize: 			3,
	        axisLineColor: 			'#000000',
	        axisLineWidth: 			1.0,
	        axisLabelColor: 		'#666666',
	        axisLabelFont: 			'Arial',
	        axisLabelFontSize: 		9,
			axisLabelWidth: 		50,
			barWidthFillFraction:	0.75,
			barOrientation: 		'vertical',
        	xOriginIsZero: 			true,
			yOriginIsZero:			true,
			xAxis: 					null,
        	yAxis:					null,
			xTicks: 				null,
			yTicks: 				null,
			xNumberOfTicks: 		10,
			yNumberOfTicks: 		10,
			xTickPrecision: 		1,
        	yTickPrecision: 		1,
			pieRadius: 				0.4,
			shadow:					true
	    }, options || {});		
	},
	
	/**
	 * Resets options and datasets of this chart.
	 */
	reset: function(){
		
		// Set options to their defaults.
		this.setOptions();
		
		// Empty the datasets.
		this.dataSets = new Hash();
		
		// Stop the delay.
		if(!!this.renderDelay){
			this.renderDelay.stop();
			delete this.renderDelay;
		}
	},
	
	/**
	 * The constructor of Plotr.Canvas. 
	 * 
	 * @see setOptions
	 * @param {String} element  - Canvas element ID.
	 * @param {Plotr.Chart} chart - Chart object to render.
	 * @param {Object} options - Options.
	 */
	_initCanvas: function(element){
		
		this.canvasNode = $(element);
		this.containerNode = this.canvasNode.parentNode;
		Element.setStyle(this.containerNode,{position: 'relative',width: this.canvasNode.width + 'px'});	
		this.isIE = Plotr.Base.excanvasSupported();
		
	    if(this.isIE && !Plotr.Base.isNil(G_vmlCanvasManager)){
			
	        this.maxTries = 20;
			this.renderStack = new Hash();
	        this.canvasNode = G_vmlCanvasManager.initElement(this.canvasNode);			
	    }
		
		if(!this.canvasNode){
			throw 'Plotr.Canvas(): Could\'nt find canvas.';
		}else if(Plotr.Base.isNil(this.containerNode) || this.containerNode.nodeName.toLowerCase() != 'div'){
			throw 'Plotr.Canvas(): Canvas element is not enclosed by a <div> element.';	
		}else if(!this.isIE && !(Plotr.Base.isSupported(element))){
        	throw "Plotr.Canvas(): Canvas is not supported.";
		}
		
		this.xlabels = [];
    	this.ylabels = [];
		
		this.area = {
 	        x: this.options.padding.left,
 	        y: this.options.padding.top,
 	        w: this.canvasNode.width - this.options.padding.left - this.options.padding.right,
 	        h: this.canvasNode.height - this.options.padding.top - this.options.padding.bottom
 	    };
	},
	
	/**
	 * This function renders the background in the canvas element.
	 * 
	 * @param {String} [element] - (optional) ID of the canvas element to render in.
	 */
	_render: function(element){
		
		if(!!element){
			this._initCanvas(element);
		}
	
		if(this.options.drawBackground){
			this._renderBackground();
		}
	},
	
	_ieWaitForVML: function(element, options){
		
		if(!!element){
			this.renderStack.merge({element: options});
		}
		
		try{
			if(!!this.canvasNode){	
				this.canvasNode.getContext("2d");					
			} else {
				$(element).getContext("2d");
			}
		} catch(e){
			if(!!this.renderDelay){
				this.renderDelay = new PeriodicalExecuter(function(){
					if(!!this.canvasNode){	
						this.render(this.canvasNode,options);					
					} else {
						this.render(element,options);
					}					
				}.bind(this), 0.5);
			}else if(this.maxTries-- <= 0){
				this.renderDelay.stop();
			}
			return true;
		}
		
		if(!!this.renderDelay){

			this.renderDelay.stop();
			delete this.renderStack[element || this.canvasNode];
		}
		
		return false;
	},
	
	/**
	 * Sets the colorScheme used for the chart.
	 */
	setColorscheme: function(){
		var scheme = this.options.colorScheme;

		if(typeof(scheme) == 'object'){ 
			return;
		} else if(typeof(scheme) == 'string'){
			
			if(this.type == 'pie'){
				this.options.colorScheme = Plotr.Base.getColorscheme(scheme, new ObjectRange(0,this.stores[0].length).toArray());
			}else{
				this.options.colorScheme = Plotr.Base.getColorscheme(scheme, this.dataSets.keys());
			}
		} else { 
			throw 'Plotr.Canvas.setColorscheme(): colorScheme is invalid!';
		}
	},
	
	/**
	 * Renders the background of the chart.
	 */
	_renderBackground: function(){
		var cx = this.canvasNode.getContext('2d');
		cx.save();
	    cx.fillStyle = this.options.backgroundColor;
			
        cx.fillRect(this.area.x, this.area.y, this.area.w, this.area.h);
        cx.strokeStyle = this.options.backgroundLineColor;
        cx.lineWidth = 1.5;
        
        var ticks = this.yticks;
        var horiz = false;
        if(this.type == 'bar' && this.options.barOrientation == 'horizontal'){
			ticks = this.xticks;
            horiz = true;
        }
        
		var drawBackgroundLines = function(tick){
			var x1 = 0, x2 = 0, y1 = 0, y2 = 0;
			
			if(horiz){
				x1 = x2 = tick[0] * this.area.w + this.area.x;
                y1 = this.area.y;
                y2 = y1 + this.area.h;
			}else{
				x1 = this.area.x;
                y1 = tick[0] * this.area.h + this.area.y;
                x2 = x1 + this.area.w;
                y2 = y1;
			}
			
			cx.beginPath();
            cx.moveTo(x1, y1);
            cx.lineTo(x2, y2);
            cx.closePath();
        	cx.stroke();
		}.bind(this);			
		ticks.each(drawBackgroundLines);
		
		cx.restore();
	},
	
	/**
	 * Renders the axis for line charts.
	 */
	_renderLineAxis: function(){
		this._renderAxis();
	},
	
	/**
	 * Renders axis.
	 */
	_renderAxis: function(){
	    if(!this.options.drawXAxis && !this.options.drawYAxis){
	        return;
		}
	
	    var cx = this.canvasNode.getContext('2d');
	
	    var labelStyle = {
			position: 'absolute',
	        fontSize: this.options.axisLabelFontSize + 'px',			
			fontFamily: this.options.axisLabelFont,
	        zIndex: 10,
	        color: this.options.axisLabelColor,
	        width: this.options.axisLabelWidth + 'px',
	        overflow: 'hidden'
		};
		
	    cx.save();
	    cx.strokeStyle = this.options.axisLineColor;
	    cx.lineWidth = this.options.axisLineWidth;
		
	    if(this.options.drawYAxis){
	        if(this.yticks){
				var collectYLabels = function(tick){
					if(typeof(tick) == 'function'){
						return;
					} 
					
	                var x = this.area.x;
	                var y = this.area.y + tick[0] * this.area.h;
					
	                cx.beginPath();
	                cx.moveTo(x, y);
	                cx.lineTo(x - this.options.axisTickSize, y);
	                cx.closePath();
	                cx.stroke();
					
					var label = document.createElement('div');
					label.appendChild(document.createTextNode(tick[1]));	
					Element.setStyle(label, Object.extend(labelStyle,{
						top: (y - this.options.axisLabelFontSize) + 'px',
						left: (x - this.options.padding.left - this.options.axisTickSize) + 'px',
						width: (this.options.padding.left - this.options.axisTickSize * 2) + 'px',
						textAlign: 'right'
					}));				
	                this.containerNode.appendChild(label);
	                return label;
				}.bind(this);
				this.ylabels = this.yticks.collect(collectYLabels);
	        }
	
	        cx.beginPath();
	        cx.moveTo(this.area.x, this.area.y);
	        cx.lineTo(this.area.x, this.area.y + this.area.h);
	        cx.closePath();
	        cx.stroke();
	    }
		
		if(this.options.drawXAxis){
	        if(this.xticks){
				var collectXLabels = function(tick){
					if(typeof(tick) == 'function'){
						return;
					}
					
	                var x = this.area.x + tick[0] * this.area.w;
                	var y = this.area.y + this.area.h;
					
	                cx.beginPath();
	                cx.moveTo(x, y);
	                cx.lineTo(x, y + this.options.axisTickSize);
	                cx.closePath();
	                cx.stroke();
					
	                var label = document.createElement('div');
	                label.appendChild(document.createTextNode(tick[1]));
					
	                Element.setStyle(label, Object.extend(labelStyle,{
						top: (y + this.options.axisTickSize) + 'px',
						left: (x - this.options.axisLabelWidth/2) + 'px',
						width: this.options.axisLabelWidth + 'px',
						textAlign: 'center'
					}));
					
	                this.containerNode.appendChild(label);
	                return label;
				}.bind(this);
				this.xlabels = this.xticks.collect(collectXLabels);
	        }
	
	        cx.beginPath();
	        cx.moveTo(this.area.x, this.area.y + this.area.h);
	        cx.lineTo(this.area.x + this.area.w, this.area.y + this.area.h);
	        cx.closePath();
	        cx.stroke();
	    }		
		cx.restore();
	}
};/*
	Plotr.Chart
	==========	
	Plotr.Chart is part of the Plotr Charting Framework.
	
	For license/info/documentation: http://www.solutoire.com/plotr/
	
	Credits
	-------
	Plotr is partially based on PlotKit (BSD license) by
	Alastair Tse <http://www.liquidx.net/plotkit>.
	
	Copyright
	---------
 	Copyright 2007 (c) Bas Wenneker <sabmann[a]gmail[d]com>
 	For use under the BSD license. <http://www.solutoire.com/plotr>
*/

if(typeof(Plotr.Base) == 'undefined'){
	throw 'Plotr.Chart depends on Plotr.Base.';
}


/**
 * Plotr.Chart
 * 
 * @alias Plotr.Chart
 * @namespace Plotr 
 */
Plotr.Chart = {
	
	/**
	 * The constructor of Plotr.Chart.
	 * 
	 * @alias initialize
	 * @see Plotr.Canvas.setOptions
	 * @param {String} type - Choose from {'bar'}.
	 * @param {Object} options - Object with options.
	 */
	initialize: function(element, options){
		this.setOptions(options);
		this.sets = 0;
		this.xticks = this.yticks = [];
		this.dataSets = new Hash();
		
		if(!Plotr.Base.isNil(this.options.xAxis)){
	        this.minxval = this.options.xAxis[0];
	        this.maxxval = this.options.xAxis[1];
	        this.xscale = this.maxxval - this.minxval; 
	    } else {
	        this.minxval = 0;
	        this.maxxval = this.xscale = null;
	    }
	
	    if(!Plotr.Base.isNil(this.options.yAxis)){
	        this.minyval = this.options.yAxis[0];
	        this.maxyval = this.options.yAxis[1];
	        this.yscale = this.maxyval - this.minyval;
	    } else {
	        this.minyval = 0;
	        this.maxyval = this.yscale = null;
	    }
	
	    this.minxdelta = 0;
	    this.xrange = this.yrange = 1;
		
		this._initCanvas(element);
	},
	
	/**
	 * Function adds the array to the dataSets object. Argument must be in 
	 * the form of: {['<setName>': [[0,1],[1,2]...<data>], ..}. The function also 
	 * keeps track of how many sets are added.
	 * 
	 * @alias addDataset
	 * @param {Object} arguments - Object with data
	 */
	addDataset: function(store){
		this.dataSets.merge(store);
	},
	
	/**
	 * This function makes it easy to parse a table and show it's
	 * data in a chart. The upper left corner has coordinates (x=0,y=0).
	 * 
	 * @alias addTable
	 * @param {String|Element} table - table id or element;
	 * @param {Integer} x - xcoordinate to start with data parsing
	 * @param {Integer} y - y coordinate to start with data parsing
	 * @param {Integer} xticks - row number of row with labels for xticks
	 */
	addTable: function(table, x, y, xticks){
		table = $(table);
		
		x = x || 0;
		y = y || 1;
		xticks = xticks || -1;
		
		var tr = table.tBodies[0].rows;
		var store = {};
		var labels = [];
		
		for(var i = y, ln = tr.length; i < ln; i++){
			var j = 0;		
			store['row_'+i] = Array.from(tr[i].cells).reject(function(cell,index){
				return index < x;
			}).collect(function(cell){
				return [j++, parseFloat(cell.innerHTML)];
			});
		}
		if(xticks >= 0){
			var tickIndex = 0;
			this.options.xTicks = Array.from(tr[xticks].cells).reject(function(cell,index){
				return index < x;
			}).collect(function(cell){
				return {v: tickIndex++, label: cell.innerHTML};
			});
		}
		this.addDataset(store);
	},
	
	addLegend: function(/*Element*/ element){
		// Create a list that will be the legend.
		var ul = $(document.createElement('ul'));		
		Element.setStyle(ul,{
			'listStyleType': 'none'
		});
		
		this.dataSets.each(function(/*Array*/ set, /*Integer*/ i){
			var li = $(document.createElement('li')).setStyle({
				'lineHeight': '20px'
			}).addClassName('legend_li');
			
			var div = $(document.createElement('div')).setStyle({
				'display': 		'inline',
				'position': 	'relative',
				'top':			'-2px',
				'border':		'1px solid #ccc',
				'padding':		'2px 0',
				'margin':		'2px',
				'width': 		'5px',			
				'fontSize': 	'5px'
			});
			
			var color = $(document.createElement('div')).setStyle({
				'display': 		'inline',
				'padding':		'0 6px',
				'margin':		'2px',
				'background': this.options.colorScheme[set.key],
				'color':	this.options.colorScheme[set.key]
			}).addClassName('legend_li_color');
			
			color.appendChild(document.createTextNode(i+1));
			div.appendChild(color);
			li.appendChild(div);
			li.appendChild(document.createTextNode(set.key));
			ul.appendChild(li);
		}.bind(this));
		
		// Add the list to the element.
		element.appendChild(ul);
	},
	
	/**
	 * This function does all the math. It'll process all the data that has to do
	 * with canvas measures.
	 * 
	 * @param {Object} options	Evaluate the chart with the given options.
	 */
	_eval: function(options){
		
		if(!!(options)){			
			this.setOptions(options);
		}
		
		this.stores = Plotr.Base.items(this.dataSets);
		this._evalXY();
		this.setColorscheme();
	},
	
	/**
	 * Processes measures.
	 */	
	_evalXY: function(){
		
		// Gather data for the x axis.
		var xdata = this.stores.collect(function(item){return item.pluck(0);}).flatten();
		if(!!!(this.options.xAxis)){
			
			this.minxval = (this.options.xOriginIsZero) ? 0 : parseFloat(xdata.min());
			this.maxxval = parseFloat(xdata.max());
		}else{
		
			this.minxval = this.options.xAxis[0];
	        this.maxxval = this.options.xAxis[1];
			this.xscale = this.maxxval - this.minxval;
		}
		this.xrange = this.maxxval - this.minxval;
		this.xscale = (this.xrange === 0) ? 1.0 : 1/this.xrange;	
		
		// Gather data for the y axis.
		var ydata = this.stores.collect(function(item){return item.pluck(1);}).flatten();
		if(!!!(this.options.yAxis)){
			
			this.minyval = (this.options.yOriginIsZero) ? 0 : parseFloat(ydata.min());
			this.maxyval = parseFloat(ydata.max());
		}else {
			
			this.minyval = this.options.yAxis[0];
	        this.maxyval = this.options.yAxis[1];
			this.yscale = this.maxyval - this.minyval;
		}
		
	    this.yrange = this.maxyval - this.minyval;
		this.yscale = (this.yrange === 0) ? 1.0 : 1/this.yrange;
	},
	
	/**
	 * Evaluates ticks for X and Y axis.
	 * 
	 * @alias _evalLineTicks
	 */
	_evalLineTicks: function(){		
		this._evalLineTicksForXAxis();
		this._evalLineTicksForYAxis();
	},
	
	/**
	 * Evaluates ticks for X axis.
	 * 
	 * @alias _evalLineTicksForXAxis
	 */
	_evalLineTicksForXAxis: function(){	    
	    
		if(this.options.xTicks){	
			
			this.xticks = this.options.xTicks.collect(function (tick){
				
				var label = tick.label;
	            if(Plotr.Base.isNil(label)){
	                
					label = tick.v.toString();
				}
				
	            var pos = this.xscale * (tick.v - this.minxval);
	            if((pos >= 0.0) && (pos <= 1.0)){
	                
					return [pos, label];
	            }
			}.bind(this));
			
	    } else if(this.options.xNumberOfTicks){
	        var uniqx = Plotr.Base.uniqueIndices(this.stores);
	        var roughSeparation = this.xrange / this.options.xNumberOfTicks;
	        var tickCount = 0;
	
	        this.xticks = [];
	        for (var i = 0; i <= uniqx.length; i++){
	           
			    if((uniqx[i] - this.minxval) >= (tickCount * roughSeparation)){
	               
				    var pos = this.xscale * (uniqx[i] - this.minxval);
	                if((pos > 1.0) || (pos < 0.0)){
	                    continue;
					}
	                
					this.xticks.push([pos, uniqx[i]]);
	                tickCount++;
	            }
				
	            if(tickCount > this.options.xNumberOfTicks){
	                break;
				}
	        }
    	}
	},
	
	/**
	 * Evaluates ticks for Y axis.
	 * 
	 * @alias _evalLineTicksForYAxis
	 */
	_evalLineTicksForYAxis: function(){	    
	    
		if(this.options.yTicks){
		
			this.yticks = this.options.yTicks.collect(function(tick){
				
				var label = tick.label;
	            if(Plotr.Base.isNil(label)){
	            
				    label = tick.v.toString();
				}
	            
				var pos = 1.0 - (this.yscale * (tick.v - this.minyval));
	            if((pos >= 0.0) && (pos <= 1.0)){
	            
				    return [pos, label];
	            }
			}.bind(this));
	    }else if(this.options.yNumberOfTicks){ 
	        
			this.yticks = [];
			var prec = this.options.yTickPrecision;
			var num = this.yrange/this.options.yNumberOfTicks;
			var roughSeparation = (num < 1 && this.options.yTickPrecision == 0) ? 1 : num.toFixed(this.options.yTickPrecision);
			
	        for (var i = 0; i <= this.options.yNumberOfTicks; i++){
	            var yval = this.minyval + (i * roughSeparation);
	            var pos = 1.0 - ((yval - this.minyval) * this.yscale);
	            
				if((pos > 1.0) || (pos < 0.0)){
	                continue;
				}
	            
				this.yticks.push([pos, yval.toFixed(prec)]);
	        }
    	}
	}
};/*
	Plotr.BarChart
	==============	
	Plotr.BarChart is part of the Plotr Charting Framework.
	
	For license/info/documentation: http://www.solutoire.com/plotr/
	
	Credits
	-------
	Plotr is partially based on PlotKit (BSD license) by
	Alastair Tse <http://www.liquidx.net/plotkit>.
	
	Copyright
	---------
 	Copyright 2007 (c) Bas Wenneker <sabmann[a]gmail[d]com>
 	For use under the BSD license. <http://www.solutoire.com/plotr>
*/

if (typeof(Plotr.Base) == 'undefined' || 
	typeof(Plotr.Canvas) == 'undefined' ||
	typeof(Plotr.Chart) == 'undefined'){
			
	throw 'Plotr.BarChart depends on Plotr.{Base,Canvas,Chart}.';
}

Plotr.BarChart = Class.create();
Object.extend(Plotr.BarChart.prototype, Plotr.Canvas);
Object.extend(Plotr.BarChart.prototype, Plotr.Chart);
Object.extend(Plotr.BarChart.prototype,{
	/**
	 * Type of chart.
	 */
	type: 'bar',
	
	/**
	 * Renders the chart with the specified options. The optional parameters
	 * can be used to render a barchart in a different canvas element with new options.
	 * 
	 * @alias render
	 * @param {String} [element] - (optional) ID of a canvas element.
	 * @param {Object} [options] - (optional) Options for rendering.
	 */
	render: function(element, options) {		
		
		if(this.isIE && this._ieWaitForVML(element,options)){
			// Wait for IE because the canvas element is
			// rendered with a small delay.
		
			return;
		}
		
		this._evaluate(options);
		this._render(element);
		this._renderBarChart();				
		this._renderBarAxis();
		
		if(this.isIE){
			for(var el in this.renderStack){
				if(typeof(this.renderStack[el]) != 'function'){
					this.render(el,this.renderStack[el]);
					break;
				}
			}
		}
	},
	
	/**
	 * Evaluates all the data needed to plot the chart.
	 * 
	 * @param {Object} [options]	Evaluate the chart with the given options.
	 */
	_evaluate: function(options) {
		
		this._eval(options);	
			
		if(this.options.barOrientation == 'vertical'){			
			// Evaluate a vertical bar chart.
			this._evalBarChart();
						
		}else{
			// Evaluate a horizontal bar chart.
			this._evalHorizBarChart();
		}
		this._evalBarTicks();
	},
	
	/**
	 * Evaluates measures for vertical bars.
	 * 
	 * @alias _evalBarChart
	 */
	_evalBarChart: function() {		
		var uniqx = Plotr.Base.uniqueIndices(this.stores);		
		var xdelta = 10000000;
	    for(var j = 1; j < uniqx.length; j++){
	        xdelta = Math.min(Math.abs(uniqx[j] - uniqx[j-1]), xdelta);
	    }
		
		var barWidth = 0;
	    var barWidthForSet = 0;
	    var barMargin = 0;
	    if (uniqx.length == 1) {
	        xdelta = 1.0;
	        this.xscale = 1.0;
	        this.minxval = uniqx[0];
	        barWidth = 1.0 * this.options.barWidthFillFraction;
	        barWidthForSet = barWidth / this.stores.length;
	        barMargin = (1.0 - this.options.barWidthFillFraction)/2;
	    } else {
			this.xscale = (this.xrange == 1) ? 0.5 : (this.xrange == 2) ? 1/3.0 : (1.0 - 1/this.xrange)/this.xrange;
	        barWidth = xdelta * this.xscale * this.options.barWidthFillFraction;
	        barWidthForSet = barWidth / this.stores.length;
	        barMargin = xdelta * this.xscale * (1.0 - this.options.barWidthFillFraction)/2;
	    }
		
		this.minxdelta = xdelta;
		this.bars = [];
		
		this.dataSets.each(function(store, i){			
			store.value.each(function(item){
				var rect = {
	                x: ((parseFloat(item[0]) - this.minxval) * this.xscale) + (i * barWidthForSet) + barMargin,
	                y: 1.0 - ((parseFloat(item[1]) - this.minyval) * this.yscale),
	                w: barWidthForSet,
	                h: ((parseFloat(item[1]) - this.minyval) * this.yscale),
	                xval: parseFloat(item[0]),
	                yval: parseFloat(item[1]),
	                name: store.key
	            };
				
				if ((rect.x >= 0.0) && (rect.x <= 1.0) && 
	                (rect.y >= 0.0) && (rect.y <= 1.0)) {
	                this.bars.push(rect);
	            }
			}.bind(this));	        
		}.bind(this));	    
	},
	
	/**
	 * Evaluates measures for vertical bars.
	 * 
	 * @alias _evalHorizBarChart
	 */
	_evalHorizBarChart: function() {		
		var uniqx = Plotr.Base.uniqueIndices(this.stores);	
		var xdelta = 10000000;
	    for (var i = 1; i < uniqx.length; i++) {
	        xdelta = Math.min(Math.abs(uniqx[i] - uniqx[i-1]), xdelta);
	    }
					
		var barWidth = 0;
	    var barWidthForSet = 0;
	    var barMargin = 0;
	    if (uniqx.length == 1) {
	        xdelta = 1.0;
	        this.xscale = 1.0;
	        this.minxval = uniqx[0];
	        barWidth = 1.0 * this.options.barWidthFillFraction;
	        barWidthForSet = barWidth / this.stores.length;
	        barMargin = (1.0 - this.options.barWidthFillFraction)/2;
	    } else {
       	 	this.xscale = (1.0 - xdelta/this.xrange)/this.xrange;
        	barWidth = xdelta * this.xscale * this.options.barWidthFillFraction;
        	barWidthForSet = barWidth / this.stores.length;
        	barMargin = xdelta * this.xscale * (1.0 - this.options.barWidthFillFraction)/2;			
		}
		
		this.minxdelta = xdelta;
		this.bars = [];
		this.dataSets.each(function(store, i){			
			store.value.each(function(item){
				var rect = {
	                y: ((parseFloat(item[0]) - this.minxval) * this.xscale) + (i * barWidthForSet) + barMargin,
	                x: 0.0,
	                h: barWidthForSet,
	                w: ((parseFloat(item[1]) - this.minyval) * this.yscale),
	                xval: parseFloat(item[0]),
	                yval: parseFloat(item[1]),
	                name: store.key
	            };
				
				rect.y = (rect.y <= 0.0) ? 0.0 : (rect.y >= 1.0) ? 1.0 : rect.y;	            
	            if ((rect.x >= 0.0) && (rect.x <= 1.0)) {
	                this.bars.push(rect);
	            }
			}.bind(this));	        
		}.bind(this));	 
	},
	
	/**
	 * Evaluates bar ticks.
	 * 
	 * @alias _evalBarTicks
	 */
	_evalBarTicks: function() {
		this._evalLineTicks();
		this.xticks = this.xticks.collect(function(tick) {
			return [tick[0] + (this.minxdelta * this.xscale)/2, tick[1]];
		}.bind(this));
		
		if (this.options.barOrientation == 'horizontal') {
			var tmp = this.xticks;			
			this.xticks = this.yticks.collect(function(tick) {
				return [1.0 - tick[0], tick[1]];
			}.bind(this));
			this.yticks = tmp;
	    }
	},
	
	/**
	 * Renders a horizontal/vertical bar chart.
	 * 
	 * @alias _renderBarChart
	 */
	_renderBarChart: function() {
		var cx = this.canvasNode.getContext('2d');
					
		var drawBar = function(bar, index) {
			
			// Setup context.			
			cx.lineWidth = this.options.strokeWidth;
			cx.fillStyle = this.options.colorScheme[bar.name];
			cx.strokeStyle = this.options.strokeColor;
			
			// Gather bar proportions.
			var x = this.area.w * bar.x + this.area.x;
 	    	var y = this.area.h * bar.y + this.area.y;
        	var w = this.area.w * bar.w;
        	var h = this.area.h * bar.h;
      
       		if((w < 1) || (h < 1)){
				// Dont draw when the bar is too small.
				return;
			} 
	        	
			if(this.options.shadow){
				// Draw fake shadow.
				cx.fillStyle = "rgba(0,0,0,0.15)";
			
				if(this.options.barOrientation == 'vertical'){
					cx.fillRect(x-2, y-2, w+4, h+2);
				}else{
					cx.fillRect(x, y-2, w+2, h+4);
				}
				
				cx.fillStyle = this.options.colorScheme[bar.name];
			}
				
			if(this.options.shouldFill){
				// Fill rectangle.
				cx.fillRect(x, y, w, h);
			}		
			
			if(this.options.shouldStroke){
				// Draw stroke.						
				cx.strokeRect(x, y, w, h);
			}			
		}.bind(this);
		
		// Draw the bars.
		cx.save();
		this.bars.each(drawBar);
		cx.restore();		
	},
	
	/**
	 * Renders the axis for bar charts.
	 * 
	 * @alias _renderBarAxis
	 */
	_renderBarAxis: function() {
		this._renderAxis();
	}
});/*
	Plotr.LineChart
	===============	
	Plotr.LineChart is part of the Plotr Charting Framework.
	
	For license/info/documentation: http://www.solutoire.com/plotr/
	
	Credits
	-------
	Plotr is partially based on PlotKit (BSD license) by
	Alastair Tse <http://www.liquidx.net/plotkit>.
	
	Copyright
	---------
 	Copyright 2007 (c) Bas Wenneker <sabmann[a]gmail[d]com>
 	For use under the BSD license. <http://www.solutoire.com/plotr>
*/

if (typeof(Plotr.Base) == 'undefined' || 
	typeof(Plotr.Canvas) == 'undefined' ||
	typeof(Plotr.Chart) == 'undefined'){
			
	throw 'Plotr.LineChart depends on Plotr.{Base,Canvas,Chart}.';
}

Plotr.LineChart = Class.create();
Object.extend(Plotr.LineChart.prototype, Plotr.Canvas);
Object.extend(Plotr.LineChart.prototype, Plotr.Chart);
Object.extend(Plotr.LineChart.prototype,{
	/**
     * Type of chart we're dealing with.
 	 */
	type: 'line',
	
	/**
	 * Renders the chart with the specified options. The optional parameters
	 * can be used to render a linechart in a different canvas element with new options.
	 * 
	 * @param {String} [element] - (optional) ID of a canvas element.
	 * @param {Object} [options] - (optional) Options for rendering.
	 */
	render: function(element,options){		
		if(this.isIE && this._ieWaitForVML(element,options)){
			return;
		}
		
		this._evaluate(options);
		this._render(element);
		this._renderLineChart();
		this._renderLineAxis();
		
		if(this.isIE){
			for(var el in this.renderStack){
				if(typeof(this.renderStack[el]) != 'function'){
					this.render(el,this.renderStack[el]);
					break;
				}
			}
		}
	},
	
	/**
	 * This function does all the math. It'll process all the data needed to
	 * plot the chart.
	 * 
	 * @param {Object} options - (optional) evaluate the chart with the given options.
	 */
	_evaluate: function(options){
		this._eval(options);
		this._evalLineChart();
		this._evalLineTicksForXAxis();
		this._evalLineTicksForYAxis();
	},
	
	/**
	 * Processes specific measures for line charts.
	 */
	_evalLineChart: function(){
	    this.points = [];
	
		this.dataSets.each(function(store){			
			store.value.each(function(item){
				var point = {
	                x: ((parseFloat(item[0]) - this.minxval) * this.xscale),
	                y: 1.0 - ((parseFloat(item[1]) - this.minyval) * this.yscale),
	                xval: parseFloat(item[0]),
	                yval: parseFloat(item[1]),
	                name: store.key
	            };
				
				point.y = (point.y <= 0.0) ? 0.0 : (point.y >= 1.0) ? 1.0 : point.y;
	            
	            if((point.x >= 0.0) && (point.x <= 1.0)){
	                this.points.push(point);
	            }
			}.bind(this));	        
		}.bind(this));	    
	},
	
	_renderLineChart: function(){
	    var cx = this.canvasNode.getContext("2d");
		
		var preparePath = function(storeName,index){
				
			cx.beginPath();
            cx.moveTo(this.area.x, this.area.y + this.area.h);
			this.points.each(function(point){
				
				if(point.name == storeName){
                    cx.lineTo(this.area.w * point.x + this.area.x, this.area.h * point.y + this.area.y);
				}
			}.bind(this));
			
            cx.lineTo(this.area.w + this.area.x, this.area.h + this.area.y);
            cx.lineTo(this.area.x, this.area.y + this.area.h);
			
			if(this.options.shouldFill){
				cx.closePath();
			}else{
	        	cx.strokeStyle = this.options.colorScheme[storeName];
			    cx.stroke();
			}	
		}.bind(this);
		
		if(this.options.shouldFill){
			
			var drawLine = function(storeName, index){
				
				if(this.options.shadow){
					// Draw shadow.
					cx.save();
					cx.fillStyle = 'rgba(0,0,0,0.15)';				
					cx.translate(2, -2);
					preparePath(storeName,index);	
					cx.fill();				
					cx.restore();
				}
				
				// Fill line.
				cx.fillStyle = this.options.colorScheme[storeName];		
	            preparePath(storeName,index);
		        cx.fill();			    			
		        
				if (this.options.shouldStroke){
					// Draw stroke.
		            preparePath(storeName,index);
		            cx.stroke();
		        }     
			}.bind(this);
			
			// Draw the lines.
			cx.save();
			cx.lineWidth = this.options.strokeWidth;		
		    cx.strokeStyle = this.options.strokeColor;
			this.dataSets.keys().each(drawLine);		
			cx.restore();
		}else{
			cx.save();
			cx.lineWidth = this.options.strokeWidth;				
			this.dataSets.keys().each(preparePath);
			//cx.stroke();
			cx.restore();
		}
	}
});/*
	Plotr.PieChart
	==============	
	Plotr.PieChart is part of the Plotr Charting Framework.
	
	For license/info/documentation: http://www.solutoire.com/plotr/
	
	Credits
	-------
	Plotr is partially based on PlotKit (BSD license) by
	Alastair Tse <http://www.liquidx.net/plotkit>.
	
	Copyright
	---------
 	Copyright 2007 (c) Bas Wenneker <sabmann[a]gmail[d]com>
 	For use under the BSD license. <http://www.solutoire.com/plotr>
*/

if(typeof(Plotr.Base) == 'undefined' || 
	typeof(Plotr.Canvas) == 'undefined' ||
	typeof(Plotr.Chart) == 'undefined'){
			
	throw 'Plotr.PieChart depends on Plotr.{Base,Canvas,Chart}.';
}

Plotr.PieChart = Class.create();
Object.extend(Plotr.PieChart.prototype, Plotr.Canvas);
Object.extend(Plotr.PieChart.prototype, Plotr.Chart);
Object.extend(Plotr.PieChart.prototype,{
	/**
     * Type of chart we're dealing with.
 	 */
	type: 'pie',
	
	/**
	 * Renders the chart with the specified options.
	 * 
	 * @param {String} [element]	ID of a canvas element.
	 * @param {Object} [options]	Options for rendering.
	 */
	render: function(element,options){
		
		if(this.isIE && this._ieWaitForVML(element,options)){
			return;
		}

		this._evaluate(options);
		this._render(element);
		this._renderPieChart();
		this._renderPieAxis();
		
		if(this.isIE){
			for(var el in this.renderStack){
				if(typeof(this.renderStack[el]) != 'function'){
					this.render(el,this.renderStack[el]);
					break;
				}
			}
		}
	},	
	
	/**
	 * This function evaluates all the data needed
	 * to plot the chart.
	 * 
	 * @param {Object} [options]	Evaluate the chart with the given options.
	 */
	_evaluate: function(options){
		this._eval(options);
		this._evalPieChart();
		this._evalPieTicks();
	},
	
	/**
	 * Processes specific measures for pie charts.
	 */
	_evalPieChart: function(){
		var store = this.stores[0];
		var sum = Plotr.Base.sum(store.pluck(1));
		
		var angle = 0.0;
		this.slices = [];
		for(var i = 0, slice = null, fraction = null; i < store.length; i++){
			slice = store[i];
			if(slice[1] > 0){
				fraction = slice[1]/sum;
				this.slices.push({
					fraction: fraction,
					xval: slice[0],
					yval: slice[1],
					startAngle: 2 * angle * Math.PI,
					endAngle: 2 * (angle + fraction) * Math.PI
				});
				angle += fraction;
			}
		}
	},
	
	_renderPieChart: function(){
		var cx = this.canvasNode.getContext('2d');
				
		var centerx = this.area.x + this.area.w * 0.5;
    	var centery = this.area.y + this.area.h * 0.5;
		var radius = Math.min(this.area.w * this.options.pieRadius, this.area.h * this.options.pieRadius);
		
		if(this.isIE){
	        centerx = parseInt(centerx,10);
	        centery = parseInt(centery,10);
	        radius = parseInt(radius,10);
	    }
		
		var drawPie = function(slice){
			cx.beginPath();
			cx.moveTo(centerx, centery);
			cx.arc(centerx, centery, radius, 
                    slice.startAngle - Math.PI/2,
                    slice.endAngle - Math.PI/2,
                    false);
			cx.lineTo(centerx, centery);
       		cx.closePath();
		};
				
		if(this.options.shadow){
			cx.save();
			cx.fillStyle = "rgba(0,0,0,0.15)";
				
	        cx.beginPath();
			cx.moveTo(centerx, centery);
			cx.arc(centerx+1, centery+2, radius+1, 0, Math.PI*2, false);
			cx.lineTo(centerx, centery);
       		cx.closePath();
			cx.fill();
			cx.restore();
		}
		
		cx.save();
		this.slices.each(function(slice,i){
						
			if(Math.abs(slice.startAngle - slice.endAngle) > 0.001){
								
				cx.fillStyle = this.options.colorScheme[i];
				
				if(this.options.shouldFill){
					drawPie(slice);               	
	                cx.fill();
	            }
	            
	            if(this.options.shouldStroke){
					drawPie(slice);
	                cx.lineWidth = this.options.strokeWidth;
	                
					if(!!(this.options.strokeColor)){
	                    cx.strokeStyle = this.options.strokeColor;
					}
						       
	                cx.stroke();
	            }
			}
			
		}.bind(this));
		cx.restore();
		
	},
	
	_evalPieTicks: function(){
		this.xticks = [];
				
		if(!!(this.options.xTicks)){
			
			var lookup = [];
			this.slices.each(function(slice){
				lookup[slice.xval] = slice;
			});
			
			this.options.xTicks.each(function(tick){
				var slice = lookup[tick.v]; 
	            var label = tick.label || tick.v.toString();
				if(!!(slice)){
					label += ' (' + (slice.fraction * 100).toFixed(1) + '%)';
					this.xticks.push([tick.v, label]);
				}
			}.bind(this));
			
		}else{
			
			this.slices.each(function(slice){
				var label = slice.xval + ' (' + (slice.fraction * 100).toFixed(1) + '%)';
				this.xticks.push([slice.xval, label]);
			}.bind(this));			
		}
	},
	
	_renderPieAxis: function(){
		
		if(!this.options.drawXAxis){
        	return;
		}
		
		if(!!(this.xticks)){
			
			var lookup = [];
			this.slices.each(function(slice){
				lookup[slice.xval] = slice;
			});
			
			var centerx = this.area.x + this.area.w * 0.5;
		    var centery = this.area.y + this.area.h * 0.5;
		    var radius = Math.min(this.area.w * this.options.pieRadius,
		                          this.area.h * this.options.pieRadius);
			var labelWidth = this.options.axisLabelWidth;
			
			this.xticks.each(function(tick){
				var slice = lookup[tick[0]];
				
				// normalize the angle
				var normalisedAngle = (slice.startAngle + slice.endAngle)/2;
				if(normalisedAngle > Math.PI * 2){
					normalisedAngle = normalisedAngle - Math.PI * 2;
				}else if(normalisedAngle < 0){
					normalisedAngle = normalisedAngle + Math.PI * 2;
				}
					
				var labelx = centerx + Math.sin(normalisedAngle) * (radius + 10);
		        var labely = centery - Math.cos(normalisedAngle) * (radius + 10);
				
				var labelStyle = {
			        position: 'absolute',
			        zIndex: 11,
			        width: labelWidth + 'px',
			        fontFamily: this.options.axisLabelFont,
			        fontSize: this.options.axisLabelFontSize + 'px',
			        overflow: 'hidden',
			        color: this.options.axisLabelColor
			    };
				
				if(normalisedAngle <= Math.PI * 0.5){
		            // text on top and align left
					Object.extend(labelStyle, {
						textAlign: 'left',
						verticalAlign: 'top',
						left: labelx + 'px',
						top: (labely - this.options.axisLabelFontSize) + 'px'
					});
		        }else if((normalisedAngle > Math.PI * 0.5) && (normalisedAngle <= Math.PI)){
		            // text on bottom and align left
					Object.extend(labelStyle, {
						textAlign: 'left',
						verticalAlign: 'bottom',
						left: labelx + 'px',
						top: labely + 'px'
					});	
		        }else if((normalisedAngle > Math.PI) && (normalisedAngle <= Math.PI*1.5)){
		            // text on bottom and align right
					Object.extend(labelStyle, {
						textAlign: 'right',
						verticalAlign: 'bottom',
						left: (labelx  - labelWidth) + 'px',
						top: labely + 'px'
					});
		        }else {
		            // text on top and align right
					Object.extend(labelStyle, {
						textAlign: 'right',
						verticalAlign: 'bottom',
						left: (labelx  - labelWidth) + 'px',
						top: (labely - this.options.axisLabelFontSize) + 'px'
					});
		        }
				
				var label = document.createElement('div');
				label.appendChild(document.createTextNode(tick[1]));
				Element.setStyle(label, labelStyle);	
                this.containerNode.appendChild(label);
				this.xlabels.push(label);
				
			}.bind(this));		
		}
	}
});
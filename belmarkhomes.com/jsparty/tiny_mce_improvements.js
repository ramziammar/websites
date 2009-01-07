/**
 * Toolbar represents a single, template generated TinyMCE toolbar.
 */
Toolbar = Class.create();
Toolbar.prototype = {
	initialize: function() {
		if(Toolbar.firstInstance == null) Toolbar.firstInstance = this;
		
		this.buttons = this.getElementsByTagName('a');
		this.dropdowns = this.getElementsByTagName('select');
		this.items = [];
		
		// Make a combined list.  array.concat doesn't work :(
		var i,item;
		for(i=0;item=this.buttons[i];i++) this.items.push(item);
		for(i=0;item=this.dropdowns[i];i++) this.items.push(item);
		
		for(i=0;item=this.items[i];i++) item.holder = this;
		
		// this.disable();
	},
	
	destroy: function() {
		var i,item;
		if(this.items) for(i=0;item=this.items[i];i++) {
			item.holder = null;
		}
		this.items = null;
		this.buttons = null;
		this.dropdowns = null;
	},
	
	linkTo: function(editor) {
		var i,item;
		this.editor = editor;
		for(i=0;item=this.items[i];i++) item.linkTo(editor);
		
		this.hasFocus = true;
		this.enable();
	},
	setFocusTo: function(editor) {
		this.linkTo(editor);
	},
	removeFocus: function() {
		this.hasFocus = false;
		// Disable buttons after a short time, to prevent flickering when moving between items
		setTimeout(this.disableIfUnfocused.bind(this), 100);
	},
	toolbarGotFocus: function() {
		this.hasFocus = true;
	},
	
	disableIfUnfocused: function() {
		if(!this.hasFocus) this.disable();
	},
	
	disable: function() {
		// this.editor = null;
		var i,item;
		for(i=0;item=this.items[i];i++) if(item.disable) item.disable();
		// $('Form_EditorToolbarLinkForm').close();
		// $('Form_EditorToolbarImageForm').close();
	},
	enable: function() {
		var i,item;
		for(i=0;item=this.items[i];i++) if(item.enable) item.enable();
	},
	
	
	//----------------------------------------------------------------------------------------------//
	ssLink: function() {
		Element.hide('Form_EditorToolbarFlashForm');
		Element.hide('Form_EditorToolbarImageForm');
		$('Form_EditorToolbarLinkForm').toggle();
		this.clearSelectedButtons();
		if($('Form_EditorToolbarLinkForm').style.display == "none") {
			this.hidePanel();
		} else {
			this.showPanel();
			$('mce_editor_link').style.backgroundColor = '#cccccc';
			$('mce_editor_link').style.border = '1px solid #aaaaaa';
		}
	},
	
	ssImage: function() {
		Element.hide('Form_EditorToolbarFlashForm');
		Element.hide('Form_EditorToolbarLinkForm');
		$('Form_EditorToolbarImageForm').toggle();
		this.clearSelectedButtons();
		if($('Form_EditorToolbarImageForm').style.display == "none") {
			this.hidePanel();
		} else {
			this.showPanel();
			$('mce_editor_image').style.backgroundColor = '#cccccc';
			$('mce_editor_image').style.border = '1px solid #aaaaaa';
		}
	},

	ssFlash: function() {
		Element.hide('Form_EditorToolbarLinkForm');
		Element.hide('Form_EditorToolbarImageForm');
		$('Form_EditorToolbarFlashForm').toggle();
		this.clearSelectedButtons();
		if($('Form_EditorToolbarFlashForm').style.display == "none") {
			this.hidePanel();
		} else {
			this.showPanel();
			$('mce_editor_flash:flash').style.backgroundColor = '#cccccc';
			$('mce_editor_flash:flash').style.border = '1px solid #aaaaaa';
		}
	},
	
	showPanel: function() {
		// Can't use $('contentPanel'), as its in a different window
		window.parent.document.getElementById('contentPanel').style.display = "block";
		window.onresize();
	},
	
	hidePanel: function() {
		// Can't use $('contentPanel'), as its in a different window
		window.parent.document.getElementById('contentPanel').style.display = "none";
		fixRightWidth();
	},
	
	clearSelectedButtons: function() {
		$('mce_editor_image').style.backgroundColor = '';
		$('mce_editor_flash:flash').style.backgroundColor = '';
		$('mce_editor_link').style.backgroundColor = '';
		$('mce_editor_link').style.border = '';
		$('mce_editor_flash:flash').style.border = '';
		$('mce_editor_image').style.border = '';
	}
}


Toolbar.instance = function() {
	return Toolbar.firstInstance;
}


ToolbarButton = Class.create();
ToolbarButton.prototype = {
	initialize: function() {
		this.command = this.href.substr(this.href.indexOf('#')+1);
		this.href = null;
		this.image = this.getElementsByTagName('img')[0];
		this.disabled = false;
	},
	
	commandsWithUI: { 'mceInsertTable' : true, 'mceCharMap' : true, 'mcePasteWord' : true, 'mcePasteText': true },
	onclick: function() {
		if(!this.disabled) {
			try {
				if(this.holder[this.command]) (this.holder[this.command])();
				else if(this.editor) tinyMCE.execInstanceCommand(this.editor,this.command,this.commandsWithUI[this.command]);
			} catch(er) {
				alert(er.description);
			}
		}
		return false;
	},
	onmousedown: function() {
		return false;
	},
	linkTo: function(editor) {
		this.editor = editor;
	},
	onfocus: function(event) {
		if(this.holder) this.holder.toolbarGotFocus();
	},
	disable: function() {
		this.disabled = true; 
		Element.setOpacity(this.image, 0.2);
	},
	enable: function() {
		this.disabled = false;
		Element.setOpacity(this.image, 1);
	},
	destroy: function() {
		this.onclick = null;
		this.onmousedown = null;
		this.onfocus = null;
		
		if(this.image) this.image.destroy();
		
		this.editor = null;
		this.image = null;
		this.holder = null;
	}
}

ToolbarButtonImage = Class.create();
ToolbarButtonImage.prototype = {
	onmouseover: function() {
		if(!this.parentNode.disabled) this.className = 'mceButtonOver';
		//tinyMCE.switchClass(this,);
	},
	onmouseout: function() {
		if(!this.parentNode.disabled) this.className = 'mceButtonNormal';
		//tinyMCE.restoreClass(this);
	},
	onmousedown: function() {
		// if(!this.parentNode.disabled) tinyMCE.restoreAndSwitchClass(this,'mceButtonDown');
	},
	destroy: function() {
		this.onmouseover = null;
		this.onmousedown = null;
		this.onmouseout = null;

		this.editor = null;
		this.holder = null;
	}
}

ToolbarDropdown = Class.create();
ToolbarDropdown.prototype = {
	onchange: function () {
		if(this.editor) tinyMCE.execInstanceCommand(this.editor,this.name,false,this.options[this.selectedIndex].value);
	},
	onfocus: function(event) {
		if(this.holder) this.holder.toolbarGotFocus();
		tinyMCE.addSelectAccessibility(event, this, window);
	},
	onmousedown: function() {
		if(this.editor) tinyMCE.themes.advanced._setupCSSClasses(this.editor);
	},
	linkTo: function(editor) {
		this.editor = editor;
	},
	disable: function() {
		this.disabled = true;
	},
	enable: function() {
		this.disabled = false;
	},
	destroy: function() {
		this.onfocus = null;
		this.onmousedown = null;
		this.onchange = null;

		this.editor = null;
		this.holder = null;

		/*
		Event.stopObserving(this, 'focus', ToolbarButton.prototype.onfocus);
		Event.stopObserving(this, 'mousedown', ToolbarButton.prototype.onmousedown);
		Event.stopObserving(this, 'change', ToolbarButton.prototype.onchange);
		*/
	}	
}


ToolbarForm = Class.create();
ToolbarForm.prototype = {
	toggle: function() {
		if(this.style.display == 'block') this.close();
		else this.open();
	},
	close: function() {
		if(this.style.display == 'block') {
			this.style.display = 'none';
			window.onresize();
		}
	},
	open: function() {
		if(this.style.display != 'block') {
			this.style.display = 'block';
			window.onresize();
		}
	},
	onsubmit: function() {
		return false;
	}
}

LinkForm = Class.extend('ToolbarForm');
LinkForm.prototype = {
	initialize: function() {
		var i,item;
		for(i=0;item=this.elements.LinkType[i];i++) {
			item.parentForm = this;
			item.onclick = this.linkTypeChanged.bind(this);
		}
	},
	
	destroy: function() {
		this.ToolbarForm = null;
		this.onsubmit = null;
		
		var i,item;
		for(i=0;item=this.elements.LinkType[i];i++) {
			item.parentForm = null;
			item.onclick = null;
		}
	},
	
	linkTypeChanged: function(setDefaults) {
		var linkType = Form.Element.getValue(this.elements.LinkType);
		var list =  ['internal', 'external', 'file', 'email'];
		var i,item;
		for(i=0;item=list[i];i++) {
			$(item).style.display = (item == linkType) ? '' : 'none';
		}
		$('Anchor').style.display = (linkType == 'internal' || linkType == 'anchor') ? '' : 'none';
		$('Form_EditorToolbarLinkForm_TargetBlank').disabled = (linkType == 'file' || linkType == 'email');
		if(typeof setDefaults == 'undefined' || setDefaults) {
			$('Form_EditorToolbarLinkForm_TargetBlank').checked = (linkType != 'internal');
			$('Form_EditorToolbarLinkForm_Anchor').value = '';
		}
	},
	
	toggle: function() {
		this.ToolbarForm.toggle();
		this.respondToNodeChange();
	},
	
	open: function() {
		this.ToolbarForm.open();
		
		this.originalSelection = null;
		var mceInst = Toolbar.instance().editor;
		if(mceInst) {
			var rng = mceInst.getRng();
			var rngEl = rng.startContainer; 
			while(rngEl && rngEl.nodeName) {
				if(rngEl.nodeName.toLowerCase() == "a") {
					rng.selectNode(rngEl);
					break;
				}
				rngEl = rngEl.parentNode;
			}
			this.originalSelection = rng;
		}
	},
	
	respondToNodeChange: function() {
		if(this.style.display == 'block') {
			var i,data = this.getCurrentLink();
			if(data) {
				for(i in data) {
					if(this.elements[i]) {
						// console.log('setting ' + i + ' to ' + this.elements[i] );
						Form.Element.setValue(this.elements[i], data[i]);
					}
				}
				
			// If we haven't selected an existing link, then just make sure we default to "internal" for the link
			// type.
			} else {
				if(!Form.Element.getValue(this.elements.LinkType)) Form.Element.setValue(this.elements.LinkType, 'internal');
			}
			this.linkTypeChanged(data ? false : true);
		}
	},
	
	handleaction_insert: function() {
		var href;
		var target = null;
		
		switch(Form.Element.getValue(this.elements.LinkType)) {
			case 'internal':
				href = this.elements.internal.value + '/';
				if(this.elements.Anchor.value) href += '#' + this.elements.Anchor.value;
				if($('Form_EditorToolbarLinkForm_TargetBlank').checked) target = '_blank';
				break;

			case 'anchor':
				href = '#' + this.elements.Anchor.value; 
				if($('Form_EditorToolbarLinkForm_TargetBlank').checked) target = '_blank';
				break;
			
			case 'file':
				href = this.elements.file.value;
				target = '_blank';
				break;
			
			case 'email':
				href = 'mailto:' + this.elements.email.value; 
				break;

			case 'external':
			default:
				href = this.elements.external.value; 
				if($('Form_EditorToolbarLinkForm_TargetBlank').checked) target = '_blank';
				break;
		}
		
		/*
		if(this.originalSelection && (!Toolbar.instance().editor || Toolbar.instance().editor.getSel())) {
			if(this.originalSelection.select) {
				this.originalSelection.select();
			} else {
				var mceInst = Toolbar.instance().editor;
				var sel = mceInst.getSel();
				if(sel.addRange && sel.removeAllRanges) {
					sel.removeAllRanges();
					sel.addRange(this.originalSelection);
				}
				mceInst.selectedElement = mceInst.getFocusElement();
			}
		}
		*/
		
		// Try guessing the link element based on the selection, and if that doesn't work, use tinyMCE.linkElement
		var originalLink = tinyMCE.linkElement;
		this.getCurrentLink();
		if(!tinyMCE.linkElement) tinyMCE.linkElement = originalLink;
		
		TinyMCE_AdvancedTheme._insertLink(href, target, this.Description.value, null, null);
	},
	handleaction_remove: function() {
		tinyMCE.execInstanceCommand(Toolbar.instance().editor, 'unlink', false);
	},
	
	/**
	 * Return information about the currently selected link, suitable for population of the link
	 * form.
	 */
	getCurrentLink: function() {
		var selectedText = "";
		
		if(Toolbar.instance().editor) {
			var doc = Toolbar.instance().editor.getDoc();
			if (tinyMCE.isMSIE) {
				var rng = doc.selection.createRange();
				selectedText = rng.text;
			} else {
				if(Toolbar.instance().editor) selectedText = Toolbar.instance().editor.getSel().toString();
			}
		}
		
		if (!tinyMCE.linkElement) {
			if ((tinyMCE.selectedElement.nodeName.toLowerCase() != "img") && (selectedText.length <= 0))
				return {};
		}

		var href = "", target = "", title = "", onclick = "", action = "insert", style_class = "";
		
		// We use a separate field for linkDataSource from tinyMCE.linkElement.
		// If we have selected beyond the range of an <a> element, then use use that <a> element to get the link data source,
		// but we don't use it as the destination for the link insertion
		var linkDataSource = null;

		if (tinyMCE.selectedElement.nodeName.toLowerCase() == "a") {
			linkDataSource = tinyMCE.linkElement = tinyMCE.selectedElement;

		} else if(tinyMCE.selectedElement && (tinyMCE.selectedElement.getElementsByTagName('a').length > 0)) {
			linkDataSource = tinyMCE.selectedElement.getElementsByTagName('a')[0];
			tinyMCE.linkElement = null;

		} else {
			var sel = tinyMCE.selectedElement;
			while((sel = sel.parentNode) && sel.tagName && sel.tagName.toLowerCase() != 'body') {
				if(sel.tagName.toLowerCase() == 'a') {
					tinyMCE.linkElement = sel;
					Toolbar.instance().editor.selection.selectNode(tinyMCE.linkElement, false);
					break;
				}
			}
		}
		
		// Explicitly select a link if we've found one
		if(tinyMCE.linkElement)	Toolbar.instance().editor.selection.selectNode(tinyMCE.linkElement, false);
		
		// Is anchor not a link
		if (tinyMCE.linkElement != null && tinyMCE.getAttrib(tinyMCE.linkElement, 'href') == "")
			tinyMCE.linkElement = null;
		if (linkDataSource != null && tinyMCE.getAttrib(linkDataSource, 'href') == "")
			linkDataSource = null;

		if (linkDataSource) {
			href = tinyMCE.getAttrib(tinyMCE.linkElement, 'href');
			target = tinyMCE.getAttrib(tinyMCE.linkElement, 'target');
			title = tinyMCE.getAttrib(tinyMCE.linkElement, 'title');
              onclick = tinyMCE.getAttrib(tinyMCE.linkElement, 'onclick');
			style_class = tinyMCE.getAttrib(tinyMCE.linkElement, 'class');

			// Try old onclick to if copy/pasted content
			if (onclick == "")
				onclick = tinyMCE.getAttrib(tinyMCE.linkElement, 'onclick');

			onclick = tinyMCE.cleanupEventStr(onclick);

			// Fix for drag-drop/copy paste bug in Mozilla
			mceRealHref = tinyMCE.getAttrib(tinyMCE.linkElement, 'mce_real_href');
			if (mceRealHref != "")
				href = mceRealHref;

			href = eval(tinyMCE.settings['urlconverter_callback'] + "(href, tinyMCE.linkElement, true);");
			action = "update";
		}
		
		// Turn into relative
		if(href.match(new RegExp('^' + tinyMCE.settings['document_base_url'] + '(.*)$'))) {
			href = RegExp.$1;
		}
		
		if(href.match(/^mailto:(.*)$/)) {
			return {
				LinkType: 'email',
				email: RegExp.$1,
				Description: title
			}
		} else if(href.match(/^(assets\/.*)$/)) {
			return {
				LinkType: 'file',
				file: RegExp.$1,
				Description: title
			}
		} else if(href.match(/^#(.*)$/)) {
			return {
				LinkType: 'anchor',
				Anchor: RegExp.$1,
				Description: title,
				TargetBlank: target ? true : false
			}
		} else if(href.match(/^([^\/:]+)\/?(#.*)?$/)) {
			return {
				LinkType: 'internal',
				internal: RegExp.$1,
				Anchor: RegExp.$2 ? RegExp.$2.substr(1) : '',
				Description: title,
				TargetBlank: target ? true : false
			}
		} else if(href) {
			return {
				LinkType: 'external',
				external: href,
				Description: title,
				TargetBlank: target ? true : false
			}
		}
	}		
	
}

SideFormAction = Class.create();
SideFormAction.prototype = {
	initialize: function() {
		this.parentForm = this.parentNode;
		while(this.parentForm && this.parentForm.tagName.toLowerCase() != 'form') {
			this.parentForm = this.parentForm.parentNode;
		}
	},
	destroy: function() {
		this.parentForm = null;
		this.onclick = null;
		
	},
	onclick: function() {
		if(this.parentForm['handle' + this.name]) {
			this.parentForm['handle' + this.name]();
		} else {
			alert("Couldn't find form method handle" + this.name);
		}
		return false;
	}
}

ImageForm = Class.extend('ToolbarForm');
ImageForm.prototype = {
	initialize: function() {
		var __form = this;
		
		this.elements.AltText.onkeyup = function() {
			__form.update_params('AltText');
		};
		this.elements.CSSClass.onclick = this.elements.CSSClass.onkeyup = function() {
			__form.update_params('CSSClass');
		};
		this.elements.Width.onchange = function() {
			__form.update_params('Width');
		};
		this.elements.Height.onchange = function() {
			__form.update_params('Height');
		};
	},
	destroy: function() {
		this.ToolbarForm = null;
		this.onsubmit = null;

		this.elements.AltText.onkeyup = null;
		this.elements.CSSClass.onkeyup = null;
		this.elements.CSSClass.onclick = null;
		this.elements.Width.onchange = null;
		this.elements.Height.onchange = null;
	},
	update_params: function(updatedFieldName) {
		if(tinyMCE.imgElement) {
			tinyMCE.imgElement.alt = this.elements.AltText.value;
			tinyMCE.imgElement.className = this.elements.CSSClass.value;
			
			// Proportionate updating of heights
			if(updatedFieldName == 'Width') {
				tinyMCE.imgElement.width = this.elements.Width.value;
				tinyMCE.imgElement.removeAttribute('height');
				this.elements.Height.value = tinyMCE.imgElement.height;
				
			} else if(updatedFieldName == 'Height') {
				tinyMCE.imgElement.height = this.elements.Height.value;
				tinyMCE.imgElement.removeAttribute('width');
				this.elements.Width.value = tinyMCE.imgElement.width;
			}
		}
	},
	respondToNodeChange: function() {
		if(tinyMCE.imgElement) {
			this.elements.AltText.value = tinyMCE.imgElement.alt;
			this.elements.CSSClass.value = tinyMCE.imgElement.className;
			this.elements.Width.value = tinyMCE.imgElement.style.width ? parseInt(tinyMCE.imgElement.style.width) : tinyMCE.imgElement.width;
			this.elements.Height.value = tinyMCE.imgElement.style.height ? parseInt(tinyMCE.imgElement.style.height) : tinyMCE.imgElement.height;
		} else {
			this.elements.AltText.value = '';
			this.elements.CSSClass.value = 'left';
		}
	},
	
	selectImage: function(image) {
		if(this.selectedImage) {
			this.selectedImage.setAttribute("class", "");
		}
		this.selectedImage = image;
		this.selectedImage.setAttribute("class", "selectedImage");
		
		try {
			var imgTag = image.getElementsByTagName('img')[0];
			$('Form_EditorToolbarImageForm_Width').value = imgTag.className.match(/destwidth=([0-9.\-]+)([, ]|$)/) ? RegExp.$1 : null;
			$('Form_EditorToolbarImageForm_Height').value = imgTag.className.match(/destheight=([0-9.\-]+)([, ]|$)/) ? RegExp.$1 : null;
		} catch(er) {
		}
	},
	
	handleaction_insertimage: function() {
		if(this.selectedImage) {
			this.selectedImage.insert();
		}
	},
	
	handleaction_editimage: function() {
		if(this.selectedImage) {
			this.selectedImage.edit();
		}
	}
}

ImageThumbnail = Class.create();
ImageThumbnail.prototype = {
	destroy: function() {
		this.onclick = null;		
	},
	
	onclick: function(e) {
		$('Form_EditorToolbarImageForm').selectImage(this);
		return false;
	},
	
	edit: function() {
		var windowWidth = Element.getDimensions(window.top.document.body).width;
       var windowHeight = Element.getDimensions(window.top.document.body).height;
		var iframe = window.top.document.getElementById('imageEditorIframe');
		if(iframe != null) {
			iframe.parentNode.removeChild(iframe);
		}
		iframe = window.top.document.createElement('iframe');
		var fileToEdit = this.href;
		iframe.setAttribute("src","admin/ImageEditor?fileToEdit=" + fileToEdit);
		iframe.id = 'imageEditorIframe';
		iframe.style.width = windowWidth - 6 + 'px';
		iframe.style.height = windowHeight + 10 + 'px';
		iframe.style.zIndex = "1000";
		iframe.style.position = "absolute";
		iframe.style.top = "8px";
		iframe.style.left = "8px";
		window.top.document.body.appendChild(iframe);
		var divLeft = window.top.document.createElement('div');
		var divRight = window.top.document.createElement('div');
        divLeft.style.width = "8px";
        divLeft.style.height = "300%";
        divLeft.style.zIndex = "1000";
        divLeft.style.top = "0";
        divLeft.style.position = "absolute";
        divRight.style.width = "10px";
        divRight.style.height = "300%";
        divRight.style.zIndex = "1000";
        divRight.style.top = "0";
        divRight.style.position = "absolute";
        divRight.style.left = Element.getDimensions(divLeft).width + Element.getDimensions(iframe).width - 4 + 'px';
		window.top.document.body.appendChild(divLeft);
		window.top.document.body.appendChild(divRight);
		return;
	},
	
	insert: function() {
		var formObj = $('Form_EditorToolbarImageForm');
		var altText = formObj.elements.AltText.value;
		var cssClass = formObj.elements.CSSClass.value;
		var baseURL = document.getElementsByTagName('base')[0].href;
		var relativeHref = this.href.substr(baseURL.length);
		
		if(!tinyMCE.selectedInstance) tinyMCE.selectedInstance = Toolbar.instance().editor;
		if(tinyMCE.selectedInstance.contentWindow.focus) tinyMCE.selectedInstance.contentWindow.focus();
		
		TinyMCE_AdvancedTheme._insertImage(relativeHref, altText, 0, null, null, $('Form_EditorToolbarImageForm_Width').value, $('Form_EditorToolbarImageForm_Height').value, null, altText, null, null, cssClass);
		
		/*
		if(newImg) {
			newImg.className = cssClass;
			if(newImg.setActive) newImg.setActive();
			else if(newImg.focus) newImg.focus();
			behaveAs(newImg, MCEImageResizer);
		} else {
			alert(relativeHref + " couldn't be inserted");
		}
		*/
		
		return false;
	}
}

var selectedimage = false;

function reselectImage(transport) {
		if(selectedimage) {
			links = $('Image').getElementsByTagName('a');
			for(i =0; link = links[i]; i++) {
				var quesmark = link.href.lastIndexOf('?');
				image = link.href.substring(0, quesmark);
				console.log(image);
				if(image == selectedimage) {
					link.className = 'selectedImage';
					$('Form_EditorToolbarImageForm').selectedImage = link;
					break;
				}
			}
		}

		$('Image').reapplyBehaviour();
      this.addToTinyMCE = this.addToTinyMCE.bind(this);
      var childNodes = $('Image').childNodes[0].childNodes;
      var newImages = $A(childNodes).slice(childNodes.length - this.filesUploaded);
      newImages.each(function(item) {
          tinyMCEImageEnhancement.addToTinyMCE(item.childNodes[0]);
      });
      tinyMCEImageEnhancement.processInProgress = false;  
}

function imageEditorClosed() {
	if(self.refreshAsset) {
		refreshAsset();
	}
	if($('Form_EditorToolbarImageForm')) {
		if($('Form_EditorToolbarImageForm').style.display != "none") {
			// FInd the selected image
			links = $('Image').getElementsByTagName('a');
			for(i =0; link = links[i]; i++) {
				if(link.className == 'selectedImage') {
					var quesmark = link.href.lastIndexOf('?');
					selectedimage = link.href.substring(0, quesmark);
					break;
				}
			}
		
			// Trick the folder dropdown into registering a change, so the image thumbnails are reloaded
			folderID = $('Form_EditorToolbarImageForm_FolderID').value;
			$('Image').ajaxGetFiles(folderID, reselectImage);
		}
	}
}

FlashForm = Class.extend('ToolbarForm');
FlashForm.prototype = {
	initialize: function() {
	},
	destroy: function() {
		this.ToolbarForm = null;
		this.onsubmit = null;

	},
	update_params: function(event) {
		if(tinyMCE.imgElement) {
		}
	},
	respondToNodeChange: function() {
		if(tinyMCE.imgElement) {
		} else {
		}
	},
	selectFlash: function(flash) {
		if(this.selectedFlash) {
			this.selectedFlash.setAttribute("class", "");
		}
		this.selectedFlash = flash;
		this.selectedFlash.setAttribute("class", "selectedFlash");
	},
	handleaction_insertflash: function() {
		if(this.selectedFlash) {
			this.selectedFlash.insert();
		}
	}
}

FlashThumbnail = Class.create();
FlashThumbnail.prototype = {
	destroy: function() {
		this.onclick = null;		
	},
	
	onclick: function(e) {
		$('Form_EditorToolbarFlashForm').selectFlash(this);
		return false;
	},
	
	insert: function() {
		var formObj = $('Form_EditorToolbarFlashForm');
		var html = '';
		var baseURL = document.getElementsByTagName('base')[0].href;
		var relativeHref = this.href.substr(baseURL.length)
		var width = formObj.elements.Width.value;
		var height = formObj.elements.Height.value;
		
		if(!tinyMCE.selectedInstance) tinyMCE.selectedInstance = Toolbar.instance().editor;
		if(tinyMCE.selectedInstance.contentWindow.focus) tinyMCE.selectedInstance.contentWindow.focus();

		if (width == "") width = 100;
		if (height == "") height = 100;
		
		html += ''
		+ '<img src="cms/images/flash_large.jpg" '
		+ 'width="' + width + '" height="' + height + '" '
		+ 'border="0" alt="' + relativeHref + '" title="' + relativeHref + '" class="mceItemFlash" />';

		tinyMCE.execCommand("mceInsertContent", true, html);
		tinyMCE.selectedInstance.repaint();
		
		return false;
	}
}

LinkForm.applyTo('#Form_EditorToolbarLinkForm');
SideFormAction.applyTo('#Form_EditorToolbarLinkForm .Actions input');

ImageForm.applyTo('#Form_EditorToolbarImageForm');
ImageThumbnail.applyTo('#Form_EditorToolbarImageForm div.thumbnailstrip a');
SideFormAction.applyTo('#Form_EditorToolbarImageForm .Actions input');

FlashForm.applyTo('#Form_EditorToolbarFlashForm');
FlashThumbnail.applyTo('#Form_EditorToolbarFlashForm div.thumbnailstrip a');
SideFormAction.applyTo('#Form_EditorToolbarFlashForm .Actions input');

ToolbarButtonImage.applyTo('#mce_editor_toolbar a img');
ToolbarButton.applyTo('#mce_editor_toolbar a');
ToolbarDropdown.applyTo('#mce_editor_toolbar select');
Toolbar.applyTo('#mce_editor_toolbar');


/**
 * Image resizing
 */
MCEImageResizer = Class.create();
MCEImageResizer.prototype = {
	initialize: function() {
		TinyMCE.prototype.addEvent(this, 'click', this._onclick);
	},
	_onclick: function() {
		var form = $('Form_EditorToolbarImageForm');
		if(form) {
			form.elements.AltText.value = this.alt;
			form.elements.CSSClass.value = this.className;
		}
	},
	onresizestart: function() {
		this.prepareForResize();
		this.heightDiff = 0;
	},
	onresizeend: function() {
		this.resizeTo(this.style.width, this.style.height);
	},
	onmouseup: function() {
		if(this.parentNode.parentNode.className.match(/(^|\b)specialImage($|\b)/)) {
			this.ownerDoc().setActive();
			this.parentNode.parentNode.setActive();
		}
	},
	prepareForResize: function() {
		if(this.aspectRatio == null) {
			this.aspectRatio = this.height / this.width;
		}
	
		this.originalWidth = this.width;
		this.originalHeight = this.height;
	},

	ownerDoc: function() {
		var f =this.parentNode;
		while(f && f.tagName.toLowerCase() != 'body') f = f.parentNode;
		return f;
	},
	
	resizeTo: function(width, height) {
		var newWidth = parseInt(height);
		var newHeight = parseInt(height) - this.heightDiff;
		if(isNaN(newWidth)) newWidth = this.width;
		if(isNaN(newHeight)) newHeight = this.height;
		
		// Constrain to width of the window
		if((this.offsetLeft + this.offsetWidth + 20) > this.ownerDoc().offsetWidth)
			newWidth += (this.ownerDoc().offsetWidth - this.offsetLeft - this.offsetWidth - 20);
	
		if(this.aspectRatio) {
			// Figure out which dimension we have altered more
			var heightChange = this.originalHeight / this.height; 
			if(heightChange < 1) heightChange = 1/heightChange;
			
			var widthChange = this.originalWidth / this.width;
			if(widthChange < 1) widthChange = 1/widthChange;
			
			// Scale by the more constant dimension (so if you edit the height, change width to suit)
			if(widthChange > heightChange)
				newHeight = newWidth * this.aspectRatio;
			else
				newWidth = newHeight / this.aspectRatio;
		}

		this.style.width = newWidth + 'px';
		this.style.height = newHeight + 'px';
		this.width = newWidth;
		this.height = newHeight;	
		
		// Auto-size special image holders
		if(this.parentNode.parentNode.className.match(/(^|\b)specialImage($|\b)/)) {
			this.parentNode.parentNode.style.width = newWidth + 'px';
		}
	}
}

MCEDLResizer = Class.extend('MCEImageResize');
MCEDLResizer.prototype = {
	onresizestart: function() {
		var img = this.getElementsByTagName('img')[0];
		img.prepareForResize();
		img.heightDiff = this.offsetHeight - img.height;
	},
	onresizeend: function() {
		this.getElementsByTagName('img')[0].resizeTo(this.style.width, this.style.height);
	}
}

/**
 * These callback hook it into tinymce.  They need to be referenced in the TinyMCE config.
 */
function sapphiremce_setupcontent(editor_id, body, doc) {
	var allImages = body.getElementsByTagName('img');
	var i,img;
	for(i=0;img=allImages[i];i++) {
		behaveAs(img, MCEImageResizer);
	}

	var allDLs = body.getElementsByTagName('img');
	for(i=0;img=allDLs[i];i++) {
		if(img.className.match(/(^|\b)specialImage($|\b)/)) {
			behaveAs(img, MCEDLResizer);
		}
	}
}

function sapphiremce_cleanup(type, value) {
	if(type == 'get_from_editor') {
		// replace indented text with a <blockquote>
		value = value.replace(/<p [^>]*margin-left[^>]*>([^\n|\n\015|\015\n]*)<\/p>/ig,"<blockquote><p>$1</p></blockquote>");
	
		// replace VML pixel image references with image tags - experimental
		value = value.replace(/<[a-z0-9]+:imagedata[^>]+src="?([^> "]+)"?[^>]*>/ig,"<img src=\"$1\">");
		
		// Word comments
		value = value.replace(new RegExp('<(!--)([^>]*)(--)>', 'g'), ""); 
			
		// kill class=mso??? and on mouse* tags  
		value = value.replace(/([ \f\r\t\n\'\"])class=mso[a-z0-9]+[^ >]+/ig, "$1"); 
		value = value.replace(/([ \f\r\t\n\'\"]class=")mso[a-z0-9]+[^ ">]+ /ig, "$1"); 
		value = value.replace(/([ \f\r\t\n\'\"])class="mso[a-z0-9]+[^">]+"/ig, "$1"); 
		value = value.replace(/([ \f\r\t\n\'\"])on[a-z]+=[^ >]+/ig, "$1");
		value = value.replace(/ >/ig, ">"); 
	
		// remove everything that's in a closing tag
		value = value.replace(/<(\/[A-Za-z0-9]+)[ \f\r\t\n]+[^>]*>/ig,"<$1>");		
	}

	if(type == 'get_from_editor_dom') {
		var allImages =value.getElementsByTagName('img');
		var i,img;

		for(i=0;img=allImages[i];i++) {
			img.onresizestart = null;
			img.onresizeend = null;
			img.removeAttribute('onresizestart');
			img.removeAttribute('onresizeend');
		}

		var allDLs =value.getElementsByTagName('img');
		for(i=0;img=allDLs[i];i++) {
			if(img.className.match(/(^|\b)specialImage($|\b)/)) {
				img.onresizestart = null;
				img.onresizeend = null;
				img.removeAttribute('onresizestart');
				img.removeAttribute('onresizeend');
			}
		}
		
	}
	return value;
}

contentPanelCloseButton = Class.create();
contentPanelCloseButton.prototype = {
	onclick: function() {
		Element.hide('Form_EditorToolbarLinkForm');
		Element.hide('Form_EditorToolbarImageForm');
		Element.hide('Form_EditorToolbarFlashForm');
		$('mce_editor_toolbar').hidePanel();
		$('mce_editor_toolbar').clearSelectedButtons();
	}
}

contentPanelCloseButton.applyTo('#contentPanel h2 img');


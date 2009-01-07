<?php $val .= <<<SSVIEWER
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" >
<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<base href="
SSVIEWER;
$val .=  Director::absoluteBaseURL(); ;
 $val .= <<<SSVIEWER
" />
<title>
SSVIEWER;
$val .=  $item->XML_val("ApplicationName",null,true) ;
 $val .= <<<SSVIEWER
</title>

<link rel="stylesheet" type="text/css" href="cms/css/typography.css" />
<link rel="stylesheet" type="text/css" href="cms/css/layout.css" />
<link rel="stylesheet" type="text/css" href="cms/css/cms_left.css" />
<link rel="stylesheet" type="text/css" href="cms/css/cms_right.css" />
</head>

<body class="stillLoading">
	<div id="Loading" style="background: #FFF url(
SSVIEWER;
$val .=  $item->XML_val("LoadingImage",null,true) ;
 $val .= <<<SSVIEWER
) 50% 50% no-repeat; position: absolute;z-index: 100000;height: 100%;width: 100%;margin: 0;padding: 0;z-index: 100000;position: absolute;">
SSVIEWER;
$val .=  _t('LeftAndMain.ss.LOADING','Loading...',PR_HIGH) ;
 $val .= <<<SSVIEWER
</div>

	<div id="top">
		<div id="Logo" style="
SSVIEWER;
$val .=  $item->XML_val("LogoStyle",null,true) ;
 $val .= <<<SSVIEWER
">
	
SSVIEWER;
 if($item->hasValue("ApplicationLogoText")) {  ;
 $val .= <<<SSVIEWER

	<a href="http://www.silverstripe.com/">
SSVIEWER;
$val .=  $item->XML_val("ApplicationLogoText",null,true) ;
 $val .= <<<SSVIEWER
</a><br />
	
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

</div>
<ul id="MainMenu">

SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("MainMenu")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

	<li class="
SSVIEWER;
$val .=  $item->XML_val("LinkingMode",null,true) ;
 $val .= <<<SSVIEWER
" id="Menu-
SSVIEWER;
$val .=  $item->XML_val("Code",null,true) ;
 $val .= <<<SSVIEWER
"><a href="
SSVIEWER;
$val .=  $item->XML_val("Link",null,true) ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  $item->XML_val("Title",null,true) ;
 $val .= <<<SSVIEWER
</a></li>

SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

</ul>
	
	</div><div id="left" style="float:left">
		
SSVIEWER;
$val .=  $item->XML_val("Left",null,true) ;
 $val .= <<<SSVIEWER

	
	</div>
	<div id="separator" style="float:left">
		&nbsp;
	</div>
	<div class="right" id="right">
		
SSVIEWER;
$val .=  $item->XML_val("Right",null,true) ;
 $val .= <<<SSVIEWER

	</div>

	
SSVIEWER;
 if($item->hasValue("RightBottom")) {  ;
 $val .= <<<SSVIEWER

	<div class="right" id="rightbottom">
		
SSVIEWER;
$val .=  $item->XML_val("RightBottom",null,true) ;
 $val .= <<<SSVIEWER

	</div>
	
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

	
	<div id="contentPanel" style="display:none;">
		
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("EditorToolbar")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

			
SSVIEWER;
$val .=  $item->XML_val("ImageForm",null,true) ;
 $val .= <<<SSVIEWER

			
SSVIEWER;
$val .=  $item->XML_val("LinkForm",null,true) ;
 $val .= <<<SSVIEWER

			
SSVIEWER;
$val .=  $item->XML_val("FlashForm",null,true) ;
 $val .= <<<SSVIEWER

		
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

	</div>
	
	<div id="bottom">
		<div class="holder">
		<div id="logInStatus">
			<a href="http://www.silverstripe.com" title="
SSVIEWER;
$val .=  _t('LeftAndMain.ss.SSWEB','Silverstripe Website') ;
 $val .= <<<SSVIEWER
">SilverStripe CMS</a>&nbsp;-&nbsp;
			<abbr style="border-style: none" title="
SSVIEWER;
$val .=  _t('LeftAndMain.ss.APPVERSIONTEXT1',"This is the") ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("ApplicationName",null,true) ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  _t('LeftAndMain.ss.APPVERSIONTEXT2',"version that you are currently running, technically it's the CVS branch") ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  $item->XML_val("CMSVersion",null,true) ;
 $val .= <<<SSVIEWER
</abbr> &nbsp; &nbsp; &nbsp; 
			
SSVIEWER;
 array_push($itemStack, $item); if($loop = $item->obj("CurrentMember")) foreach($loop as $key => $item) { ;
 $val .= <<<SSVIEWER

			
SSVIEWER;
$val .=  _t('LeftAndMain.ss.LOGGEDINAS','Logged in as') ;
 $val .= <<<SSVIEWER
 <strong>
SSVIEWER;
 if($item->hasValue("FirstName") && $item->hasValue("Surname")) { ;
 $val .= <<<SSVIEWER

SSVIEWER;
$val .=  $item->XML_val("FirstName",null,true) ;
 $val .= <<<SSVIEWER
 
SSVIEWER;
$val .=  $item->XML_val("Surname",null,true) ;
 $val .= <<<SSVIEWER

SSVIEWER;
 } else if($item->hasValue("FirstName")) {  ;
 $val .= <<<SSVIEWER

SSVIEWER;
$val .=  $item->XML_val("FirstName",null,true) ;
 $val .= <<<SSVIEWER

SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER

SSVIEWER;
$val .=  $item->XML_val("Email",null,true) ;
 $val .= <<<SSVIEWER

SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER
</strong> | <a href="
SSVIEWER;
$val .=  $item->XML_val("BaseHref",null,true) ;
 $val .= <<<SSVIEWER
admin/myprofile" id="EditMemberProfile">
SSVIEWER;
$val .=  _t('LeftAndMain.ss.EDITPROFILE','Profile') ;
 $val .= <<<SSVIEWER
</a> | <a href="Security/logout" id="LogoutLink">
SSVIEWER;
$val .=  _t('LeftAndMain.ss.LOGOUT','log out') ;
 $val .= <<<SSVIEWER
</a>
		
SSVIEWER;
 } $item = array_pop($itemStack); ;
 $val .= <<<SSVIEWER

		</div>

		<div id="switchView" class="bottomTabs">
			
SSVIEWER;
 if($item->XML_val("class",null,true) == "CMSMain") {  ;
 $val .= <<<SSVIEWER

				<div class="blank"> 
SSVIEWER;
$val .=  _t('LeftAndMain.ss.VIEWPAGEIN','Page view:') ;
 $val .= <<<SSVIEWER
 </div>
				<span class="current" title="
SSVIEWER;
$val .=  _t('LeftAndMain.ss.EDITINCMS', 'Edit this page in the CMS') ;
 $val .= <<<SSVIEWER
">
SSVIEWER;
$val .=  _t('LeftAndMain.ss.EDIT','Edit') ;
 $val .= <<<SSVIEWER
</span>
				| <a id="viewStageSite" title="
SSVIEWER;
$val .=  _t('LeftAndMain.ss.VIEWINDRAFT', 'View the Page in the Draft Site') ;
 $val .= <<<SSVIEWER
" href="home/?stage=Stage">
SSVIEWER;
$val .=  _t('LeftAndMain.ss.DRAFTS','Draft Site') ;
 $val .= <<<SSVIEWER
</a>
			 | <a id="viewLiveSite" title="
SSVIEWER;
$val .=  _t('LeftAndMain.ss.VIEWINPUBLISHED', 'View the Page in the Published Site') ;
 $val .= <<<SSVIEWER
" href="home/?stage=Live">
SSVIEWER;
$val .=  _t('LeftAndMain.ss.PUBLIS','Published Site') ;
 $val .= <<<SSVIEWER
</a>
			<a style="display: none; margin-left: 20px;" id="viewArchivedSite" href="home/">
SSVIEWER;
$val .=  _t('LeftAndMain.ss.ARCHS','Archived Site') ;
 $val .= <<<SSVIEWER
</a>
			
SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

		</div>
		
		</div>
	</div>
	<script type="text/javascript">Behaviour.addLoader(hideLoading)</script>
</body>
</html>

SSVIEWER;
 ?>
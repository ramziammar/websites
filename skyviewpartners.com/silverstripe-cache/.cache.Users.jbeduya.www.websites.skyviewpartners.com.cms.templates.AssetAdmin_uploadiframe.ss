<?php $val .= <<<SSVIEWER
<html>
<head>
<style>
body {
	padding: 0;
	margin: 0;
	background-color: #fff !important;
}
fieldset {
	padding: 0;
	margin: 0;
	border-style: none;
}
</style>
<base href="
SSVIEWER;
$val .=  Director::absoluteBaseURL(); ;
 $val .= <<<SSVIEWER
" />
</head>

<body>

SSVIEWER;
 if($item->hasValue("CanUpload")) {  ;
 $val .= <<<SSVIEWER


SSVIEWER;
$val .=  $item->XML_val("UploadForm",null,true) ;
 $val .= <<<SSVIEWER


SSVIEWER;
 } else { ;
 $val .= <<<SSVIEWER


SSVIEWER;
$val .=  _t('AssetAdmin_uploadiframe.ss.PERMFAILED','You do not have permission to upload files into this folder.') ;
 $val .= <<<SSVIEWER



SSVIEWER;
 }  ;
 $val .= <<<SSVIEWER

</body>
SSVIEWER;
 ?>
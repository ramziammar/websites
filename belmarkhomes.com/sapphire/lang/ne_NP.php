<?php

/**
 * Nepali (Nepal) language pack
 * @package sapphire
 * @subpackage i18n
 */

i18n::include_locale_file('sapphire', 'en_US');

global $lang;

if(array_key_exists('ne_NP', $lang) && is_array($lang['ne_NP'])) {
	$lang['ne_NP'] = array_merge($lang['en_US'], $lang['ne_NP']);
} else {
	$lang['ne_NP'] = $lang['en_US'];
}

$lang['ne_NP']['BasicAuth']['ENTERINFO'] = 'कृपया एउता प्रयोगकता नाम र पासओड हल्नुहोस्';
$lang['ne_NP']['BasicAuth']['ERRORNOTADMIN'] = 'यो प्रयोगकता मुख्य प्रयोगकता होइन';
$lang['ne_NP']['BasicAuth']['ERRORNOTREC'] = 'त्यो प्रयोगकता / पासओड बुझन् सकिएन';
$lang['ne_NP']['ChangePasswordEmail.ss']['CHANGEPASSWORDTEXT1'] = 'तपाईंले आफनो पासओड  यसका लागि परिवतन गर्नु भयो ';
$lang['ne_NP']['ChangePasswordEmail.ss']['CHANGEPASSWORDTEXT2'] = 'दिएको विवरण अनुसार भित्र जान सक्नुहुन्छ :';
$lang['ne_NP']['ChangePasswordEmail.ss']['HELLO'] = 'हाई';
$lang['ne_NP']['ComplexTableField.ss']['ADDITEM'] = 'थप्';
$lang['ne_NP']['ComplexTableField.ss']['DELETE'] = 'हटाउ';
$lang['ne_NP']['ComplexTableField.ss']['DELETEROW'] = 'यो रोव हटाउनुहोस्';
$lang['ne_NP']['ComplexTableField.ss']['EDIT'] = 'मिलाउ';
$lang['ne_NP']['ComplexTableField.ss']['NOITEMSFOUND'] = 'कुनै पनि सामाग्री भेटिएन्';
$lang['ne_NP']['ComplexTableField.ss']['SHOW'] = 'देखाउ';
$lang['ne_NP']['ComplexTableField.ss']['SORTASC'] = 'बढ्दो क्रमाङ्कन ';
$lang['ne_NP']['ComplexTableField.ss']['SORTDESC'] = 'घट्दो क्रमाङ्कन ';
$lang['ne_NP']['ComplexTableField_popup.ss']['NEXT'] = 'पछीको';
$lang['ne_NP']['ComplexTableField_popup.ss']['PREVIOUS'] = 'पहिलाको';
$lang['ne_NP']['ContentController']['DRAFT_SITE_ACCESS_RESTRICTION'] = 'यदि तपाईं draft अथवा archived सामाग्री हेर्न चाहानुहुन्छ भन्ने आफ्नो CMSको पासओडले भित्र जानुपर्छ । <a href="%s">प्रकाशित साईटमा जान यहाँ थिचु्नुहोस् ।  </a>';
$lang['ne_NP']['Controller']['FILE'] = 'फाइल';
$lang['ne_NP']['Controller']['IMAGE'] = 'तस्बिर';
$lang['ne_NP']['Date']['AGO'] = 'पहिला';
$lang['ne_NP']['Date']['AWAY'] = 'टाढा';
$lang['ne_NP']['Date']['DAY'] = 'दिन';
$lang['ne_NP']['Date']['DAYS'] = 'दिनहरु';
$lang['ne_NP']['Date']['HOUR'] = 'घण्टा';
$lang['ne_NP']['Date']['HOURS'] = 'घण्टाहरु';
$lang['ne_NP']['Date']['MIN'] = 'मिनेट';
$lang['ne_NP']['Date']['MINS'] = 'मिनेटहरु';
$lang['ne_NP']['Date']['MONTH'] = 'महिना';
$lang['ne_NP']['Date']['MONTHS'] = 'महिनाहरु';
$lang['ne_NP']['Date']['SEC'] = 'सेकेन्ड';
$lang['ne_NP']['Date']['SECS'] = 'सेकेन्डहरु';
$lang['ne_NP']['Date']['YEAR'] = 'बर्ष';
$lang['ne_NP']['Date']['YEARS'] = 'बर्षाहरु';
$lang['ne_NP']['DateField']['VALIDDATEFORMAT'] = 'कृपया मिल्ने किसिममा मिति लेखनुहोस् (DD/MM/YYYY)।';
$lang['ne_NP']['DropdownField']['CHOOSE'] = '(छान्)';
$lang['ne_NP']['EmailField']['VALIDATION'] = 'कृपया एउटा ईमेल ठेगाना लेखनुहोस् ।';
$lang['ne_NP']['ErrorPage']['CODE'] = 'त्रुटी सङ्केत ';
$lang['ne_NP']['FileIframeField']['NOTEADDFILES'] = 'तपाईंले एक चोटि सेभ गरिसकेपछी फाइल हाल्न सक्नुहुन्छ ।';
$lang['ne_NP']['ForgotPasswordEmail.ss']['HELLO'] = 'हाई';
$lang['ne_NP']['Form']['DATENOTSET'] = '(मिती मिलाईएको छैन)';
$lang['ne_NP']['Form']['FIELDISREQUIRED'] = '%s चाहिन्छ';
$lang['ne_NP']['Form']['LANGAOTHER'] = 'अरु भाषाहरु';
$lang['ne_NP']['Form']['LANGAVAIL'] = 'उपलब्द  भाषाहरु';
$lang['ne_NP']['Form']['NOTSET'] = '(मिलाईएको छैन)';
$lang['ne_NP']['Form']['SAVECHANGES'] = 'परिवर्तन सेभ गर्नुस्';
$lang['ne_NP']['Form']['VALIDATIONALLDATEVALUES'] = 'कृपया हेनुहोस् कि तपाईंले सबै मितीको मान मिलाउनु भएको छ';
$lang['ne_NP']['Form']['VALIDATIONBANKACC'] = 'कृपया मिल्ने बैंक नम्बर लेखनुहोस् ';
$lang['ne_NP']['Form']['VALIDATIONCREDITNUMBER'] = 'कृपया हेनुहोस् कि तपाईंले लेखनुभएको %s क्रेडिट कार्ड नम्बर ठिक छ';
$lang['ne_NP']['Form']['VALIDATIONFAILED'] = 'प्रमाणिकरण् हुन् सकेन';
$lang['ne_NP']['Form']['VALIDATIONNOTUNIQUE'] = 'लेखिएको मान भिन्न छैन ';
$lang['ne_NP']['Form']['VALIDATIONPASSWORDSDONTMATCH'] = 'पासओडहरु मिल्दैन्नन';
$lang['ne_NP']['Form']['VALIDATIONPASSWORDSNOTEMPTY'] = 'पासओडहरु खालि छोड्न मिल्दैन';
$lang['ne_NP']['Form']['VALIDATIONSTRONGPASSWORD'] = 'पासओडमा कम्तिमा पनि एउटा अक्छेर र एउटा अंक हुनुपर्दछ';
$lang['ne_NP']['Form']['VALIDCURRENCY'] = 'कृपया मिलने पैसा लेखनुहोस्';
$lang['ne_NP']['GhostPage']['NOLINKED'] = 'घोस्ट पृष्ठमा कुनै पनि पृष्ठ लिङ्क गरिएको छैन । ';
$lang['ne_NP']['GSTNumberField']['VALIDATION'] = 'कृपया मिल्ने GST नम्बर लेखनुहोस्';
$lang['ne_NP']['HtmlEditorField']['ALTTEXT'] = 'विवरण';
$lang['ne_NP']['HtmlEditorField']['ANCHOR'] = 'यन्कर हाल्नुहोस्/मिलाउनुहोस्';
$lang['ne_NP']['HtmlEditorField']['BULLETLIST'] = 'बुल्लेत पोइन्ट लिस्ट';
$lang['ne_NP']['HtmlEditorField']['BUTTONALIGNCENTER'] = 'केन्द्रित';
$lang['ne_NP']['HtmlEditorField']['BUTTONALIGNJUSTIFY'] = 'भरिएको';
$lang['ne_NP']['HtmlEditorField']['BUTTONALIGNLEFT'] = 'बाँया समरेखित ';
$lang['ne_NP']['HtmlEditorField']['BUTTONALIGNRIGHT'] = 'दाँया समरेखित';
$lang['ne_NP']['HtmlEditorField']['BUTTONBOLD'] = 'बोल्ड (कन्ट्रोल‍+B)';
$lang['ne_NP']['HtmlEditorField']['BUTTONCANCEL'] = 'क्यान्सिल गर्नुस्';
$lang['ne_NP']['HtmlEditorField']['BUTTONEDITIMAGE'] = 'तस्बिर मिलाउ';
$lang['ne_NP']['HtmlEditorField']['BUTTONINSERTFLASH'] = 'फ्लश हाल';
$lang['ne_NP']['HtmlEditorField']['BUTTONINSERTIMAGE'] = 'तस्बिर हाल';
$lang['ne_NP']['HtmlEditorField']['BUTTONINSERTLINK'] = 'लिन्क राखनुहोस्';
$lang['ne_NP']['HtmlEditorField']['BUTTONITALIC'] = 'इटालिक (कन्ट्रोल‍+I) ';
$lang['ne_NP']['HtmlEditorField']['BUTTONREMOVELINK'] = 'लिन्क हटाउनुहोस्';
$lang['ne_NP']['HtmlEditorField']['BUTTONSTRIKE'] = 'काटिएको';
$lang['ne_NP']['HtmlEditorField']['BUTTONUNDERLINE'] = 'Underline (Ctrl+U)';
$lang['ne_NP']['HtmlEditorField']['CHARMAP'] = 'सिम्बोल हाल्नुहोस्';
$lang['ne_NP']['HtmlEditorField']['COPY'] = 'प्रतिलिपी बनाउन्नुहोस् (कन्ट्रोल+C)';
$lang['ne_NP']['HtmlEditorField']['CREATEFOLDER'] = 'फोल्डर बनाउ';
$lang['ne_NP']['HtmlEditorField']['CSSCLASS'] = 'समरेखिन / स्टाईल';
$lang['ne_NP']['HtmlEditorField']['CSSCLASSCENTER'] = 'आँफैमा बिच्मा';
$lang['ne_NP']['HtmlEditorField']['CSSCLASSLEFT'] = 'बाँयामा, टेक्स राप गरियोस्';
$lang['ne_NP']['HtmlEditorField']['CSSCLASSRIGHT'] = 'दाँयामा, टेक्स राप गरियोस्';
$lang['ne_NP']['HtmlEditorField']['CUT'] = 'काट्नुहोस् (कन्ट्रोल+X)';
$lang['ne_NP']['HtmlEditorField']['DELETECOL'] = 'कोलम हटाउनुहोस्';
$lang['ne_NP']['HtmlEditorField']['DELETEROW'] = 'रोव हटाउनुहोस्';
$lang['ne_NP']['HtmlEditorField']['EDITCODE'] = 'एच टि एम एल कोड मिलाउनुहोस्';
$lang['ne_NP']['HtmlEditorField']['EMAIL'] = 'ईमेल ठेगाना  ';
$lang['ne_NP']['HtmlEditorField']['FILE'] = 'फाइल';
$lang['ne_NP']['HtmlEditorField']['FLASH'] = 'फाल्स् हाल्नुहोस्';
$lang['ne_NP']['HtmlEditorField']['FOLDER'] = 'फोल्डर';
$lang['ne_NP']['HtmlEditorField']['FOLDERCANCEL'] = 'क्यान्सिल गर्नुस्';
$lang['ne_NP']['HtmlEditorField']['FORMATADDR'] = 'ठेगाना';
$lang['ne_NP']['HtmlEditorField']['FORMATH1'] = 'शिषक १';
$lang['ne_NP']['HtmlEditorField']['FORMATH2'] = 'शिषक २';
$lang['ne_NP']['HtmlEditorField']['FORMATH3'] = 'शिषक ३';
$lang['ne_NP']['HtmlEditorField']['FORMATH4'] = 'शिषक ४';
$lang['ne_NP']['HtmlEditorField']['FORMATH5'] = 'शिषक ५';
$lang['ne_NP']['HtmlEditorField']['FORMATH6'] = 'शिषक ६';
$lang['ne_NP']['HtmlEditorField']['FORMATP'] = 'अनुछेद';
$lang['ne_NP']['HtmlEditorField']['HR'] = 'होरिजन्टल लाईन हाल्नुहोस्  ';
$lang['ne_NP']['HtmlEditorField']['IMAGE'] = 'तस्बिर हाल्नुहोस्';
$lang['ne_NP']['HtmlEditorField']['IMAGEDIMENSIONS'] = 'आयाम';
$lang['ne_NP']['HtmlEditorField']['IMAGEHEIGHTPX'] = 'उचाई';
$lang['ne_NP']['HtmlEditorField']['IMAGEWIDTHPX'] = 'चौडाई';
$lang['ne_NP']['HtmlEditorField']['INDENT'] = 'indent बढाउनुहोस्';
$lang['ne_NP']['HtmlEditorField']['INSERTCOLAFTER'] = 'पछी कोलम हाल्नुहोस्';
$lang['ne_NP']['HtmlEditorField']['INSERTCOLBEF'] = 'पहिला कोलम हाल्नुहोस्';
$lang['ne_NP']['HtmlEditorField']['INSERTROWAFTER'] = 'पछी रोव हाल्नुहोस्';
$lang['ne_NP']['HtmlEditorField']['INSERTROWBEF'] = 'पहिला रोव हाल्नुहोस्';
$lang['ne_NP']['HtmlEditorField']['INSERTTABLE'] = 'टेबल हाल्नुहोस्';
$lang['ne_NP']['HtmlEditorField']['LINK'] = 'हाईलाईट गरिएको टेक्समा लिन्क हाल्नुहोस्/मिलाउनुहोस्';
$lang['ne_NP']['HtmlEditorField']['LINKDESCR'] = 'लिन्क विवरण';
$lang['ne_NP']['HtmlEditorField']['LINKEMAIL'] = 'ईमेल ठेगाना  ';
$lang['ne_NP']['HtmlEditorField']['LINKEXTERNAL'] = 'अर्को वेबसाईट';
$lang['ne_NP']['HtmlEditorField']['LINKFILE'] = 'फाइल डाउनलोओद गर्नु ';
$lang['ne_NP']['HtmlEditorField']['LINKINTERNAL'] = 'साईटको पेज';
$lang['ne_NP']['HtmlEditorField']['LINKOPENNEWWIN'] = 'लिन्क नयाँ विन्डोमा खोल्नुहोस् ';
$lang['ne_NP']['HtmlEditorField']['LINKTO'] = 'लिन्क गर्नुस्';
$lang['ne_NP']['HtmlEditorField']['OK'] = 'हुन्छ';
$lang['ne_NP']['HtmlEditorField']['OL'] = 'नम्बर भएको लिस्ट';
$lang['ne_NP']['HtmlEditorField']['OUTDENT'] = 'outdent धटाउनुहोस्';
$lang['ne_NP']['HtmlEditorField']['PAGE'] = 'पेज';
$lang['ne_NP']['HtmlEditorField']['PASTE'] = 'टाँसनुहोस्  (कन्ट्रोल+V)';
$lang['ne_NP']['HtmlEditorField']['REDO'] = 'रेडु गनुहोस्  (कन्ट्रोल+Y)';
$lang['ne_NP']['HtmlEditorField']['UNDO'] = 'पूर्वस्थितिमा फर्काउनुहोस्  (कन्ट्रोल+Z) ';
$lang['ne_NP']['HtmlEditorField']['UNLINK'] = 'लिन्क हटाउनुहोस्';
$lang['ne_NP']['HtmlEditorField']['UPLOAD'] = 'उप्लोओद';
$lang['ne_NP']['HtmlEditorField']['URL'] = 'यू.र्.ल् ';
$lang['ne_NP']['HtmlEditorField']['VISUALAID'] = 'गाईड लाइन देखाउ/लुकाउ';
$lang['ne_NP']['ImageField']['NOTEADDIMAGES'] = 'तपाईंले तस्बिर हाल्नसक्नु हुन्छ तर तपाईंले एक चोटि सेभ गरेको हुनुपर्छ । ';
$lang['ne_NP']['ImageUplaoder']['ONEFROMFILESTORE'] = 'फाइलस्टोरबाट एउटा सहित';
$lang['ne_NP']['ImageUploader']['ATTACH'] = 'जोड %s';
$lang['ne_NP']['ImageUploader']['DELETE'] = 'फाल %s';
$lang['ne_NP']['ImageUploader']['FROMCOMPUTER'] = 'तपाईंको कम्प्युटरबाट';
$lang['ne_NP']['ImageUploader']['FROMFILESTORE'] = 'फाइल स्टोरबाट';
$lang['ne_NP']['ImageUploader']['ONEFROMCOMPUTER'] = 'तपाईंको कम्प्युटरबाट एउटा सहित';
$lang['ne_NP']['ImageUploader']['REALLYDELETE'] = 'के तपाईंको यो %sलाई सांचीकै हटाउन चाहानुहुन्छ ?';
$lang['ne_NP']['ImageUploader']['REPLACE'] = 'सट्टा %s';
$lang['ne_NP']['Image_iframe.ss']['TITLE'] = 'तस्बिर उप्लोओद गर्ने Iफ्रमे';
$lang['ne_NP']['Member']['ADDRESS'] = 'ठेगाना';
$lang['ne_NP']['Member']['BUTTONCHANGEPASSWORD'] = 'पासओड परिवर्तन गर्नुहोस् ';
$lang['ne_NP']['Member']['BUTTONLOGIN'] = 'भित्र जानुस्';
$lang['ne_NP']['Member']['BUTTONLOGINOTHER'] = 'अरु कोही भएर भित्र जानुस् ';
$lang['ne_NP']['Member']['BUTTONLOSTPASSWORD'] = 'मैले मेरो पासओड हराएँ';
$lang['ne_NP']['Member']['CONFIRMNEWPASSWORD'] = 'नयाँ पासओड Confirm गर्नुहोस् ';
$lang['ne_NP']['Member']['CONFIRMPASSWORD'] = 'Confirm पासओड';
$lang['ne_NP']['Member']['CONTACTINFO'] = 'सम्पर्क सुचना';
$lang['ne_NP']['Member']['EMAIL'] = 'इमेल';
$lang['ne_NP']['Member']['EMAILPASSWORDAPPENDIX'] = 'तपाईंको पासओड परिवतन भएको छ । कृपया यो ईमेल रखानुहोस्,पछी चाहिन सक्छ ।';
$lang['ne_NP']['Member']['EMAILPASSWORDINTRO'] = 'यहाँ छ तपाईंको नयाँ पासओड';
$lang['ne_NP']['Member']['EMAILSIGNUPINTRO1'] = 'नयाँ कार्यकर्ता बन्नुभएकोमा धन्यबाद, तपाईल विवरण तल छ ।';
$lang['ne_NP']['Member']['EMAILSIGNUPINTRO2'] = 'तल भएको credentialsको आधारमा तपाई वेबसाईट भित्र जन्सक्नुहुन्छ ';
$lang['ne_NP']['Member']['EMAILSIGNUPSUBJECT'] = 'sign up गर्नु भएकोमा धन्यबाद';
$lang['ne_NP']['Member']['ERRORNEWPASSWORD'] = 'तपाईले तपाईको नयाँ पासओड फरक लेखनुभयो, पुन प्रयास गर्नुहोल';
$lang['ne_NP']['Member']['ERRORPASSWORDNOTMATCH'] = 'पासओडहरु मिल्दैन्नन, कृपया पुन प्रयास गर्नुहोल';
$lang['ne_NP']['Member']['ERRORWRONGCRED'] = 'त्यो सहि ईमेल अथवा पासओड जस्तो देखिदैन् ।  कृपया पुन प्रयास गर्नुहोल ।';
$lang['ne_NP']['Member']['FIRSTNAME'] = 'पहिलो नाम';
$lang['ne_NP']['Member']['GREETING'] = 'स्वागत छ ';
$lang['ne_NP']['Member']['INTERFACELANG'] = 'चलाउने भाषा';
$lang['ne_NP']['Member']['LOGGEDINAS'] = '%s भएर तपाई भित्र हुनुहुन्छ ।';
$lang['ne_NP']['Member']['MOBILE'] = 'मोबाईल';
$lang['ne_NP']['Member']['NAME'] = 'नाम';
$lang['ne_NP']['Member']['NEWPASSWORD'] = 'नयाँ पासओड';
$lang['ne_NP']['Member']['PASSWORD'] = 'पासओड';
$lang['ne_NP']['Member']['PASSWORDCHANGED'] = 'तपाईंको पासओड परिवर्तन भयो, एउटा कपि तपाईंलाई ईमेल गरियो ।';
$lang['ne_NP']['Member']['PERSONALDETAILS'] = 'ब्यक्तिगत विवरण';
$lang['ne_NP']['Member']['PHONE'] = 'फोन';
$lang['ne_NP']['Member']['REMEMBERME'] = 'अर्को पटक मलाई सम्झनुस् ';
$lang['ne_NP']['Member']['SUBJECTPASSWORDCHANGED'] = 'तपाईंको पासओड परिवतन भएको छ ।';
$lang['ne_NP']['Member']['SUBJECTPASSWORDRESET'] = 'तपाईंको पासओड पुनर्स्थापना लिक';
$lang['ne_NP']['Member']['SURNAME'] = 'थर';
$lang['ne_NP']['Member']['USERDETAILS'] = 'प्रयोगकताको विवरण';
$lang['ne_NP']['Member']['VALIDATIONMEMBEREXISTS'] = 'यो ईमेल भएको प्रयोगकता पहिले देखि छ ।';
$lang['ne_NP']['Member']['WELCOMEBACK'] = 'फेरी स्वागत छ, %s मा';
$lang['ne_NP']['Member']['YOUROLDPASSWORD'] = 'तपाईंको पुरानो पासओड';
$lang['ne_NP']['MemberAuthenticator']['TITLE'] = 'ईमेल &amp; पासओड';
$lang['ne_NP']['NumericField']['VALIDATION'] = '\'%s\' नम्बर होइन, नम्बर मात्र यो ठाउँमा हाल्न मिल्छ ';
$lang['ne_NP']['PhoneNumberField']['VALIDATION'] = 'कृपया मिल्ने फोन नम्बर हाल्नुहोस् ';
$lang['ne_NP']['RedirectorPage']['HASBEENSETUP'] = 'कुनै पनि पुनर्निर्देशनबिना नै एउटा पुनर्निदेशन पृष्ठ सेटअप गरियो । ';
$lang['ne_NP']['RedirectorPage']['HEADER'] = 'यो पेजले प्रयोगकतालाई अर्को पेजमा लैजान्छ';
$lang['ne_NP']['RedirectorPage']['OTHERURL'] = 'अर्को वेबसाईटको यू.र्.ल्';
$lang['ne_NP']['RedirectorPage']['REDIRECTTO'] = 'अर्को पेजमा लैजाउ';
$lang['ne_NP']['RedirectorPage']['REDIRECTTOEXTERNAL'] = 'अर्को वेबसाईट';
$lang['ne_NP']['RedirectorPage']['REDIRECTTOPAGE'] = 'तपाईंको वेबसाईटमा एउटा पेज';
$lang['ne_NP']['RedirectorPage']['YOURPAGE'] = 'तपाईंको वेबसाईटमा एउटा पेज';
$lang['ne_NP']['Security']['ALREADYLOGGEDIN'] = 'तपाईंसँग भित्र जाने आधिकार छैन । यदि तपाईंसँग अरुकुनै अकाउन्ट छ जस्ले पेज भित्र जान मिल्छ, भने त्यो अकाउन्टले भित्र जानुस् ।       ';
$lang['ne_NP']['Security']['BUTTONSEND'] = 'मलाई पासओड पुनर्स्थापना लिक पठाउ';
$lang['ne_NP']['Security']['CHANGEPASSWORDBELOW'] = 'तपाईंले आफ्नो पासओड परिवर्तन गर्न सक्नुहुन्छ तल ।';
$lang['ne_NP']['Security']['CHANGEPASSWORDHEADER'] = 'पासओड परिवर्तन गर्नुहोस्  ';
$lang['ne_NP']['Security']['ENTERNEWPASSWORD'] = 'कृपया नयाँ पासओड लेखनुहोस्';
$lang['ne_NP']['Security']['ERRORPASSWORDPERMISSION'] = 'तपाईंले आफ्नो पासओड परिवर्तन गर्न चाहानुहुन्छ भन्ने तपाईं भित्र जानु भएको हुनुपर्छ    ।';
$lang['ne_NP']['Security']['LOGGEDOUT'] = 'तपाईं बहिर निकलिनुभएको छ ।  यदि तपाईं फेरि भित्र जाने हो भन्ने, आफ्नो विवरण तल लेखनुहोस् ।  ';
$lang['ne_NP']['Security']['LOSTPASSWORDHEADER'] = 'पासओड हरायो';
$lang['ne_NP']['Security']['NOTEPAGESECURED'] = 'त्यो पजे सुरक्षा छ । तपाईंको विवरण लेखनुहोस् अनी हामि तपाईंलाई भित्र पठाउनेछौ । ';
$lang['ne_NP']['Security']['NOTERESETPASSWORD'] = 'तपाईंको ईमेल ठेगाना लेखनुहोस् र हामि तपाईंलाई पासओड पुनर्स्थापना लिक पठाउनेछौ ';
$lang['ne_NP']['Security']['PASSWORDSENTHEADER'] = 'पासओड पुनर्स्थापना लिक \'%s\' मा पठाइएको छ ';
$lang['ne_NP']['Security']['PASSWORDSENTTEXT'] = 'धन्यवाद ! पासओड पुनर्स्थापना लिक \'%s\' मा पठाइएको छ ।';
$lang['ne_NP']['SimpleImageField']['NOUPLOAD'] = 'कुनै पनि तस्बिर उप्लोओद गरिएको छैन ';
$lang['ne_NP']['SiteTree']['ACCESSANYONE'] = 'जोकोहिले';
$lang['ne_NP']['SiteTree']['ACCESSHEADER'] = 'मेरो सईटमा कसले यो पजे हेर्न सक्छ ? ';
$lang['ne_NP']['SiteTree']['ACCESSLOGGEDIN'] = 'भित्र छिरेक प्रयोगकर्तहरु';
$lang['ne_NP']['SiteTree']['ACCESSONLYTHESE'] = 'यि मान्छे मात्र (लिस्टबाट छान्)';
$lang['ne_NP']['SiteTree']['ADDEDTODRAFT'] = 'द्राफ्ट्र साईटबाट राखियो';
$lang['ne_NP']['SiteTree']['ALLOWCOMMENTS'] = 'यो पजेमा प्रतिक्रिया लेखन् दिनुहोस् ?';
$lang['ne_NP']['SiteTree']['APPEARSVIRTUALPAGES'] = 'यो सामाग्री %s सेक्सनको virtual पेजहरुमा पर्छ जस्तो देखिन्छ । ';
$lang['ne_NP']['SiteTree']['BUTTONCANCELDRAFT'] = 'द्राफ्ट्रमा भएका परिवर्तनहरु क्यान्सिल गर्नुहोस् ';
$lang['ne_NP']['SiteTree']['BUTTONCANCELDRAFTDESC'] = 'द्राफ्ट्र हटाउनुहोस् र प्रकाशित पेजमा जानुहोस्';
$lang['ne_NP']['SiteTree']['BUTTONSAVEPUBLISH'] = 'सेभ र प्रकाशित गरनुहोस्';
$lang['ne_NP']['SiteTree']['BUTTONUNPUBLISH'] = 'प्रकाशित नगरनुहोस्';
$lang['ne_NP']['SiteTree']['BUTTONUNPUBLISHDESC'] = 'प्रकाशित साईटबाट यो पेजलाई हटाउनुहोस्';
$lang['ne_NP']['SiteTree']['EDITANYONE'] = 'जोकोहिले जो सि.म्.एस् भित्र छिरेका छन्';
$lang['ne_NP']['SiteTree']['EDITHEADER'] = 'कसले यो CMS भित्र मिलाउन सक्छ ?';
$lang['ne_NP']['SiteTree']['EDITONLYTHESE'] = 'यि मान्छे मात्र (लिस्टबाट छान्)';
$lang['ne_NP']['SiteTree']['GROUP'] = 'समुह';
$lang['ne_NP']['SiteTree']['HASBROKENLINKS'] = 'यो पजेमा टुटेका लिन्कहरु छन् ।';
$lang['ne_NP']['SiteTree']['HOMEPAGEFORDOMAIN'] = 'डोमेन(हरु)';
$lang['ne_NP']['SiteTree']['HTMLEDITORTITLE'] = 'सामाग्री';
$lang['ne_NP']['SiteTree']['LINKSALREADYUNIQUE'] = '%s पहिल्यै देखी भिन्न छ ';
$lang['ne_NP']['SiteTree']['LINKSCHANGEDTO'] = '%sलाई -> %sमा परिवर्तन गरियो ';
$lang['ne_NP']['SiteTree']['MENUTITLE'] = 'अबलोकन नाम ';
$lang['ne_NP']['SiteTree']['METAADVANCEDHEADER'] = 'उन्नत विकल्प... ';
$lang['ne_NP']['SiteTree']['METADESC'] = 'विवरण';
$lang['ne_NP']['SiteTree']['METAEXTRA'] = 'Custom Meta Tags';
$lang['ne_NP']['SiteTree']['METAHEADER'] = 'खोज्ने ईन्जिन Meta-tags';
$lang['ne_NP']['SiteTree']['METAKEYWORDS'] = 'किवर्डहरु ';
$lang['ne_NP']['SiteTree']['METANOTEPRIORITY'] = 'यो पजेलाई(%s) आँफैले गूगल साईट मायप प्राथमिकताहरू मिलाउनुहोस् ।';
$lang['ne_NP']['SiteTree']['METAPAGEPRIO'] = 'पजेको प्राथमिकताहरु';
$lang['ne_NP']['SiteTree']['METATITLE'] = 'शिषक';
$lang['ne_NP']['SiteTree']['MODIFIEDONDRAFT'] = 'द्राफ्ट्र साईटबाट परिवर्तनहरु लाईयो';
$lang['ne_NP']['SiteTree']['NOBACKLINKS'] = 'यो पजे कुनै पनि पेजससँग लिन्क गरिएको छैन ।  ';
$lang['ne_NP']['SiteTree']['NOTEUSEASHOMEPAGE'] = 'तलको डोमेनलाई यो पेज गृह पृष्ठको रुपमा प्रयोग गरनुहोस् : (धेरै डोमेनहरुलाई अल्पबिरामले छुट्याउनुहोस्)';
$lang['ne_NP']['SiteTree']['PAGESLINKING'] = 'तलको पेज यो पजेमा लिन्क गरिएको छ:';
$lang['ne_NP']['SiteTree']['PAGETITLE'] = 'पेजको नाम';
$lang['ne_NP']['SiteTree']['PAGETYPE'] = 'पेज किसिम';
$lang['ne_NP']['SiteTree']['PRIORITYLEASTIMPORTANT'] = 'कम महत्त्वपूर्ण';
$lang['ne_NP']['SiteTree']['PRIORITYMOSTIMPORTANT'] = 'एकदम महत्त्वपूर्ण';
$lang['ne_NP']['SiteTree']['PRIORITYNOTINDEXED'] = 'इन्डेक्स् गरिएकोछैन ';
$lang['ne_NP']['SiteTree']['REMOVEDFROMDRAFT'] = 'द्राफ्ट्र साईटबाट हटाइयो';
$lang['ne_NP']['SiteTree']['SHOWINMENUS'] = 'मेनुमा देखाउनुहोस् ? ';
$lang['ne_NP']['SiteTree']['SHOWINSEARCH'] = 'खोजिमा देखाउनुहोस् ?';
$lang['ne_NP']['SiteTree']['TABACCESS'] = 'अधिकार';
$lang['ne_NP']['SiteTree']['TABBACKLINKS'] = 'पछाडिको लिन्कहरु';
$lang['ne_NP']['SiteTree']['TABBEHAVIOUR'] = 'बनी';
$lang['ne_NP']['SiteTree']['TABCONTENT'] = 'सामाग्री';
$lang['ne_NP']['SiteTree']['TABMAIN'] = 'मुख्य';
$lang['ne_NP']['SiteTree']['TABMETA'] = 'Meta-data';
$lang['ne_NP']['SiteTree']['TABREPORTS'] = 'रिपोर्टहर';
$lang['ne_NP']['SiteTree']['TOPLEVEL'] = 'साईट सामाग्री (उच्च स्तान)';
$lang['ne_NP']['SiteTree']['URL'] = 'यू.र्.ल्';
$lang['ne_NP']['SiteTree']['VALIDATIONURLSEGMENT1'] = 'अर्को पेजले यो यू.र्.ल् प्रयोग गर्दै छ । हरेक पेजको लागि भिन्दा-भिन्दै  हुनुपर्छ ';
$lang['ne_NP']['SiteTree']['VALIDATIONURLSEGMENT2'] = 'यू.र्.लहरु अक्छेर,अंक र hyphen ले मात्र बन्न सक्छ । ';
$lang['ne_NP']['TableField']['ISREQUIRED'] = '%s मा \'%s\' चाहिन्छ';
$lang['ne_NP']['TableField.ss']['CSVEXPORT'] = 'CSV मा निर्यात गर्';
$lang['ne_NP']['ToggleCompositeField.ss']['HIDE'] = 'लुकाउ';
$lang['ne_NP']['ToggleCompositeField.ss']['SHOW'] = 'देखाउ';
$lang['ne_NP']['ToggleField']['LESS'] = 'थोरै';
$lang['ne_NP']['ToggleField']['MORE'] = 'धेरै';
$lang['ne_NP']['TypeDropdown']['NONE'] = 'कुनैनि हैन';
$lang['ne_NP']['VirtualPage']['CHOOSE'] = 'लिन्क गर्न पेज छानुहोस् ';
$lang['ne_NP']['VirtualPage']['EDITCONTENT'] = 'सामाग्री मिलाउन यहाँ थिचुन्नुहोस्';
$lang['ne_NP']['VirtualPage']['HEADER'] = 'यो भरचुअल पेज हो';

?>
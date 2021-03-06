<?php

/**
 * Czech (Czech Republic) language pack
 * @package sapphire
 * @subpackage i18n
 */

i18n::include_locale_file('sapphire', 'en_US');

global $lang;

if(array_key_exists('cs_CZ', $lang) && is_array($lang['cs_CZ'])) {
	$lang['cs_CZ'] = array_merge($lang['en_US'], $lang['cs_CZ']);
} else {
	$lang['cs_CZ'] = $lang['en_US'];
}

$lang['cs_CZ']['BasicAuth']['ENTERINFO'] = 'Prosím zadejte uživatelské jméno a heslo.';
$lang['cs_CZ']['BasicAuth']['ERRORNOTADMIN'] = 'Tento uživatel není administrátor.';
$lang['cs_CZ']['BasicAuth']['ERRORNOTREC'] = 'Toto uživatelské jméno / heslo nebylo rozpoznáno';
$lang['cs_CZ']['ChangePasswordEmail.ss']['CHANGEPASSWORDTEXT1'] = 'Vaše heslo bylo změněno pro';
$lang['cs_CZ']['ChangePasswordEmail.ss']['CHANGEPASSWORDTEXT2'] = 'Nyní můžete použít následující přihlašovací údaje pro přihlášení:';
$lang['cs_CZ']['ChangePasswordEmail.ss']['HELLO'] = 'Dobrý den';
$lang['cs_CZ']['ComplexTableField.ss']['ADDITEM'] = 'Přidat';
$lang['cs_CZ']['ComplexTableField.ss']['DELETE'] = 'smazat';
$lang['cs_CZ']['ComplexTableField.ss']['DELETEROW'] = 'Smazat tento řádek';
$lang['cs_CZ']['ComplexTableField.ss']['EDIT'] = 'upravit';
$lang['cs_CZ']['ComplexTableField.ss']['NOITEMSFOUND'] = 'Žádné položky nenalezeny';
$lang['cs_CZ']['ComplexTableField.ss']['SHOW'] = 'ukázat';
$lang['cs_CZ']['ComplexTableField.ss']['SORTASC'] = 'Řadit vzestupně';
$lang['cs_CZ']['ComplexTableField.ss']['SORTDESC'] = 'Řadit sestupně';
$lang['cs_CZ']['ComplexTableField_popup.ss']['NEXT'] = 'Další';
$lang['cs_CZ']['ComplexTableField_popup.ss']['PREVIOUS'] = 'Předchozí';
$lang['cs_CZ']['ContentController']['DRAFT_SITE_ACCESS_RESTRICTION'] = 'Abyste mohli prohlížet archiv nebo koncepty, musíte být přihlášeni se svým CMS heslem. <a href="%s">Klikněte sem pro návrat na zveřejněné stránky.</a>';
$lang['cs_CZ']['Controller']['FILE'] = 'Soubor';
$lang['cs_CZ']['Controller']['IMAGE'] = 'Obrázek';
$lang['cs_CZ']['Date']['AGO'] = 'před';
$lang['cs_CZ']['Date']['AWAY'] = 'pryč';
$lang['cs_CZ']['Date']['DAY'] = 'den';
$lang['cs_CZ']['Date']['DAYS'] = 'dny';
$lang['cs_CZ']['Date']['HOUR'] = 'hodina';
$lang['cs_CZ']['Date']['HOURS'] = 'hodiny';
$lang['cs_CZ']['Date']['MIN'] = 'minuta';
$lang['cs_CZ']['Date']['MINS'] = 'minuty';
$lang['cs_CZ']['Date']['MONTH'] = 'měsíc';
$lang['cs_CZ']['Date']['MONTHS'] = 'měsíce';
$lang['cs_CZ']['Date']['SEC'] = 'sekunda';
$lang['cs_CZ']['Date']['SECS'] = 'sekundy';
$lang['cs_CZ']['Date']['YEAR'] = 'rok';
$lang['cs_CZ']['Date']['YEARS'] = 'roky';
$lang['cs_CZ']['DateField']['VALIDDATEFORMAT'] = 'Prosím zadejte platný formát data (DD/MM/RRRR).';
$lang['cs_CZ']['DropdownField']['CHOOSE'] = '(Vyberte)';
$lang['cs_CZ']['EmailField']['VALIDATION'] = 'Prosím zadejte emailovou adresu.';
$lang['cs_CZ']['ErrorPage']['CODE'] = 'Chybový kód';
$lang['cs_CZ']['FileIframeField']['NOTEADDFILES'] = 'Soubory můžete přidávat až po prvním uložení.';
$lang['cs_CZ']['ForgotPasswordEmail.ss']['HELLO'] = 'Dobrý den';
$lang['cs_CZ']['Form']['DATENOTSET'] = '(Nebylo nastaveno žádné datum)';
$lang['cs_CZ']['Form']['FIELDISREQUIRED'] = '%s je požadováno.';
$lang['cs_CZ']['Form']['LANGAOTHER'] = 'Další jazyky';
$lang['cs_CZ']['Form']['LANGAVAIL'] = 'Dostupné jazyky';
$lang['cs_CZ']['Form']['NOTSET'] = '(nenastaveno)';
$lang['cs_CZ']['Form']['SAVECHANGES'] = 'Uložit změny';
$lang['cs_CZ']['Form']['VALIDATIONALLDATEVALUES'] = 'Prosím ujistěte se, že jste zadali všechny datumy';
$lang['cs_CZ']['Form']['VALIDATIONBANKACC'] = 'Prosím zadejte platné bankovní číslo';
$lang['cs_CZ']['Form']['VALIDATIONCREDITNUMBER'] = 'Prosím ujistěte se, že jste zadali %s číslo kreditní karty správně.';
$lang['cs_CZ']['Form']['VALIDATIONFAILED'] = 'Kontrola platnosti selhala';
$lang['cs_CZ']['Form']['VALIDATIONNOTUNIQUE'] = 'Zadaná hodnota není unikátní';
$lang['cs_CZ']['Form']['VALIDATIONPASSWORDSDONTMATCH'] = 'Hesla se neshodují';
$lang['cs_CZ']['Form']['VALIDATIONPASSWORDSNOTEMPTY'] = 'Hesla nemohou být prázdná';
$lang['cs_CZ']['Form']['VALIDATIONSTRONGPASSWORD'] = 'Hesla musí obsahovat alespoň jednu číslici a jedno písmeno.';
$lang['cs_CZ']['Form']['VALIDCURRENCY'] = 'Prosím zadejte platnou měnu.';
$lang['cs_CZ']['GhostPage']['NOLINKED'] = 'Na tuto stínovou stránku žádná stránka neodkazuje.';
$lang['cs_CZ']['GSTNumberField']['VALIDATION'] = 'Prosím zadejte platné GST číslo';
$lang['cs_CZ']['HtmlEditorField']['ALTTEXT'] = 'Popis';
$lang['cs_CZ']['HtmlEditorField']['ANCHOR'] = 'Vložit/upravit ukotvení';
$lang['cs_CZ']['HtmlEditorField']['BULLETLIST'] = 'Odrážkovaný seznam';
$lang['cs_CZ']['HtmlEditorField']['BUTTONALIGNCENTER'] = 'Zarovnat na střed';
$lang['cs_CZ']['HtmlEditorField']['BUTTONALIGNJUSTIFY'] = 'Do bloku';
$lang['cs_CZ']['HtmlEditorField']['BUTTONALIGNLEFT'] = 'Zarovnat vlevo';
$lang['cs_CZ']['HtmlEditorField']['BUTTONALIGNRIGHT'] = 'Zarovnat vpravo';
$lang['cs_CZ']['HtmlEditorField']['BUTTONBOLD'] = 'Tučné (Ctrl+B)';
$lang['cs_CZ']['HtmlEditorField']['BUTTONCANCEL'] = 'Zrušit';
$lang['cs_CZ']['HtmlEditorField']['BUTTONEDITIMAGE'] = 'Upravit obrázek';
$lang['cs_CZ']['HtmlEditorField']['BUTTONINSERTFLASH'] = 'Vložit flashový objekt';
$lang['cs_CZ']['HtmlEditorField']['BUTTONINSERTIMAGE'] = 'Vložit obrázek';
$lang['cs_CZ']['HtmlEditorField']['BUTTONINSERTLINK'] = 'Vložit odkaz';
$lang['cs_CZ']['HtmlEditorField']['BUTTONITALIC'] = 'Kurzíva (Ctrl+I)';
$lang['cs_CZ']['HtmlEditorField']['BUTTONREMOVELINK'] = 'Odstranit odkaz';
$lang['cs_CZ']['HtmlEditorField']['BUTTONSTRIKE'] = 'Přeškrtnuté';
$lang['cs_CZ']['HtmlEditorField']['BUTTONUNDERLINE'] = 'Podtržené (Ctrl+U)';
$lang['cs_CZ']['HtmlEditorField']['CHARMAP'] = 'Vložit symbol';
$lang['cs_CZ']['HtmlEditorField']['COPY'] = 'Kopírovat (Ctrl+C)';
$lang['cs_CZ']['HtmlEditorField']['CREATEFOLDER'] = 'vytvořit složku';
$lang['cs_CZ']['HtmlEditorField']['CSSCLASS'] = 'Zarovnání / styl';
$lang['cs_CZ']['HtmlEditorField']['CSSCLASSCENTER'] = 'Na střed, samotné.';
$lang['cs_CZ']['HtmlEditorField']['CSSCLASSLEFT'] = 'Vlevo, s obtékajícím textem.';
$lang['cs_CZ']['HtmlEditorField']['CSSCLASSRIGHT'] = 'Vpravo, s obtékajícím textem.';
$lang['cs_CZ']['HtmlEditorField']['CUT'] = 'Vyjmout (Ctrl+X)';
$lang['cs_CZ']['HtmlEditorField']['DELETECOL'] = 'Smazat sloupec';
$lang['cs_CZ']['HtmlEditorField']['DELETEROW'] = 'Smazat řádek';
$lang['cs_CZ']['HtmlEditorField']['EDITCODE'] = 'Upravit HTML kód';
$lang['cs_CZ']['HtmlEditorField']['EMAIL'] = 'Emailovou adresu';
$lang['cs_CZ']['HtmlEditorField']['FILE'] = 'Soubor';
$lang['cs_CZ']['HtmlEditorField']['FLASH'] = 'Vložit flashový objekt';
$lang['cs_CZ']['HtmlEditorField']['FOLDER'] = 'Složka';
$lang['cs_CZ']['HtmlEditorField']['FOLDERCANCEL'] = 'zrušit';
$lang['cs_CZ']['HtmlEditorField']['FORMATADDR'] = 'Adresa';
$lang['cs_CZ']['HtmlEditorField']['FORMATH1'] = 'Nadpis 1';
$lang['cs_CZ']['HtmlEditorField']['FORMATH2'] = 'Nadpis 2';
$lang['cs_CZ']['HtmlEditorField']['FORMATH3'] = 'Nadpis 3';
$lang['cs_CZ']['HtmlEditorField']['FORMATH4'] = 'Nadpis 4';
$lang['cs_CZ']['HtmlEditorField']['FORMATH5'] = 'Nadpis 5';
$lang['cs_CZ']['HtmlEditorField']['FORMATH6'] = 'Nadpis 6';
$lang['cs_CZ']['HtmlEditorField']['FORMATP'] = 'Odstavec';
$lang['cs_CZ']['HtmlEditorField']['HR'] = 'Vložit vodorovnou čáru';
$lang['cs_CZ']['HtmlEditorField']['IMAGE'] = 'Vložit obrázek';
$lang['cs_CZ']['HtmlEditorField']['IMAGEDIMENSIONS'] = 'Rozměry';
$lang['cs_CZ']['HtmlEditorField']['IMAGEHEIGHTPX'] = 'Výška';
$lang['cs_CZ']['HtmlEditorField']['IMAGEWIDTHPX'] = 'Šířka';
$lang['cs_CZ']['HtmlEditorField']['INDENT'] = 'Zvětšit odsazení';
$lang['cs_CZ']['HtmlEditorField']['INSERTCOLAFTER'] = 'Vložit sloupec za';
$lang['cs_CZ']['HtmlEditorField']['INSERTCOLBEF'] = 'Vložit sloupec před';
$lang['cs_CZ']['HtmlEditorField']['INSERTROWAFTER'] = 'Vložit řádek za';
$lang['cs_CZ']['HtmlEditorField']['INSERTROWBEF'] = 'Vložit řádek před';
$lang['cs_CZ']['HtmlEditorField']['INSERTTABLE'] = 'Vložit tabulku';
$lang['cs_CZ']['HtmlEditorField']['LINK'] = 'Vložit/upravit odkaz na zvýrazněný text';
$lang['cs_CZ']['HtmlEditorField']['LINKDESCR'] = 'Popis odkazu';
$lang['cs_CZ']['HtmlEditorField']['LINKEMAIL'] = 'Emailovou adresu';
$lang['cs_CZ']['HtmlEditorField']['LINKEXTERNAL'] = 'Jiné stránky';
$lang['cs_CZ']['HtmlEditorField']['LINKFILE'] = 'Stáhnutí souboru';
$lang['cs_CZ']['HtmlEditorField']['LINKINTERNAL'] = 'Místní stránku';
$lang['cs_CZ']['HtmlEditorField']['LINKOPENNEWWIN'] = 'Otevřít odkaz v novém okně?';
$lang['cs_CZ']['HtmlEditorField']['LINKTO'] = 'Odkázat na';
$lang['cs_CZ']['HtmlEditorField']['OK'] = 'ok';
$lang['cs_CZ']['HtmlEditorField']['OL'] = 'Číslovaný seznam';
$lang['cs_CZ']['HtmlEditorField']['OUTDENT'] = 'Zmenšit odsazení';
$lang['cs_CZ']['HtmlEditorField']['PAGE'] = 'Stránku';
$lang['cs_CZ']['HtmlEditorField']['PASTE'] = 'Vložit (Ctrl+V)';
$lang['cs_CZ']['HtmlEditorField']['REDO'] = 'Znovu (Ctrl+Y)';
$lang['cs_CZ']['HtmlEditorField']['UNDO'] = 'Zpět (Ctrl+Z)';
$lang['cs_CZ']['HtmlEditorField']['UNLINK'] = 'Odstranit odkaz';
$lang['cs_CZ']['HtmlEditorField']['UPLOAD'] = 'nahrát';
$lang['cs_CZ']['HtmlEditorField']['URL'] = 'URL';
$lang['cs_CZ']['HtmlEditorField']['VISUALAID'] = 'Zobrazit/skrýt nápovědu';
$lang['cs_CZ']['ImageField']['NOTEADDIMAGES'] = 'Obrázek můžete přidat až po prvním uložení.';
$lang['cs_CZ']['ImageUplaoder']['ONEFROMFILESTORE'] = 'Jedním ze souborového úložiště';
$lang['cs_CZ']['ImageUploader']['ATTACH'] = 'Připojit %s';
$lang['cs_CZ']['ImageUploader']['DELETE'] = 'Odstranit %s';
$lang['cs_CZ']['ImageUploader']['FROMCOMPUTER'] = 'Z Vašeho počítače';
$lang['cs_CZ']['ImageUploader']['FROMFILESTORE'] = 'Ze souborového úložiště';
$lang['cs_CZ']['ImageUploader']['ONEFROMCOMPUTER'] = 'Souborem z Vašeho počítače';
$lang['cs_CZ']['ImageUploader']['REALLYDELETE'] = 'Opravdu chcete odstranit tento %s?';
$lang['cs_CZ']['ImageUploader']['REPLACE'] = 'Nahradit %s';
$lang['cs_CZ']['Image_iframe.ss']['TITLE'] = 'Rámec pro nahrání obrázku';
$lang['cs_CZ']['Member']['ADDRESS'] = 'Adresa';
$lang['cs_CZ']['Member']['BUTTONCHANGEPASSWORD'] = 'Změnit heslo';
$lang['cs_CZ']['Member']['BUTTONLOGIN'] = 'Přihlásit se';
$lang['cs_CZ']['Member']['BUTTONLOGINOTHER'] = 'Přihlásit se jako někdo jiný';
$lang['cs_CZ']['Member']['BUTTONLOSTPASSWORD'] = 'Zapomněl jsem heslo';
$lang['cs_CZ']['Member']['CONFIRMNEWPASSWORD'] = 'Potvrďte nové heslo';
$lang['cs_CZ']['Member']['CONFIRMPASSWORD'] = 'Potvrďte heslo';
$lang['cs_CZ']['Member']['CONTACTINFO'] = 'Kontaktní informace';
$lang['cs_CZ']['Member']['EMAIL'] = 'Email';
$lang['cs_CZ']['Member']['EMAILPASSWORDAPPENDIX'] = 'Vaše heslo bylo změněno. Prosím uschovejte si tento email.';
$lang['cs_CZ']['Member']['EMAILPASSWORDINTRO'] = 'Zde je Vaše nové heslo';
$lang['cs_CZ']['Member']['EMAILSIGNUPINTRO1'] = 'Děkujeme za registraci. Vaše detaily jsou zobrazeny níže.';
$lang['cs_CZ']['Member']['EMAILSIGNUPINTRO2'] = 'Můžete se přihlásit použitím přihlašovacích údajů zobrazených níže';
$lang['cs_CZ']['Member']['EMAILSIGNUPSUBJECT'] = 'Děkujeme za registraci';
$lang['cs_CZ']['Member']['ERRORNEWPASSWORD'] = 'Zadali jste nové heslo rozdílně, zkuste to znovu';
$lang['cs_CZ']['Member']['ERRORPASSWORDNOTMATCH'] = 'Váše současné heslo není správně, prosím zkuste to znovu';
$lang['cs_CZ']['Member']['ERRORWRONGCRED'] = 'Toto nevypadá jako správná emailová adresa nebo heslo. Prosím zkuste to znovu.';
$lang['cs_CZ']['Member']['FIRSTNAME'] = 'Křestní Jméno';
$lang['cs_CZ']['Member']['GREETING'] = 'Vítejte';
$lang['cs_CZ']['Member']['INTERFACELANG'] = 'Jazyk rozhraní';
$lang['cs_CZ']['Member']['LOGGEDINAS'] = 'Jste přihlášen jako %s.';
$lang['cs_CZ']['Member']['MOBILE'] = 'Mobilní telefon';
$lang['cs_CZ']['Member']['NAME'] = 'Jméno';
$lang['cs_CZ']['Member']['NEWPASSWORD'] = 'Nové heslo';
$lang['cs_CZ']['Member']['PASSWORD'] = 'Heslo';
$lang['cs_CZ']['Member']['PASSWORDCHANGED'] = 'Vaše heslo bylo změněno a zasláno na Váš email.';
$lang['cs_CZ']['Member']['PERSONALDETAILS'] = 'Osobní detaily';
$lang['cs_CZ']['Member']['PHONE'] = 'Telefon';
$lang['cs_CZ']['Member']['REMEMBERME'] = 'Zapamatovat si mě pro příště?';
$lang['cs_CZ']['Member']['SUBJECTPASSWORDCHANGED'] = 'Vaše heslo bylo změněno';
$lang['cs_CZ']['Member']['SUBJECTPASSWORDRESET'] = 'Nulovací odkaz pro Vaše heslo';
$lang['cs_CZ']['Member']['SURNAME'] = 'Příjmení';
$lang['cs_CZ']['Member']['USERDETAILS'] = 'Uživatelské detaily';
$lang['cs_CZ']['Member']['VALIDATIONMEMBEREXISTS'] = 'Člen s takovýmto emailem již existuje';
$lang['cs_CZ']['Member']['WELCOMEBACK'] = 'Vítejte zpět, %s';
$lang['cs_CZ']['Member']['YOUROLDPASSWORD'] = 'Vaše staré heslo';
$lang['cs_CZ']['MemberAuthenticator']['TITLE'] = 'E-mail &amp; Heslo';
$lang['cs_CZ']['NumericField']['VALIDATION'] = '\'%s\' není číslo. V tomto poli mohou být zadaná pouze čísla';
$lang['cs_CZ']['PhoneNumberField']['VALIDATION'] = 'Prosím zadejte platné telefonní číslo';
$lang['cs_CZ']['RedirectorPage']['HASBEENSETUP'] = 'Přesměrovací stránka byla nastavena bez cíle.';
$lang['cs_CZ']['RedirectorPage']['HEADER'] = 'Tato stránka přesměruje uživatele na jinou';
$lang['cs_CZ']['RedirectorPage']['OTHERURL'] = 'Jinou webovou adresu';
$lang['cs_CZ']['RedirectorPage']['REDIRECTTO'] = 'Přesměrovat na';
$lang['cs_CZ']['RedirectorPage']['REDIRECTTOEXTERNAL'] = 'Jinou webovou stránku';
$lang['cs_CZ']['RedirectorPage']['REDIRECTTOPAGE'] = 'Stránku na Vašem webu';
$lang['cs_CZ']['RedirectorPage']['YOURPAGE'] = 'Stránku na Vašem webu';
$lang['cs_CZ']['Security']['ALREADYLOGGEDIN'] = 'K této stránce nemáte přístup. Pokud máte jiný účet, který k ní může přistupovat, můžete se přihlásit níže';
$lang['cs_CZ']['Security']['BUTTONSEND'] = 'Pošlete mi nulovací odkaz pro heslo';
$lang['cs_CZ']['Security']['CHANGEPASSWORDBELOW'] = 'Svoje heslo si můžete změnit níže.';
$lang['cs_CZ']['Security']['CHANGEPASSWORDHEADER'] = 'Změnit heslo';
$lang['cs_CZ']['Security']['ENTERNEWPASSWORD'] = 'Prosím zadejte nové heslo.';
$lang['cs_CZ']['Security']['ERRORPASSWORDPERMISSION'] = 'Pro změnu hesla musíte být přihlášení!';
$lang['cs_CZ']['Security']['LOGGEDOUT'] = 'Byli jste odhlášeni. Pokud se chcete znovu přihlásit, vložte své přihlašovací údaje.';
$lang['cs_CZ']['Security']['LOSTPASSWORDHEADER'] = 'Zapomenuté heslo';
$lang['cs_CZ']['Security']['NOTEPAGESECURED'] = 'Tato stránka je zabezpečená. Vložte své přihlašovací údaje a my Vám zároveň pošleme práva.';
$lang['cs_CZ']['Security']['NOTERESETPASSWORD'] = 'Zadejte svou e-mailovou adresu a bude vám zaslán nulovací odkaz pro Vaše heslo';
$lang['cs_CZ']['Security']['PASSWORDSENTHEADER'] = 'Nulovací odkaz pro helso odeslán na \'%s\'';
$lang['cs_CZ']['Security']['PASSWORDSENTTEXT'] = 'Děkujeme! Nulovací odkaz pro heslo byl zaslán na \'%s\'.';
$lang['cs_CZ']['SimpleImageField']['NOUPLOAD'] = 'Nebyl nahrán žádný obrázek';
$lang['cs_CZ']['SiteTree']['ACCESSANYONE'] = 'Kdokoliv';
$lang['cs_CZ']['SiteTree']['ACCESSHEADER'] = 'Kdo může tuto stránku na mém webu prohlížet?';
$lang['cs_CZ']['SiteTree']['ACCESSLOGGEDIN'] = 'Přihlášení uživatelé';
$lang['cs_CZ']['SiteTree']['ACCESSONLYTHESE'] = 'Jenom tito lidé (vyberte ze seznamu)';
$lang['cs_CZ']['SiteTree']['ADDEDTODRAFT'] = 'Přidáno do konceptů';
$lang['cs_CZ']['SiteTree']['ALLOWCOMMENTS'] = 'Povolit pro tuto stránku komentáře?';
$lang['cs_CZ']['SiteTree']['APPEARSVIRTUALPAGES'] = 'Tento obsah se bude také zobrazovat na virtuálních stránkách v sekci %s.';
$lang['cs_CZ']['SiteTree']['BUTTONCANCELDRAFT'] = 'Zrušit změny v konceptu';
$lang['cs_CZ']['SiteTree']['BUTTONCANCELDRAFTDESC'] = 'Odstranit koncept a vrátit se k aktuálně zveřejněné stránce';
$lang['cs_CZ']['SiteTree']['BUTTONSAVEPUBLISH'] = 'Uložit & Zveřejnit';
$lang['cs_CZ']['SiteTree']['BUTTONUNPUBLISH'] = 'Nezveřejňovat';
$lang['cs_CZ']['SiteTree']['BUTTONUNPUBLISHDESC'] = 'Odstranit tuto stránku z publikovaných na webu';
$lang['cs_CZ']['SiteTree']['EDITANYONE'] = 'Kdokoliv, kdo se do CMS může přihlásit';
$lang['cs_CZ']['SiteTree']['EDITHEADER'] = 'Kdo může toto editovat v CMS?';
$lang['cs_CZ']['SiteTree']['EDITONLYTHESE'] = 'Jenom tito lidé (vyberte ze seznamu)';
$lang['cs_CZ']['SiteTree']['GROUP'] = 'Skupina';
$lang['cs_CZ']['SiteTree']['HASBROKENLINKS'] = 'Tato stránka obsahuje neplatné odkazy.';
$lang['cs_CZ']['SiteTree']['HOMEPAGEFORDOMAIN'] = 'Doména(y)';
$lang['cs_CZ']['SiteTree']['HTMLEDITORTITLE'] = 'Obsah';
$lang['cs_CZ']['SiteTree']['LINKSALREADYUNIQUE'] = '%s je již unikátní';
$lang['cs_CZ']['SiteTree']['LINKSCHANGEDTO'] = 'změněno %s -> %s';
$lang['cs_CZ']['SiteTree']['MENUTITLE'] = 'Navigační popisek';
$lang['cs_CZ']['SiteTree']['METAADVANCEDHEADER'] = 'Pokročilé Možnosti...';
$lang['cs_CZ']['SiteTree']['METADESC'] = 'Popis';
$lang['cs_CZ']['SiteTree']['METAEXTRA'] = 'Vlastní meta tagy';
$lang['cs_CZ']['SiteTree']['METAHEADER'] = 'Meta-tagy pro vyhledávací enginy';
$lang['cs_CZ']['SiteTree']['METAKEYWORDS'] = 'Klíčová slova';
$lang['cs_CZ']['SiteTree']['METANOTEPRIORITY'] = 'Ručně určit prioritu Google Sitemaps pro tuto stránku (%s)';
$lang['cs_CZ']['SiteTree']['METAPAGEPRIO'] = 'Priorita Stránky';
$lang['cs_CZ']['SiteTree']['METATITLE'] = 'Název';
$lang['cs_CZ']['SiteTree']['MODIFIEDONDRAFT'] = 'Upraveno v konceptech';
$lang['cs_CZ']['SiteTree']['NOBACKLINKS'] = 'Na tuto stránku neodkazují žádné jiné stránky.';
$lang['cs_CZ']['SiteTree']['NOTEUSEASHOMEPAGE'] = 'Použít tuto stránku jako domácí pro následující domény: (více domén oddělte čárkami)';
$lang['cs_CZ']['SiteTree']['PAGESLINKING'] = 'Následující stránky odkazují na tuto stránku:';
$lang['cs_CZ']['SiteTree']['PAGETITLE'] = 'Název stránky';
$lang['cs_CZ']['SiteTree']['PAGETYPE'] = 'Typ stránky';
$lang['cs_CZ']['SiteTree']['PRIORITYLEASTIMPORTANT'] = 'Nejméně důležité';
$lang['cs_CZ']['SiteTree']['PRIORITYMOSTIMPORTANT'] = 'Nejdůležitější';
$lang['cs_CZ']['SiteTree']['PRIORITYNOTINDEXED'] = 'Neindexovaný';
$lang['cs_CZ']['SiteTree']['REMOVEDFROMDRAFT'] = 'Odstraněno z konceptů';
$lang['cs_CZ']['SiteTree']['SHOWINMENUS'] = 'Zobrazovat v menu?';
$lang['cs_CZ']['SiteTree']['SHOWINSEARCH'] = 'Zobrazovat ve vyhledávání?';
$lang['cs_CZ']['SiteTree']['TABACCESS'] = 'Přístup';
$lang['cs_CZ']['SiteTree']['TABBACKLINKS'] = 'Zpětné odkazy';
$lang['cs_CZ']['SiteTree']['TABBEHAVIOUR'] = 'Chování';
$lang['cs_CZ']['SiteTree']['TABCONTENT'] = 'Obsah';
$lang['cs_CZ']['SiteTree']['TABMAIN'] = 'Hlavní';
$lang['cs_CZ']['SiteTree']['TABMETA'] = 'Metadata';
$lang['cs_CZ']['SiteTree']['TABREPORTS'] = 'Výkazy';
$lang['cs_CZ']['SiteTree']['TOPLEVEL'] = 'Obsah Webu (Nejvyšší úroveň)';
$lang['cs_CZ']['SiteTree']['URL'] = 'URL';
$lang['cs_CZ']['SiteTree']['VALIDATIONURLSEGMENT1'] = 'Toto URL již používá jiná stránka. URL musí být pro každou stránku unikátní.';
$lang['cs_CZ']['SiteTree']['VALIDATIONURLSEGMENT2'] = 'URL se může skládat pouze z písmen, číslic a pomlček.';
$lang['cs_CZ']['TableField']['ISREQUIRED'] = '\'%s\' v %s je požadováno';
$lang['cs_CZ']['TableField.ss']['CSVEXPORT'] = 'Exportovat do CSV';
$lang['cs_CZ']['ToggleCompositeField.ss']['HIDE'] = 'Skrýt';
$lang['cs_CZ']['ToggleCompositeField.ss']['SHOW'] = 'Ukázat';
$lang['cs_CZ']['ToggleField']['LESS'] = 'méně';
$lang['cs_CZ']['ToggleField']['MORE'] = 'více';
$lang['cs_CZ']['TypeDropdown']['NONE'] = 'Žádný';
$lang['cs_CZ']['VirtualPage']['CHOOSE'] = 'Vyberte, kam má stránka odkazovat';
$lang['cs_CZ']['VirtualPage']['EDITCONTENT'] = 'klikněte sem pro editaci obsahu';
$lang['cs_CZ']['VirtualPage']['HEADER'] = 'Toto je virtuální stránka';

?>
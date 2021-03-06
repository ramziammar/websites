<?php

/**
 * Finnish (Finland) language pack
 * @package sapphire
 * @subpackage i18n
 */

i18n::include_locale_file('sapphire', 'en_US');

global $lang;

if(array_key_exists('fi_FI', $lang) && is_array($lang['fi_FI'])) {
	$lang['fi_FI'] = array_merge($lang['en_US'], $lang['fi_FI']);
} else {
	$lang['fi_FI'] = $lang['en_US'];
}

$lang['fi_FI']['BasicAuth']['ENTERINFO'] = 'Anna käyttäjänimi ja salasana';
$lang['fi_FI']['BasicAuth']['ERRORNOTADMIN'] = 'Tämä käyttäjä ei ole ylläpitäjä';
$lang['fi_FI']['BasicAuth']['ERRORNOTREC'] = 'Tätä käyttäjänimeä/salasanaa ei tunnistettu.';
$lang['fi_FI']['ChangePasswordEmail.ss']['CHANGEPASSWORDTEXT1'] = 'Vaihdoit salasanasi osoitteelle';
$lang['fi_FI']['ChangePasswordEmail.ss']['CHANGEPASSWORDTEXT2'] = 'Kirjautuaksesi sisään voit käyttää seuraavia tietoja:';
$lang['fi_FI']['ChangePasswordEmail.ss']['HELLO'] = 'Hei';
$lang['fi_FI']['ComplexTableField.ss']['ADDITEM'] = 'Lisää';
$lang['fi_FI']['ComplexTableField.ss']['DELETE'] = 'poista';
$lang['fi_FI']['ComplexTableField.ss']['DELETEROW'] = 'Poista tämä rivi';
$lang['fi_FI']['ComplexTableField.ss']['EDIT'] = 'muokkaa';
$lang['fi_FI']['ComplexTableField.ss']['NOITEMSFOUND'] = 'Kohteita ei löytynyt';
$lang['fi_FI']['ComplexTableField.ss']['SHOW'] = 'näytä';
$lang['fi_FI']['ComplexTableField.ss']['SORTASC'] = 'Nouseva järjestys';
$lang['fi_FI']['ComplexTableField.ss']['SORTDESC'] = 'Laskeva järjestys';
$lang['fi_FI']['ComplexTableField_popup.ss']['NEXT'] = 'Seuraava';
$lang['fi_FI']['ComplexTableField_popup.ss']['PREVIOUS'] = 'Edellinen';
$lang['fi_FI']['ContentController']['DRAFT_SITE_ACCESS_RESTRICTION'] = 'Voidaksesi katsella luonnoksia tai arkistoitua sisältöä sinun täytyy kirjautua sisään CMS:n salasanallasi. <a href="%s">Palataksesi julkiselle sivulle paina tästä</a>.';
$lang['fi_FI']['Controller']['FILE'] = 'Tiedosto';
$lang['fi_FI']['Controller']['IMAGE'] = 'Kuva';
$lang['fi_FI']['Date']['AGO'] = ' sitten';
$lang['fi_FI']['Date']['AWAY'] = 'poissa';
$lang['fi_FI']['Date']['DAY'] = 'päivä';
$lang['fi_FI']['Date']['DAYS'] = ' päivää ';
$lang['fi_FI']['Date']['HOUR'] = ' tunti';
$lang['fi_FI']['Date']['HOURS'] = ' tuntia';
$lang['fi_FI']['Date']['MIN'] = 'min';
$lang['fi_FI']['Date']['MINS'] = 'min.';
$lang['fi_FI']['Date']['MONTH'] = 'kuukausi';
$lang['fi_FI']['Date']['MONTHS'] = 'kuukaudet';
$lang['fi_FI']['Date']['SEC'] = 'sek.';
$lang['fi_FI']['Date']['SECS'] = 'sek.';
$lang['fi_FI']['Date']['YEAR'] = 'vuosi';
$lang['fi_FI']['Date']['YEARS'] = 'vuodet';
$lang['fi_FI']['DateField']['VALIDDATEFORMAT'] = 'Anna päivämäärä oikeassa muodossa (PP/KK/VVVV).';
$lang['fi_FI']['DropdownField']['CHOOSE'] = '(Valitse)';
$lang['fi_FI']['EmailField']['VALIDATION'] = 'Kirjoita sähköpostiosoite.';
$lang['fi_FI']['ErrorPage']['CODE'] = 'Virhekoodi';
$lang['fi_FI']['FileIframeField']['NOTEADDFILES'] = 'Voit lisätä tiedostoja kunhan olet tallentanut ne.';
$lang['fi_FI']['ForgotPasswordEmail.ss']['HELLO'] = 'Hei';
$lang['fi_FI']['Form']['DATENOTSET'] = '(Päivämäärää ei ole asetettu)';
$lang['fi_FI']['Form']['FIELDISREQUIRED'] = '%s tarvitaan.';
$lang['fi_FI']['Form']['LANGAOTHER'] = 'Muut kielet';
$lang['fi_FI']['Form']['LANGAVAIL'] = 'Käytettävissä olevat kielet';
$lang['fi_FI']['Form']['NOTSET'] = '(ei asetettu)';
$lang['fi_FI']['Form']['SAVECHANGES'] = 'Tallenna muutokset';
$lang['fi_FI']['Form']['VALIDATIONALLDATEVALUES'] = 'Varmista, että olet asettanut kaikki päivämäärät.';
$lang['fi_FI']['Form']['VALIDATIONBANKACC'] = 'Syötä kelvollinen pankkinumero';
$lang['fi_FI']['Form']['VALIDATIONCREDITNUMBER'] = 'Varmista, että olet syöttänyt luottokortin %s numeron oikein.';
$lang['fi_FI']['Form']['VALIDATIONFAILED'] = 'Varmistus epäonnistui';
$lang['fi_FI']['Form']['VALIDATIONNOTUNIQUE'] = 'Syötetty arvo ei ole yksilöllinen';
$lang['fi_FI']['Form']['VALIDATIONPASSWORDSDONTMATCH'] = 'Salasanat eivät täsmää';
$lang['fi_FI']['Form']['VALIDATIONPASSWORDSNOTEMPTY'] = 'Salasana ei voi olla tyhjä';
$lang['fi_FI']['Form']['VALIDATIONSTRONGPASSWORD'] = 'Salasanan täytyy sisältää vähintään yksi numero ja yksi kirjain.';
$lang['fi_FI']['Form']['VALIDCURRENCY'] = 'Syötä kelvollinen valuutta.';
$lang['fi_FI']['GSTNumberField']['VALIDATION'] = 'Anna kelvollinen GST-numero';
$lang['fi_FI']['HtmlEditorField']['ALTTEXT'] = 'Kuvaus';
$lang['fi_FI']['HtmlEditorField']['ANCHOR'] = 'Lisää/muokkaa ankkuri(a)';
$lang['fi_FI']['HtmlEditorField']['BULLETLIST'] = 'Luettelomerkit';
$lang['fi_FI']['HtmlEditorField']['BUTTONALIGNCENTER'] = 'Keskitetty';
$lang['fi_FI']['HtmlEditorField']['BUTTONALIGNJUSTIFY'] = 'Levitä vaakasuunnassa';
$lang['fi_FI']['HtmlEditorField']['BUTTONALIGNLEFT'] = 'Tasaa vasemmalle';
$lang['fi_FI']['HtmlEditorField']['BUTTONALIGNRIGHT'] = 'Tasaa oikealle';
$lang['fi_FI']['HtmlEditorField']['BUTTONBOLD'] = 'Lihavoitu (Ctrl+B)';
$lang['fi_FI']['HtmlEditorField']['BUTTONCANCEL'] = 'Peruuta';
$lang['fi_FI']['HtmlEditorField']['BUTTONEDITIMAGE'] = 'Muokkaa kuvaa';
$lang['fi_FI']['HtmlEditorField']['BUTTONINSERTFLASH'] = 'Lisää Flash-video';
$lang['fi_FI']['HtmlEditorField']['BUTTONINSERTIMAGE'] = 'Lisää kuva';
$lang['fi_FI']['HtmlEditorField']['BUTTONINSERTLINK'] = 'Lisää linkki';
$lang['fi_FI']['HtmlEditorField']['BUTTONITALIC'] = 'Kursivoitu (Ctrl+I)';
$lang['fi_FI']['HtmlEditorField']['BUTTONREMOVELINK'] = 'Poista linkki';
$lang['fi_FI']['HtmlEditorField']['BUTTONSTRIKE'] = 'Yliviivattu';
$lang['fi_FI']['HtmlEditorField']['BUTTONUNDERLINE'] = 'Alleviivattu (Ctrl+U)';
$lang['fi_FI']['HtmlEditorField']['CHARMAP'] = 'Lisää merkki';
$lang['fi_FI']['HtmlEditorField']['COPY'] = 'Kopioi (Ctrl+C)';
$lang['fi_FI']['HtmlEditorField']['CREATEFOLDER'] = 'luo kansio';
$lang['fi_FI']['HtmlEditorField']['CSSCLASS'] = 'Tasaus/tyyli';
$lang['fi_FI']['HtmlEditorField']['CSSCLASSCENTER'] = 'Keskellä omillaan.';
$lang['fi_FI']['HtmlEditorField']['CSSCLASSLEFT'] = 'Vasemmalla, tekstin ympäröimänä.';
$lang['fi_FI']['HtmlEditorField']['CSSCLASSRIGHT'] = 'Oikealla, tesktin ympätöimänä.';
$lang['fi_FI']['HtmlEditorField']['CUT'] = 'Leikkaa (Ctrl+X)';
$lang['fi_FI']['HtmlEditorField']['DELETECOL'] = 'Poista sarake';
$lang['fi_FI']['HtmlEditorField']['DELETEROW'] = 'Poista rivi';
$lang['fi_FI']['HtmlEditorField']['EDITCODE'] = 'Muokkaa HTML-koodia';
$lang['fi_FI']['HtmlEditorField']['EMAIL'] = 'Sähköpostiosoite';
$lang['fi_FI']['HtmlEditorField']['FILE'] = 'Tiedosto';
$lang['fi_FI']['HtmlEditorField']['FLASH'] = 'Lisää flash-video';
$lang['fi_FI']['HtmlEditorField']['FOLDER'] = 'Kansio';
$lang['fi_FI']['HtmlEditorField']['FOLDERCANCEL'] = 'peruuta';
$lang['fi_FI']['HtmlEditorField']['FORMATADDR'] = 'Osoite';
$lang['fi_FI']['HtmlEditorField']['FORMATH1'] = 'Otsikko 1';
$lang['fi_FI']['HtmlEditorField']['FORMATH2'] = 'Otsikko 2';
$lang['fi_FI']['HtmlEditorField']['FORMATH3'] = 'Otsikko 3';
$lang['fi_FI']['HtmlEditorField']['FORMATH4'] = 'Otsikko 4';
$lang['fi_FI']['HtmlEditorField']['FORMATH5'] = 'Otsikko 5';
$lang['fi_FI']['HtmlEditorField']['FORMATH6'] = 'Otsikko 6';
$lang['fi_FI']['HtmlEditorField']['FORMATP'] = 'Kappale';
$lang['fi_FI']['HtmlEditorField']['HR'] = 'Lisää vaakasuora viiva';
$lang['fi_FI']['HtmlEditorField']['IMAGE'] = 'Lisää kuva';
$lang['fi_FI']['HtmlEditorField']['IMAGEDIMENSIONS'] = 'Mitat';
$lang['fi_FI']['HtmlEditorField']['IMAGEHEIGHTPX'] = 'Korkeus';
$lang['fi_FI']['HtmlEditorField']['IMAGEWIDTHPX'] = 'Leveys';
$lang['fi_FI']['HtmlEditorField']['INDENT'] = 'Lisää sisennystä';
$lang['fi_FI']['HtmlEditorField']['INSERTCOLAFTER'] = 'Lisää sarake alas';
$lang['fi_FI']['HtmlEditorField']['INSERTCOLBEF'] = 'Lisää sarake ylös';
$lang['fi_FI']['HtmlEditorField']['INSERTROWAFTER'] = 'Lisää rivi alas';
$lang['fi_FI']['HtmlEditorField']['INSERTROWBEF'] = 'Lisää rivi ylös';
$lang['fi_FI']['HtmlEditorField']['INSERTTABLE'] = 'Lisää taulukko';
$lang['fi_FI']['HtmlEditorField']['LINK'] = 'Lisää/muokkaa linkki(ä) valittuun tekstiin';
$lang['fi_FI']['HtmlEditorField']['LINKDESCR'] = 'Linkin kuvaus';
$lang['fi_FI']['HtmlEditorField']['LINKEMAIL'] = 'Sähköpostiosoite';
$lang['fi_FI']['HtmlEditorField']['LINKEXTERNAL'] = 'Toinen verkkosivusto';
$lang['fi_FI']['HtmlEditorField']['LINKFILE'] = 'Lataa tiedosto';
$lang['fi_FI']['HtmlEditorField']['LINKINTERNAL'] = 'Sivu sivustolla';
$lang['fi_FI']['HtmlEditorField']['LINKOPENNEWWIN'] = 'Avataanko linkki uudessa ikkunassa?';
$lang['fi_FI']['HtmlEditorField']['LINKTO'] = 'Linkki';
$lang['fi_FI']['HtmlEditorField']['OK'] = 'ok';
$lang['fi_FI']['HtmlEditorField']['OL'] = 'Numerointi';
$lang['fi_FI']['HtmlEditorField']['OUTDENT'] = 'Vähennä sisennystä';
$lang['fi_FI']['HtmlEditorField']['PAGE'] = 'Sivu';
$lang['fi_FI']['HtmlEditorField']['PASTE'] = 'Liitä (Ctrl+V)';
$lang['fi_FI']['HtmlEditorField']['REDO'] = 'Tee uudelleen (Ctrl+Y)';
$lang['fi_FI']['HtmlEditorField']['UNDO'] = 'Kumoa (Ctrl+Z)';
$lang['fi_FI']['HtmlEditorField']['UNLINK'] = 'Poista linkki';
$lang['fi_FI']['HtmlEditorField']['UPLOAD'] = 'lisää palvelimelle uusi tiedosto';
$lang['fi_FI']['HtmlEditorField']['URL'] = 'URL-osoite';
$lang['fi_FI']['HtmlEditorField']['VISUALAID'] = 'Näytä/piilota apuviivat';
$lang['fi_FI']['ImageUplaoder']['ONEFROMFILESTORE'] = 'Tiedostolla tiedostovarastosta';
$lang['fi_FI']['ImageUploader']['ATTACH'] = 'Liite %s';
$lang['fi_FI']['ImageUploader']['DELETE'] = 'Poista %s';
$lang['fi_FI']['ImageUploader']['FROMCOMPUTER'] = 'Tietokoneeltasi';
$lang['fi_FI']['ImageUploader']['FROMFILESTORE'] = 'Tiedostovarastosta';
$lang['fi_FI']['ImageUploader']['ONEFROMCOMPUTER'] = 'Tiedostolla tietokoneeltasi';
$lang['fi_FI']['ImageUploader']['REALLYDELETE'] = 'Haluatko varmasti poistaa tämän: %s?';
$lang['fi_FI']['ImageUploader']['REPLACE'] = 'Korvaa %s';
$lang['fi_FI']['Member']['ADDRESS'] = 'Osoite';
$lang['fi_FI']['Member']['BUTTONCHANGEPASSWORD'] = 'Vaihda salasana';
$lang['fi_FI']['Member']['BUTTONLOGIN'] = 'Kirjaudu sisään';
$lang['fi_FI']['Member']['BUTTONLOGINOTHER'] = 'Kirjaudu jonain muuna';
$lang['fi_FI']['Member']['BUTTONLOSTPASSWORD'] = 'Kadotin salasanani';
$lang['fi_FI']['Member']['CONFIRMNEWPASSWORD'] = 'Syötä uusi salasana uudelleen';
$lang['fi_FI']['Member']['CONFIRMPASSWORD'] = 'Syötä salasana uudelleen';
$lang['fi_FI']['Member']['CONTACTINFO'] = 'Yhteystiedot';
$lang['fi_FI']['Member']['EMAIL'] = 'Sähköposti';
$lang['fi_FI']['Member']['EMAILPASSWORDAPPENDIX'] = 'Salasanasi on vaihdettu. Pidä tallessa tämä sähköposti, voit tarvita sitä.';
$lang['fi_FI']['Member']['EMAILPASSWORDINTRO'] = 'Tässä on uusi salasanasi';
$lang['fi_FI']['Member']['EMAILSIGNUPINTRO1'] = 'Onnea, sinusta tuli meidän uusi jäsen. Tietosi on kerrottu alla.';
$lang['fi_FI']['Member']['EMAILSIGNUPINTRO2'] = 'Voit kirjautua verkkosivustolle käyttäen seuraavia tietoja';
$lang['fi_FI']['Member']['EMAILSIGNUPSUBJECT'] = 'Kiitokset rekisteröinnistä';
$lang['fi_FI']['Member']['ERRORNEWPASSWORD'] = 'Syötit uuden salasanasi erilailla, yritä uudelleen.';
$lang['fi_FI']['Member']['ERRORPASSWORDNOTMATCH'] = 'Nykyiset salasanasi eivät täsmää, yritä uudelleen.';
$lang['fi_FI']['Member']['ERRORWRONGCRED'] = 'Tämä ei näytä oikealta sähköpostiosoitteelta tai salasanalta. Yritä uudelleen.';
$lang['fi_FI']['Member']['FIRSTNAME'] = 'Etunimi';
$lang['fi_FI']['Member']['GREETING'] = 'Tervetuloa';
$lang['fi_FI']['Member']['INTERFACELANG'] = 'Käyttöliittymän kieli';
$lang['fi_FI']['Member']['LOGGEDINAS'] = 'Olet kirjautunut käyttäjänä %s.';
$lang['fi_FI']['Member']['MOBILE'] = 'Kännykkänumero';
$lang['fi_FI']['Member']['NAME'] = 'Nimi';
$lang['fi_FI']['Member']['NEWPASSWORD'] = 'Uusi salasana';
$lang['fi_FI']['Member']['PASSWORD'] = 'Salasana';
$lang['fi_FI']['Member']['PASSWORDCHANGED'] = 'Salasanasi on muutettu ja sähköpostiisi on lähetetty asiasta ilmoitus.';
$lang['fi_FI']['Member']['PERSONALDETAILS'] = 'Henkilökohtaiset tiedot';
$lang['fi_FI']['Member']['PHONE'] = 'Puhelinnumero';
$lang['fi_FI']['Member']['REMEMBERME'] = 'Muista seuraavalla kerralla?';
$lang['fi_FI']['Member']['SUBJECTPASSWORDCHANGED'] = 'Salasanasi on vaihdettu';
$lang['fi_FI']['Member']['SUBJECTPASSWORDRESET'] = 'Salasanasi palautuslinkki';
$lang['fi_FI']['Member']['SURNAME'] = 'Sukunimi';
$lang['fi_FI']['Member']['USERDETAILS'] = 'Käyttäjätiedot';
$lang['fi_FI']['Member']['VALIDATIONMEMBEREXISTS'] = 'Rekisteröityneellä käyttäjällä on jo käytössä tämä sähköpostiosoite.';
$lang['fi_FI']['Member']['WELCOMEBACK'] = 'Tervetuloa takaisin, %s';
$lang['fi_FI']['Member']['YOUROLDPASSWORD'] = 'Vanha salasanasi';
$lang['fi_FI']['MemberAuthenticator']['TITLE'] = 'Sähköposti &amp; Salasana';
$lang['fi_FI']['NumericField']['VALIDATION'] = '%s ei ole numero, tähän kenttään hyväksytään vain numeroita.';
$lang['fi_FI']['PhoneNumberField']['VALIDATION'] = 'Kirjoita pätevä puhelinnumero';
$lang['fi_FI']['RedirectorPage']['HASBEENSETUP'] = 'Sivu, joka ohjaa käyttäjän toiselle sivulle on valmis, mutta sivua, jolle käyttäjä ohjataan, ei ole.';
$lang['fi_FI']['RedirectorPage']['HEADER'] = 'Tämä sivu ohjaa käyttäjän toiselle sivulle';
$lang['fi_FI']['RedirectorPage']['OTHERURL'] = 'Toisen verkkosivuston URL-osoite';
$lang['fi_FI']['RedirectorPage']['REDIRECTTO'] = 'Minne ohjataan?';
$lang['fi_FI']['RedirectorPage']['REDIRECTTOEXTERNAL'] = 'Muu verkkosivusto';
$lang['fi_FI']['RedirectorPage']['REDIRECTTOPAGE'] = 'Sivu verkkosivustollasi';
$lang['fi_FI']['RedirectorPage']['YOURPAGE'] = 'Sivu verkkosivustollasi';
$lang['fi_FI']['Security']['ALREADYLOGGEDIN'] = 'Sinulla ei ole oikeuksia tälle sivulle. Jos sinulla on toinen tili, jolla on oikeudet tälle sivulle, voit kirjautua niillä sisään.';
$lang['fi_FI']['Security']['BUTTONSEND'] = 'Lähetä minulle salasanan palautuslinkki';
$lang['fi_FI']['Security']['CHANGEPASSWORDBELOW'] = 'Voit vaihtaa salasanaasi alla.';
$lang['fi_FI']['Security']['CHANGEPASSWORDHEADER'] = 'Vaihda salasanasi';
$lang['fi_FI']['Security']['ENTERNEWPASSWORD'] = 'Syötä uusi salasanasi';
$lang['fi_FI']['Security']['ERRORPASSWORDPERMISSION'] = 'Sinun täytyy olla kirjautuneena sisään, jotta voit vaihtaa salasanasi.';
$lang['fi_FI']['Security']['LOGGEDOUT'] = 'Kirjauduit ulos. Jos haluat kirjautua sisään, syötä tietosi alle.';
$lang['fi_FI']['Security']['LOSTPASSWORDHEADER'] = 'Salasana kadotettu';
$lang['fi_FI']['Security']['NOTEPAGESECURED'] = 'Tämä sivu on suojattu. Syötä tunnistetietosi alle ja annamme sinulle oikeat oikeudet.';
$lang['fi_FI']['Security']['NOTERESETPASSWORD'] = 'Syötä sähköpostiosoitteesi ja lähetämme sinulle linkin, jonka avulla saat palautettua salasanasi';
$lang['fi_FI']['Security']['PASSWORDSENTHEADER'] = 'Salasanan palautuslinkki lähetettiin osoitteeseen %s';
$lang['fi_FI']['Security']['PASSWORDSENTTEXT'] = 'Kiitos! Salasanan palautuslinkki on lähetetty osoitteeseen %s.';
$lang['fi_FI']['SimpleImageField']['NOUPLOAD'] = 'Kuvaa ei kopioitu palvelimelle';
$lang['fi_FI']['SiteTree']['ACCESSANYONE'] = 'Jokainen';
$lang['fi_FI']['SiteTree']['ACCESSHEADER'] = 'Ketkä saavat katsoa tätä sivua?';
$lang['fi_FI']['SiteTree']['ACCESSLOGGEDIN'] = 'Kirjautuneet käyttäjät';
$lang['fi_FI']['SiteTree']['ACCESSONLYTHESE'] = 'Vain seuraavat henkilöt (valitse listalta)';
$lang['fi_FI']['SiteTree']['ADDEDTODRAFT'] = 'Lisätty luonnossivustolle';
$lang['fi_FI']['SiteTree']['ALLOWCOMMENTS'] = 'Sallitaanko kommenttien jättö tälle sivulle?';
$lang['fi_FI']['SiteTree']['BUTTONCANCELDRAFT'] = 'Peruuta muutokset, jotka teit luonnokseen';
$lang['fi_FI']['SiteTree']['BUTTONCANCELDRAFTDESC'] = 'Poista luonnoksesi ja palauta julkaistu sivu';
$lang['fi_FI']['SiteTree']['BUTTONSAVEPUBLISH'] = 'Tallenna & julkaise';
$lang['fi_FI']['SiteTree']['BUTTONUNPUBLISH'] = 'Poista julkaisu';
$lang['fi_FI']['SiteTree']['BUTTONUNPUBLISHDESC'] = 'Poista tämä sivu julkaistulta sivustolta';
$lang['fi_FI']['SiteTree']['EDITANYONE'] = 'Jokainen, joka voi kirjautua sisään CMS:ään.';
$lang['fi_FI']['SiteTree']['EDITHEADER'] = 'Kuka voi muokata tätä CMS:ssä?';
$lang['fi_FI']['SiteTree']['EDITONLYTHESE'] = 'Vain seuraavat henkilöt (valitse listasta)';
$lang['fi_FI']['SiteTree']['GROUP'] = 'Ryhmä';
$lang['fi_FI']['SiteTree']['HASBROKENLINKS'] = 'Tällä sivulla on rikkinäisiä linkkejä';
$lang['fi_FI']['SiteTree']['HOMEPAGEFORDOMAIN'] = 'Verkkoalue(et)';
$lang['fi_FI']['SiteTree']['HTMLEDITORTITLE'] = 'Sisältö';
$lang['fi_FI']['SiteTree']['LINKSALREADYUNIQUE'] = '%s on jo yksilöllinen';
$lang['fi_FI']['SiteTree']['LINKSCHANGEDTO'] = 'vaihdettu %s -> %s';
$lang['fi_FI']['SiteTree']['MENUTITLE'] = 'Navigoinnin nimike';
$lang['fi_FI']['SiteTree']['METAADVANCEDHEADER'] = 'Lisäasetukset';
$lang['fi_FI']['SiteTree']['METADESC'] = 'Kuvaus';
$lang['fi_FI']['SiteTree']['METAEXTRA'] = 'Omat meta-tagit';
$lang['fi_FI']['SiteTree']['METAHEADER'] = 'Hakukoneen meta-tagit';
$lang['fi_FI']['SiteTree']['METAKEYWORDS'] = 'Avainsanat';
$lang['fi_FI']['SiteTree']['METANOTEPRIORITY'] = 'Määrittele itse Google Sitemapsin tärkeys tälle sivulle (%s)';
$lang['fi_FI']['SiteTree']['METAPAGEPRIO'] = 'Sivun tärkeys';
$lang['fi_FI']['SiteTree']['METATITLE'] = 'Otsikko';
$lang['fi_FI']['SiteTree']['MODIFIEDONDRAFT'] = 'Muokattu luonnossivustolla';
$lang['fi_FI']['SiteTree']['NOBACKLINKS'] = 'Miltään sivulta ei linkitetä tälle sivulle.';
$lang['fi_FI']['SiteTree']['NOTEUSEASHOMEPAGE'] = 'Käytä tätä sivua "kotisivuna" seuraaville verkkoalueille:
(erottele eri verkkoalueet pilkuilla)';
$lang['fi_FI']['SiteTree']['PAGESLINKING'] = 'Seuraavat sivut linkittävät tälle sivulle:';
$lang['fi_FI']['SiteTree']['PAGETITLE'] = 'Sivun nimi';
$lang['fi_FI']['SiteTree']['PAGETYPE'] = 'Sivun tyyppi';
$lang['fi_FI']['SiteTree']['PRIORITYLEASTIMPORTANT'] = 'Turhin';
$lang['fi_FI']['SiteTree']['PRIORITYMOSTIMPORTANT'] = 'Tärkein';
$lang['fi_FI']['SiteTree']['PRIORITYNOTINDEXED'] = 'Ei indeksointia';
$lang['fi_FI']['SiteTree']['REMOVEDFROMDRAFT'] = 'Poistettu luonnossivustolta';
$lang['fi_FI']['SiteTree']['SHOWINMENUS'] = 'Näytetäänkö valikoissa?';
$lang['fi_FI']['SiteTree']['SHOWINSEARCH'] = 'Näytetäänkö hauissa?';
$lang['fi_FI']['SiteTree']['TABACCESS'] = 'Oikeudet';
$lang['fi_FI']['SiteTree']['TABBACKLINKS'] = 'Linkit tänne';
$lang['fi_FI']['SiteTree']['TABBEHAVIOUR'] = 'Käyttäytyminen';
$lang['fi_FI']['SiteTree']['TABCONTENT'] = 'Sisältö';
$lang['fi_FI']['SiteTree']['TABMAIN'] = 'Yleiset';
$lang['fi_FI']['SiteTree']['TABMETA'] = 'Meta-tiedot';
$lang['fi_FI']['SiteTree']['TABREPORTS'] = 'Raportit';
$lang['fi_FI']['SiteTree']['TOPLEVEL'] = 'Sivuston sisältö (ylin taso)';
$lang['fi_FI']['SiteTree']['URL'] = 'URL-osoite';
$lang['fi_FI']['SiteTree']['VALIDATIONURLSEGMENT1'] = 'Toinen sivu käyttää tätä URL-osoitetta. URL-osoitteen täytyy olla erilainen joka sivulla.';
$lang['fi_FI']['SiteTree']['VALIDATIONURLSEGMENT2'] = 'URL-osoite saa sisältää vain kirjaimia, numeroita ja tavuviivoja.';
$lang['fi_FI']['TableField']['ISREQUIRED'] = '%s:ssa %s on tarvittu.';
$lang['fi_FI']['TableField.ss']['CSVEXPORT'] = 'Vie CSV:nä';
$lang['fi_FI']['ToggleCompositeField.ss']['HIDE'] = 'Piilota';
$lang['fi_FI']['ToggleCompositeField.ss']['SHOW'] = 'Näytä';
$lang['fi_FI']['ToggleField']['LESS'] = 'vähemmän';
$lang['fi_FI']['ToggleField']['MORE'] = 'lisää';
$lang['fi_FI']['TypeDropdown']['NONE'] = 'Ei mitään';
$lang['fi_FI']['VirtualPage']['CHOOSE'] = 'Valitse sivu, jolle linkitetään';
$lang['fi_FI']['VirtualPage']['EDITCONTENT'] = 'muokataksesi sisältöä paina tästä';
$lang['fi_FI']['VirtualPage']['HEADER'] = 'Tämä on virtuaalinen sivu';

?>
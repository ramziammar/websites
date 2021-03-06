<?php

/**
 * Danish (Denmark) language pack
 * @package cms
 * @subpackage i18n
 */

i18n::include_locale_file('cms', 'en_US');

global $lang;

if(array_key_exists('da_DK', $lang) && is_array($lang['da_DK'])) {
	$lang['da_DK'] = array_merge($lang['en_US'], $lang['da_DK']);
} else {
	$lang['da_DK'] = $lang['en_US'];
}

$lang['da_DK']['AssetAdmin']['CHOOSEFILE'] = 'Vælg fil';
$lang['da_DK']['AssetAdmin']['CONTENTMODBY'] = 'Indhold kan ændres af';
$lang['da_DK']['AssetAdmin']['CONTENTUSABLEBY'] = 'Indhold anvendeligt af';
$lang['da_DK']['AssetAdmin']['CREATED'] = 'Først uploadet';
$lang['da_DK']['AssetAdmin']['DELETEDX'] = 'Slettede %s filer.%s';
$lang['da_DK']['AssetAdmin']['DELETEUNUSEDTHUMBNAILS'] = 'Slet ikke brugte thumbnails';
$lang['da_DK']['AssetAdmin']['DELSELECTED'] = 'Slet valgte filer';
$lang['da_DK']['AssetAdmin']['DETAILSTAB'] = 'Detaljer';
$lang['da_DK']['AssetAdmin']['FILENAME'] = 'Filnavn';
$lang['da_DK']['AssetAdmin']['FILESREADY'] = 'Filer klar til at blive uploadet:';
$lang['da_DK']['AssetAdmin']['FILESTAB'] = 'Filer';
$lang['da_DK']['AssetAdmin']['LASTEDITED'] = 'Sidst opdateret';
$lang['da_DK']['AssetAdmin']['MOVEDX'] = 'Flyttede %s filer';
$lang['da_DK']['AssetAdmin']['NEWFOLDER'] = 'Ny mappe';
$lang['da_DK']['AssetAdmin']['NOTHINGTOUPLOAD'] = 'Der var ikke noget at uploade';
$lang['da_DK']['AssetAdmin']['NOWBROKEN'] = 'Disse sider har nu brudte links:';
$lang['da_DK']['AssetAdmin']['ONLYADMINS'] = 'Kun administratorer kan uploade %s filer.';
$lang['da_DK']['AssetAdmin']['OWNER'] = 'Ejer';
$lang['da_DK']['AssetAdmin']['SAVEDFILE'] = 'Gemt fil %s';
$lang['da_DK']['AssetAdmin']['SAVEFOLDERNAME'] = 'Gem mappenavn';
$lang['da_DK']['AssetAdmin']['TITLE'] = 'Titel';
$lang['da_DK']['AssetAdmin']['TOOLARGE'] = '%s er for stor (%s). Filer af denne type må ikke være større end %s';
$lang['da_DK']['AssetAdmin']['TYPE'] = 'Type';
$lang['da_DK']['AssetAdmin']['UNUSEDFILESTAB'] = 'Ikke brugte filer';
$lang['da_DK']['AssetAdmin']['UNUSEDFILESTITLE'] = 'Ikke brugte filer';
$lang['da_DK']['AssetAdmin']['UNUSEDTHUMBNAILSTITLE'] = 'Ikke brugte thumbnails';
$lang['da_DK']['AssetAdmin']['UPLOAD'] = 'Upload filer listet herunder';
$lang['da_DK']['AssetAdmin']['UPLOADEDX'] = 'Uploadede %s filer';
$lang['da_DK']['AssetAdmin']['UPLOADTAB'] = 'Upload';
$lang['da_DK']['AssetAdmin']['VIEWASSET'] = 'Vis filer';
$lang['da_DK']['AssetAdmin']['VIEWEDITASSET'] = 'Vis/rediger filer';
$lang['da_DK']['AssetAdmin_left.ss']['CREATE'] = 'Opret';
$lang['da_DK']['AssetAdmin_left.ss']['DELETE'] = 'Slet';
$lang['da_DK']['AssetAdmin_left.ss']['DELFOLDERS'] = 'Slet de valgte mapper';
$lang['da_DK']['AssetAdmin_left.ss']['FOLDERS'] = 'Mapper';
$lang['da_DK']['AssetAdmin_left.ss']['GO'] = 'Go';
$lang['da_DK']['AssetAdmin_left.ss']['SELECTTODEL'] = 'Vælg de mapper du ønsker at slette og klik på knappen nedenunder';
$lang['da_DK']['AssetAdmin_left.ss']['TOREORG'] = 'For at omorganisere dine mapper, træk dem rundt';
$lang['da_DK']['AssetAdmin_right.ss']['CHOOSEPAGE'] = 'Vælg en side i venstreside';
$lang['da_DK']['AssetAdmin_right.ss']['WELCOME'] = 'Velkommen til';
$lang['da_DK']['AssetAdmin_uploadiframe.ss']['PERMFAILED'] = 'Du har ikke rettigheder til at uploade filer til denne mappe.';
$lang['da_DK']['AssetTableField']['CREATED'] = 'Først uploadet';
$lang['da_DK']['AssetTableField']['DIM'] = 'Dimensioner';
$lang['da_DK']['AssetTableField']['FILENAME'] = 'Filnavn';
$lang['da_DK']['AssetTableField']['LASTEDIT'] = 'Sidst ændret';
$lang['da_DK']['AssetTableField']['NOLINKS'] = 'Der er ikke linket til denne fil fra nogen sider.';
$lang['da_DK']['AssetTableField']['OWNER'] = 'Ejer';
$lang['da_DK']['AssetTableField']['PAGESLINKING'] = 'Følgende sider linker til denne fil:';
$lang['da_DK']['AssetTableField']['SIZE'] = 'Størrelse';
$lang['da_DK']['AssetTableField.ss']['DELFILE'] = 'Slet denne fil';
$lang['da_DK']['AssetTableField.ss']['DRAGTOFOLDER'] = 'Træk til en mappe i venstreside for at flytte filen';
$lang['da_DK']['AssetTableField']['TITLE'] = 'Titel';
$lang['da_DK']['AssetTableField']['TYPE'] = 'Type';
$lang['da_DK']['BulkLoaderAdmin']['CONFIRMBULK'] = 'Bekræft masse-indlæsning';
$lang['da_DK']['BulkLoaderAdmin']['CSVFILE'] = 'CSV fil';
$lang['da_DK']['BulkLoaderAdmin']['DATALOADED'] = 'Disse data er blevet indlæst';
$lang['da_DK']['BulkLoaderAdmin']['PRESSCNT'] = 'Tryk fortsæt for at indlæse disse data';
$lang['da_DK']['BulkLoaderAdmin']['PREVIEW'] = 'Forhåndsvisning';
$lang['da_DK']['BulkLoaderAdmin_left.ss']['BATCHEF'] = 'Masseindtastnings Funktioner';
$lang['da_DK']['BulkLoaderAdmin_left.ss']['FUNCTIONS'] = 'Funktioner';
$lang['da_DK']['BulkLoaderAdmin_preview.ss']['RES'] = 'Resultater';
$lang['da_DK']['CMSLeft.ss']['DELPAGE'] = 'Sletter sider...';
$lang['da_DK']['CMSLeft.ss']['DELPAGES'] = 'Slet de valgte sider';
$lang['da_DK']['CMSLeft.ss']['GO'] = 'Go';
$lang['da_DK']['CMSLeft.ss']['NEWPAGE'] = 'Ny side...';
$lang['da_DK']['CMSLeft.ss']['SELECTPAGESDEL'] = 'Vælg de sider, som du ønsker at slette og tryk på knappen nedenfor';
$lang['da_DK']['CMSLeft.ss']['SITECONT'] = 'Sideindhold';
$lang['da_DK']['CMSMain']['CANCEL'] = 'Annuller';
$lang['da_DK']['CMSMain']['CHOOSEREPORT'] = 'Vælg en rapport';
$lang['da_DK']['CMSMain']['COMPARINGV'] = 'Du sammenligner version #%d og #%d';
$lang['da_DK']['CMSMain']['COPYPUBTOSTAGE'] = 'Er du sikker på du vil kopiere det udgivne indhold til kladde?';
$lang['da_DK']['CMSMain']['DELETEFP'] = 'Slet fra den udgivne side';
$lang['da_DK']['CMSMain']['EMAIL'] = 'Email';
$lang['da_DK']['CMSMain']['GO'] = 'Go';
$lang['da_DK']['CMSMain']['METADESCOPT'] = 'Beskrivelse';
$lang['da_DK']['CMSMain']['METAKEYWORDSOPT'] = 'Nøgleord';
$lang['da_DK']['CMSMain']['NEW'] = 'Ny';
$lang['da_DK']['CMSMain']['NOCONTENT'] = 'intet indhold';
$lang['da_DK']['CMSMain']['NOTHINGASSIGNED'] = 'Du har ingen tildelte opgaver.';
$lang['da_DK']['CMSMain']['NOWAITINGON'] = 'Du venter ikke på andres opgaver.';
$lang['da_DK']['CMSMain']['NOWBROKEN'] = 'De følgende sider har nu brudte links:';
$lang['da_DK']['CMSMain']['NOWBROKEN2'] = 'Ejerene er blevet underrettet pr. email om, at de skal rette disse sider.';
$lang['da_DK']['CMSMain']['OK'] = 'OK';
$lang['da_DK']['CMSMain']['PAGEDEL'] = '%d side slettet';
$lang['da_DK']['CMSMain']['PAGENOTEXISTS'] = 'Denne side eksisterer ikke';
$lang['da_DK']['CMSMain']['PAGEPUB'] = '%d side udgivet';
$lang['da_DK']['CMSMain']['PAGESDEL'] = '%d sider slettet';
$lang['da_DK']['CMSMain']['PAGESPUB'] = '%d sider udgivet';
$lang['da_DK']['CMSMain']['PAGETYPEOPT'] = 'Sidetype';
$lang['da_DK']['CMSMain']['PRINT'] = 'Print';
$lang['da_DK']['CMSMain']['PUBALLCONFIRM'] = 'Udgiv alle sider på sitet. Kopierer indhold fra kladde til offentlig';
$lang['da_DK']['CMSMain']['PUBALLFUN'] = '"Udgiv alle" funktionalitet';
$lang['da_DK']['CMSMain']['PUBALLFUN2'] = 'Hvis du trykker på denne knap, svarer det til at gå til hver enkel side og vælge udgiv. Det er hensigten at denne funktion benyttes når der er blevet lavet mange ændringer på flere sider, som f.eks da websitet blev påbegyndt.';
$lang['da_DK']['CMSMain']['PUBPAGES'] = 'Udført: Udgivet %d sider';
$lang['da_DK']['CMSMain']['REMOVEDFD'] = 'Fjernet fra kladde';
$lang['da_DK']['CMSMain']['REMOVEDPAGE'] = 'Fjernede \'%s\' fra den udgivne side';
$lang['da_DK']['CMSMain']['RESTORE'] = 'Genskab';
$lang['da_DK']['CMSMain']['RESTORED'] = 'Det lykkedes at genskabe \'%s\'';
$lang['da_DK']['CMSMain']['ROLLBACK'] = 'Rul tilbage til denne version';
$lang['da_DK']['CMSMain']['ROLLEDBACKPUB'] = 'Rullet tilbage til udgivet version. Nyt versionnummer er #%d';
$lang['da_DK']['CMSMain']['ROLLEDBACKVERSION'] = 'Tilbagerullet til version #%d. Nyt versionsnummer er #%d';
$lang['da_DK']['CMSMain']['SAVE'] = 'Gem';
$lang['da_DK']['CMSMain']['SENTTO'] = 'Sendt til %s %s for godkendelse.';
$lang['da_DK']['CMSMain']['STATUSOPT'] = 'Status';
$lang['da_DK']['CMSMain']['TOTALPAGES'] = 'Total antal sider:';
$lang['da_DK']['CMSMain']['VERSIONSNOPAGE'] = 'Kan ikke finde side #%d';
$lang['da_DK']['CMSMain']['VIEWING'] = 'Du kigger på version #%d, oprettet %s';
$lang['da_DK']['CMSMain']['VISITRESTORE'] = 'Besøg restorepage/(ID)';
$lang['da_DK']['CMSMain']['WAITINGON'] = 'Du venter på andre folks arbejde på disse  <b>%d</b> sider.';
$lang['da_DK']['CMSMain']['WORKTODO'] = 'Du er blevet tildelt opgaver på disse <b>%d</b> sider.';
$lang['da_DK']['CMSMain_left.ss']['ADDEDNOTPUB'] = 'Tilføjet kladden, men endnu ikke udgivet';
$lang['da_DK']['CMSMain_left.ss']['ADDSEARCHCRITERIA'] = 'Tilføj kriterie...';
$lang['da_DK']['CMSMain_left.ss']['BATCHACTIONS'] = 'Masse funktioner';
$lang['da_DK']['CMSMain_left.ss']['CHANGED'] = 'ændret';
$lang['da_DK']['CMSMain_left.ss']['CLOSEBOX'] = 'klik for at lukke boksen';
$lang['da_DK']['CMSMain_left.ss']['COMMENTS'] = 'Kommentarer';
$lang['da_DK']['CMSMain_left.ss']['COMPAREMODE'] = 'Sammenlign (klik 2 nedenunder)';
$lang['da_DK']['CMSMain_left.ss']['CREATE'] = 'Opret';
$lang['da_DK']['CMSMain_left.ss']['DEL'] = 'slettet';
$lang['da_DK']['CMSMain_left.ss']['DELETECONFIRM'] = 'Slet de valgte sider';
$lang['da_DK']['CMSMain_left.ss']['DELETEDSTILLLIVE'] = 'Fjernet fra kladden, men findes stadig på den udgivne side';
$lang['da_DK']['CMSMain_left.ss']['EDITEDNOTPUB'] = 'Redigeret på kladden, men endnu ikke udgivet';
$lang['da_DK']['CMSMain_left.ss']['EDITEDSINCE'] = 'Ændret siden';
$lang['da_DK']['CMSMain_left.ss']['ENABLEDRAGGING'] = 'Tillad træk & slip';
$lang['da_DK']['CMSMain_left.ss']['GO'] = 'Go';
$lang['da_DK']['CMSMain_left.ss']['KEY'] = 'Nøgle:';
$lang['da_DK']['CMSMain_left.ss']['NEW'] = 'ny';
$lang['da_DK']['CMSMain_left.ss']['OPENBOX'] = 'klik for at åbne denne boks';
$lang['da_DK']['CMSMain_left.ss']['PAGEVERSIONH'] = 'Sidens versionshistorie';
$lang['da_DK']['CMSMain_left.ss']['PUBLISHCONFIRM'] = 'Udgiv de valgte sider';
$lang['da_DK']['CMSMain_left.ss']['SEARCH'] = 'Søg';
$lang['da_DK']['CMSMain_left.ss']['SEARCHTITLE'] = 'Søg i URL, Titel, Menutitel, &amp; indhold';
$lang['da_DK']['CMSMain_left.ss']['SELECTPAGESACTIONS'] = 'Vælg siderne som du ønsker at ændre og klik på en handling:';
$lang['da_DK']['CMSMain_left.ss']['SELECTPAGESDUP'] = 'Vælg de sider, som du ønsker at duplikere, og hvorvidt du ønsker at inkludere deres undersider, og hvor de skal duplikeres hen';
$lang['da_DK']['CMSMain_left.ss']['SHOWONLYCHANGED'] = 'Vis kun ændrede sider';
$lang['da_DK']['CMSMain_left.ss']['SHOWUNPUB'] = 'Vis ikke udgivne versioner';
$lang['da_DK']['CMSMain_left.ss']['SITECONTENT TITLE'] = 'Sideindhold og Struktur';
$lang['da_DK']['CMSMain_left.ss']['SITEREPORTS'] = 'Siderapporter';
$lang['da_DK']['CMSMain_left.ss']['TASKLIST'] = 'Opgaveliste';
$lang['da_DK']['CMSMain_left.ss']['WAITINGON'] = 'Venter på';
$lang['da_DK']['CMSMain_right.ss']['ANYMESSAGE'] = 'Har du nogen besked til din redaktør?';
$lang['da_DK']['CMSMain_right.ss']['CHOOSEPAGE'] = 'Vælg en side fra venstresiden.';
$lang['da_DK']['CMSMain_right.ss']['LOADING'] = 'indlæser...';
$lang['da_DK']['CMSMain_right.ss']['MESSAGE'] = 'Besked';
$lang['da_DK']['CMSMain_right.ss']['SENDTO'] = 'Send til';
$lang['da_DK']['CMSMain_right.ss']['STATUS'] = 'Status';
$lang['da_DK']['CMSMain_right.ss']['SUBMIT'] = 'Indsend til godkendelse';
$lang['da_DK']['CMSMain_right.ss']['WELCOMETO'] = 'Velkommen til';
$lang['da_DK']['CMSMain_versions.ss']['AUTHOR'] = 'Forfatter';
$lang['da_DK']['CMSMain_versions.ss']['NOTPUB'] = 'Ikke udgivet';
$lang['da_DK']['CMSMain_versions.ss']['PUBR'] = 'Udgiver';
$lang['da_DK']['CMSMain_versions.ss']['UNKNOWN'] = 'Ukendt';
$lang['da_DK']['CMSMain_versions.ss']['WHEN'] = 'når';
$lang['da_DK']['CMSRight.ss']['CHOOSEPAGE'] = 'Vælg en side fra venstresiden.';
$lang['da_DK']['CMSRight.ss']['ECONTENT'] = 'Rediger indhold';
$lang['da_DK']['CMSRight.ss']['WELCOMETO'] = 'Velkommen til';
$lang['da_DK']['CommentList.ss']['CREATEDW'] = 'Kommentarer bliver oprettet, når en af \'arbejdsprocedure handlingerne\' bliver udført - Udgiv, Afvis, Indsend.';
$lang['da_DK']['CommentList.ss']['NOCOM'] = 'Der er ingen kommentarer til denne side.';
$lang['da_DK']['GenericDataAdmin_left.ss']['ADDLISTING'] = 'Tilføj kategori';
$lang['da_DK']['GenericDataAdmin_left.ss']['SEARCHLISTINGS'] = 'Søgekategori';
$lang['da_DK']['GenericDataAdmin_left.ss']['SEARCHRESULTS'] = 'Søgeresultater';
$lang['da_DK']['ImageEditor.ss']['CANCEL'] = 'annuller';
$lang['da_DK']['ImageEditor.ss']['CROP'] = 'beskær';
$lang['da_DK']['ImageEditor.ss']['HEIGHT'] = 'højde';
$lang['da_DK']['ImageEditor.ss']['REDO'] = 'gentag';
$lang['da_DK']['ImageEditor.ss']['ROT'] = 'roter';
$lang['da_DK']['ImageEditor.ss']['SAVE'] = 'gem billede';
$lang['da_DK']['ImageEditor.ss']['UNDO'] = 'fortryd';
$lang['da_DK']['ImageEditor.ss']['UNTITLED'] = '"Ingen titel" dokument';
$lang['da_DK']['ImageEditor.ss']['WIDTH'] = 'bredde';
$lang['da_DK']['LeftAndMain']['CHANGEDURL'] = 'Ændrede URL til \'%s\'';
$lang['da_DK']['LeftAndMain']['COMMENTS'] = 'Kommentarer';
$lang['da_DK']['LeftAndMain']['FILESIMAGES'] = 'Filer & Billeder';
$lang['da_DK']['LeftAndMain']['HELP'] = 'Hjælp';
$lang['da_DK']['LeftAndMain']['NEWSLETTERS'] = 'Nyhedsbreve';
$lang['da_DK']['LeftAndMain']['PAGETYPE'] = 'Sidetype:';
$lang['da_DK']['LeftAndMain']['PERMAGAIN'] = 'Du er blevet logget ud af CMS, hvis du vil logge ind igen, indtast brugernavn og kodeord nedenfor.';
$lang['da_DK']['LeftAndMain']['PERMALREADY'] = 'Beklager, men du kan ikke få adgang til denne del af CMS, hvis du vil logge ind som en anden, kan du gøre det nedenfor';
$lang['da_DK']['LeftAndMain']['PERMDEFAULT'] = 'Vælg en login måde og indtast dine oplysninger.';
$lang['da_DK']['LeftAndMain']['PLEASESAVE'] = 'Gem siden: Denne side kunne ikke blive opdateret, fordi den endnu ikke er gemt.';
$lang['da_DK']['LeftAndMain']['REPORTS'] = 'Rapporter';
$lang['da_DK']['LeftAndMain']['REQUESTERROR'] = 'Forespørgselsfejl';
$lang['da_DK']['LeftAndMain']['SAVED'] = 'gemt';
$lang['da_DK']['LeftAndMain']['SAVEDUP'] = 'Gemt';
$lang['da_DK']['LeftAndMain']['SECURITY'] = 'Sikkerhed';
$lang['da_DK']['LeftAndMain']['SITECONTENT'] = 'Sideindhold';
$lang['da_DK']['LeftAndMain']['SITECONTENTLEFT'] = 'Sideindhold';
$lang['da_DK']['LeftAndMain.ss']['APPVERSIONTEXT1'] = 'Dette er';
$lang['da_DK']['LeftAndMain.ss']['APPVERSIONTEXT2'] = 'versionen du kører lige nu. Teknisk set er det CVS grenen';
$lang['da_DK']['LeftAndMain.ss']['ARCHS'] = 'Arkiveret side';
$lang['da_DK']['LeftAndMain.ss']['DRAFTS'] = 'Kladde';
$lang['da_DK']['LeftAndMain.ss']['EDIT'] = 'Rediger';
$lang['da_DK']['LeftAndMain.ss']['EDITPROFILE'] = 'Profil';
$lang['da_DK']['LeftAndMain.ss']['LOADING'] = 'Indlæser...';
$lang['da_DK']['LeftAndMain.ss']['LOGGEDINAS'] = 'Logged ind som';
$lang['da_DK']['LeftAndMain.ss']['LOGOUT'] = 'log ud';
$lang['da_DK']['LeftAndMain.ss']['PUBLIS'] = 'Udgivet side';
$lang['da_DK']['LeftAndMain.ss']['SSWEB'] = 'Silverstripe hjemmeside';
$lang['da_DK']['LeftAndMain.ss']['SWITCHTO'] = 'Skift til:';
$lang['da_DK']['LeftAndMain.ss']['VIEWPAGEIN'] = 'Sidevisning:';
$lang['da_DK']['LeftAndMain']['STATISTICS'] = 'Statistikker';
$lang['da_DK']['LeftAndMain']['STATUSTO'] = 'Status er ændret til \'%s\'';
$lang['da_DK']['LeftAndMain']['TREESITECONTENT'] = 'Sideindhold';
$lang['da_DK']['MemberList']['ADD'] = 'Tilføj';
$lang['da_DK']['MemberList']['EMAIL'] = 'Email';
$lang['da_DK']['MemberList']['FILTERBYG'] = 'Filtrer på gruppe';
$lang['da_DK']['MemberList']['FN'] = 'Fornavn';
$lang['da_DK']['MemberList']['PASSWD'] = 'Kodeord';
$lang['da_DK']['MemberList']['SEARCH'] = 'Søg';
$lang['da_DK']['MemberList']['SN'] = 'Efternavn';
$lang['da_DK']['MemberList.ss']['FILTER'] = 'FIltrer';
$lang['da_DK']['MemberList_Table.ss']['EMAIL'] = 'Emailadresse';
$lang['da_DK']['MemberList_Table.ss']['FN'] = 'Fornavn';
$lang['da_DK']['MemberList_Table.ss']['PASSWD'] = 'Kodeord';
$lang['da_DK']['MemberList_Table.ss']['SN'] = 'Efternavn';
$lang['da_DK']['MemberTableField']['ADD'] = 'Tilføj';
$lang['da_DK']['MemberTableField']['ADDEDTOGROUP'] = 'Tilføjede medlem til gruppe';
$lang['da_DK']['MemberTableField.ss']['ADDNEW'] = 'Tilføj ny';
$lang['da_DK']['MemberTableField.ss']['DELETEMEMBER'] = 'Slet dette medlem';
$lang['da_DK']['MemberTableField.ss']['EDITMEMBER'] = 'Rediger dette medlem';
$lang['da_DK']['MemberTableField.ss']['SHOWMEMBER'] = 'Vis dette medlem';
$lang['da_DK']['NewsletterAdmin']['FROMEM'] = 'Fra emailadresse';
$lang['da_DK']['NewsletterAdmin']['MEWDRAFTMEWSL'] = 'Ny kladde til nyhedsbrev';
$lang['da_DK']['NewsletterAdmin']['NEWLIST'] = 'Ny mailliste';
$lang['da_DK']['NewsletterAdmin']['NEWNEWSLTYPE'] = 'Ny nyhedsbrevstype';
$lang['da_DK']['NewsletterAdmin']['NEWSLTYPE'] = 'Nyhedsbrevstype';
$lang['da_DK']['NewsletterAdmin']['PLEASEENTERMAIL'] = 'Indtast en emailadresse';
$lang['da_DK']['NewsletterAdmin']['RESEND'] = 'Gensend';
$lang['da_DK']['NewsletterAdmin']['SAVE'] = 'Gem';
$lang['da_DK']['NewsletterAdmin']['SAVED'] = 'Gemt';
$lang['da_DK']['NewsletterAdmin']['SEND'] = 'Send...';
$lang['da_DK']['NewsletterAdmin']['SENDING'] = 'Sender emails...';
$lang['da_DK']['NewsletterAdmin']['SENTTESTTO'] = 'Send test til';
$lang['da_DK']['NewsletterAdmin']['SHOWCONTENTS'] = 'Vis indhold';
$lang['da_DK']['NewsletterAdmin_BouncedList.ss']['EMADD'] = 'Emailadresse';
$lang['da_DK']['NewsletterAdmin_BouncedList.ss']['HAVEBOUNCED'] = 'Emails der er blevet afvist';
$lang['da_DK']['NewsletterAdmin_BouncedList.ss']['NOBOUNCED'] = 'Ingen af de sendte emails er blevet afvist';
$lang['da_DK']['NewsletterAdmin_BouncedList.ss']['UNAME'] = 'Brugernavn';
$lang['da_DK']['NewsletterAdmin_left.ss']['ADDDRAFT'] = 'Tilføj ny kladde';
$lang['da_DK']['NewsletterAdmin_left.ss']['ADDTYPE'] = 'Tilføj ny type';
$lang['da_DK']['NewsletterAdmin_left.ss']['CREATE'] = 'Opret';
$lang['da_DK']['NewsletterAdmin_left.ss']['DEL'] = 'Slet';
$lang['da_DK']['NewsletterAdmin_left.ss']['DELETEDRAFTS'] = 'Slet de valgte kladder';
$lang['da_DK']['NewsletterAdmin_left.ss']['GO'] = 'Go';
$lang['da_DK']['NewsletterAdmin_left.ss']['NEWSLETTERS'] = 'Nyhedsbreve';
$lang['da_DK']['NewsletterAdmin_left.ss']['SELECTDRAFTS'] = 'Vælg de kladder, du ønsker at slette og klik på knappen nedenunder';
$lang['da_DK']['NewsletterAdmin_right.ss']['CANCEL'] = 'Annuller';
$lang['da_DK']['NewsletterAdmin_right.ss']['ENTIRE'] = 'Send til hele maillisten';
$lang['da_DK']['NewsletterAdmin_right.ss']['ONLYNOT'] = 'Send kun til folk, som der ikke tidligere er blevet sendt til';
$lang['da_DK']['NewsletterAdmin_right.ss']['SEND'] = 'Send nyhedsbrev';
$lang['da_DK']['NewsletterAdmin_right.ss']['SENDTEST'] = 'Send test til';
$lang['da_DK']['NewsletterAdmin_right.ss']['WELCOME1'] = 'Velkommen til';
$lang['da_DK']['NewsletterAdmin_right.ss']['WELCOME2'] = 'Nyhedsbrevs administration. Vælg en mappe i venstreside';
$lang['da_DK']['NewsletterAdmin_SiteTree.ss']['DRAFTS'] = 'Kladder';
$lang['da_DK']['NewsletterAdmin_SiteTree.ss']['MAILLIST'] = 'Mailliste';
$lang['da_DK']['NewsletterAdmin_SiteTree.ss']['SENT'] = 'Sendte emails';
$lang['da_DK']['NewsletterAdmin_UnsubscribedList.ss']['NOUNSUB'] = 'Ingen brugere har afmeldt sig fra dette nyhedsbrev';
$lang['da_DK']['NewsletterAdmin_UnsubscribedList.ss']['UNAME'] = 'Brugernavn';
$lang['da_DK']['NewsletterAdmin_UnsubscribedList.ss']['UNSUBON'] = 'Afmeldt';
$lang['da_DK']['NewsletterList.ss']['CHOOSEDRAFT1'] = 'Vælg en kladde i venstre side, eller';
$lang['da_DK']['NewsletterList.ss']['CHOOSEDRAFT2'] = 'tilføj en';
$lang['da_DK']['NewsletterList.ss']['CHOOSESENT'] = 'Vælg en sendt artikel i venstre side';
$lang['da_DK']['Newsletter_RecipientImportField.ss']['CHANGED'] = 'Antallet er detajler ændret:';
$lang['da_DK']['Newsletter_RecipientImportField.ss']['IMPORTED'] = 'Nye medlemmer importeret:';
$lang['da_DK']['Newsletter_RecipientImportField.ss']['IMPORTNEW'] = 'Importerede nye medlemmer';
$lang['da_DK']['Newsletter_RecipientImportField.ss']['SEC'] = 'sekunder';
$lang['da_DK']['Newsletter_RecipientImportField.ss']['SKIPPED'] = 'Artikler sprunget over:';
$lang['da_DK']['Newsletter_RecipientImportField.ss']['TIME'] = 'Tid brugt:';
$lang['da_DK']['Newsletter_RecipientImportField.ss']['UPDATED'] = 'Medlemmer opdateret:';
$lang['da_DK']['Newsletter_RecipientImportField_Table.ss']['CONTENTSOF'] = 'Indholdet af';
$lang['da_DK']['Newsletter_RecipientImportField_Table.ss']['NO'] = 'Annuller';
$lang['da_DK']['Newsletter_RecipientImportField_Table.ss']['RECIMPORTED'] = 'Modtagere importeret fra';
$lang['da_DK']['Newsletter_RecipientImportField_Table.ss']['YES'] = 'Bekræft';
$lang['da_DK']['Newsletter_SentStatusReport.ss']['DATE'] = 'Dato';
$lang['da_DK']['Newsletter_SentStatusReport.ss']['EMAIL'] = 'Email';
$lang['da_DK']['Newsletter_SentStatusReport.ss']['FN'] = 'Fornavn';
$lang['da_DK']['Newsletter_SentStatusReport.ss']['NEWSNEVERSENT'] = 'Nyhedsbrevet er aldrig blevet sendt til følgende modtagere';
$lang['da_DK']['Newsletter_SentStatusReport.ss']['RES'] = 'Resultat';
$lang['da_DK']['Newsletter_SentStatusReport.ss']['SENDBOUNCED'] = 'Forsendelse til følgende modtagere blev afvist';
$lang['da_DK']['Newsletter_SentStatusReport.ss']['SENDFAIL'] = 'Det lykkedes ikke at sende til følgende modtagere';
$lang['da_DK']['Newsletter_SentStatusReport.ss']['SENTOK'] = 'Det lykkedes at sende til følgende modtagere';
$lang['da_DK']['Newsletter_SentStatusReport.ss']['SN'] = 'Efternavn';
$lang['da_DK']['PageComment']['COMMENTBY'] = 'Kommentar af \'%s\' den %s';
$lang['da_DK']['PageCommentInterface.ss']['COMMENTS'] = 'Kommentarer';
$lang['da_DK']['PageCommentInterface.ss']['NEXT'] = 'næste';
$lang['da_DK']['PageCommentInterface.ss']['NOCOMMENTSYET'] = 'Ingen har kommenteret siden endnu';
$lang['da_DK']['PageCommentInterface.ss']['POSTCOM'] = 'Indsend din kommentar';
$lang['da_DK']['PageCommentInterface.ss']['PREV'] = 'forrige';
$lang['da_DK']['PageCommentInterface_singlecomment.ss']['ISNTSPAM'] = 'Denne kommentar er ikke spam';
$lang['da_DK']['PageCommentInterface_singlecomment.ss']['ISSPAM'] = 'Denne kommentar er spam';
$lang['da_DK']['PageCommentInterface_singlecomment.ss']['PBY'] = 'Indsendt af';
$lang['da_DK']['PageCommentInterface_singlecomment.ss']['REMCOM'] = 'fjern denne kommentar';
$lang['da_DK']['ReportAdmin_left.ss']['REPORTS'] = 'Rapporter';
$lang['da_DK']['ReportAdmin_right.ss']['WELCOME1'] = 'Velkommen til';
$lang['da_DK']['ReportAdmin_right.ss']['WELCOME2'] = 'Rapport sektionen. Vælg en specifik rapport i venstreside.';
$lang['da_DK']['ReportAdmin_SiteTree.ss']['REPORTS'] = 'Rapporter';
$lang['da_DK']['SecurityAdmin']['ADDMEMBER'] = 'Tilføj medlem';
$lang['da_DK']['SecurityAdmin']['ADVANCEDONLY'] = 'Denne sektion er kun for avancerede brugere. Se <a href="http://doc.silverstripe.com/doku.php?id=permissions:codes" target="_blank">Denne side</a> for mere information.';
$lang['da_DK']['SecurityAdmin']['NEWGROUP'] = 'Ny gruppe';
$lang['da_DK']['SecurityAdmin']['SAVE'] = 'Gem';
$lang['da_DK']['SecurityAdmin']['SGROUPS'] = 'Sikkerhedsgrupper';
$lang['da_DK']['SecurityAdmin_left.ss']['CREATE'] = 'Opret';
$lang['da_DK']['SecurityAdmin_left.ss']['DEL'] = 'Slet';
$lang['da_DK']['SecurityAdmin_left.ss']['DELGROUPS'] = 'Slet de valgte grupper';
$lang['da_DK']['SecurityAdmin_left.ss']['GO'] = 'Go';
$lang['da_DK']['SecurityAdmin_left.ss']['SECGROUPS'] = 'Sikkerhedsgrupper';
$lang['da_DK']['SecurityAdmin_left.ss']['SELECT'] = 'Vælg de sider, du ønsker at slette og klik på knappen herunder';
$lang['da_DK']['SecurityAdmin_left.ss']['TOREORG'] = 'For at reorganisere, kan du trække siderne rundt som ønsket.';
$lang['da_DK']['SecurityAdmin_right.ss']['WELCOME1'] = 'Velkommen til';
$lang['da_DK']['SecurityAdmin_right.ss']['WELCOME2'] = 'Sikkerhedsadministration. Vælg en gruppe i venstreside';
$lang['da_DK']['SideReport']['EMPTYPAGES'] = 'Tomme sider';
$lang['da_DK']['SideReport']['LAST2WEEKS'] = 'Sider ændret indenfor de sidste 2 uger';
$lang['da_DK']['SideReport']['REPEMPTY'] = 'Denne %s rapport er tom.';
$lang['da_DK']['StaticExporter']['BASEURL'] = 'Base URL';
$lang['da_DK']['StaticExporter']['EXPORTTO'] = 'Eksporter til mappen';
$lang['da_DK']['StaticExporter']['FOLDEREXPORT'] = 'Mappe der skal eksporteres til';
$lang['da_DK']['StaticExporter']['NAME'] = 'Statisk eksporter';
$lang['da_DK']['StaticExporter']['ONETHATEXISTS'] = 'Specificer en mappe der findes';
$lang['da_DK']['StatisticsAdmin_left.ss']['OVERV'] = 'Oversigt';
$lang['da_DK']['StatisticsAdmin_left.ss']['REPTYPES'] = 'Rapporttyper';
$lang['da_DK']['StatisticsAdmin_left.ss']['USERS'] = 'Brugere';
$lang['da_DK']['SubmittedFormEmail.ss']['SUBMITTED'] = 'Følgende data er indsendt til din hjemmeside:';
$lang['da_DK']['TaskList.ss']['BY'] = 'af';
$lang['da_DK']['ThumbnailStripField']['NOTAFOLDER'] = 'Dette  er ikke en mappe';
$lang['da_DK']['ThumbnailStripField.ss']['CHOOSEFOLDER'] = 'Vælg en mappe ovenover';
$lang['da_DK']['ViewArchivedEmail.ss']['CANACCESS'] = 'Du kan tilgå¨den arkiverede side på dette link:';
$lang['da_DK']['ViewArchivedEmail.ss']['HAVEASKED'] = 'Du har spurgt om at se indholdet af vores side på';
$lang['da_DK']['WaitingOn.ss']['ATO'] = 'tildelt til';

?>
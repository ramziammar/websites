<?php

/**
 * German (Germany) language pack
 * @package cms
 * @subpackage i18n
 */

i18n::include_locale_file('cms', 'en_US');

global $lang;

if(array_key_exists('de_DE', $lang) && is_array($lang['de_DE'])) {
	$lang['de_DE'] = array_merge($lang['en_US'], $lang['de_DE']);
} else {
	$lang['de_DE'] = $lang['en_US'];
}

$lang['de_DE']['AssetAdmin']['CHOOSEFILE'] = 'Datei auswählen';
$lang['de_DE']['AssetAdmin']['CONTENTMODBY'] = 'Inhalt veränderbar durch';
$lang['de_DE']['AssetAdmin']['CONTENTUSABLEBY'] = 'Inhalt einsetzbar von';
$lang['de_DE']['AssetAdmin']['CREATED'] = 'Erstmalig hochgeladen';
$lang['de_DE']['AssetAdmin']['DELETEDX'] = '%s Dateien gelöscht';
$lang['de_DE']['AssetAdmin']['DELETEUNUSEDTHUMBNAILS'] = 'Ungenutzte Thumbnails löschen ';
$lang['de_DE']['AssetAdmin']['DELSELECTED'] = 'Lösche markierte Dateien';
$lang['de_DE']['AssetAdmin']['DETAILSTAB'] = 'Details';
$lang['de_DE']['AssetAdmin']['FILENAME'] = 'Dateiname';
$lang['de_DE']['AssetAdmin']['FILESREADY'] = 'Dateien bereit zum hochladen:';
$lang['de_DE']['AssetAdmin']['FILESTAB'] = 'Dateien';
$lang['de_DE']['AssetAdmin']['LASTEDITED'] = 'Letztmalig geändert';
$lang['de_DE']['AssetAdmin']['MOVEDX'] = '%s Dateien verschoben';
$lang['de_DE']['AssetAdmin']['NEWFOLDER'] = 'Neuer Ordner';
$lang['de_DE']['AssetAdmin']['NOTHINGTOUPLOAD'] = 'Keine Dateien zum hochladen vorhanden';
$lang['de_DE']['AssetAdmin']['NOWBROKEN'] = 'Folgende Seiten besitzen fehlerhafte Verweise';
$lang['de_DE']['AssetAdmin']['ONLYADMINS'] = 'Nur Administratoren können %s Dateien hochladen.';
$lang['de_DE']['AssetAdmin']['OWNER'] = 'Eigentümer';
$lang['de_DE']['AssetAdmin']['SAVEDFILE'] = 'Datei %s gespeichert';
$lang['de_DE']['AssetAdmin']['SAVEFOLDERNAME'] = 'Speichere Ordner Name';
$lang['de_DE']['AssetAdmin']['TITLE'] = 'Titel';
$lang['de_DE']['AssetAdmin']['TOOLARGE'] = '%s ist zu groß (%s). Dateien diesen Typs dürfen nicht größer als %s sein';
$lang['de_DE']['AssetAdmin']['TYPE'] = 'Typ';
$lang['de_DE']['AssetAdmin']['UNUSEDFILESTAB'] = 'Ungenutzte Dateien';
$lang['de_DE']['AssetAdmin']['UNUSEDFILESTITLE'] = 'Ungenutzte Dateien';
$lang['de_DE']['AssetAdmin']['UNUSEDTHUMBNAILSTITLE'] = 'Ungenutzte Thumbnails';
$lang['de_DE']['AssetAdmin']['UPLOAD'] = 'Folgende Dateien wurden hochgeladen';
$lang['de_DE']['AssetAdmin']['UPLOADEDX'] = '%s Dateien hochgeladen';
$lang['de_DE']['AssetAdmin']['UPLOADTAB'] = 'Hochladen';
$lang['de_DE']['AssetAdmin']['VIEWASSET'] = 'Anlage ansehen';
$lang['de_DE']['AssetAdmin']['VIEWEDITASSET'] = 'Anlagen ansehen/ändern';
$lang['de_DE']['AssetAdmin_left.ss']['CREATE'] = 'Erstellen';
$lang['de_DE']['AssetAdmin_left.ss']['DELETE'] = 'Löschen...';
$lang['de_DE']['AssetAdmin_left.ss']['DELFOLDERS'] = 'Lösche die markierten Ordner';
$lang['de_DE']['AssetAdmin_left.ss']['FOLDERS'] = 'Ordner';
$lang['de_DE']['AssetAdmin_left.ss']['GO'] = 'Los';
$lang['de_DE']['AssetAdmin_left.ss']['SELECTTODEL'] = 'Markieren Sie die Ordner aus die Sie löschen möchten und drücken dann die nachstehende Schaltfläche ';
$lang['de_DE']['AssetAdmin_left.ss']['TOREORG'] = 'Um Ihre Ordner neu zu ordnen, ziehen Sie Sie mit der Maus an die gewünschte Stelle.';
$lang['de_DE']['AssetAdmin_right.ss']['CHOOSEPAGE'] = 'Bitte wählen Sie eine der Seiten links aus.';
$lang['de_DE']['AssetAdmin_right.ss']['WELCOME'] = 'Willkommen zu';
$lang['de_DE']['AssetAdmin_uploadiframe.ss']['PERMFAILED'] = 'Sie haben nicht die Berechtigung Dateien in diesen Ordner hochzuladen.';
$lang['de_DE']['AssetTableField']['CREATED'] = 'Erstmalig hochgeladen';
$lang['de_DE']['AssetTableField']['DIM'] = 'Dimensionen';
$lang['de_DE']['AssetTableField']['FILENAME'] = 'Dateiname';
$lang['de_DE']['AssetTableField']['LASTEDIT'] = 'Letztmals geändert';
$lang['de_DE']['AssetTableField']['NOLINKS'] = 'Es verweist keine Seite auf diese Datei';
$lang['de_DE']['AssetTableField']['OWNER'] = 'Eigentümer';
$lang['de_DE']['AssetTableField']['PAGESLINKING'] = 'Die folgenden Seiten verweisen auf diese Datei';
$lang['de_DE']['AssetTableField']['SIZE'] = 'Größe';
$lang['de_DE']['AssetTableField.ss']['DELFILE'] = 'Lösche diese Datei';
$lang['de_DE']['AssetTableField.ss']['DRAGTOFOLDER'] = 'Ziehen Sie die Datei auf einen Ordner links um sie zu verschieben';
$lang['de_DE']['AssetTableField']['TITLE'] = 'Titel';
$lang['de_DE']['AssetTableField']['TYPE'] = 'Typ';
$lang['de_DE']['BulkLoaderAdmin']['CONFIRMBULK'] = 'Massenladung bestätigen';
$lang['de_DE']['BulkLoaderAdmin']['CSVFILE'] = 'CSV Datei';
$lang['de_DE']['BulkLoaderAdmin']['DATALOADED'] = 'Die Daten wurden eingelesen';
$lang['de_DE']['BulkLoaderAdmin']['PRESSCNT'] = 'Drücken Sie fortfahren um die Daten einzulesen';
$lang['de_DE']['BulkLoaderAdmin']['PREVIEW'] = 'Vorschau';
$lang['de_DE']['BulkLoaderAdmin_left.ss']['BATCHEF'] = 'Batch Funktionen';
$lang['de_DE']['BulkLoaderAdmin_left.ss']['FUNCTIONS'] = 'Funktionen';
$lang['de_DE']['BulkLoaderAdmin_preview.ss']['RES'] = 'Ergebnisse';
$lang['de_DE']['CMSLeft.ss']['DELPAGE'] = 'Lösche Seiten...';
$lang['de_DE']['CMSLeft.ss']['DELPAGES'] = 'Lösche die markierten Ordner';
$lang['de_DE']['CMSLeft.ss']['GO'] = 'Los';
$lang['de_DE']['CMSLeft.ss']['NEWPAGE'] = 'Neue Seite...';
$lang['de_DE']['CMSLeft.ss']['SELECTPAGESDEL'] = 'Markieren Sie die Ordner aus die Sie löschen möchten und drücken dann die nachstehende Schaltfläche ';
$lang['de_DE']['CMSLeft.ss']['SITECONT'] = 'Seiten Inhalt';
$lang['de_DE']['CMSMain']['CANCEL'] = 'Abbrechen';
$lang['de_DE']['CMSMain']['CHOOSEREPORT'] = '(Report wählen)';
$lang['de_DE']['CMSMain']['COMPARINGV'] = 'Sie vergleichen Versionen #%d und #%d';
$lang['de_DE']['CMSMain']['COPYPUBTOSTAGE'] = 'Wollen Sie den Inhalt wirklich von Live nach Entwurf kopieren?';
$lang['de_DE']['CMSMain']['DELETEFP'] = 'Von Live-Seite löschen';
$lang['de_DE']['CMSMain']['EMAIL'] = 'E-Mail';
$lang['de_DE']['CMSMain']['GO'] = 'Los';
$lang['de_DE']['CMSMain']['METADESCOPT'] = 'Beschreibung';
$lang['de_DE']['CMSMain']['METAKEYWORDSOPT'] = 'Schlüsselwörter';
$lang['de_DE']['CMSMain']['NEW'] = 'Neu';
$lang['de_DE']['CMSMain']['NOCONTENT'] = 'Kein Inhalt';
$lang['de_DE']['CMSMain']['NOTHINGASSIGNED'] = 'Sie haben keine Aufgaben.';
$lang['de_DE']['CMSMain']['NOWAITINGON'] = 'Sie warten auf keine anderen Autoren.';
$lang['de_DE']['CMSMain']['NOWBROKEN'] = 'Die folgenden Seiten haben falsche Verlinkungen:';
$lang['de_DE']['CMSMain']['NOWBROKEN2'] = 'Die zuständigen Benutzer haben eine Email erhalten und können diese Seiten reparieren.';
$lang['de_DE']['CMSMain']['OK'] = 'OK';
$lang['de_DE']['CMSMain']['PAGEDEL'] = '%d Seite gelöscht';
$lang['de_DE']['CMSMain']['PAGENOTEXISTS'] = 'Diese Seite wurde nicht gefunden';
$lang['de_DE']['CMSMain']['PAGEPUB'] = '%d Seite veröffentlicht';
$lang['de_DE']['CMSMain']['PAGESDEL'] = '%d Seiten gelöscht';
$lang['de_DE']['CMSMain']['PAGESPUB'] = '%d Seiten veröffentlicht';
$lang['de_DE']['CMSMain']['PAGETYPEOPT'] = 'Seitentyp';
$lang['de_DE']['CMSMain']['PRINT'] = 'Drucken';
$lang['de_DE']['CMSMain']['PUBALLCONFIRM'] = 'Veröffentlicht jede Seite des Seitenbaumes, und kopiert den Inhalt von Entwurf zu Live.';
$lang['de_DE']['CMSMain']['PUBALLFUN'] = '"Alle veröffentlichen"-Funktion';
$lang['de_DE']['CMSMain']['PUBALLFUN2'] = 'Dieser Button bewirkt dasselbe wie auf jeder Seite "veröffentlichen" zu wählen. Sie sollten diese Funktion nutzen, wenn massive Inhaltsänderungen stattgefunden haben, oder die Seite gerade erstellt wurde.';
$lang['de_DE']['CMSMain']['PUBPAGES'] = 'Fertig: %d Seite(n) veröffentlicht';
$lang['de_DE']['CMSMain']['REMOVEDFD'] = 'Von Entwurf-Seite gelöscht.';
$lang['de_DE']['CMSMain']['REMOVEDPAGE'] = '\'%s\' von veröffentlichter Webseite gelöscht.';
$lang['de_DE']['CMSMain']['RESTORE'] = 'Wiederherstellen';
$lang['de_DE']['CMSMain']['RESTORED'] = '\'%s\' erfolgreich wiederhergestellt';
$lang['de_DE']['CMSMain']['ROLLBACK'] = 'Diese Version wiederherstellen';
$lang['de_DE']['CMSMain']['ROLLEDBACKPUB'] = 'Zur veröffentlichten Version wiederhergestellt. Neue Versionsnummer ist #%d';
$lang['de_DE']['CMSMain']['ROLLEDBACKVERSION'] = 'Version #%d wiederhergestellt. Neue Versionsnummer ist #%d';
$lang['de_DE']['CMSMain']['SAVE'] = 'Speichern';
$lang['de_DE']['CMSMain']['SENTTO'] = 'Zur Freigabe an %s %s gesendet.';
$lang['de_DE']['CMSMain']['STATUSOPT'] = 'Status';
$lang['de_DE']['CMSMain']['TOTALPAGES'] = 'Seiten gesamt:';
$lang['de_DE']['CMSMain']['VERSIONSNOPAGE'] = 'Seite #%d nicht gefunden.';
$lang['de_DE']['CMSMain']['VIEWING'] = 'Sie sehen Version #%d, erstellt %s';
$lang['de_DE']['CMSMain']['VISITRESTORE'] = 'Öffne restorepage/(ID)';
$lang['de_DE']['CMSMain']['WAITINGON'] = 'Sie warten auf andere Autoren bei <b>%d</b> Seiten.';
$lang['de_DE']['CMSMain']['WORKTODO'] = 'Sie haben Arbeit an diesen <b>%d</b> Seiten zu tun.';
$lang['de_DE']['CMSMain_left.ss']['ADDEDNOTPUB'] = 'Als Entwurf gespeichert, noch nicht veröffentlicht.';
$lang['de_DE']['CMSMain_left.ss']['ADDSEARCHCRITERIA'] = 'Kriterien hinzufügen...';
$lang['de_DE']['CMSMain_left.ss']['BATCHACTIONS'] = 'Batch Aktionen';
$lang['de_DE']['CMSMain_left.ss']['CHANGED'] = 'geändert';
$lang['de_DE']['CMSMain_left.ss']['CLOSEBOX'] = 'Hier klicken, um Box zu schließen';
$lang['de_DE']['CMSMain_left.ss']['COMMENTS'] = 'Kommentare';
$lang['de_DE']['CMSMain_left.ss']['COMPAREMODE'] = 'Vergleichsmodus (paarweise auswählen)';
$lang['de_DE']['CMSMain_left.ss']['CREATE'] = 'Seite erstellen...';
$lang['de_DE']['CMSMain_left.ss']['DEL'] = 'gelöscht';
$lang['de_DE']['CMSMain_left.ss']['DELETECONFIRM'] = 'Lösche ausgewählte Seiten';
$lang['de_DE']['CMSMain_left.ss']['DELETEDSTILLLIVE'] = 'Vom Entwurf gelöscht, noch veröffentlicht';
$lang['de_DE']['CMSMain_left.ss']['EDITEDNOTPUB'] = 'Im Entwurf geändert und noch nicht veröffentlicht';
$lang['de_DE']['CMSMain_left.ss']['EDITEDSINCE'] = 'In der Zwischenzeit bearbeitet';
$lang['de_DE']['CMSMain_left.ss']['ENABLEDRAGGING'] = 'Erlaube Drag &amp; Drop neuordnen';
$lang['de_DE']['CMSMain_left.ss']['GO'] = 'Los';
$lang['de_DE']['CMSMain_left.ss']['KEY'] = 'Schlüssel:';
$lang['de_DE']['CMSMain_left.ss']['NEW'] = 'neu';
$lang['de_DE']['CMSMain_left.ss']['OPENBOX'] = 'Hier klicken, um diese Box zu öffnen';
$lang['de_DE']['CMSMain_left.ss']['PAGEVERSIONH'] = 'Versionsverlauf';
$lang['de_DE']['CMSMain_left.ss']['PUBLISHCONFIRM'] = 'Veröffentliche die markierten Seiten';
$lang['de_DE']['CMSMain_left.ss']['SEARCH'] = 'Suche';
$lang['de_DE']['CMSMain_left.ss']['SEARCHTITLE'] = 'Durchsuche URL, Titel, Menü Titel &amp; Inhalt';
$lang['de_DE']['CMSMain_left.ss']['SELECTPAGESACTIONS'] = 'Markieren Sie die Seiten die Sie ändern möchten und wählen dann eine der Aktionen:';
$lang['de_DE']['CMSMain_left.ss']['SELECTPAGESDUP'] = 'Wählen Sie die zu duplizierenden Seiten (und Kind-Elemente), und wo Sie die Kopien platzieren möchten.';
$lang['de_DE']['CMSMain_left.ss']['SHOWONLYCHANGED'] = 'Zeige nur veränderte Seiten';
$lang['de_DE']['CMSMain_left.ss']['SHOWUNPUB'] = 'Zeige unveröffentlichte Versionen';
$lang['de_DE']['CMSMain_left.ss']['SITECONTENT TITLE'] = 'Seitenbaum';
$lang['de_DE']['CMSMain_left.ss']['SITEREPORTS'] = 'Reporte';
$lang['de_DE']['CMSMain_left.ss']['TASKLIST'] = 'Aufgabenliste';
$lang['de_DE']['CMSMain_left.ss']['WAITINGON'] = 'Warte auf';
$lang['de_DE']['CMSMain_right.ss']['ANYMESSAGE'] = 'Haben Sie eine Nachricht an Ihren Redakteur?';
$lang['de_DE']['CMSMain_right.ss']['CHOOSEPAGE'] = 'Bitte eine Seite links auswählen.';
$lang['de_DE']['CMSMain_right.ss']['LOADING'] = 'lade...';
$lang['de_DE']['CMSMain_right.ss']['MESSAGE'] = 'Nachricht';
$lang['de_DE']['CMSMain_right.ss']['SENDTO'] = 'Senden an';
$lang['de_DE']['CMSMain_right.ss']['STATUS'] = 'Status';
$lang['de_DE']['CMSMain_right.ss']['SUBMIT'] = 'Zur Freigabe senden';
$lang['de_DE']['CMSMain_right.ss']['WELCOMETO'] = 'Willkommen auf';
$lang['de_DE']['CMSMain_versions.ss']['AUTHOR'] = 'Autor';
$lang['de_DE']['CMSMain_versions.ss']['NOTPUB'] = 'Nicht veröffentlicht';
$lang['de_DE']['CMSMain_versions.ss']['PUBR'] = 'Veröffentlicher';
$lang['de_DE']['CMSMain_versions.ss']['UNKNOWN'] = 'Unbekannt';
$lang['de_DE']['CMSMain_versions.ss']['WHEN'] = 'Wann';
$lang['de_DE']['CMSRight.ss']['CHOOSEPAGE'] = 'Bitte eine Seite links auswählen.';
$lang['de_DE']['CMSRight.ss']['ECONTENT'] = 'Inhalt bearbeiten';
$lang['de_DE']['CMSRight.ss']['WELCOMETO'] = 'Willkommen auf';
$lang['de_DE']['CommentList.ss']['CREATEDW'] = 'Kommentare werden immer dann erstellt wenn eine der "Arbeitsablauf Aktionen" übernommen werden - Veröffentlichen, Ablehnen, Vorlegen.';
$lang['de_DE']['CommentList.ss']['NOCOM'] = 'Zu dieser Seite liegen keine Kommentare vor';
$lang['de_DE']['GenericDataAdmin_left.ss']['ADDLISTING'] = 'Listing hinzufügen';
$lang['de_DE']['GenericDataAdmin_left.ss']['SEARCHLISTINGS'] = 'Durchsuche Listings';
$lang['de_DE']['GenericDataAdmin_left.ss']['SEARCHRESULTS'] = 'Suche Ergebnisse';
$lang['de_DE']['ImageEditor.ss']['CANCEL'] = 'abbrechen';
$lang['de_DE']['ImageEditor.ss']['CROP'] = 'zuschneiden';
$lang['de_DE']['ImageEditor.ss']['HEIGHT'] = 'Höhe';
$lang['de_DE']['ImageEditor.ss']['REDO'] = 'nochmals machen';
$lang['de_DE']['ImageEditor.ss']['ROT'] = 'drehen';
$lang['de_DE']['ImageEditor.ss']['SAVE'] = 'speichere&nbsp;Bild';
$lang['de_DE']['ImageEditor.ss']['UNDO'] = 'rückgängig machen';
$lang['de_DE']['ImageEditor.ss']['UNTITLED'] = 'Unbetiteltes Dokument';
$lang['de_DE']['ImageEditor.ss']['WIDTH'] = 'Breite';
$lang['de_DE']['LeftAndMain']['CHANGEDURL'] = 'URL geändert: \'%s\'';
$lang['de_DE']['LeftAndMain']['COMMENTS'] = 'Kommentare';
$lang['de_DE']['LeftAndMain']['FILESIMAGES'] = 'Dateien & Bilder';
$lang['de_DE']['LeftAndMain']['HELP'] = 'Hilfe';
$lang['de_DE']['LeftAndMain']['NEWSLETTERS'] = 'Newsletter';
$lang['de_DE']['LeftAndMain']['PAGETYPE'] = 'Seitentyp:';
$lang['de_DE']['LeftAndMain']['PERMAGAIN'] = 'Sie wurden aus dem System ausgeloggt. Falls Sie sich wieder einloggen möchten, geben Sie bitte Benutzernamen und Passwort im untenstehenden Formular an.';
$lang['de_DE']['LeftAndMain']['PERMALREADY'] = 'Entschuldigung, Sie dürften diesen Teil des CMS nicht aufrufen. Wenn Sie sich als jemand anderes einloggen wollen, benutzen Sie bitte das nachstehende Formular.';
$lang['de_DE']['LeftAndMain']['PERMDEFAULT'] = 'Bitte wählen Sie eine Authentifizierungsmethode und geben Sie Ihre Kennung ein, um das CMS aufzurufen.';
$lang['de_DE']['LeftAndMain']['PLEASESAVE'] = 'Diese Seite konnte nicht aktualisiert werden weil sie noch nicht gespeichert wurde - bitte speichern.';
$lang['de_DE']['LeftAndMain']['REPORTS'] = 'Report';
$lang['de_DE']['LeftAndMain']['REQUESTERROR'] = 'Systemfehler';
$lang['de_DE']['LeftAndMain']['SAVED'] = 'gespeichert';
$lang['de_DE']['LeftAndMain']['SAVEDUP'] = 'Gespeichert';
$lang['de_DE']['LeftAndMain']['SECURITY'] = 'Sicherheit';
$lang['de_DE']['LeftAndMain']['SITECONTENT'] = 'Seitenbaum';
$lang['de_DE']['LeftAndMain']['SITECONTENTLEFT'] = 'Seiteninhalt';
$lang['de_DE']['LeftAndMain.ss']['APPVERSIONTEXT1'] = 'Dies ist der';
$lang['de_DE']['LeftAndMain.ss']['APPVERSIONTEXT2'] = 'Benutzte Version (Branch der SVN-Versionskontrolle)';
$lang['de_DE']['LeftAndMain.ss']['ARCHS'] = 'Archivierte Seite';
$lang['de_DE']['LeftAndMain.ss']['DRAFTS'] = 'Entwurf';
$lang['de_DE']['LeftAndMain.ss']['EDIT'] = 'Bearbeiten';
$lang['de_DE']['LeftAndMain.ss']['EDITPROFILE'] = 'Proifl';
$lang['de_DE']['LeftAndMain.ss']['LOADING'] = 'Lade...';
$lang['de_DE']['LeftAndMain.ss']['LOGGEDINAS'] = 'Eingeloggt als';
$lang['de_DE']['LeftAndMain.ss']['LOGOUT'] = 'ausloggen';
$lang['de_DE']['LeftAndMain.ss']['PUBLIS'] = 'Veröffentlichte Seite';
$lang['de_DE']['LeftAndMain.ss']['SSWEB'] = 'Silverstripe Website';
$lang['de_DE']['LeftAndMain.ss']['SWITCHTO'] = 'Wechseln zu:';
$lang['de_DE']['LeftAndMain.ss']['VIEWPAGEIN'] = 'Seitenansicht:';
$lang['de_DE']['LeftAndMain']['STATISTICS'] = 'Statistiken';
$lang['de_DE']['LeftAndMain']['STATUSTO'] = 'Status geändert: \'%s\'';
$lang['de_DE']['LeftAndMain']['TREESITECONTENT'] = 'Seiteninhalt';
$lang['de_DE']['MemberList']['ADD'] = 'hinzufügen';
$lang['de_DE']['MemberList']['EMAIL'] = 'Email';
$lang['de_DE']['MemberList']['FILTERBYG'] = 'Nach Gruppen sortieren';
$lang['de_DE']['MemberList']['FN'] = 'Vorname';
$lang['de_DE']['MemberList']['PASSWD'] = 'Passwort';
$lang['de_DE']['MemberList']['SEARCH'] = 'Suche';
$lang['de_DE']['MemberList']['SN'] = 'Nachname';
$lang['de_DE']['MemberList.ss']['FILTER'] = 'filtern';
$lang['de_DE']['MemberList_Table.ss']['EMAIL'] = 'Email Adresse';
$lang['de_DE']['MemberList_Table.ss']['FN'] = 'Vorname';
$lang['de_DE']['MemberList_Table.ss']['PASSWD'] = 'Passwort';
$lang['de_DE']['MemberList_Table.ss']['SN'] = 'Nachname';
$lang['de_DE']['MemberTableField']['ADD'] = 'Hinzufügen';
$lang['de_DE']['MemberTableField']['ADDEDTOGROUP'] = 'Mitglied zu Gruppe hinzugefügt';
$lang['de_DE']['MemberTableField.ss']['ADDNEW'] = 'füge neue';
$lang['de_DE']['MemberTableField.ss']['DELETEMEMBER'] = 'Lösche dieses Mitglied';
$lang['de_DE']['MemberTableField.ss']['EDITMEMBER'] = 'Bearbeite dieses Mitglied';
$lang['de_DE']['MemberTableField.ss']['SHOWMEMBER'] = 'Zeige dieses Mitglied an';
$lang['de_DE']['NewsletterAdmin']['FROMEM'] = 'Von Email Adresse';
$lang['de_DE']['NewsletterAdmin']['MEWDRAFTMEWSL'] = 'Neue Newsletter Vorlage';
$lang['de_DE']['NewsletterAdmin']['NEWLIST'] = 'Neue Mailing Liste';
$lang['de_DE']['NewsletterAdmin']['NEWNEWSLTYPE'] = 'Neuer Newsletter Typ';
$lang['de_DE']['NewsletterAdmin']['NEWSLTYPE'] = 'Newsletter Typ';
$lang['de_DE']['NewsletterAdmin']['PLEASEENTERMAIL'] = 'Bitte geben Sie eine Email Adresse ein';
$lang['de_DE']['NewsletterAdmin']['RESEND'] = 'Wiederversenden';
$lang['de_DE']['NewsletterAdmin']['SAVE'] = 'Speichern';
$lang['de_DE']['NewsletterAdmin']['SAVED'] = 'Gespeichert';
$lang['de_DE']['NewsletterAdmin']['SEND'] = 'Senden...';
$lang['de_DE']['NewsletterAdmin']['SENDING'] = 'Sende Emails...';
$lang['de_DE']['NewsletterAdmin']['SENTTESTTO'] = 'Test gesendet an';
$lang['de_DE']['NewsletterAdmin']['SHOWCONTENTS'] = 'Zeige Inhalte';
$lang['de_DE']['NewsletterAdmin_BouncedList.ss']['EMADD'] = 'Email Adresse';
$lang['de_DE']['NewsletterAdmin_BouncedList.ss']['HAVEBOUNCED'] = 'abgewiesene Emails';
$lang['de_DE']['NewsletterAdmin_BouncedList.ss']['NOBOUNCED'] = 'Keine gesendeten Emails wurden abgewiesen';
$lang['de_DE']['NewsletterAdmin_BouncedList.ss']['UNAME'] = 'Nutzername';
$lang['de_DE']['NewsletterAdmin_left.ss']['ADDDRAFT'] = 'Neuen Entwurf hinzufügen';
$lang['de_DE']['NewsletterAdmin_left.ss']['ADDTYPE'] = 'Neuen Typ hinzufügen';
$lang['de_DE']['NewsletterAdmin_left.ss']['CREATE'] = 'Erstelle...';
$lang['de_DE']['NewsletterAdmin_left.ss']['DEL'] = 'Lösche...';
$lang['de_DE']['NewsletterAdmin_left.ss']['DELETEDRAFTS'] = 'Lösche den markierten Entwurf';
$lang['de_DE']['NewsletterAdmin_left.ss']['GO'] = 'Los';
$lang['de_DE']['NewsletterAdmin_left.ss']['NEWSLETTERS'] = 'Newsletter';
$lang['de_DE']['NewsletterAdmin_left.ss']['SELECTDRAFTS'] = 'Markieren Sie die Entwürfe die Sie löschen möchten und drücken dann die nachfolgende Schaltfläche';
$lang['de_DE']['NewsletterAdmin_right.ss']['CANCEL'] = 'Abbrechen';
$lang['de_DE']['NewsletterAdmin_right.ss']['ENTIRE'] = 'Sende an die gesamte Mailing Liste';
$lang['de_DE']['NewsletterAdmin_right.ss']['ONLYNOT'] = 'Sende nur an die Personen an die zuvor nicht versendet wurde';
$lang['de_DE']['NewsletterAdmin_right.ss']['SEND'] = 'Sende Newsletter';
$lang['de_DE']['NewsletterAdmin_right.ss']['SENDTEST'] = 'Sende Test an';
$lang['de_DE']['NewsletterAdmin_right.ss']['WELCOME1'] = 'Willkommen bei dem';
$lang['de_DE']['NewsletterAdmin_right.ss']['WELCOME2'] = 'Newsletter Administrations Bereich. Bitte wählen sie eine Ordner auf der linken Seite.';
$lang['de_DE']['NewsletterAdmin_SiteTree.ss']['DRAFTS'] = 'Entwurf';
$lang['de_DE']['NewsletterAdmin_SiteTree.ss']['MAILLIST'] = 'Mailing Liste';
$lang['de_DE']['NewsletterAdmin_SiteTree.ss']['SENT'] = 'Gesendete Artikel';
$lang['de_DE']['NewsletterAdmin_UnsubscribedList.ss']['NOUNSUB'] = 'Kein Nutzer hat diesen Newsletter abbestellt';
$lang['de_DE']['NewsletterAdmin_UnsubscribedList.ss']['UNAME'] = 'Nutzername';
$lang['de_DE']['NewsletterAdmin_UnsubscribedList.ss']['UNSUBON'] = 'Abbestellt am';
$lang['de_DE']['NewsletterList.ss']['CHOOSEDRAFT1'] = 'Bitte wählen Sie einen Entwurf auf der linken Seite, oder';
$lang['de_DE']['NewsletterList.ss']['CHOOSEDRAFT2'] = 'Fügen Sie einen hinzu';
$lang['de_DE']['NewsletterList.ss']['CHOOSESENT'] = 'Bitte wählen Sie einen gesendeten Artikel auf der linken Seite';
$lang['de_DE']['Newsletter_RecipientImportField.ss']['CHANGED'] = 'Anzahl der geänderten Details:';
$lang['de_DE']['Newsletter_RecipientImportField.ss']['IMPORTED'] = 'Neu importierte Mitglieder:';
$lang['de_DE']['Newsletter_RecipientImportField.ss']['IMPORTNEW'] = 'Neue Mitglieder importiert';
$lang['de_DE']['Newsletter_RecipientImportField.ss']['SEC'] = 'Sekunden';
$lang['de_DE']['Newsletter_RecipientImportField.ss']['SKIPPED'] = 'übersprungene Datensätze:';
$lang['de_DE']['Newsletter_RecipientImportField.ss']['TIME'] = 'Benötigte Zeit:';
$lang['de_DE']['Newsletter_RecipientImportField.ss']['UPDATED'] = 'aktualisierte Mitglieder:';
$lang['de_DE']['Newsletter_RecipientImportField_Table.ss']['CONTENTSOF'] = 'Inhalte';
$lang['de_DE']['Newsletter_RecipientImportField_Table.ss']['NO'] = 'Abbrechen';
$lang['de_DE']['Newsletter_RecipientImportField_Table.ss']['RECIMPORTED'] = 'Empfänger importiert aus';
$lang['de_DE']['Newsletter_RecipientImportField_Table.ss']['YES'] = 'Bestätigen';
$lang['de_DE']['Newsletter_SentStatusReport.ss']['DATE'] = 'Datum';
$lang['de_DE']['Newsletter_SentStatusReport.ss']['EMAIL'] = 'Email';
$lang['de_DE']['Newsletter_SentStatusReport.ss']['FN'] = 'Vorname';
$lang['de_DE']['Newsletter_SentStatusReport.ss']['NEWSNEVERSENT'] = 'Der Newsletter wurde nie an folgende Teilnehmer versandt';
$lang['de_DE']['Newsletter_SentStatusReport.ss']['RES'] = 'Ergebnis';
$lang['de_DE']['Newsletter_SentStatusReport.ss']['SENDBOUNCED'] = 'Der Versand an die folgenden Empfänger wurde abgewiesen';
$lang['de_DE']['Newsletter_SentStatusReport.ss']['SENDFAIL'] = 'Das versenden an die folgenden Empfänger schlug fehl';
$lang['de_DE']['Newsletter_SentStatusReport.ss']['SENTOK'] = 'Der Versand an folgende Empfänger war erfolgreich';
$lang['de_DE']['Newsletter_SentStatusReport.ss']['SN'] = 'Nachname';
$lang['de_DE']['PageComment']['COMMENTBY'] = 'Kommentar von \'%s\' am %s';
$lang['de_DE']['PageCommentInterface.ss']['COMMENTS'] = 'Kommentare';
$lang['de_DE']['PageCommentInterface.ss']['NEXT'] = 'nächste';
$lang['de_DE']['PageCommentInterface.ss']['NOCOMMENTSYET'] = 'Bisher hat niemand diese Seite kommentiert.';
$lang['de_DE']['PageCommentInterface.ss']['POSTCOM'] = 'Geben Sie einen Kommentar ab';
$lang['de_DE']['PageCommentInterface.ss']['PREV'] = 'vorherige';
$lang['de_DE']['PageCommentInterface_singlecomment.ss']['ISNTSPAM'] = 'dieser Kommentar ist kein Spam';
$lang['de_DE']['PageCommentInterface_singlecomment.ss']['ISSPAM'] = 'dieser Kommentar ist Spam';
$lang['de_DE']['PageCommentInterface_singlecomment.ss']['PBY'] = 'Erstellt von';
$lang['de_DE']['PageCommentInterface_singlecomment.ss']['REMCOM'] = 'entferne diesen Kommentar';
$lang['de_DE']['ReportAdmin_left.ss']['REPORTS'] = 'Berichte';
$lang['de_DE']['ReportAdmin_right.ss']['WELCOME1'] = 'Willkommen bei der';
$lang['de_DE']['ReportAdmin_right.ss']['WELCOME2'] = 'Berichtsbereich. Bitte wählen Sie einen Bericht auf der linken Seite.';
$lang['de_DE']['ReportAdmin_SiteTree.ss']['REPORTS'] = 'Berichte';
$lang['de_DE']['SecurityAdmin']['ADDMEMBER'] = 'Mitglied hinzufügen';
$lang['de_DE']['SecurityAdmin']['ADVANCEDONLY'] = 'Dieser Bereich ist nur für fortgeschrittene Nutzer.  Lesen Sie <a href="http://doc.silverstripe.com/doku.php?id=permissions:codes" target="_blank">this page</a>
für nähere Informationen';
$lang['de_DE']['SecurityAdmin']['NEWGROUP'] = 'Neue Gruppe';
$lang['de_DE']['SecurityAdmin']['SAVE'] = 'Speichern';
$lang['de_DE']['SecurityAdmin']['SGROUPS'] = 'Sicherheitsgruppen';
$lang['de_DE']['SecurityAdmin_left.ss']['CREATE'] = 'Erstellen';
$lang['de_DE']['SecurityAdmin_left.ss']['DEL'] = 'Löschen...';
$lang['de_DE']['SecurityAdmin_left.ss']['DELGROUPS'] = 'Lösche die markierten Gruppen';
$lang['de_DE']['SecurityAdmin_left.ss']['GO'] = 'Los';
$lang['de_DE']['SecurityAdmin_left.ss']['SECGROUPS'] = 'Sicherheitsgruppen';
$lang['de_DE']['SecurityAdmin_left.ss']['SELECT'] = 'Markieren Sie die Seiten die Sie löschen wollen und drücken dann die nachfolgende Schaltfläche';
$lang['de_DE']['SecurityAdmin_left.ss']['TOREORG'] = 'Um Ihre Seiten neu zu ordnen, ziehen sie die Seiten an die gewünschte Stelle.';
$lang['de_DE']['SecurityAdmin_right.ss']['WELCOME1'] = 'Willkommen bei dem';
$lang['de_DE']['SecurityAdmin_right.ss']['WELCOME2'] = 'Sicherheitsadministrationsbereich. Bitte wählen Sie eine Gruppe auf der linken Seite.';
$lang['de_DE']['SideReport']['EMPTYPAGES'] = 'Leere Seiten';
$lang['de_DE']['SideReport']['LAST2WEEKS'] = 'Seiten die in den letzten zwei Wochen hinzugefügt wurden';
$lang['de_DE']['SideReport']['REPEMPTY'] = 'Der %s -Bericht ist leer';
$lang['de_DE']['StaticExporter']['BASEURL'] = 'Ausgangs URL';
$lang['de_DE']['StaticExporter']['EXPORTTO'] = 'Exportieren in diesen Ordner';
$lang['de_DE']['StaticExporter']['FOLDEREXPORT'] = 'Ordner zum exportieren';
$lang['de_DE']['StaticExporter']['NAME'] = 'statischer Exporter';
$lang['de_DE']['StaticExporter']['ONETHATEXISTS'] = 'Bitte geben Sie einen vorhandenen Ordner an';
$lang['de_DE']['StatisticsAdmin_left.ss']['OVERV'] = 'Übersicht';
$lang['de_DE']['StatisticsAdmin_left.ss']['REPTYPES'] = 'Bericht Typen';
$lang['de_DE']['StatisticsAdmin_left.ss']['USERS'] = 'Nutzer';
$lang['de_DE']['SubmittedFormEmail.ss']['SUBMITTED'] = 'Die folgenden Daten wurden an Ihre Website übermittelt:';
$lang['de_DE']['TaskList.ss']['BY'] = 'von';
$lang['de_DE']['ThumbnailStripField']['NOTAFOLDER'] = 'Dies ist  kein Ordner';
$lang['de_DE']['ThumbnailStripField.ss']['CHOOSEFOLDER'] = '(wählen Sie eine der obigen Ordner)';
$lang['de_DE']['ViewArchivedEmail.ss']['CANACCESS'] = 'Sie können unter folgendem Verweis auf die archivierte Seite zugreifen:';
$lang['de_DE']['ViewArchivedEmail.ss']['HAVEASKED'] = 'Sie haben am (date) darum gebeten den Inhalt unserer Seite zu sehen.';
$lang['de_DE']['WaitingOn.ss']['ATO'] = 'zugewiesen an';

?>
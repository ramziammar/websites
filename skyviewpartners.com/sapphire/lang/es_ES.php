<?php

/**
 * Spanish (Spain) language pack
 * @package sapphire
 * @subpackage i18n
 */

i18n::include_locale_file('sapphire', 'en_US');

global $lang;

if(array_key_exists('es_ES', $lang) && is_array($lang['es_ES'])) {
	$lang['es_ES'] = array_merge($lang['en_US'], $lang['es_ES']);
} else {
	$lang['es_ES'] = $lang['en_US'];
}

$lang['es_ES']['BasicAuth']['ENTERINFO'] = 'Por favor introduzca su nombre de usuario y contraseña.';
$lang['es_ES']['BasicAuth']['ERRORNOTADMIN'] = 'Ese usuario no es un administrador.';
$lang['es_ES']['BasicAuth']['ERRORNOTREC'] = 'Ese nombre de usuario / contraseña no pudo ser reconocido.';
$lang['es_ES']['ChangePasswordEmail.ss']['CHANGEPASSWORDTEXT1'] = 'Has cambiado tu contraseña por';
$lang['es_ES']['ChangePasswordEmail.ss']['CHANGEPASSWORDTEXT2'] = 'Ahora puede utilizar los siguientes datos de acreditación para iniciar sesión:';
$lang['es_ES']['ChangePasswordEmail.ss']['HELLO'] = 'Hola';
$lang['es_ES']['ComplexTableField.ss']['ADDITEM'] = 'Agregar';
$lang['es_ES']['ComplexTableField.ss']['DELETE'] = 'eliminar';
$lang['es_ES']['ComplexTableField.ss']['DELETEROW'] = 'Eliminar esta fila';
$lang['es_ES']['ComplexTableField.ss']['EDIT'] = 'editar';
$lang['es_ES']['ComplexTableField.ss']['NOITEMSFOUND'] = 'No se encontraron elementos';
$lang['es_ES']['ComplexTableField.ss']['SHOW'] = 'mostrar';
$lang['es_ES']['ComplexTableField.ss']['SORTASC'] = 'Orden Ascendente';
$lang['es_ES']['ComplexTableField.ss']['SORTDESC'] = 'Orden Descendente';
$lang['es_ES']['ComplexTableField_popup.ss']['NEXT'] = 'Siguiente';
$lang['es_ES']['ComplexTableField_popup.ss']['PREVIOUS'] = 'Anterior';
$lang['es_ES']['ContentController']['DRAFT_SITE_ACCESS_RESTRICTION'] = 'Debe iniciar sesión para poder acceder a los contenidos archivados o al borrador. <a href="%s">De un click aquí para regresar al sitio publicado.</a>';
$lang['es_ES']['Controller']['FILE'] = 'Archivo';
$lang['es_ES']['Controller']['IMAGE'] = 'Imágen';
$lang['es_ES']['Date']['AGO'] = 'atras';
$lang['es_ES']['Date']['AWAY'] = 'adelante';
$lang['es_ES']['Date']['DAY'] = 'día';
$lang['es_ES']['Date']['DAYS'] = 'días';
$lang['es_ES']['Date']['HOUR'] = 'hora';
$lang['es_ES']['Date']['HOURS'] = 'horas';
$lang['es_ES']['Date']['MIN'] = 'min';
$lang['es_ES']['Date']['MINS'] = 'mins.';
$lang['es_ES']['Date']['MONTH'] = 'mes';
$lang['es_ES']['Date']['MONTHS'] = 'meses';
$lang['es_ES']['Date']['SEC'] = 'seg.';
$lang['es_ES']['Date']['SECS'] = 'segs.';
$lang['es_ES']['Date']['YEAR'] = 'año';
$lang['es_ES']['Date']['YEARS'] = 'años';
$lang['es_ES']['DateField']['VALIDDATEFORMAT'] = 'Por favor introduzca un formato de fecha válido (DD/MM/AAAA).';
$lang['es_ES']['DropdownField']['CHOOSE'] = '(Elegir)';
$lang['es_ES']['EmailField']['VALIDATION'] = 'Por favor introduzca una dirección de email.';
$lang['es_ES']['ErrorPage']['CODE'] = 'Código de error';
$lang['es_ES']['FileIframeField']['NOTEADDFILES'] = 'Puede agregar archivos en cuanto se haya guardado por primera vez.';
$lang['es_ES']['ForgotPasswordEmail.ss']['HELLO'] = 'Hola';
$lang['es_ES']['Form']['DATENOTSET'] = '(No existe fecha)';
$lang['es_ES']['Form']['FIELDISREQUIRED'] = 'se requiere llenar el campo %s';
$lang['es_ES']['Form']['LANGAOTHER'] = 'Otros lenguajes';
$lang['es_ES']['Form']['LANGAVAIL'] = 'Lenguajes disponibles';
$lang['es_ES']['Form']['NOTSET'] = '(sin ajustar)';
$lang['es_ES']['Form']['SAVECHANGES'] = 'Guardar Cambios';
$lang['es_ES']['Form']['VALIDATIONALLDATEVALUES'] = 'Por favor asegúrese de ajustar todos los valores de fecha';
$lang['es_ES']['Form']['VALIDATIONBANKACC'] = 'Por favor introduzca un número válido';
$lang['es_ES']['Form']['VALIDATIONCREDITNUMBER'] = 'Por favor asegúrese de haber introducido el  %s número de su tarjeta de crédito corréctamente';
$lang['es_ES']['Form']['VALIDATIONFAILED'] = 'Ha fallado la validación';
$lang['es_ES']['Form']['VALIDATIONNOTUNIQUE'] = 'El valor que se ha introducido no es único';
$lang['es_ES']['Form']['VALIDATIONPASSWORDSDONTMATCH'] = 'Las contraseñas no concuerdan';
$lang['es_ES']['Form']['VALIDATIONPASSWORDSNOTEMPTY'] = 'Las contraseñas no pueden estar vacías';
$lang['es_ES']['Form']['VALIDATIONSTRONGPASSWORD'] = 'Las contraseñas deben tener por lo menos un dígito y un carácter alfanumérico.';
$lang['es_ES']['Form']['VALIDCURRENCY'] = 'Por favor introduzca una moneda válida';
$lang['es_ES']['GhostPage']['NOLINKED'] = 'Esta página fantasma, no tiene enlaces de ninguna página';
$lang['es_ES']['GSTNumberField']['VALIDATION'] = 'Por favor introduza un Número GST válido.';
$lang['es_ES']['HtmlEditorField']['ALTTEXT'] = 'Descripción';
$lang['es_ES']['HtmlEditorField']['ANCHOR'] = 'Insertar/editar enlace interno';
$lang['es_ES']['HtmlEditorField']['BULLETLIST'] = 'Lista No-numerada';
$lang['es_ES']['HtmlEditorField']['BUTTONALIGNCENTER'] = 'Alinear al Centro';
$lang['es_ES']['HtmlEditorField']['BUTTONALIGNJUSTIFY'] = 'Justificar';
$lang['es_ES']['HtmlEditorField']['BUTTONALIGNLEFT'] = 'Alinear a la Izquierda';
$lang['es_ES']['HtmlEditorField']['BUTTONALIGNRIGHT'] = 'Alinear a la derecha';
$lang['es_ES']['HtmlEditorField']['BUTTONBOLD'] = 'Negrita (Ctrl+B)';
$lang['es_ES']['HtmlEditorField']['BUTTONCANCEL'] = 'Cancelar';
$lang['es_ES']['HtmlEditorField']['BUTTONEDITIMAGE'] = 'Editar imagen';
$lang['es_ES']['HtmlEditorField']['BUTTONINSERTFLASH'] = 'Insertar Flash';
$lang['es_ES']['HtmlEditorField']['BUTTONINSERTIMAGE'] = 'Insertar imagen';
$lang['es_ES']['HtmlEditorField']['BUTTONINSERTLINK'] = 'Insertar enlace';
$lang['es_ES']['HtmlEditorField']['BUTTONITALIC'] = 'Cursiva (Ctrl+I)';
$lang['es_ES']['HtmlEditorField']['BUTTONREMOVELINK'] = 'Eliminar enlace';
$lang['es_ES']['HtmlEditorField']['BUTTONSTRIKE'] = 'Tachado';
$lang['es_ES']['HtmlEditorField']['BUTTONUNDERLINE'] = 'Subrayado (Ctrl+U)';
$lang['es_ES']['HtmlEditorField']['CHARMAP'] = 'Insertar símbolo';
$lang['es_ES']['HtmlEditorField']['COPY'] = 'Copiar  (Ctrl+C)';
$lang['es_ES']['HtmlEditorField']['CREATEFOLDER'] = 'crear carpeta';
$lang['es_ES']['HtmlEditorField']['CSSCLASS'] = 'Alineación / estilo';
$lang['es_ES']['HtmlEditorField']['CSSCLASSCENTER'] = 'Centrado, en si mismo';
$lang['es_ES']['HtmlEditorField']['CSSCLASSLEFT'] = 'A la izquierda, con el texto flotando alrededor.';
$lang['es_ES']['HtmlEditorField']['CSSCLASSRIGHT'] = 'A la derecha, con el texto flotando alrededor.';
$lang['es_ES']['HtmlEditorField']['CUT'] = 'Cortar (Ctrl+X)';
$lang['es_ES']['HtmlEditorField']['DELETECOL'] = 'Eliminar columna';
$lang['es_ES']['HtmlEditorField']['DELETEROW'] = 'Eliminar fila';
$lang['es_ES']['HtmlEditorField']['EDITCODE'] = 'Editar Código HTML';
$lang['es_ES']['HtmlEditorField']['EMAIL'] = 'Dirección de E-mail';
$lang['es_ES']['HtmlEditorField']['FILE'] = 'Archivo';
$lang['es_ES']['HtmlEditorField']['FLASH'] = 'Insertar flash';
$lang['es_ES']['HtmlEditorField']['FOLDER'] = 'Carpeta';
$lang['es_ES']['HtmlEditorField']['FOLDERCANCEL'] = 'cancelar';
$lang['es_ES']['HtmlEditorField']['FORMATADDR'] = 'Dirección';
$lang['es_ES']['HtmlEditorField']['FORMATH1'] = 'Título 1';
$lang['es_ES']['HtmlEditorField']['FORMATH2'] = 'Título 2';
$lang['es_ES']['HtmlEditorField']['FORMATH3'] = 'Título 3';
$lang['es_ES']['HtmlEditorField']['FORMATH4'] = 'Título 4';
$lang['es_ES']['HtmlEditorField']['FORMATH5'] = 'Título 5';
$lang['es_ES']['HtmlEditorField']['FORMATH6'] = 'Título 6';
$lang['es_ES']['HtmlEditorField']['FORMATP'] = 'Párrafo';
$lang['es_ES']['HtmlEditorField']['HR'] = 'Insertar línea horizontal';
$lang['es_ES']['HtmlEditorField']['IMAGE'] = 'Insertar imágen';
$lang['es_ES']['HtmlEditorField']['IMAGEDIMENSIONS'] = 'Dimensiones';
$lang['es_ES']['HtmlEditorField']['IMAGEHEIGHTPX'] = 'Alto';
$lang['es_ES']['HtmlEditorField']['IMAGEWIDTHPX'] = 'Ancho';
$lang['es_ES']['HtmlEditorField']['INDENT'] = 'Sangrar texto';
$lang['es_ES']['HtmlEditorField']['INSERTCOLAFTER'] = 'Insertar columna después';
$lang['es_ES']['HtmlEditorField']['INSERTCOLBEF'] = 'Insertar columna antes';
$lang['es_ES']['HtmlEditorField']['INSERTROWAFTER'] = 'Insertar fila después';
$lang['es_ES']['HtmlEditorField']['INSERTROWBEF'] = 'Insertar fila antes';
$lang['es_ES']['HtmlEditorField']['INSERTTABLE'] = 'Insertar Tabla';
$lang['es_ES']['HtmlEditorField']['LINK'] = 'Insertar/editar enlace para el texto resaltado';
$lang['es_ES']['HtmlEditorField']['LINKDESCR'] = 'Descripción del Enlace';
$lang['es_ES']['HtmlEditorField']['LINKEMAIL'] = 'Dirección de E-mail';
$lang['es_ES']['HtmlEditorField']['LINKEXTERNAL'] = 'Otro Sitio Web';
$lang['es_ES']['HtmlEditorField']['LINKFILE'] = 'Descarga de un archivo';
$lang['es_ES']['HtmlEditorField']['LINKINTERNAL'] = 'Página en el sitio';
$lang['es_ES']['HtmlEditorField']['LINKOPENNEWWIN'] = 'Abrir enlace en una ventana nueva?';
$lang['es_ES']['HtmlEditorField']['LINKTO'] = 'Enlazar a';
$lang['es_ES']['HtmlEditorField']['OK'] = 'ok';
$lang['es_ES']['HtmlEditorField']['OL'] = 'Lista Numerada';
$lang['es_ES']['HtmlEditorField']['OUTDENT'] = 'Reducir sangrado';
$lang['es_ES']['HtmlEditorField']['PAGE'] = 'Página';
$lang['es_ES']['HtmlEditorField']['PASTE'] = 'Pegar (Ctrl+V)';
$lang['es_ES']['HtmlEditorField']['REDO'] = 'Rehacer (Ctrl+Y)';
$lang['es_ES']['HtmlEditorField']['UNDO'] = 'Deshacer (Ctrl+Z)';
$lang['es_ES']['HtmlEditorField']['UNLINK'] = 'Eliminar enlace';
$lang['es_ES']['HtmlEditorField']['UPLOAD'] = 'agregar';
$lang['es_ES']['HtmlEditorField']['URL'] = 'URL';
$lang['es_ES']['HtmlEditorField']['VISUALAID'] = 'Mostrar/ocultar guías de división';
$lang['es_ES']['ImageField']['NOTEADDIMAGES'] = 'Puede añadir imágenes una vez que haya guardado por primera vez.';
$lang['es_ES']['ImageUplaoder']['ONEFROMFILESTORE'] = 'Con uno del gestor de archivos';
$lang['es_ES']['ImageUploader']['ATTACH'] = 'Agregue %s';
$lang['es_ES']['ImageUploader']['DELETE'] = 'Elimine %s';
$lang['es_ES']['ImageUploader']['FROMCOMPUTER'] = 'Desde su computadora';
$lang['es_ES']['ImageUploader']['FROMFILESTORE'] = 'Desde el gestor de archivos';
$lang['es_ES']['ImageUploader']['ONEFROMCOMPUTER'] = 'Con una de su computadora';
$lang['es_ES']['ImageUploader']['REALLYDELETE'] = 'Realmente desea eliminar estos %s?';
$lang['es_ES']['ImageUploader']['REPLACE'] = 'Reemplace %s';
$lang['es_ES']['Image_iframe.ss']['TITLE'] = 'Iframe para agregar imágenes';
$lang['es_ES']['Member']['ADDRESS'] = 'Dirección';
$lang['es_ES']['Member']['BUTTONCHANGEPASSWORD'] = 'Cambiar Contraseña';
$lang['es_ES']['Member']['BUTTONLOGIN'] = 'Inicie Sesión';
$lang['es_ES']['Member']['BUTTONLOGINOTHER'] = 'Inicie sesión como otra persona';
$lang['es_ES']['Member']['BUTTONLOSTPASSWORD'] = 'He perdido mi contraseña';
$lang['es_ES']['Member']['CONFIRMNEWPASSWORD'] = 'Confirmar Nueva Contraseña';
$lang['es_ES']['Member']['CONFIRMPASSWORD'] = 'Confirmar Contraseña';
$lang['es_ES']['Member']['CONTACTINFO'] = 'Información de Contacto';
$lang['es_ES']['Member']['EMAIL'] = 'E-mail';
$lang['es_ES']['Member']['EMAILPASSWORDAPPENDIX'] = 'Su contraseña ha sido cambiada. Por favor guarde este email, para futuras referencias.';
$lang['es_ES']['Member']['EMAILPASSWORDINTRO'] = 'Ésta es su nueva contraseña';
$lang['es_ES']['Member']['EMAILSIGNUPINTRO1'] = 'Gracias por registrarse, ahora es un nuevo miembro, sus detalles se enlistan a continuación para futuras referencias.';
$lang['es_ES']['Member']['EMAILSIGNUPINTRO2'] = 'Puedes iniciar sesión en el sitio web utilizando los datosde acreditación listados a continuación.';
$lang['es_ES']['Member']['EMAILSIGNUPSUBJECT'] = 'Gracias por registrarse';
$lang['es_ES']['Member']['ERRORNEWPASSWORD'] = 'Ha introducido su nueva contraseña de distinta manera, intente de nuevo';
$lang['es_ES']['Member']['ERRORPASSWORDNOTMATCH'] = 'Su contraseña actual no concuerda, por favor intente de nuevo.';
$lang['es_ES']['Member']['ERRORWRONGCRED'] = 'No parece ser la dirección de e-mail o contraseña correcta. Por favor intente de nuevo.';
$lang['es_ES']['Member']['FIRSTNAME'] = 'Nombre(s)';
$lang['es_ES']['Member']['GREETING'] = 'Bienvenido';
$lang['es_ES']['Member']['INTERFACELANG'] = 'Lenguaje de la Interface';
$lang['es_ES']['Member']['LOGGEDINAS'] = 'Has iniciado sesión como %s.';
$lang['es_ES']['Member']['MOBILE'] = 'Móvil (celular)';
$lang['es_ES']['Member']['NAME'] = 'Nombre';
$lang['es_ES']['Member']['NEWPASSWORD'] = 'Nueva Contraseña';
$lang['es_ES']['Member']['PASSWORD'] = 'Contraseña';
$lang['es_ES']['Member']['PASSWORDCHANGED'] = 'Su contraseña ha sido cambiada, y se ha enviado una copia a su correo.';
$lang['es_ES']['Member']['PERSONALDETAILS'] = 'Detalles Personales';
$lang['es_ES']['Member']['PHONE'] = 'Teléfono';
$lang['es_ES']['Member']['REMEMBERME'] = 'Recordarme la próxima vez?';
$lang['es_ES']['Member']['SUBJECTPASSWORDCHANGED'] = 'Su contraseña ha sido cambiada';
$lang['es_ES']['Member']['SUBJECTPASSWORDRESET'] = 'Enlace para restaurar su contraseña';
$lang['es_ES']['Member']['SURNAME'] = 'Apellidos';
$lang['es_ES']['Member']['USERDETAILS'] = 'Detalles del Usuario';
$lang['es_ES']['Member']['VALIDATIONMEMBEREXISTS'] = 'Ya existe un miembro con este email.';
$lang['es_ES']['Member']['WELCOMEBACK'] = 'Bienvenido de Nuevo, %s';
$lang['es_ES']['Member']['YOUROLDPASSWORD'] = 'Su contraseña anterior';
$lang['es_ES']['MemberAuthenticator']['TITLE'] = 'E-mail &amp; Contraseña';
$lang['es_ES']['NumericField']['VALIDATION'] = '\'%s\' no es un número, este campo solo acepta números';
$lang['es_ES']['PhoneNumberField']['VALIDATION'] = 'Por favor introduzca un número de teléfono válido';
$lang['es_ES']['RedirectorPage']['HASBEENSETUP'] = 'Se ha establecido una página redireccionadora sin ningún sitio al cual redireccionar.';
$lang['es_ES']['RedirectorPage']['HEADER'] = 'Esta página redireccionará a los usuarios a otra página';
$lang['es_ES']['RedirectorPage']['OTHERURL'] = 'Otra dirección URL de un sitio web';
$lang['es_ES']['RedirectorPage']['REDIRECTTO'] = 'Redireccionar a';
$lang['es_ES']['RedirectorPage']['REDIRECTTOEXTERNAL'] = 'Otro sitio web';
$lang['es_ES']['RedirectorPage']['REDIRECTTOPAGE'] = 'Una página en su sitio web';
$lang['es_ES']['RedirectorPage']['YOURPAGE'] = 'Página en su sitio web';
$lang['es_ES']['Security']['ALREADYLOGGEDIN'] = 'No tiene acceso a esta página. Si posee otra cuenta con los privilegios para acceder a esta página, puede iniciar sesión a continuación.';
$lang['es_ES']['Security']['BUTTONSEND'] = 'Envíenme el enlace para restaurar la contraseña';
$lang['es_ES']['Security']['CHANGEPASSWORDBELOW'] = 'Puede cambiar su contraseña a continuación.';
$lang['es_ES']['Security']['CHANGEPASSWORDHEADER'] = 'Modifique su contraseña';
$lang['es_ES']['Security']['ENTERNEWPASSWORD'] = 'Por favor introduzca una nueva contraseña.';
$lang['es_ES']['Security']['ERRORPASSWORDPERMISSION'] = 'Debe iniciar una sesión para poder cambiar su contraseña!';
$lang['es_ES']['Security']['LOGGEDOUT'] = 'Ha terminado su sesión. Si desea iniciar sesión nuevamente, introduzca sus datos de acreditación a continuación.';
$lang['es_ES']['Security']['LOSTPASSWORDHEADER'] = 'Contraseña Perdida';
$lang['es_ES']['Security']['NOTEPAGESECURED'] = 'Esa página está protegida. Introduzca sus datos de acreditación a continuación y lo enviaremos a ella en un momento.';
$lang['es_ES']['Security']['NOTERESETPASSWORD'] = 'Introduzca su dirección de e-mail, y le enviaremos un enlace, con el cual podrá restaurar su contraseña';
$lang['es_ES']['Security']['PASSWORDSENTHEADER'] = 'El enlace para restaurar la contraseña se ha enviado a  %s\'';
$lang['es_ES']['Security']['PASSWORDSENTTEXT'] = 'Gracias! El enlace para restaurar su contraseña ha sido enviado a \'%s\'.';
$lang['es_ES']['SimpleImageField']['NOUPLOAD'] = 'No se han agregado imágenes';
$lang['es_ES']['SiteTree']['ACCESSANYONE'] = 'Cualquiera';
$lang['es_ES']['SiteTree']['ACCESSHEADER'] = 'Quien puede ver esta página en mi sitio?';
$lang['es_ES']['SiteTree']['ACCESSLOGGEDIN'] = 'Usuarios autentificados';
$lang['es_ES']['SiteTree']['ACCESSONLYTHESE'] = 'Solo estas personas (elija de la lista)';
$lang['es_ES']['SiteTree']['ADDEDTODRAFT'] = 'Agregado al Borrador';
$lang['es_ES']['SiteTree']['ALLOWCOMMENTS'] = 'Permitir comentarios en esta página?';
$lang['es_ES']['SiteTree']['APPEARSVIRTUALPAGES'] = 'Este contenido también aparece en las páginas virtuales de las secciones %s ';
$lang['es_ES']['SiteTree']['BUTTONCANCELDRAFT'] = 'Cancelar los cambios en el borrador';
$lang['es_ES']['SiteTree']['BUTTONCANCELDRAFTDESC'] = 'Elimine el borrador y regrese a la página que se encuentra publicada actualmente';
$lang['es_ES']['SiteTree']['BUTTONSAVEPUBLISH'] = 'Guardar y Publicar';
$lang['es_ES']['SiteTree']['BUTTONUNPUBLISH'] = 'Sin Publicar';
$lang['es_ES']['SiteTree']['BUTTONUNPUBLISHDESC'] = 'Elimine esta página del sitio publicado';
$lang['es_ES']['SiteTree']['EDITANYONE'] = 'Cualquiera que pueda iniciar sesión en el CMS';
$lang['es_ES']['SiteTree']['EDITHEADER'] = 'Quien puede editar esto desde el CMS?';
$lang['es_ES']['SiteTree']['EDITONLYTHESE'] = 'Solo estas personas (elija de la lista)';
$lang['es_ES']['SiteTree']['GROUP'] = 'Grupo';
$lang['es_ES']['SiteTree']['HASBROKENLINKS'] = 'Esta página contiene enlaces rotos.';
$lang['es_ES']['SiteTree']['HOMEPAGEFORDOMAIN'] = 'Dominio(s)';
$lang['es_ES']['SiteTree']['HTMLEDITORTITLE'] = 'Contenido';
$lang['es_ES']['SiteTree']['LINKSALREADYUNIQUE'] = ' %s ya es única';
$lang['es_ES']['SiteTree']['LINKSCHANGEDTO'] = 'cambiado %s -> %s';
$lang['es_ES']['SiteTree']['MENUTITLE'] = 'Etiqueta de Navegación';
$lang['es_ES']['SiteTree']['METAADVANCEDHEADER'] = 'Opciones Avanzadas...';
$lang['es_ES']['SiteTree']['METADESC'] = 'Descripción';
$lang['es_ES']['SiteTree']['METAEXTRA'] = 'Meta Tags Personalizadas';
$lang['es_ES']['SiteTree']['METAHEADER'] = 'Meta-tags de Buscadores';
$lang['es_ES']['SiteTree']['METAKEYWORDS'] = 'Palabras Clave';
$lang['es_ES']['SiteTree']['METANOTEPRIORITY'] = 'Especifique manualmente una prioridad para esta página:
(los valores válidos van del 0 a 1, un cero removerá esta página del index)';
$lang['es_ES']['SiteTree']['METAPAGEPRIO'] = 'Prioridad de la Página';
$lang['es_ES']['SiteTree']['METATITLE'] = 'Título';
$lang['es_ES']['SiteTree']['MODIFIEDONDRAFT'] = 'Modificado en el Borrador';
$lang['es_ES']['SiteTree']['NOBACKLINKS'] = 'Esta página no ha sido enlazada por ninguna otra página.';
$lang['es_ES']['SiteTree']['NOTEUSEASHOMEPAGE'] = 'Utilice esta página como la  \'página de inicio\' para los siguientes dominios:
(separe cada dominio con una coma)';
$lang['es_ES']['SiteTree']['PAGESLINKING'] = 'Las siguientes páginas enlazan a esta página.';
$lang['es_ES']['SiteTree']['PAGETITLE'] = 'Nombre de la página';
$lang['es_ES']['SiteTree']['PAGETYPE'] = 'Tipo de Página';
$lang['es_ES']['SiteTree']['PRIORITYLEASTIMPORTANT'] = 'Menos Importante';
$lang['es_ES']['SiteTree']['PRIORITYMOSTIMPORTANT'] = 'Más importante';
$lang['es_ES']['SiteTree']['PRIORITYNOTINDEXED'] = 'Sin Indexar';
$lang['es_ES']['SiteTree']['REMOVEDFROMDRAFT'] = 'Eliminado del Borrador';
$lang['es_ES']['SiteTree']['SHOWINMENUS'] = 'Mostrar en menus?';
$lang['es_ES']['SiteTree']['SHOWINSEARCH'] = 'Mostrar en búsqueda?';
$lang['es_ES']['SiteTree']['TABACCESS'] = 'Acceso';
$lang['es_ES']['SiteTree']['TABBACKLINKS'] = 'BackLinks';
$lang['es_ES']['SiteTree']['TABBEHAVIOUR'] = 'Comportamiento';
$lang['es_ES']['SiteTree']['TABCONTENT'] = 'Contenido';
$lang['es_ES']['SiteTree']['TABMAIN'] = 'Principal';
$lang['es_ES']['SiteTree']['TABMETA'] = 'Meta-data';
$lang['es_ES']['SiteTree']['TABREPORTS'] = 'Reportes';
$lang['es_ES']['SiteTree']['TOPLEVEL'] = 'Contenido del Sitio (Top Level)';
$lang['es_ES']['SiteTree']['URL'] = 'URL';
$lang['es_ES']['SiteTree']['VALIDATIONURLSEGMENT1'] = 'Otra página esta utilizando esa URL. Cada página debe tener un URL único.';
$lang['es_ES']['SiteTree']['VALIDATIONURLSEGMENT2'] = 'Un URL solo puede contener letras, dígitos y guiones.';
$lang['es_ES']['TableField']['ISREQUIRED'] = 'En %s se requiere \'%s\'.';
$lang['es_ES']['TableField.ss']['CSVEXPORT'] = 'Exportar a CSV';
$lang['es_ES']['ToggleCompositeField.ss']['HIDE'] = 'Ocultar';
$lang['es_ES']['ToggleCompositeField.ss']['SHOW'] = 'Mostrar';
$lang['es_ES']['ToggleField']['LESS'] = 'menos';
$lang['es_ES']['ToggleField']['MORE'] = 'más';
$lang['es_ES']['TypeDropdown']['NONE'] = 'Ninguno';
$lang['es_ES']['VirtualPage']['CHOOSE'] = 'Elija una página a enlazar';
$lang['es_ES']['VirtualPage']['EDITCONTENT'] = 'haga click aquí para editar el contenido';
$lang['es_ES']['VirtualPage']['HEADER'] = 'Esta es una página virtual';

?>
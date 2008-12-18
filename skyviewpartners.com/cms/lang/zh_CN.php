<?php

/**
 * Chinese (China) language pack
 * @package cms
 * @subpackage i18n
 */

i18n::include_locale_file('cms', 'en_US');

global $lang;

if(array_key_exists('zh_CN', $lang) && is_array($lang['zh_CN'])) {
	$lang['zh_CN'] = array_merge($lang['en_US'], $lang['zh_CN']);
} else {
	$lang['zh_CN'] = $lang['en_US'];
}

$lang['zh_CN']['AssetAdmin']['CHOOSEFILE'] = '选择文件';
$lang['zh_CN']['AssetAdmin']['CONTENTMODBY'] = '内容可被修改';
$lang['zh_CN']['AssetAdmin']['CONTENTUSABLEBY'] = '内容可被使用';
$lang['zh_CN']['AssetAdmin']['CREATED'] = '第一次被上传';
$lang['zh_CN']['AssetAdmin']['DELETEDX'] = '删除%s个文件。';
$lang['zh_CN']['AssetAdmin']['DELETEUNUSEDTHUMBNAILS'] = '删除没有使用的文件缩略图';
$lang['zh_CN']['AssetAdmin']['DELSELECTED'] = '删除所选文件';
$lang['zh_CN']['AssetAdmin']['DETAILSTAB'] = '详细信息';
$lang['zh_CN']['AssetAdmin']['FILENAME'] = '文件路径';
$lang['zh_CN']['AssetAdmin']['FILESREADY'] = '已经可以上传的文件：';
$lang['zh_CN']['AssetAdmin']['FILESTAB'] = '文件';
$lang['zh_CN']['AssetAdmin']['LASTEDITED'] = '上一次被更新';
$lang['zh_CN']['AssetAdmin']['MOVEDX'] = '移动%s个文件';
$lang['zh_CN']['AssetAdmin']['NEWFOLDER'] = '新建文件夹';
$lang['zh_CN']['AssetAdmin']['NOTHINGTOUPLOAD'] = '没有文件可以上传';
$lang['zh_CN']['AssetAdmin']['NOWBROKEN'] = '这些网页有失效的链接：';
$lang['zh_CN']['AssetAdmin']['ONLYADMINS'] = '只有管理员可以上传%s个文件。';
$lang['zh_CN']['AssetAdmin']['OWNER'] = '拥有者';
$lang['zh_CN']['AssetAdmin']['SAVEDFILE'] = '文件%s已保存';
$lang['zh_CN']['AssetAdmin']['SAVEFOLDERNAME'] = '保存文件夹名称';
$lang['zh_CN']['AssetAdmin']['TITLE'] = '文件名';
$lang['zh_CN']['AssetAdmin']['TOOLARGE'] = '%s文件太大（%s）。这种类型的文件大小不能超过%s';
$lang['zh_CN']['AssetAdmin']['TYPE'] = '类型';
$lang['zh_CN']['AssetAdmin']['UNUSEDFILESTAB'] = '没有使用的文件';
$lang['zh_CN']['AssetAdmin']['UNUSEDFILESTITLE'] = '没有使用的文件';
$lang['zh_CN']['AssetAdmin']['UNUSEDTHUMBNAILSTITLE'] = '没有使用的文件缩略图';
$lang['zh_CN']['AssetAdmin']['UPLOAD'] = '上传下列文件';
$lang['zh_CN']['AssetAdmin']['UPLOADEDX'] = '已上传%s个文件';
$lang['zh_CN']['AssetAdmin']['UPLOADTAB'] = '上传';
$lang['zh_CN']['AssetAdmin']['VIEWASSET'] = '显示文件资源';
$lang['zh_CN']['AssetAdmin']['VIEWEDITASSET'] = '显示/编辑文件资源';
$lang['zh_CN']['AssetAdmin_left.ss']['CREATE'] = '创建';
$lang['zh_CN']['AssetAdmin_left.ss']['DELETE'] = '删除';
$lang['zh_CN']['AssetAdmin_left.ss']['DELFOLDERS'] = '删除所选文件夹';
$lang['zh_CN']['AssetAdmin_left.ss']['FOLDERS'] = '文件夹';
$lang['zh_CN']['AssetAdmin_left.ss']['GO'] = '执行';
$lang['zh_CN']['AssetAdmin_left.ss']['SELECTTODEL'] = '选择您想要删除的文件夹，然后点击下面的按钮';
$lang['zh_CN']['AssetAdmin_left.ss']['TOREORG'] = '按意愿去拖拽文件夹可以重新组织您的文件系统。';
$lang['zh_CN']['AssetAdmin_right.ss']['CHOOSEPAGE'] = '请从左边选择一项。';
$lang['zh_CN']['AssetAdmin_right.ss']['WELCOME'] = '欢迎来到';
$lang['zh_CN']['AssetAdmin_uploadiframe.ss']['PERMFAILED'] = '您没有上传文件到该文件夹的权限。';
$lang['zh_CN']['AssetTableField']['CREATED'] = '第一次被上传';
$lang['zh_CN']['AssetTableField']['DIM'] = '尺寸';
$lang['zh_CN']['AssetTableField']['FILENAME'] = '文件名';
$lang['zh_CN']['AssetTableField']['LASTEDIT'] = '上一次被更改';
$lang['zh_CN']['AssetTableField']['NOLINKS'] = '该文件没有被任何网页链接。';
$lang['zh_CN']['AssetTableField']['OWNER'] = '拥有者';
$lang['zh_CN']['AssetTableField']['PAGESLINKING'] = '下列网页链接到该文件：';
$lang['zh_CN']['AssetTableField']['SIZE'] = '大小';
$lang['zh_CN']['AssetTableField.ss']['DELFILE'] = '删除这个文件';
$lang['zh_CN']['AssetTableField.ss']['DRAGTOFOLDER'] = '拖放文件到某文件夹以移动文件';
$lang['zh_CN']['AssetTableField']['TITLE'] = '文件名称';
$lang['zh_CN']['AssetTableField']['TYPE'] = '类型';
$lang['zh_CN']['BulkLoaderAdmin']['CONFIRMBULK'] = '确认批量载入';
$lang['zh_CN']['BulkLoaderAdmin']['CSVFILE'] = 'CSV文件';
$lang['zh_CN']['BulkLoaderAdmin']['DATALOADED'] = '该数据已被载入';
$lang['zh_CN']['BulkLoaderAdmin']['PRESSCNT'] = '点击继续以载入数据';
$lang['zh_CN']['BulkLoaderAdmin']['PREVIEW'] = '预览';
$lang['zh_CN']['BulkLoaderAdmin_left.ss']['BATCHEF'] = '批量输入功能';
$lang['zh_CN']['BulkLoaderAdmin_left.ss']['FUNCTIONS'] = '功能';
$lang['zh_CN']['BulkLoaderAdmin_preview.ss']['RES'] = '结果';
$lang['zh_CN']['CMSLeft.ss']['DELPAGE'] = '删除网页中...';
$lang['zh_CN']['CMSLeft.ss']['DELPAGES'] = '删除所选网页';
$lang['zh_CN']['CMSLeft.ss']['GO'] = '执行';
$lang['zh_CN']['CMSLeft.ss']['NEWPAGE'] = '创建网页中...';
$lang['zh_CN']['CMSLeft.ss']['SELECTPAGESDEL'] = '选择您想要删除的网页，然后点击下面的按钮';
$lang['zh_CN']['CMSLeft.ss']['SITECONT'] = '网站内容';
$lang['zh_CN']['CMSMain']['CANCEL'] = '取消';
$lang['zh_CN']['CMSMain']['CHOOSEREPORT'] = '（请选择一个报告）';
$lang['zh_CN']['CMSMain']['COMPARINGV'] = '您正在比较#%d版本和#%d版本';
$lang['zh_CN']['CMSMain']['COPYPUBTOSTAGE'] = '您确定将已发布的内容复制到预备发布站吗？';
$lang['zh_CN']['CMSMain']['DELETEFP'] = '从正式发布站上删除';
$lang['zh_CN']['CMSMain']['EMAIL'] = '电子邮件';
$lang['zh_CN']['CMSMain']['GO'] = '执行';
$lang['zh_CN']['CMSMain']['METADESCOPT'] = '网页描述标签';
$lang['zh_CN']['CMSMain']['METAKEYWORDSOPT'] = '网页关键词标签';
$lang['zh_CN']['CMSMain']['NEW'] = '新建的';
$lang['zh_CN']['CMSMain']['NOCONTENT'] = '没有内容';
$lang['zh_CN']['CMSMain']['NOTHINGASSIGNED'] = '没有任务分配给您';
$lang['zh_CN']['CMSMain']['NOWAITINGON'] = '您无须等待任何人完成其工作。';
$lang['zh_CN']['CMSMain']['NOWBROKEN'] = '下列网页有失效链接';
$lang['zh_CN']['CMSMain']['NOWBROKEN2'] = '已发送电子邮件给其拥有者们，他们将修复这些网页。';
$lang['zh_CN']['CMSMain']['OK'] = '是';
$lang['zh_CN']['CMSMain']['PAGEDEL'] = '%d页已被删除';
$lang['zh_CN']['CMSMain']['PAGENOTEXISTS'] = '该网页不存在';
$lang['zh_CN']['CMSMain']['PAGEPUB'] = '发布了%d个网页';
$lang['zh_CN']['CMSMain']['PAGESDEL'] = '%d页组已被删除';
$lang['zh_CN']['CMSMain']['PAGESPUB'] = '发布了%d个网页';
$lang['zh_CN']['CMSMain']['PAGETYPEOPT'] = '网页类型';
$lang['zh_CN']['CMSMain']['PRINT'] = '打印';
$lang['zh_CN']['CMSMain']['PUBALLCONFIRM'] = '请发布该站的每一网页，这样，预备发布站上的内容就会复制到正式发布站上';
$lang['zh_CN']['CMSMain']['PUBALLFUN'] = '“全部发布“功能';
$lang['zh_CN']['CMSMain']['PUBALLFUN2'] = '按下这一按键将等同于逐一发布每一网页。此功能适用于被大量编辑过的网页，如在网站被第一次使用时。';
$lang['zh_CN']['CMSMain']['PUBPAGES'] = '完成：共发布%d个网页。';
$lang['zh_CN']['CMSMain']['REMOVEDFD'] = '从预备发布站删除';
$lang['zh_CN']['CMSMain']['REMOVEDPAGE'] = '从正式发布站删除网页“%s"';
$lang['zh_CN']['CMSMain']['RESTORE'] = '恢复';
$lang['zh_CN']['CMSMain']['RESTORED'] = '“%s“恢复成功';
$lang['zh_CN']['CMSMain']['ROLLBACK'] = '恢复到这一版本';
$lang['zh_CN']['CMSMain']['ROLLEDBACKPUB'] = '回复到已正式发布的版本。新的版本号为#%d';
$lang['zh_CN']['CMSMain']['ROLLEDBACKVERSION'] = '回复到#%d版本。新的版本号为#%d';
$lang['zh_CN']['CMSMain']['SAVE'] = '保存';
$lang['zh_CN']['CMSMain']['SENTTO'] = '提交给%s%s以通过验证';
$lang['zh_CN']['CMSMain']['STATUSOPT'] = '网页状态';
$lang['zh_CN']['CMSMain']['TOTALPAGES'] = '总页数：';
$lang['zh_CN']['CMSMain']['VERSIONSNOPAGE'] = '不能找到网页的#%d版本';
$lang['zh_CN']['CMSMain']['VIEWING'] = '您正在浏览于%s创建的#%d版本';
$lang['zh_CN']['CMSMain']['VISITRESTORE'] = '访问restorepage/(ID)';
$lang['zh_CN']['CMSMain']['WAITINGON'] = '在这些<b>%d</b>网页上，您须等待他人完成其工作';
$lang['zh_CN']['CMSMain']['WORKTODO'] = '您在这些<b>%d</b>网页上有待完成的工作。';
$lang['zh_CN']['CMSMain_left.ss']['ADDEDNOTPUB'] = '已被加入到预备发布站但还未发布';
$lang['zh_CN']['CMSMain_left.ss']['ADDSEARCHCRITERIA'] = '加入下列一个搜索条件';
$lang['zh_CN']['CMSMain_left.ss']['BATCHACTIONS'] = '批量处理';
$lang['zh_CN']['CMSMain_left.ss']['CHANGED'] = '已更改';
$lang['zh_CN']['CMSMain_left.ss']['CLOSEBOX'] = '点击以关闭该区块';
$lang['zh_CN']['CMSMain_left.ss']['COMMENTS'] = '评论';
$lang['zh_CN']['CMSMain_left.ss']['COMPAREMODE'] = '比较状态（点击下面的两个）';
$lang['zh_CN']['CMSMain_left.ss']['CREATE'] = '创建';
$lang['zh_CN']['CMSMain_left.ss']['DEL'] = '已删除';
$lang['zh_CN']['CMSMain_left.ss']['DELETECONFIRM'] = '删除所选网页';
$lang['zh_CN']['CMSMain_left.ss']['DELETEDSTILLLIVE'] = '已从预备发布站删除但仍存在于正式发布站上';
$lang['zh_CN']['CMSMain_left.ss']['EDITEDNOTPUB'] = '在预备发布站上已重新编辑但还未发布';
$lang['zh_CN']['CMSMain_left.ss']['EDITEDSINCE'] = '自从所选日期到目前为止,被编辑的网页';
$lang['zh_CN']['CMSMain_left.ss']['ENABLEDRAGGING'] = '允许拖放以重新排布';
$lang['zh_CN']['CMSMain_left.ss']['GO'] = '执行';
$lang['zh_CN']['CMSMain_left.ss']['KEY'] = '颜色与图标';
$lang['zh_CN']['CMSMain_left.ss']['NEW'] = '新建的';
$lang['zh_CN']['CMSMain_left.ss']['OPENBOX'] = '点击以打开该区块';
$lang['zh_CN']['CMSMain_left.ss']['PAGEVERSIONH'] = '网页版本记录';
$lang['zh_CN']['CMSMain_left.ss']['PUBLISHCONFIRM'] = '发布所选网页';
$lang['zh_CN']['CMSMain_left.ss']['SEARCH'] = '搜索';
$lang['zh_CN']['CMSMain_left.ss']['SEARCHTITLE'] = '搜索URL（路径），名称，菜单名称以及内容';
$lang['zh_CN']['CMSMain_left.ss']['SELECTPAGESACTIONS'] = '选择您想要更改的网页，然后点击一个按钮';
$lang['zh_CN']['CMSMain_left.ss']['SELECTPAGESDUP'] = '选择您想要复制的网页，不管其子页是否应包括在内，还是在哪放置复制出的网页';
$lang['zh_CN']['CMSMain_left.ss']['SHOWONLYCHANGED'] = '只显示更改的网页';
$lang['zh_CN']['CMSMain_left.ss']['SHOWUNPUB'] = '显示未发布的版本';
$lang['zh_CN']['CMSMain_left.ss']['SITECONTENT TITLE'] = '网站内容与结构';
$lang['zh_CN']['CMSMain_left.ss']['SITEREPORTS'] = '网站报告';
$lang['zh_CN']['CMSMain_left.ss']['TASKLIST'] = '任务清单';
$lang['zh_CN']['CMSMain_left.ss']['WAITINGON'] = '等待处理';
$lang['zh_CN']['CMSMain_right.ss']['ANYMESSAGE'] = '对您的编辑器您有什么信息吗？';
$lang['zh_CN']['CMSMain_right.ss']['CHOOSEPAGE'] = '请选择左边的某一网页';
$lang['zh_CN']['CMSMain_right.ss']['LOADING'] = '加载中...';
$lang['zh_CN']['CMSMain_right.ss']['MESSAGE'] = '信息';
$lang['zh_CN']['CMSMain_right.ss']['SENDTO'] = '发送给';
$lang['zh_CN']['CMSMain_right.ss']['STATUS'] = '状态';
$lang['zh_CN']['CMSMain_right.ss']['SUBMIT'] = '提交以通过验证';
$lang['zh_CN']['CMSMain_right.ss']['WELCOMETO'] = '欢迎来到';
$lang['zh_CN']['CMSMain_versions.ss']['AUTHOR'] = '作者';
$lang['zh_CN']['CMSMain_versions.ss']['NOTPUB'] = '还未发布';
$lang['zh_CN']['CMSMain_versions.ss']['PUBR'] = '发布人';
$lang['zh_CN']['CMSMain_versions.ss']['UNKNOWN'] = '未知';
$lang['zh_CN']['CMSMain_versions.ss']['WHEN'] = '上一次被编辑';
$lang['zh_CN']['CMSRight.ss']['CHOOSEPAGE'] = '请选择左边的某一网页';
$lang['zh_CN']['CMSRight.ss']['ECONTENT'] = '编辑内容';
$lang['zh_CN']['CMSRight.ss']['WELCOMETO'] = '欢迎来到';
$lang['zh_CN']['CommentList.ss']['CREATEDW'] = '无论何时，当任何一“流程中的行动”—发布、拒绝或提交—被执行时，都会有评论生成。';
$lang['zh_CN']['CommentList.ss']['NOCOM'] = '该页还未有评论。';
$lang['zh_CN']['GenericDataAdmin_left.ss']['ADDLISTING'] = '新建列表项';
$lang['zh_CN']['GenericDataAdmin_left.ss']['SEARCHLISTINGS'] = '搜索列表';
$lang['zh_CN']['GenericDataAdmin_left.ss']['SEARCHRESULTS'] = '搜索结果';
$lang['zh_CN']['ImageEditor.ss']['CANCEL'] = '取消';
$lang['zh_CN']['ImageEditor.ss']['CROP'] = '剪辑';
$lang['zh_CN']['ImageEditor.ss']['HEIGHT'] = '高';
$lang['zh_CN']['ImageEditor.ss']['REDO'] = '撤消恢复';
$lang['zh_CN']['ImageEditor.ss']['ROT'] = '旋转';
$lang['zh_CN']['ImageEditor.ss']['SAVE'] = '保存图像';
$lang['zh_CN']['ImageEditor.ss']['UNDO'] = '恢复';
$lang['zh_CN']['ImageEditor.ss']['UNTITLED'] = '未命名文档';
$lang['zh_CN']['ImageEditor.ss']['WIDTH'] = '宽';
$lang['zh_CN']['LeftAndMain']['CHANGEDURL'] = '路径（URL）已改为”%s“';
$lang['zh_CN']['LeftAndMain']['COMMENTS'] = '网页评论管理';
$lang['zh_CN']['LeftAndMain']['FILESIMAGES'] = '文件与图像管理';
$lang['zh_CN']['LeftAndMain']['HELP'] = '帮助';
$lang['zh_CN']['LeftAndMain']['NEWSLETTERS'] = '新闻邮件管理';
$lang['zh_CN']['LeftAndMain']['PAGETYPE'] = '网页类型';
$lang['zh_CN']['LeftAndMain']['PERMAGAIN'] = '您于CMS的登录已被注销，请在下面输入用户名和密码重新登录。';
$lang['zh_CN']['LeftAndMain']['PERMALREADY'] = '对不起，您无权登录CMS的这一部分。如果您要用另外的帐号，请在下面登录。';
$lang['zh_CN']['LeftAndMain']['PERMDEFAULT'] = '请先选择一种验证方法并输入您的权限信息，以登录CMS。';
$lang['zh_CN']['LeftAndMain']['PLEASESAVE'] = '请先保存：因为该网页还未保存，所以该页无法更新。';
$lang['zh_CN']['LeftAndMain']['REPORTS'] = '报告系统';
$lang['zh_CN']['LeftAndMain']['REQUESTERROR'] = '请求出错。';
$lang['zh_CN']['LeftAndMain']['SAVED'] = '已保存';
$lang['zh_CN']['LeftAndMain']['SAVEDUP'] = '已保存';
$lang['zh_CN']['LeftAndMain']['SECURITY'] = '用户安全权限管理';
$lang['zh_CN']['LeftAndMain']['SITECONTENT'] = '网站内容管理';
$lang['zh_CN']['LeftAndMain']['SITECONTENTLEFT'] = '网站内容';
$lang['zh_CN']['LeftAndMain.ss']['APPVERSIONTEXT1'] = '您当前所运行的';
$lang['zh_CN']['LeftAndMain.ss']['APPVERSIONTEXT2'] = '版本，技术上讲，是CVS的目录分支。';
$lang['zh_CN']['LeftAndMain.ss']['ARCHS'] = '已归档站';
$lang['zh_CN']['LeftAndMain.ss']['DRAFTS'] = '预备发布站';
$lang['zh_CN']['LeftAndMain.ss']['EDIT'] = '编辑';
$lang['zh_CN']['LeftAndMain.ss']['EDITPROFILE'] = '用户资料';
$lang['zh_CN']['LeftAndMain.ss']['LOADING'] = '加载中...';
$lang['zh_CN']['LeftAndMain.ss']['LOGGEDINAS'] = '已登录为';
$lang['zh_CN']['LeftAndMain.ss']['LOGOUT'] = '注销登录';
$lang['zh_CN']['LeftAndMain.ss']['PUBLIS'] = '正式发布站';
$lang['zh_CN']['LeftAndMain.ss']['SSWEB'] = 'SilverStripe网站';
$lang['zh_CN']['LeftAndMain.ss']['SWITCHTO'] = '切换到：';
$lang['zh_CN']['LeftAndMain.ss']['VIEWPAGEIN'] = '展示站：';
$lang['zh_CN']['LeftAndMain']['STATISTICS'] = '网站统计报告';
$lang['zh_CN']['LeftAndMain']['STATUSTO'] = '状态已改为”%s“';
$lang['zh_CN']['LeftAndMain']['TREESITECONTENT'] = '网站内容';
$lang['zh_CN']['MemberList']['ADD'] = '新加';
$lang['zh_CN']['MemberList']['EMAIL'] = '电邮';
$lang['zh_CN']['MemberList']['FILTERBYG'] = '由会员组筛选';
$lang['zh_CN']['MemberList']['FN'] = '名';
$lang['zh_CN']['MemberList']['PASSWD'] = '密码';
$lang['zh_CN']['MemberList']['SEARCH'] = '搜索';
$lang['zh_CN']['MemberList']['SN'] = '姓';
$lang['zh_CN']['MemberList.ss']['FILTER'] = '筛选';
$lang['zh_CN']['MemberList_Table.ss']['EMAIL'] = '电邮地址';
$lang['zh_CN']['MemberList_Table.ss']['FN'] = '名';
$lang['zh_CN']['MemberList_Table.ss']['PASSWD'] = '密码';
$lang['zh_CN']['MemberList_Table.ss']['SN'] = '姓';
$lang['zh_CN']['MemberTableField']['ADD'] = '新加';
$lang['zh_CN']['MemberTableField']['ADDEDTOGROUP'] = '会员被加入某会员组';
$lang['zh_CN']['MemberTableField.ss']['ADDNEW'] = '添加';
$lang['zh_CN']['MemberTableField.ss']['DELETEMEMBER'] = '删除该会员';
$lang['zh_CN']['MemberTableField.ss']['EDITMEMBER'] = '编辑该会员';
$lang['zh_CN']['MemberTableField.ss']['SHOWMEMBER'] = '显示该会员';
$lang['zh_CN']['NewsletterAdmin']['FROMEM'] = '发件人电邮地址';
$lang['zh_CN']['NewsletterAdmin']['MEWDRAFTMEWSL'] = '新建新闻邮件草稿';
$lang['zh_CN']['NewsletterAdmin']['NEWLIST'] = '新建收件人清单';
$lang['zh_CN']['NewsletterAdmin']['NEWNEWSLTYPE'] = '新建新闻邮件类型';
$lang['zh_CN']['NewsletterAdmin']['NEWSLTYPE'] = '新闻邮件的类型';
$lang['zh_CN']['NewsletterAdmin']['PLEASEENTERMAIL'] = '请输入一个电邮地址';
$lang['zh_CN']['NewsletterAdmin']['RESEND'] = '重新发送';
$lang['zh_CN']['NewsletterAdmin']['SAVE'] = '保存';
$lang['zh_CN']['NewsletterAdmin']['SAVED'] = '已保存';
$lang['zh_CN']['NewsletterAdmin']['SEND'] = '发送中...';
$lang['zh_CN']['NewsletterAdmin']['SENDING'] = '发送电邮中...';
$lang['zh_CN']['NewsletterAdmin']['SENTTESTTO'] = '发送测试给';
$lang['zh_CN']['NewsletterAdmin']['SHOWCONTENTS'] = '显示内容';
$lang['zh_CN']['NewsletterAdmin_BouncedList.ss']['EMADD'] = '电邮地址';
$lang['zh_CN']['NewsletterAdmin_BouncedList.ss']['HAVEBOUNCED'] = '被打回的电邮';
$lang['zh_CN']['NewsletterAdmin_BouncedList.ss']['NOBOUNCED'] = '没有发送后被退回的电邮。';
$lang['zh_CN']['NewsletterAdmin_BouncedList.ss']['UNAME'] = '用户名';
$lang['zh_CN']['NewsletterAdmin_left.ss']['ADDDRAFT'] = '新建邮件草稿';
$lang['zh_CN']['NewsletterAdmin_left.ss']['ADDTYPE'] = '新建新闻快递类型';
$lang['zh_CN']['NewsletterAdmin_left.ss']['CREATE'] = '创建中...';
$lang['zh_CN']['NewsletterAdmin_left.ss']['DEL'] = '删除中...';
$lang['zh_CN']['NewsletterAdmin_left.ss']['DELETEDRAFTS'] = '删除所选草稿';
$lang['zh_CN']['NewsletterAdmin_left.ss']['GO'] = '执行';
$lang['zh_CN']['NewsletterAdmin_left.ss']['NEWSLETTERS'] = '新闻邮件';
$lang['zh_CN']['NewsletterAdmin_left.ss']['SELECTDRAFTS'] = '请选择您想删除的草稿，然后点击下面的按钮';
$lang['zh_CN']['NewsletterAdmin_right.ss']['CANCEL'] = '删除';
$lang['zh_CN']['NewsletterAdmin_right.ss']['ENTIRE'] = '发送给全部收信人';
$lang['zh_CN']['NewsletterAdmin_right.ss']['ONLYNOT'] = '只发送给上次未发送的收信人';
$lang['zh_CN']['NewsletterAdmin_right.ss']['SEND'] = '发送新闻邮件';
$lang['zh_CN']['NewsletterAdmin_right.ss']['SENDTEST'] = '发送测试给';
$lang['zh_CN']['NewsletterAdmin_right.ss']['WELCOME1'] = '欢迎来到';
$lang['zh_CN']['NewsletterAdmin_right.ss']['WELCOME2'] = '新闻邮件管理系统。请从左边选择一个文件夹';
$lang['zh_CN']['NewsletterAdmin_SiteTree.ss']['DRAFTS'] = '草稿';
$lang['zh_CN']['NewsletterAdmin_SiteTree.ss']['MAILLIST'] = '收件人清单';
$lang['zh_CN']['NewsletterAdmin_SiteTree.ss']['SENT'] = '已发送的';
$lang['zh_CN']['NewsletterAdmin_UnsubscribedList.ss']['NOUNSUB'] = '没有会员取消订阅该新闻邮件';
$lang['zh_CN']['NewsletterAdmin_UnsubscribedList.ss']['UNAME'] = '用户名';
$lang['zh_CN']['NewsletterAdmin_UnsubscribedList.ss']['UNSUBON'] = '取消订阅于';
$lang['zh_CN']['NewsletterList.ss']['CHOOSEDRAFT1'] = '请从左边选择一个草稿，或者';
$lang['zh_CN']['NewsletterList.ss']['CHOOSEDRAFT2'] = '添加新的';
$lang['zh_CN']['NewsletterList.ss']['CHOOSESENT'] = '请从左边选择一个以发送邮件。';
$lang['zh_CN']['Newsletter_RecipientImportField.ss']['CHANGED'] = '被更新的详细信息：';
$lang['zh_CN']['Newsletter_RecipientImportField.ss']['IMPORTED'] = '被导入的新会员：';
$lang['zh_CN']['Newsletter_RecipientImportField.ss']['IMPORTNEW'] = '导入新的会员';
$lang['zh_CN']['Newsletter_RecipientImportField.ss']['SEC'] = '秒';
$lang['zh_CN']['Newsletter_RecipientImportField.ss']['SKIPPED'] = '被跳过的记录：';
$lang['zh_CN']['Newsletter_RecipientImportField.ss']['TIME'] = '费时：';
$lang['zh_CN']['Newsletter_RecipientImportField.ss']['UPDATED'] = '被更新的会员：';
$lang['zh_CN']['Newsletter_RecipientImportField_Table.ss']['CONTENTSOF'] = '%s文件内容';
$lang['zh_CN']['Newsletter_RecipientImportField_Table.ss']['NO'] = '取消';
$lang['zh_CN']['Newsletter_RecipientImportField_Table.ss']['RECIMPORTED'] = '从%s文件导入的会员';
$lang['zh_CN']['Newsletter_RecipientImportField_Table.ss']['YES'] = '确认';
$lang['zh_CN']['Newsletter_SentStatusReport.ss']['DATE'] = '日期';
$lang['zh_CN']['Newsletter_SentStatusReport.ss']['EMAIL'] = '电邮';
$lang['zh_CN']['Newsletter_SentStatusReport.ss']['FN'] = '名';
$lang['zh_CN']['Newsletter_SentStatusReport.ss']['NEWSNEVERSENT'] = '该邮件从未发送给下列订阅人';
$lang['zh_CN']['Newsletter_SentStatusReport.ss']['RES'] = '结果';
$lang['zh_CN']['Newsletter_SentStatusReport.ss']['SENDBOUNCED'] = '给下列收件人发送邮件被打回';
$lang['zh_CN']['Newsletter_SentStatusReport.ss']['SENDFAIL'] = '给下列收件人发送邮件失败';
$lang['zh_CN']['Newsletter_SentStatusReport.ss']['SENTOK'] = '给下列收件人发送邮件成功';
$lang['zh_CN']['Newsletter_SentStatusReport.ss']['SN'] = '姓';
$lang['zh_CN']['PageComment']['COMMENTBY'] = '由\'%s\'对\'%s\'评论';
$lang['zh_CN']['PageCommentInterface.ss']['COMMENTS'] = '评论';
$lang['zh_CN']['PageCommentInterface.ss']['NEXT'] = '下一个';
$lang['zh_CN']['PageCommentInterface.ss']['NOCOMMENTSYET'] = '该网页还未有评论。';
$lang['zh_CN']['PageCommentInterface.ss']['POSTCOM'] = '提交您的评论';
$lang['zh_CN']['PageCommentInterface.ss']['PREV'] = '上一个';
$lang['zh_CN']['PageCommentInterface_singlecomment.ss']['ISNTSPAM'] = '该评论不是网络垃圾';
$lang['zh_CN']['PageCommentInterface_singlecomment.ss']['ISSPAM'] = '该评论是网络垃圾';
$lang['zh_CN']['PageCommentInterface_singlecomment.ss']['PBY'] = '提交人：';
$lang['zh_CN']['PageCommentInterface_singlecomment.ss']['REMCOM'] = '移除该评论';
$lang['zh_CN']['ReportAdmin_left.ss']['REPORTS'] = '报告';
$lang['zh_CN']['ReportAdmin_right.ss']['WELCOME1'] = '欢迎来到';
$lang['zh_CN']['ReportAdmin_right.ss']['WELCOME2'] = '报告系统。请从左边选择一个报告项';
$lang['zh_CN']['ReportAdmin_SiteTree.ss']['REPORTS'] = '报告';
$lang['zh_CN']['SecurityAdmin']['ADDMEMBER'] = '新加会员';
$lang['zh_CN']['SecurityAdmin']['ADVANCEDONLY'] = '只有高级用户才可使用这一部分。更多信息，请参见 <a href="http://doc.silverstripe.com/doku.php?id=permissions:codes" target="_blank">这里</a>。';
$lang['zh_CN']['SecurityAdmin']['NEWGROUP'] = '新建会员组';
$lang['zh_CN']['SecurityAdmin']['SAVE'] = '保存';
$lang['zh_CN']['SecurityAdmin']['SGROUPS'] = '各个不同权限的会员组';
$lang['zh_CN']['SecurityAdmin_left.ss']['CREATE'] = '创建';
$lang['zh_CN']['SecurityAdmin_left.ss']['DEL'] = '删除中...';
$lang['zh_CN']['SecurityAdmin_left.ss']['DELGROUPS'] = '删除所选会员组';
$lang['zh_CN']['SecurityAdmin_left.ss']['GO'] = '执行';
$lang['zh_CN']['SecurityAdmin_left.ss']['SECGROUPS'] = '安全权限组';
$lang['zh_CN']['SecurityAdmin_left.ss']['SELECT'] = '选择您想要删除的后按下面的按钮';
$lang['zh_CN']['SecurityAdmin_left.ss']['TOREORG'] = '按您的意愿进行拖拽操作，可以重新组织您的网站';
$lang['zh_CN']['SecurityAdmin_right.ss']['WELCOME1'] = '欢迎来到';
$lang['zh_CN']['SecurityAdmin_right.ss']['WELCOME2'] = '安全权限管理。请从左边选择一个会员组。';
$lang['zh_CN']['SideReport']['EMPTYPAGES'] = '空白页';
$lang['zh_CN']['SideReport']['LAST2WEEKS'] = '在过去2周内编辑过的网页';
$lang['zh_CN']['SideReport']['REPEMPTY'] = '该%s报告为空白。';
$lang['zh_CN']['StaticExporter']['BASEURL'] = '基本URL';
$lang['zh_CN']['StaticExporter']['EXPORTTO'] = '导出到该文件夹';
$lang['zh_CN']['StaticExporter']['FOLDEREXPORT'] = '导出文件夹';
$lang['zh_CN']['StaticExporter']['NAME'] = '网站静态拷贝导出器';
$lang['zh_CN']['StaticExporter']['ONETHATEXISTS'] = '请指定一已存在的文件夹';
$lang['zh_CN']['StatisticsAdmin_left.ss']['OVERV'] = '概观';
$lang['zh_CN']['StatisticsAdmin_left.ss']['REPTYPES'] = '报告类型';
$lang['zh_CN']['StatisticsAdmin_left.ss']['USERS'] = '用户';
$lang['zh_CN']['SubmittedFormEmail.ss']['SUBMITTED'] = '下列数据已被提交给您的网站：';
$lang['zh_CN']['TaskList.ss']['BY'] = '作者：';
$lang['zh_CN']['ThumbnailStripField']['NOTAFOLDER'] = '这并非一个文件夹';
$lang['zh_CN']['ThumbnailStripField.ss']['CHOOSEFOLDER'] = '（选择上面的一个文件夹）';
$lang['zh_CN']['ViewArchivedEmail.ss']['CANACCESS'] = '您可通过这个链接进入已归挡的网页：';
$lang['zh_CN']['ViewArchivedEmail.ss']['HAVEASKED'] = '在%s,您要求浏览我们网站';
$lang['zh_CN']['WaitingOn.ss']['ATO'] = '分配给';

?>
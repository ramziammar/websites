-- MySQL dump 10.11
--
-- Host: localhost    Database: skyviewpartners
-- ------------------------------------------------------
-- Server version	5.0.67

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `EditableCheckbox`
--

DROP TABLE IF EXISTS `EditableCheckbox`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `EditableCheckbox` (
  `ID` int(11) NOT NULL auto_increment,
  `Checked` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `EditableCheckbox`
--

LOCK TABLES `EditableCheckbox` WRITE;
/*!40000 ALTER TABLE `EditableCheckbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableCheckbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableCheckboxOption`
--

DROP TABLE IF EXISTS `EditableCheckboxOption`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `EditableCheckboxOption` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('EditableCheckboxOption') character set utf8 default 'EditableCheckboxOption',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Name` varchar(50) character set utf8 default NULL,
  `Title` varchar(50) character set utf8 default NULL,
  `Default` tinyint(1) unsigned NOT NULL default '0',
  `Sort` int(11) NOT NULL default '0',
  `ParentID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `EditableCheckboxOption`
--

LOCK TABLES `EditableCheckboxOption` WRITE;
/*!40000 ALTER TABLE `EditableCheckboxOption` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableCheckboxOption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableDropdownOption`
--

DROP TABLE IF EXISTS `EditableDropdownOption`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `EditableDropdownOption` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('EditableDropdownOption') character set utf8 default 'EditableDropdownOption',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Name` varchar(50) character set utf8 default NULL,
  `Title` varchar(50) character set utf8 default NULL,
  `Default` tinyint(1) unsigned NOT NULL default '0',
  `Sort` int(11) NOT NULL default '0',
  `ParentID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `EditableDropdownOption`
--

LOCK TABLES `EditableDropdownOption` WRITE;
/*!40000 ALTER TABLE `EditableDropdownOption` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableDropdownOption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableEmailField`
--

DROP TABLE IF EXISTS `EditableEmailField`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `EditableEmailField` (
  `ID` int(11) NOT NULL auto_increment,
  `SendCopy` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `EditableEmailField`
--

LOCK TABLES `EditableEmailField` WRITE;
/*!40000 ALTER TABLE `EditableEmailField` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableEmailField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableFileField`
--

DROP TABLE IF EXISTS `EditableFileField`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `EditableFileField` (
  `ID` int(11) NOT NULL auto_increment,
  `UploadedFileID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `UploadedFileID` (`UploadedFileID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `EditableFileField`
--

LOCK TABLES `EditableFileField` WRITE;
/*!40000 ALTER TABLE `EditableFileField` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableFileField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableFormField`
--

DROP TABLE IF EXISTS `EditableFormField`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `EditableFormField` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('EditableFormField','EditableCheckbox','EditableCheckboxGroupField','EditableDateField','EditableDropdown','EditableEmailField','EditableFileField','EditableFormHeading','EditableMemberListField','EditableRadioField','EditableTextField') character set utf8 default 'EditableFormField',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Name` varchar(50) character set utf8 default NULL,
  `Title` varchar(255) character set utf8 default NULL,
  `Default` varchar(50) character set utf8 default NULL,
  `Sort` int(11) NOT NULL default '0',
  `Required` tinyint(1) unsigned NOT NULL default '0',
  `CanDelete` tinyint(1) unsigned NOT NULL default '0',
  `CustomParameter` varchar(50) character set utf8 default NULL,
  `ParentID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `EditableFormField`
--

LOCK TABLES `EditableFormField` WRITE;
/*!40000 ALTER TABLE `EditableFormField` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableFormField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableMemberListField`
--

DROP TABLE IF EXISTS `EditableMemberListField`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `EditableMemberListField` (
  `ID` int(11) NOT NULL auto_increment,
  `GroupID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `EditableMemberListField`
--

LOCK TABLES `EditableMemberListField` WRITE;
/*!40000 ALTER TABLE `EditableMemberListField` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableMemberListField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableRadioOption`
--

DROP TABLE IF EXISTS `EditableRadioOption`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `EditableRadioOption` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('EditableRadioOption') character set utf8 default 'EditableRadioOption',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Name` varchar(50) character set utf8 default NULL,
  `Title` varchar(50) character set utf8 default NULL,
  `Default` tinyint(1) unsigned NOT NULL default '0',
  `Value` varchar(50) character set utf8 default NULL,
  `Sort` int(11) NOT NULL default '0',
  `ParentID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `EditableRadioOption`
--

LOCK TABLES `EditableRadioOption` WRITE;
/*!40000 ALTER TABLE `EditableRadioOption` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableRadioOption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EditableTextField`
--

DROP TABLE IF EXISTS `EditableTextField`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `EditableTextField` (
  `ID` int(11) NOT NULL auto_increment,
  `Size` int(11) NOT NULL default '0',
  `MinLength` int(11) NOT NULL default '0',
  `MaxLength` int(11) NOT NULL default '0',
  `Rows` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `EditableTextField`
--

LOCK TABLES `EditableTextField` WRITE;
/*!40000 ALTER TABLE `EditableTextField` DISABLE KEYS */;
/*!40000 ALTER TABLE `EditableTextField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Email_BlackList`
--

DROP TABLE IF EXISTS `Email_BlackList`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Email_BlackList` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Email_BlackList') character set utf8 default 'Email_BlackList',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `BlockedEmail` varchar(50) character set utf8 default NULL,
  `MemberID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Email_BlackList`
--

LOCK TABLES `Email_BlackList` WRITE;
/*!40000 ALTER TABLE `Email_BlackList` DISABLE KEYS */;
/*!40000 ALTER TABLE `Email_BlackList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Email_BounceRecord`
--

DROP TABLE IF EXISTS `Email_BounceRecord`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Email_BounceRecord` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Email_BounceRecord') character set utf8 default 'Email_BounceRecord',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `BounceEmail` varchar(50) character set utf8 default NULL,
  `BounceTime` datetime default NULL,
  `BounceMessage` varchar(50) character set utf8 default NULL,
  `MemberID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Email_BounceRecord`
--

LOCK TABLES `Email_BounceRecord` WRITE;
/*!40000 ALTER TABLE `Email_BounceRecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `Email_BounceRecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ErrorPage`
--

DROP TABLE IF EXISTS `ErrorPage`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ErrorPage` (
  `ID` int(11) NOT NULL auto_increment,
  `ErrorCode` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ErrorPage`
--

LOCK TABLES `ErrorPage` WRITE;
/*!40000 ALTER TABLE `ErrorPage` DISABLE KEYS */;
INSERT INTO `ErrorPage` VALUES (4,404);
/*!40000 ALTER TABLE `ErrorPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ErrorPage_Live`
--

DROP TABLE IF EXISTS `ErrorPage_Live`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ErrorPage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `ErrorCode` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ErrorPage_Live`
--

LOCK TABLES `ErrorPage_Live` WRITE;
/*!40000 ALTER TABLE `ErrorPage_Live` DISABLE KEYS */;
INSERT INTO `ErrorPage_Live` VALUES (4,404);
/*!40000 ALTER TABLE `ErrorPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ErrorPage_versions`
--

DROP TABLE IF EXISTS `ErrorPage_versions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ErrorPage_versions` (
  `ID` int(11) NOT NULL auto_increment,
  `RecordID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `WasPublished` tinyint(1) unsigned NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `PublisherID` int(11) NOT NULL default '0',
  `ErrorCode` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ErrorPage_versions`
--

LOCK TABLES `ErrorPage_versions` WRITE;
/*!40000 ALTER TABLE `ErrorPage_versions` DISABLE KEYS */;
INSERT INTO `ErrorPage_versions` VALUES (1,4,1,0,0,0,404),(2,4,2,0,0,0,404),(3,4,3,0,0,0,404),(4,4,4,0,0,0,404),(5,4,5,0,0,0,404),(6,4,6,0,1,0,404),(7,4,7,0,1,0,404);
/*!40000 ALTER TABLE `ErrorPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `File`
--

DROP TABLE IF EXISTS `File`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `File` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('File','Image','Folder','Image_Cached') character set utf8 default 'File',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Name` varchar(255) character set utf8 default NULL,
  `Title` varchar(255) character set utf8 default NULL,
  `Filename` varchar(255) character set utf8 default NULL,
  `Content` mediumtext character set utf8,
  `Sort` int(11) NOT NULL default '0',
  `ParentID` int(11) NOT NULL default '0',
  `OwnerID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `ClassName` (`ClassName`),
  FULLTEXT KEY `SearchFields` (`Filename`,`Title`,`Content`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `File`
--

LOCK TABLES `File` WRITE;
/*!40000 ALTER TABLE `File` DISABLE KEYS */;
INSERT INTO `File` VALUES (2,'Folder','2008-12-18 21:30:51','2008-12-18 21:30:51','Uploads','Uploads','assets/Uploads/',NULL,0,0,1),(3,'Image','2008-12-18 21:30:51','2008-12-18 21:30:51','SilverStripeLogo.png','SilverStripeLogo.png','assets/Uploads/SilverStripeLogo.png',NULL,0,2,1),(4,'File','2008-12-18 21:30:51','2008-12-18 21:30:51','error-404.html','error-404.html','assets/error-404.html',NULL,0,0,1);
/*!40000 ALTER TABLE `File` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Folder_CanEdit`
--

DROP TABLE IF EXISTS `Folder_CanEdit`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Folder_CanEdit` (
  `ID` int(11) NOT NULL auto_increment,
  `FolderID` int(11) NOT NULL default '0',
  `GroupID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `FolderID` (`FolderID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Folder_CanEdit`
--

LOCK TABLES `Folder_CanEdit` WRITE;
/*!40000 ALTER TABLE `Folder_CanEdit` DISABLE KEYS */;
/*!40000 ALTER TABLE `Folder_CanEdit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Folder_CanUse`
--

DROP TABLE IF EXISTS `Folder_CanUse`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Folder_CanUse` (
  `ID` int(11) NOT NULL auto_increment,
  `FolderID` int(11) NOT NULL default '0',
  `GroupID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `FolderID` (`FolderID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Folder_CanUse`
--

LOCK TABLES `Folder_CanUse` WRITE;
/*!40000 ALTER TABLE `Folder_CanUse` DISABLE KEYS */;
/*!40000 ALTER TABLE `Folder_CanUse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GhostPage`
--

DROP TABLE IF EXISTS `GhostPage`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GhostPage` (
  `ID` int(11) NOT NULL auto_increment,
  `LinkedPageID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `LinkedPageID` (`LinkedPageID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GhostPage`
--

LOCK TABLES `GhostPage` WRITE;
/*!40000 ALTER TABLE `GhostPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `GhostPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GhostPage_Live`
--

DROP TABLE IF EXISTS `GhostPage_Live`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GhostPage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `LinkedPageID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `LinkedPageID` (`LinkedPageID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GhostPage_Live`
--

LOCK TABLES `GhostPage_Live` WRITE;
/*!40000 ALTER TABLE `GhostPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `GhostPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GhostPage_versions`
--

DROP TABLE IF EXISTS `GhostPage_versions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `GhostPage_versions` (
  `ID` int(11) NOT NULL auto_increment,
  `RecordID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `WasPublished` tinyint(1) unsigned NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `PublisherID` int(11) NOT NULL default '0',
  `LinkedPageID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `LinkedPageID` (`LinkedPageID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `GhostPage_versions`
--

LOCK TABLES `GhostPage_versions` WRITE;
/*!40000 ALTER TABLE `GhostPage_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `GhostPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group`
--

DROP TABLE IF EXISTS `Group`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Group` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Group','Group_Unsecure') character set utf8 default 'Group',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Title` varchar(50) character set utf8 default NULL,
  `Description` mediumtext character set utf8,
  `Code` varchar(50) character set utf8 default NULL,
  `CanCMS` tinyint(1) unsigned NOT NULL default '0',
  `CanCMSAdmin` tinyint(1) unsigned NOT NULL default '0',
  `Locked` tinyint(1) unsigned NOT NULL default '0',
  `Sort` int(11) NOT NULL default '0',
  `ParentID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Group`
--

LOCK TABLES `Group` WRITE;
/*!40000 ALTER TABLE `Group` DISABLE KEYS */;
INSERT INTO `Group` VALUES (1,'Group','2008-12-18 21:21:23','2008-12-18 21:21:23','Administrators',NULL,'administrators',0,0,0,0,0);
/*!40000 ALTER TABLE `Group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group_Members`
--

DROP TABLE IF EXISTS `Group_Members`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Group_Members` (
  `ID` int(11) NOT NULL auto_increment,
  `GroupID` int(11) NOT NULL default '0',
  `MemberID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Group_Members`
--

LOCK TABLES `Group_Members` WRITE;
/*!40000 ALTER TABLE `Group_Members` DISABLE KEYS */;
INSERT INTO `Group_Members` VALUES (1,1,1);
/*!40000 ALTER TABLE `Group_Members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Member`
--

DROP TABLE IF EXISTS `Member`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Member` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Member') character set utf8 default 'Member',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `FirstName` varchar(50) character set utf8 default NULL,
  `Surname` varchar(50) character set utf8 default NULL,
  `Email` varchar(50) character set utf8 default NULL,
  `Password` varchar(64) character set utf8 default NULL,
  `RememberLoginToken` varchar(50) character set utf8 default NULL,
  `NumVisit` int(11) NOT NULL default '0',
  `LastVisited` datetime default NULL,
  `Bounced` tinyint(1) unsigned NOT NULL default '0',
  `AutoLoginHash` varchar(30) character set utf8 default NULL,
  `AutoLoginExpired` datetime default NULL,
  `BlacklistedEmail` tinyint(1) unsigned NOT NULL default '0',
  `PasswordEncryption` enum('none','md2','md4','md5','sha1','sha256','sha384','sha512','ripemd128','ripemd160','ripemd256','ripemd320','whirlpool','snefru','gost','adler32','crc32','crc32b','password','old_password') character set utf8 default 'none',
  `Salt` varchar(50) character set utf8 default NULL,
  `Locale` varchar(6) character set utf8 default NULL,
  `IdentityURL` varchar(255) character set utf8 default NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `AutoLoginHash` (`AutoLoginHash`),
  UNIQUE KEY `IdentityURL` (`IdentityURL`),
  KEY `Email` (`Email`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Member`
--

LOCK TABLES `Member` WRITE;
/*!40000 ALTER TABLE `Member` DISABLE KEYS */;
INSERT INTO `Member` VALUES (1,'Member','2008-12-18 21:21:24','2008-12-19 05:31:45','Junrey','Beduya','jbeduya@gmail.com','8bd8l081phs8g4wcgc0cwc8k8wwgwco',NULL,3,'2008-12-19 06:12:32',0,NULL,NULL,0,'sha1','97v4zw00f50kg048cs0kkowsc8gk8okg0s84kos','en_US',NULL);
/*!40000 ALTER TABLE `Member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Member_UnsubscribeRecord`
--

DROP TABLE IF EXISTS `Member_UnsubscribeRecord`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Member_UnsubscribeRecord` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Member_UnsubscribeRecord') character set utf8 default 'Member_UnsubscribeRecord',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `NewsletterTypeID` int(11) NOT NULL default '0',
  `MemberID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `NewsletterTypeID` (`NewsletterTypeID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Member_UnsubscribeRecord`
--

LOCK TABLES `Member_UnsubscribeRecord` WRITE;
/*!40000 ALTER TABLE `Member_UnsubscribeRecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `Member_UnsubscribeRecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Newsletter`
--

DROP TABLE IF EXISTS `Newsletter`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Newsletter` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Newsletter') character set utf8 default 'Newsletter',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Status` enum('Draft','Send') character set utf8 default 'Draft',
  `Content` mediumtext character set utf8,
  `Subject` varchar(255) character set utf8 default NULL,
  `SentDate` datetime default NULL,
  `ParentID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Newsletter`
--

LOCK TABLES `Newsletter` WRITE;
/*!40000 ALTER TABLE `Newsletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `Newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewsletterType`
--

DROP TABLE IF EXISTS `NewsletterType`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `NewsletterType` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('NewsletterType') character set utf8 default 'NewsletterType',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Title` varchar(50) character set utf8 default NULL,
  `Template` varchar(50) character set utf8 default NULL,
  `FromEmail` varchar(50) character set utf8 default NULL,
  `Sent` datetime default NULL,
  `ParentID` int(11) NOT NULL default '0',
  `GroupID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `GroupID` (`GroupID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `NewsletterType`
--

LOCK TABLES `NewsletterType` WRITE;
/*!40000 ALTER TABLE `NewsletterType` DISABLE KEYS */;
/*!40000 ALTER TABLE `NewsletterType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Newsletter_Recipient`
--

DROP TABLE IF EXISTS `Newsletter_Recipient`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Newsletter_Recipient` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Newsletter_Recipient') character set utf8 default 'Newsletter_Recipient',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `ParentID` int(11) NOT NULL default '0',
  `MemberID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Newsletter_Recipient`
--

LOCK TABLES `Newsletter_Recipient` WRITE;
/*!40000 ALTER TABLE `Newsletter_Recipient` DISABLE KEYS */;
/*!40000 ALTER TABLE `Newsletter_Recipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Newsletter_SentRecipient`
--

DROP TABLE IF EXISTS `Newsletter_SentRecipient`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Newsletter_SentRecipient` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Newsletter_SentRecipient') character set utf8 default 'Newsletter_SentRecipient',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `ParentID` int(11) NOT NULL default '0',
  `Email` varchar(255) character set utf8 default NULL,
  `Result` enum('Sent','Failed','Bounced','BlackListed') character set utf8 default 'Sent',
  `MemberID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Newsletter_SentRecipient`
--

LOCK TABLES `Newsletter_SentRecipient` WRITE;
/*!40000 ALTER TABLE `Newsletter_SentRecipient` DISABLE KEYS */;
/*!40000 ALTER TABLE `Newsletter_SentRecipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageComment`
--

DROP TABLE IF EXISTS `PageComment`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `PageComment` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('PageComment') character set utf8 default 'PageComment',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Name` varchar(50) character set utf8 default NULL,
  `Comment` mediumtext character set utf8,
  `IsSpam` tinyint(1) unsigned NOT NULL default '0',
  `NeedsModeration` tinyint(1) unsigned NOT NULL default '0',
  `ParentID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `PageComment`
--

LOCK TABLES `PageComment` WRITE;
/*!40000 ALTER TABLE `PageComment` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageComment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageView`
--

DROP TABLE IF EXISTS `PageView`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `PageView` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('PageView') character set utf8 default 'PageView',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `IP` varchar(255) character set utf8 default NULL,
  `Browser` varchar(255) character set utf8 default NULL,
  `BrowserVersion` decimal(9,2) default NULL,
  `FromExternal` tinyint(1) unsigned NOT NULL default '0',
  `Referrer` varchar(255) character set utf8 default NULL,
  `SearchEngine` tinyint(1) unsigned NOT NULL default '0',
  `Keywords` varchar(255) character set utf8 default NULL,
  `OS` varchar(255) character set utf8 default NULL,
  `PageID` int(11) NOT NULL default '0',
  `UserID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `PageID` (`PageID`),
  KEY `UserID` (`UserID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=204 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `PageView`
--

LOCK TABLES `PageView` WRITE;
/*!40000 ALTER TABLE `PageView` DISABLE KEYS */;
INSERT INTO `PageView` VALUES (1,'PageView','2008-12-18 21:21:26','2008-12-18 21:21:26','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/install.php',0,NULL,NULL,1,-1),(2,'PageView','2008-12-18 21:21:26','2008-12-18 21:21:26','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/install.php',0,NULL,NULL,1,-1),(3,'PageView','2008-12-18 21:21:49','2008-12-18 21:21:49','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(4,'PageView','2008-12-18 21:21:49','2008-12-18 21:21:49','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(5,'PageView','2008-12-18 21:24:52','2008-12-18 21:24:52','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(6,'PageView','2008-12-18 21:24:52','2008-12-18 21:24:52','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(7,'PageView','2008-12-18 21:25:05','2008-12-18 21:25:05','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(8,'PageView','2008-12-18 21:25:05','2008-12-18 21:25:05','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(9,'PageView','2008-12-18 21:25:10','2008-12-18 21:25:10','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/home/successfullyinstalled?flush=1',0,NULL,NULL,2,-1),(10,'PageView','2008-12-18 21:25:11','2008-12-18 21:25:11','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/about-us/',0,NULL,NULL,3,-1),(11,'PageView','2008-12-18 21:25:12','2008-12-18 21:25:12','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/contact-us/',0,NULL,NULL,1,-1),(12,'PageView','2008-12-18 21:28:55','2008-12-18 21:28:55','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(13,'PageView','2008-12-18 21:28:58','2008-12-18 21:28:58','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/mysite',0,NULL,NULL,1,-1),(14,'PageView','2008-12-18 21:29:08','2008-12-18 21:29:08','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(15,'PageView','2008-12-18 21:29:20','2008-12-18 21:29:20','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(16,'PageView','2008-12-18 21:30:38','2008-12-18 21:30:38','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(17,'PageView','2008-12-18 21:30:43','2008-12-18 21:30:43','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(18,'PageView','2008-12-18 21:31:24','2008-12-18 21:31:24','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/admin/',0,NULL,NULL,4,-1),(19,'PageView','2008-12-18 21:31:27','2008-12-18 21:31:27','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/admin/',0,NULL,NULL,4,1),(20,'PageView','2008-12-18 21:31:38','2008-12-18 21:31:38','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(21,'PageView','2008-12-18 21:32:11','2008-12-18 21:32:11','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(22,'PageView','2008-12-18 21:32:16','2008-12-18 21:32:16','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(23,'PageView','2008-12-18 21:32:16','2008-12-18 21:32:16','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(24,'PageView','2008-12-18 21:32:26','2008-12-18 21:32:26','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/admin/',0,NULL,NULL,3,1),(25,'PageView','2008-12-18 21:32:31','2008-12-18 21:32:31','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/contact-us/?stage=Live',0,NULL,NULL,2,1),(26,'PageView','2008-12-18 21:32:33','2008-12-18 21:32:33','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/about-us/',0,NULL,NULL,1,1),(27,'PageView','2008-12-18 21:32:38','2008-12-18 21:32:38','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(28,'PageView','2008-12-18 21:32:38','2008-12-18 21:32:38','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(29,'PageView','2008-12-18 21:32:46','2008-12-18 21:32:46','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(30,'PageView','2008-12-18 21:32:53','2008-12-18 21:32:53','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(31,'PageView','2008-12-18 21:32:58','2008-12-18 21:32:58','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(32,'PageView','2008-12-18 21:32:58','2008-12-18 21:32:58','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(33,'PageView','2008-12-18 21:33:03','2008-12-18 21:33:03','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/home/successfullyinstalled?flush=1',0,NULL,NULL,1,1),(34,'PageView','2008-12-18 21:33:33','2008-12-18 21:33:33','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(35,'PageView','2008-12-18 21:34:22','2008-12-18 21:34:22','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/admin/',0,NULL,NULL,1,1),(36,'PageView','2008-12-18 21:34:22','2008-12-18 21:34:22','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/admin/',0,NULL,NULL,1,1),(37,'PageView','2008-12-18 21:34:41','2008-12-18 21:34:41','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(38,'PageView','2008-12-18 21:34:43','2008-12-18 21:34:43','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/?stage=Live',0,NULL,NULL,2,1),(39,'PageView','2008-12-18 21:34:50','2008-12-18 21:34:50','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/about-us/',0,NULL,NULL,1,1),(40,'PageView','2008-12-18 21:34:56','2008-12-18 21:34:56','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(41,'PageView','2008-12-18 21:34:56','2008-12-18 21:34:56','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(42,'PageView','2008-12-18 21:35:00','2008-12-18 21:35:00','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(43,'PageView','2008-12-18 21:35:01','2008-12-18 21:35:01','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(44,'PageView','2008-12-18 21:35:02','2008-12-18 21:35:02','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,2,1),(45,'PageView','2008-12-18 21:35:04','2008-12-18 21:35:04','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/about-us/',0,NULL,NULL,1,1),(46,'PageView','2008-12-18 21:35:21','2008-12-18 21:35:21','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(47,'PageView','2008-12-18 21:35:23','2008-12-18 21:35:23','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,2,-1),(48,'PageView','2008-12-18 21:35:24','2008-12-18 21:35:24','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/about-us/',0,NULL,NULL,1,-1),(49,'PageView','2008-12-18 21:35:24','2008-12-18 21:35:24','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/about-us/',0,NULL,NULL,1,-1),(50,'PageView','2008-12-18 21:35:26','2008-12-18 21:35:26','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,2,-1),(51,'PageView','2008-12-18 21:35:27','2008-12-18 21:35:27','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/about-us/',0,NULL,NULL,3,-1),(52,'PageView','2008-12-18 21:35:28','2008-12-18 21:35:28','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/contact-us/',0,NULL,NULL,2,-1),(53,'PageView','2008-12-18 21:35:30','2008-12-18 21:35:30','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/about-us/',0,NULL,NULL,1,-1),(54,'PageView','2008-12-18 21:35:30','2008-12-18 21:35:30','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/about-us/',0,NULL,NULL,1,-1),(55,'PageView','2008-12-18 21:35:32','2008-12-18 21:35:32','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,2,-1),(56,'PageView','2008-12-18 21:35:33','2008-12-18 21:35:33','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/about-us/',0,NULL,NULL,3,-1),(57,'PageView','2008-12-18 21:35:34','2008-12-18 21:35:34','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/contact-us/',0,NULL,NULL,2,-1),(58,'PageView','2008-12-18 21:35:35','2008-12-18 21:35:35','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/about-us/',0,NULL,NULL,1,-1),(59,'PageView','2008-12-18 21:35:35','2008-12-18 21:35:35','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/about-us/',0,NULL,NULL,1,-1),(60,'PageView','2008-12-18 21:40:46','2008-12-18 21:40:46','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(61,'PageView','2008-12-18 21:40:49','2008-12-18 21:40:49','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(62,'PageView','2008-12-18 21:46:14','2008-12-18 21:46:14','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(63,'PageView','2008-12-18 21:46:25','2008-12-18 21:46:25','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(64,'PageView','2008-12-18 21:46:34','2008-12-18 21:46:34','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(65,'PageView','2008-12-18 21:48:08','2008-12-18 21:48:08','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(66,'PageView','2008-12-18 21:48:13','2008-12-18 21:48:13','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(67,'PageView','2008-12-18 21:48:35','2008-12-18 21:48:35','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(68,'PageView','2008-12-18 21:51:24','2008-12-18 21:51:24','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(69,'PageView','2008-12-18 21:51:28','2008-12-18 21:51:28','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(70,'PageView','2008-12-18 21:52:17','2008-12-18 21:52:17','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(71,'PageView','2008-12-18 21:55:40','2008-12-18 21:55:40','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(72,'PageView','2008-12-18 21:56:00','2008-12-18 21:56:00','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(73,'PageView','2008-12-18 21:57:23','2008-12-18 21:57:23','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(74,'PageView','2008-12-18 21:57:31','2008-12-18 21:57:31','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(75,'PageView','2008-12-18 21:57:37','2008-12-18 21:57:37','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(76,'PageView','2008-12-18 21:57:42','2008-12-18 21:57:42','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(77,'PageView','2008-12-18 21:57:47','2008-12-18 21:57:47','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(78,'PageView','2008-12-18 22:02:49','2008-12-18 22:02:49','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(79,'PageView','2008-12-18 22:02:52','2008-12-18 22:02:52','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(80,'PageView','2008-12-18 22:08:39','2008-12-18 22:08:39','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(81,'PageView','2008-12-18 22:08:44','2008-12-18 22:08:44','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(82,'PageView','2008-12-18 22:09:08','2008-12-18 22:09:08','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(83,'PageView','2008-12-18 22:13:24','2008-12-18 22:13:24','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(84,'PageView','2008-12-18 22:14:43','2008-12-18 22:14:43','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(85,'PageView','2008-12-18 22:15:46','2008-12-18 22:15:46','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(86,'PageView','2008-12-18 22:17:25','2008-12-18 22:17:25','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(87,'PageView','2008-12-18 22:17:34','2008-12-18 22:17:34','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(88,'PageView','2008-12-18 22:17:44','2008-12-18 22:17:44','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/?flush=1',0,NULL,NULL,6,-1),(89,'PageView','2008-12-18 22:17:46','2008-12-18 22:17:46','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,6,-1),(90,'PageView','2008-12-18 22:18:05','2008-12-18 22:18:05','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,6,-1),(91,'PageView','2008-12-18 22:18:07','2008-12-18 22:18:07','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,7,-1),(92,'PageView','2008-12-18 22:18:08','2008-12-18 22:18:08','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,6,-1),(93,'PageView','2008-12-18 22:18:47','2008-12-18 22:18:47','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,6,-1),(94,'PageView','2008-12-18 22:18:58','2008-12-18 22:18:58','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(95,'PageView','2008-12-18 22:24:40','2008-12-18 22:24:40','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(96,'PageView','2008-12-18 22:25:05','2008-12-18 22:25:05','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(97,'PageView','2008-12-18 22:25:14','2008-12-18 22:25:14','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/?flush=1',0,NULL,NULL,11,-1),(98,'PageView','2008-12-18 22:25:17','2008-12-18 22:25:17','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/information/',0,NULL,NULL,7,-1),(99,'PageView','2008-12-18 22:25:19','2008-12-18 22:25:19','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,6,-1),(100,'PageView','2008-12-18 22:25:22','2008-12-18 22:25:22','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,10,-1),(101,'PageView','2008-12-18 22:25:24','2008-12-18 22:25:24','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/support/',0,NULL,NULL,11,-1),(102,'PageView','2008-12-18 22:25:39','2008-12-18 22:25:39','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/information/',0,NULL,NULL,6,-1),(103,'PageView','2008-12-18 22:25:50','2008-12-18 22:25:50','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,7,-1),(104,'PageView','2008-12-18 22:25:51','2008-12-18 22:25:51','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,9,-1),(105,'PageView','2008-12-18 22:25:52','2008-12-18 22:25:52','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/downloads/',0,NULL,NULL,10,-1),(106,'PageView','2008-12-18 22:25:53','2008-12-18 22:25:53','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/support/',0,NULL,NULL,11,-1),(107,'PageView','2008-12-18 22:25:55','2008-12-18 22:25:55','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/information/',0,NULL,NULL,2,-1),(108,'PageView','2008-12-18 22:25:56','2008-12-18 22:25:56','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/about-us/',0,NULL,NULL,3,-1),(109,'PageView','2008-12-18 22:25:58','2008-12-18 22:25:58','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/contact-us/',0,NULL,NULL,6,-1),(110,'PageView','2008-12-18 22:26:01','2008-12-18 22:26:01','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,7,-1),(111,'PageView','2008-12-18 22:26:02','2008-12-18 22:26:02','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,6,-1),(112,'PageView','2008-12-18 22:26:43','2008-12-18 22:26:43','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(113,'PageView','2008-12-18 22:26:47','2008-12-18 22:26:47','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(114,'PageView','2008-12-18 22:27:11','2008-12-18 22:27:11','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(115,'PageView','2008-12-18 22:27:15','2008-12-18 22:27:15','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(116,'PageView','2008-12-18 22:27:17','2008-12-18 22:27:17','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(117,'PageView','2008-12-18 22:27:19','2008-12-18 22:27:19','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(118,'PageView','2008-12-18 22:27:21','2008-12-18 22:27:21','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(119,'PageView','2008-12-18 22:27:26','2008-12-18 22:27:26','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/admin/show/9',0,NULL,NULL,11,1),(120,'PageView','2008-12-18 22:27:30','2008-12-18 22:27:30','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/admin/show/9',0,NULL,NULL,11,1),(121,'PageView','2008-12-18 22:27:32','2008-12-18 22:27:32','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/admin/show/9',0,NULL,NULL,11,1),(122,'PageView','2008-12-18 22:29:30','2008-12-18 22:29:30','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/?flush=1',0,NULL,NULL,6,-1),(123,'PageView','2008-12-18 22:31:18','2008-12-18 22:31:18','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(124,'PageView','2008-12-18 22:31:21','2008-12-18 22:31:21','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/?flush=1',0,NULL,NULL,6,-1),(125,'PageView','2008-12-18 22:31:26','2008-12-18 22:31:26','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/admin/show/9',0,NULL,NULL,11,1),(126,'PageView','2008-12-18 22:31:29','2008-12-18 22:31:29','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/information/?stage=Live',0,NULL,NULL,6,1),(127,'PageView','2008-12-18 22:31:32','2008-12-18 22:31:32','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,7,1),(128,'PageView','2008-12-18 22:32:16','2008-12-18 22:32:16','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,6,1),(129,'PageView','2008-12-18 22:32:52','2008-12-18 22:32:52','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,6,1),(130,'PageView','2008-12-18 22:33:42','2008-12-18 22:33:42','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,1),(131,'PageView','2008-12-18 22:33:48','2008-12-18 22:33:48','::1',NULL,NULL,0,NULL,0,NULL,NULL,12,1),(132,'PageView','2008-12-18 22:34:13','2008-12-18 22:34:13','::1',NULL,NULL,0,NULL,0,NULL,NULL,12,1),(133,'PageView','2008-12-18 22:35:41','2008-12-18 22:35:41','::1',NULL,NULL,0,NULL,0,NULL,NULL,12,1),(134,'PageView','2008-12-18 22:35:46','2008-12-18 22:35:46','::1',NULL,NULL,0,NULL,0,NULL,NULL,12,1),(135,'PageView','2008-12-18 22:36:51','2008-12-18 22:36:51','::1',NULL,NULL,0,NULL,0,NULL,NULL,12,1),(136,'PageView','2008-12-18 22:36:54','2008-12-18 22:36:54','::1',NULL,NULL,0,NULL,0,NULL,NULL,12,1),(137,'PageView','2008-12-18 22:36:58','2008-12-18 22:36:58','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder?flush=1',0,NULL,NULL,12,1),(138,'PageView','2008-12-18 22:37:00','2008-12-18 22:37:00','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,6,1),(139,'PageView','2008-12-18 22:37:03','2008-12-18 22:37:03','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,1),(140,'PageView','2008-12-18 22:37:06','2008-12-18 22:37:06','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,7,1),(141,'PageView','2008-12-18 22:37:09','2008-12-18 22:37:09','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,12,1),(142,'PageView','2008-12-18 22:37:26','2008-12-18 22:37:26','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,6,1),(143,'PageView','2008-12-18 22:37:49','2008-12-18 22:37:49','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(144,'PageView','2008-12-18 22:38:00','2008-12-18 22:38:00','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(145,'PageView','2008-12-18 22:38:07','2008-12-18 22:38:07','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,12,-1),(146,'PageView','2008-12-18 22:38:13','2008-12-18 22:38:13','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(147,'PageView','2008-12-18 22:38:20','2008-12-18 22:38:20','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,12,-1),(148,'PageView','2008-12-18 22:38:22','2008-12-18 22:38:22','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,6,-1),(149,'PageView','2008-12-18 22:38:24','2008-12-18 22:38:24','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,7,-1),(150,'PageView','2008-12-18 22:38:25','2008-12-18 22:38:25','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,6,-1),(151,'PageView','2008-12-18 22:38:58','2008-12-18 22:38:58','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,6,1),(152,'PageView','2008-12-18 22:39:06','2008-12-18 22:39:06','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,1),(153,'PageView','2008-12-18 22:39:13','2008-12-18 22:39:13','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/?flush=1',0,NULL,NULL,7,1),(154,'PageView','2008-12-18 22:39:16','2008-12-18 22:39:16','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,7,1),(155,'PageView','2008-12-18 22:39:19','2008-12-18 22:39:19','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,11,1),(156,'PageView','2008-12-18 22:39:26','2008-12-18 22:39:26','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/information/',0,NULL,NULL,9,1),(157,'PageView','2008-12-18 22:39:30','2008-12-18 22:39:30','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/downloads/',0,NULL,NULL,12,1),(158,'PageView','2008-12-18 22:39:33','2008-12-18 22:39:33','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/downloads/',0,NULL,NULL,12,1),(159,'PageView','2008-12-18 22:39:36','2008-12-18 22:39:36','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/downloads/',0,NULL,NULL,12,1),(160,'PageView','2008-12-18 22:41:24','2008-12-18 22:41:24','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,12,1),(161,'PageView','2008-12-18 22:41:28','2008-12-18 22:41:28','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,12,1),(162,'PageView','2008-12-18 22:41:48','2008-12-18 22:41:48','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,7,1),(163,'PageView','2008-12-18 22:41:50','2008-12-18 22:41:50','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,6,1),(164,'PageView','2008-12-18 22:42:06','2008-12-18 22:42:06','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,6,1),(165,'PageView','2008-12-18 22:42:08','2008-12-18 22:42:08','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,7,1),(166,'PageView','2008-12-18 22:42:11','2008-12-18 22:42:11','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,9,1),(167,'PageView','2008-12-18 22:42:17','2008-12-18 22:42:17','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/downloads/',0,NULL,NULL,6,1),(168,'PageView','2008-12-18 22:42:32','2008-12-18 22:42:32','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,1),(169,'PageView','2008-12-18 22:43:06','2008-12-18 22:43:06','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(170,'PageView','2008-12-18 22:50:29','2008-12-18 22:50:29','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,1),(171,'PageView','2008-12-18 22:50:33','2008-12-18 22:50:33','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/?flush=1',0,NULL,NULL,12,1),(172,'PageView','2008-12-18 22:54:01','2008-12-18 22:54:01','::1',NULL,NULL,0,NULL,0,NULL,NULL,12,1),(173,'PageView','2008-12-18 22:56:19','2008-12-18 22:56:19','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,1),(174,'PageView','2008-12-18 22:56:24','2008-12-18 22:56:24','::1',NULL,NULL,0,NULL,0,NULL,NULL,12,1),(175,'PageView','2008-12-18 22:56:35','2008-12-18 22:56:35','::1',NULL,NULL,0,NULL,0,NULL,NULL,12,1),(176,'PageView','2008-12-18 22:57:01','2008-12-18 22:57:01','::1',NULL,NULL,0,NULL,0,NULL,NULL,12,1),(177,'PageView','2008-12-19 05:05:49','2008-12-19 05:05:49','::1',NULL,NULL,0,NULL,0,NULL,NULL,12,1),(178,'PageView','2008-12-19 05:05:52','2008-12-19 05:05:52','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder?flush=1',0,NULL,NULL,12,1),(179,'PageView','2008-12-19 05:30:40','2008-12-19 05:30:40','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/admin/',0,NULL,NULL,0,-1),(180,'PageView','2008-12-19 06:03:57','2008-12-19 06:03:57','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(181,'PageView','2008-12-19 06:04:30','2008-12-19 06:04:30','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(182,'PageView','2008-12-19 06:05:29','2008-12-19 06:05:29','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(183,'PageView','2008-12-19 06:05:39','2008-12-19 06:05:39','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(184,'PageView','2008-12-19 06:07:38','2008-12-19 06:07:38','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(185,'PageView','2008-12-19 06:08:25','2008-12-19 06:08:25','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(186,'PageView','2008-12-19 06:08:47','2008-12-19 06:08:47','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/?flush=1',0,NULL,NULL,12,1),(187,'PageView','2008-12-19 06:09:45','2008-12-19 06:09:45','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/?flush=1',0,NULL,NULL,12,1),(188,'PageView','2008-12-19 06:09:52','2008-12-19 06:09:52','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(189,'PageView','2008-12-19 06:09:56','2008-12-19 06:09:56','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/?flush=1',0,NULL,NULL,1,1),(190,'PageView','2008-12-19 06:09:57','2008-12-19 06:09:57','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/?flush=1',0,NULL,NULL,1,1),(191,'PageView','2008-12-19 06:09:59','2008-12-19 06:09:59','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,1,1),(192,'PageView','2008-12-19 06:09:59','2008-12-19 06:09:59','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,1,1),(193,'PageView','2008-12-19 06:10:24','2008-12-19 06:10:24','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,1,1),(194,'PageView','2008-12-19 06:11:13','2008-12-19 06:11:13','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(195,'PageView','2008-12-19 06:11:17','2008-12-19 06:11:17','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(196,'PageView','2008-12-19 06:11:27','2008-12-19 06:11:27','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/?flush=1',0,NULL,NULL,12,1),(197,'PageView','2008-12-19 06:11:31','2008-12-19 06:11:31','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,6,1),(198,'PageView','2008-12-19 06:11:33','2008-12-19 06:11:33','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,1,1),(199,'PageView','2008-12-19 06:11:33','2008-12-19 06:11:33','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,1,1),(200,'PageView','2008-12-19 06:12:21','2008-12-19 06:12:21','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,12,1),(201,'PageView','2008-12-19 06:12:28','2008-12-19 06:12:28','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,12,1),(202,'PageView','2008-12-19 06:12:32','2008-12-19 06:12:32','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,1,1),(203,'PageView','2008-12-19 06:12:32','2008-12-19 06:12:32','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,1,1);
/*!40000 ALTER TABLE `PageView` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Permission`
--

DROP TABLE IF EXISTS `Permission`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Permission` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Permission') character set utf8 default 'Permission',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Code` varchar(50) character set utf8 default NULL,
  `Arg` int(11) NOT NULL default '0',
  `Type` int(11) NOT NULL default '1',
  `GroupID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `Code` (`Code`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Permission`
--

LOCK TABLES `Permission` WRITE;
/*!40000 ALTER TABLE `Permission` DISABLE KEYS */;
INSERT INTO `Permission` VALUES (1,'Permission','2008-12-18 21:21:23','2008-12-18 21:21:23','ADMIN',0,1,1);
/*!40000 ALTER TABLE `Permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QueuedEmail`
--

DROP TABLE IF EXISTS `QueuedEmail`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `QueuedEmail` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('QueuedEmail') character set utf8 default 'QueuedEmail',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Send` datetime default NULL,
  `Subject` varchar(50) character set utf8 default NULL,
  `From` varchar(50) character set utf8 default NULL,
  `Content` mediumtext character set utf8,
  `ToID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ToID` (`ToID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `QueuedEmail`
--

LOCK TABLES `QueuedEmail` WRITE;
/*!40000 ALTER TABLE `QueuedEmail` DISABLE KEYS */;
/*!40000 ALTER TABLE `QueuedEmail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RedirectorPage`
--

DROP TABLE IF EXISTS `RedirectorPage`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `RedirectorPage` (
  `ID` int(11) NOT NULL auto_increment,
  `RedirectionType` enum('Internal','External') character set utf8 default 'Internal',
  `ExternalURL` varchar(255) character set utf8 default NULL,
  `LinkToID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `RedirectorPage`
--

LOCK TABLES `RedirectorPage` WRITE;
/*!40000 ALTER TABLE `RedirectorPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `RedirectorPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RedirectorPage_Live`
--

DROP TABLE IF EXISTS `RedirectorPage_Live`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `RedirectorPage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `RedirectionType` enum('Internal','External') character set utf8 default 'Internal',
  `ExternalURL` varchar(255) character set utf8 default NULL,
  `LinkToID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `RedirectorPage_Live`
--

LOCK TABLES `RedirectorPage_Live` WRITE;
/*!40000 ALTER TABLE `RedirectorPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `RedirectorPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RedirectorPage_versions`
--

DROP TABLE IF EXISTS `RedirectorPage_versions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `RedirectorPage_versions` (
  `ID` int(11) NOT NULL auto_increment,
  `RecordID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `WasPublished` tinyint(1) unsigned NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `PublisherID` int(11) NOT NULL default '0',
  `RedirectionType` enum('Internal','External') character set utf8 default 'Internal',
  `ExternalURL` varchar(255) character set utf8 default NULL,
  `LinkToID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `RedirectorPage_versions`
--

LOCK TABLES `RedirectorPage_versions` WRITE;
/*!40000 ALTER TABLE `RedirectorPage_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `RedirectorPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree`
--

DROP TABLE IF EXISTS `SiteTree`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SiteTree` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('SiteTree','Page','GhostPage','UserDefinedForm','HomePage','ErrorPage','RedirectorPage','VirtualPage','SubscribeForm') character set utf8 default 'SiteTree',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `URLSegment` varchar(255) character set utf8 default NULL,
  `Title` varchar(255) character set utf8 default NULL,
  `MenuTitle` varchar(100) character set utf8 default NULL,
  `Content` mediumtext character set utf8,
  `MetaTitle` varchar(255) character set utf8 default NULL,
  `MetaDescription` varchar(255) character set utf8 default NULL,
  `MetaKeywords` varchar(255) character set utf8 default NULL,
  `ExtraMeta` mediumtext character set utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL default '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL default '0',
  `HomepageForDomain` varchar(100) character set utf8 default NULL,
  `ProvideComments` tinyint(1) unsigned NOT NULL default '0',
  `Sort` int(11) NOT NULL default '0',
  `LegacyURL` varchar(255) character set utf8 default NULL,
  `HasBrokenFile` tinyint(1) unsigned NOT NULL default '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL default '0',
  `Status` varchar(50) character set utf8 default NULL,
  `ReportClass` varchar(50) character set utf8 default NULL,
  `Priority` float default NULL,
  `Viewers` enum('Anyone','LoggedInUsers','OnlyTheseUsers') character set utf8 default 'Anyone',
  `Editors` enum('LoggedInUsers','OnlyTheseUsers') character set utf8 default 'LoggedInUsers',
  `ViewersGroup` int(11) NOT NULL default '0',
  `EditorsGroup` int(11) NOT NULL default '0',
  `ToDo` mediumtext character set utf8,
  `ParentID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`),
  FULLTEXT KEY `SearchFields` (`Title`,`MenuTitle`,`Content`,`MetaTitle`,`MetaDescription`,`MetaKeywords`),
  FULLTEXT KEY `TitleSearchFields` (`Title`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SiteTree`
--

LOCK TABLES `SiteTree` WRITE;
/*!40000 ALTER TABLE `SiteTree` DISABLE KEYS */;
INSERT INTO `SiteTree` VALUES (1,'HomePage','2008-12-18 21:21:23','2008-12-19 06:03:28','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,1,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,11),(2,'Page','2008-12-18 21:21:23','2008-12-18 21:31:57','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,3),(3,'Page','2008-12-18 21:21:23','2008-12-18 21:32:00','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,8,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,3),(4,'ErrorPage','2008-12-18 21:21:24','2008-12-18 21:31:24','page-not-found','Page not found',NULL,'<p>It looks like the page you are looking for does not exists.</p>',NULL,NULL,NULL,NULL,0,1,NULL,0,9,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,7),(7,'Page','2008-12-18 21:55:03','2008-12-18 21:55:33','services','Services',NULL,'<p>This is the services page</p>','Services',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,5),(6,'Page','2008-12-18 21:54:00','2008-12-18 21:55:56','products','Products',NULL,'<p>This is the products Page</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,11),(10,'Page','2008-12-18 22:11:21','2008-12-18 22:12:12','support','Support',NULL,'<p>Support Page</p>','Support',NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,0,10),(9,'Page','2008-12-18 22:10:34','2008-12-18 22:12:17','downloads','Downloads',NULL,'<p>This is the downloads page</p>','Downloads',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,6),(11,'Page','2008-12-18 22:12:43','2008-12-18 22:13:10','information','Information',NULL,'<p>This is the information page</p>','Information',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,6),(12,'Page','2008-12-18 22:32:30','2008-12-18 22:53:48','products-policy-minder','Policy Minder',NULL,'<table border=\"0\"><tbody><tr valign=\"top\"><td style=\"width: 200px\">No content any more <br /></td><td><p>I have to update the content since the current minority reader and the published item int he past is not that well sowe</p><p>We can have several updates later on. </p></td></tr></tbody></table>','Policy Minder',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,6,11);
/*!40000 ALTER TABLE `SiteTree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_ImageTracking`
--

DROP TABLE IF EXISTS `SiteTree_ImageTracking`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SiteTree_ImageTracking` (
  `ID` int(11) NOT NULL auto_increment,
  `SiteTreeID` int(11) NOT NULL default '0',
  `FileID` int(11) NOT NULL default '0',
  `FieldName` varchar(50) character set utf8 default NULL,
  PRIMARY KEY  (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `FileID` (`FileID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SiteTree_ImageTracking`
--

LOCK TABLES `SiteTree_ImageTracking` WRITE;
/*!40000 ALTER TABLE `SiteTree_ImageTracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_ImageTracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_LinkTracking`
--

DROP TABLE IF EXISTS `SiteTree_LinkTracking`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SiteTree_LinkTracking` (
  `ID` int(11) NOT NULL auto_increment,
  `SiteTreeID` int(11) NOT NULL default '0',
  `ChildID` int(11) NOT NULL default '0',
  `FieldName` varchar(50) character set utf8 default NULL,
  PRIMARY KEY  (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SiteTree_LinkTracking`
--

LOCK TABLES `SiteTree_LinkTracking` WRITE;
/*!40000 ALTER TABLE `SiteTree_LinkTracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_LinkTracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_Live`
--

DROP TABLE IF EXISTS `SiteTree_Live`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SiteTree_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('SiteTree','Page','GhostPage','UserDefinedForm','HomePage','ErrorPage','RedirectorPage','VirtualPage','SubscribeForm') character set utf8 default 'SiteTree',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `URLSegment` varchar(255) character set utf8 default NULL,
  `Title` varchar(255) character set utf8 default NULL,
  `MenuTitle` varchar(100) character set utf8 default NULL,
  `Content` mediumtext character set utf8,
  `MetaTitle` varchar(255) character set utf8 default NULL,
  `MetaDescription` varchar(255) character set utf8 default NULL,
  `MetaKeywords` varchar(255) character set utf8 default NULL,
  `ExtraMeta` mediumtext character set utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL default '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL default '0',
  `HomepageForDomain` varchar(100) character set utf8 default NULL,
  `ProvideComments` tinyint(1) unsigned NOT NULL default '0',
  `Sort` int(11) NOT NULL default '0',
  `LegacyURL` varchar(255) character set utf8 default NULL,
  `HasBrokenFile` tinyint(1) unsigned NOT NULL default '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL default '0',
  `Status` varchar(50) character set utf8 default NULL,
  `ReportClass` varchar(50) character set utf8 default NULL,
  `Priority` float default NULL,
  `Viewers` enum('Anyone','LoggedInUsers','OnlyTheseUsers') character set utf8 default 'Anyone',
  `Editors` enum('LoggedInUsers','OnlyTheseUsers') character set utf8 default 'LoggedInUsers',
  `ViewersGroup` int(11) NOT NULL default '0',
  `EditorsGroup` int(11) NOT NULL default '0',
  `ToDo` mediumtext character set utf8,
  `ParentID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`),
  FULLTEXT KEY `SearchFields` (`Title`,`MenuTitle`,`Content`,`MetaTitle`,`MetaDescription`,`MetaKeywords`),
  FULLTEXT KEY `TitleSearchFields` (`Title`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SiteTree_Live`
--

LOCK TABLES `SiteTree_Live` WRITE;
/*!40000 ALTER TABLE `SiteTree_Live` DISABLE KEYS */;
INSERT INTO `SiteTree_Live` VALUES (1,'HomePage','2008-12-18 21:21:23','2008-12-19 06:03:28','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,1,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,11),(2,'Page','2008-12-18 21:21:23','2008-12-18 21:31:57','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,3),(3,'Page','2008-12-18 21:21:23','2008-12-18 21:32:00','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,8,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,3),(4,'ErrorPage','2008-12-18 21:21:24','2008-12-18 21:32:58','page-not-found','Page not found',NULL,'<p>It looks like the page you are looking for does not exists.</p>',NULL,NULL,NULL,NULL,0,1,NULL,0,9,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,7),(6,'Page','2008-12-18 21:54:00','2008-12-18 21:55:56','products','Products',NULL,'<p>This is the products Page</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,11),(7,'Page','2008-12-18 21:55:03','2008-12-18 21:55:33','services','Services',NULL,'<p>This is the services page</p>','Services',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,5),(9,'Page','2008-12-18 22:10:34','2008-12-18 22:12:17','downloads','Downloads',NULL,'<p>This is the downloads page</p>','Downloads',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,6),(10,'Page','2008-12-18 22:11:21','2008-12-18 22:12:12','support','Support',NULL,'<p>Support Page</p>','Support',NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,0,10),(11,'Page','2008-12-18 22:12:43','2008-12-18 22:13:10','information','Information',NULL,'<p>This is the information page</p>','Information',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,6),(12,'Page','2008-12-18 22:32:30','2008-12-18 22:53:48','products-policy-minder','Policy Minder',NULL,'<table border=\"0\"><tbody><tr valign=\"top\"><td style=\"width: 200px\">No content any more <br /></td><td><p>I have to update the content since the current minority reader and the published item int he past is not that well sowe</p><p>We can have several updates later on. </p></td></tr></tbody></table>','Policy Minder',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,6,11);
/*!40000 ALTER TABLE `SiteTree_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_versions`
--

DROP TABLE IF EXISTS `SiteTree_versions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SiteTree_versions` (
  `ID` int(11) NOT NULL auto_increment,
  `RecordID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `WasPublished` tinyint(1) unsigned NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `PublisherID` int(11) NOT NULL default '0',
  `ClassName` enum('SiteTree','Page','GhostPage','UserDefinedForm','HomePage','ErrorPage','RedirectorPage','VirtualPage','SubscribeForm') character set utf8 default 'SiteTree',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `URLSegment` varchar(255) character set utf8 default NULL,
  `Title` varchar(255) character set utf8 default NULL,
  `MenuTitle` varchar(100) character set utf8 default NULL,
  `Content` mediumtext character set utf8,
  `MetaTitle` varchar(255) character set utf8 default NULL,
  `MetaDescription` varchar(255) character set utf8 default NULL,
  `MetaKeywords` varchar(255) character set utf8 default NULL,
  `ExtraMeta` mediumtext character set utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL default '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL default '0',
  `HomepageForDomain` varchar(100) character set utf8 default NULL,
  `ProvideComments` tinyint(1) unsigned NOT NULL default '0',
  `Sort` int(11) NOT NULL default '0',
  `LegacyURL` varchar(255) character set utf8 default NULL,
  `HasBrokenFile` tinyint(1) unsigned NOT NULL default '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL default '0',
  `Status` varchar(50) character set utf8 default NULL,
  `ReportClass` varchar(50) character set utf8 default NULL,
  `Priority` float default NULL,
  `Viewers` enum('Anyone','LoggedInUsers','OnlyTheseUsers') character set utf8 default 'Anyone',
  `Editors` enum('LoggedInUsers','OnlyTheseUsers') character set utf8 default 'LoggedInUsers',
  `ViewersGroup` int(11) NOT NULL default '0',
  `EditorsGroup` int(11) NOT NULL default '0',
  `ToDo` mediumtext character set utf8,
  `ParentID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`),
  FULLTEXT KEY `SearchFields` (`Title`,`MenuTitle`,`Content`,`MetaTitle`,`MetaDescription`,`MetaKeywords`),
  FULLTEXT KEY `TitleSearchFields` (`Title`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SiteTree_versions`
--

LOCK TABLES `SiteTree_versions` WRITE;
/*!40000 ALTER TABLE `SiteTree_versions` DISABLE KEYS */;
INSERT INTO `SiteTree_versions` VALUES (1,1,1,1,0,0,'Page','2008-12-18 21:21:23','2008-12-18 21:21:23','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(2,2,1,1,0,0,'Page','2008-12-18 21:21:23','2008-12-18 21:21:23','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(3,3,1,1,0,0,'Page','2008-12-18 21:21:23','2008-12-18 21:21:23','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(4,4,1,1,0,0,'ErrorPage','2008-12-18 21:21:24','2008-12-18 21:21:24','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,NULL,0,1,NULL,0,0,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(5,4,2,0,0,0,'ErrorPage','2008-12-18 21:21:24','2008-12-18 21:21:26','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,NULL,0,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(6,4,3,0,0,0,'ErrorPage','2008-12-18 21:21:24','2008-12-18 21:21:49','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,NULL,0,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(7,4,4,0,0,0,'ErrorPage','2008-12-18 21:21:24','2008-12-18 21:24:52','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,NULL,0,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(8,4,5,0,0,0,'ErrorPage','2008-12-18 21:21:24','2008-12-18 21:25:05','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,NULL,0,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(9,4,6,0,1,0,'ErrorPage','2008-12-18 21:21:24','2008-12-18 21:31:24','page-not-found','Page not found',NULL,'<p>It looks like the page you are looking for does not exists.</p>',NULL,NULL,NULL,NULL,0,1,NULL,0,0,NULL,0,0,'Saved (new)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(10,4,7,1,1,1,'ErrorPage','2008-12-18 21:21:24','2008-12-18 21:31:24','page-not-found','Page not found',NULL,'<p>It looks like the page you are looking for does not exists.</p>',NULL,NULL,NULL,NULL,0,1,NULL,0,0,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(11,1,2,0,1,0,'Page','2008-12-18 21:21:23','2008-12-18 21:31:51','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,1,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(12,1,3,1,1,1,'Page','2008-12-18 21:21:23','2008-12-18 21:31:51','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,1,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(13,2,2,0,1,0,'Page','2008-12-18 21:21:23','2008-12-18 21:31:57','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(14,2,3,1,1,1,'Page','2008-12-18 21:21:23','2008-12-18 21:31:57','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(15,3,2,0,1,0,'Page','2008-12-18 21:21:23','2008-12-18 21:32:00','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(16,3,3,1,1,1,'Page','2008-12-18 21:21:23','2008-12-18 21:32:00','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(17,1,4,0,1,0,'Page','2008-12-18 21:21:23','2008-12-18 21:34:13','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken \">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,1,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(18,1,5,1,1,1,'Page','2008-12-18 21:21:23','2008-12-18 21:34:13','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken \">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,1,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(19,5,1,0,1,0,'Page','2008-12-18 21:53:15','2008-12-18 21:53:15','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,2),(20,5,2,0,1,0,'Page','2008-12-18 21:53:15','2008-12-18 21:53:31','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(21,5,3,0,1,0,'Page','2008-12-18 21:53:15','2008-12-18 21:53:31','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(22,6,1,0,1,0,'Page','2008-12-18 21:54:00','2008-12-18 21:54:00','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(23,6,2,0,1,0,'Page','2008-12-18 21:54:00','2008-12-18 21:54:23','products','Products',NULL,'<p>This is the products Page</p>','Products',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Saved (new)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(24,6,3,1,1,1,'Page','2008-12-18 21:54:00','2008-12-18 21:54:23','products','Products',NULL,'<p>This is the products Page</p>','Products',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(25,1,6,0,1,0,'Page','2008-12-18 21:21:23','2008-12-18 21:54:31','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken \">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,2,NULL,0,1,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(26,6,4,0,1,0,'Page','2008-12-18 21:54:00','2008-12-18 21:54:40','products','Products',NULL,'<p>This is the products Page</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(27,6,5,0,1,0,'Page','2008-12-18 21:54:00','2008-12-18 21:54:51','products','Products',NULL,'<p>This is the products Page</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(28,6,6,1,1,1,'Page','2008-12-18 21:54:00','2008-12-18 21:54:51','products','Products',NULL,'<p>This is the products Page</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(29,6,7,0,1,0,'Page','2008-12-18 21:54:00','2008-12-18 21:54:55','products','Products',NULL,'<p>This is the products Page</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(30,6,8,1,1,1,'Page','2008-12-18 21:54:00','2008-12-18 21:54:55','products','Products',NULL,'<p>This is the products Page</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(31,1,7,0,1,0,'Page','2008-12-18 21:21:23','2008-12-18 21:54:59','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken \">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,1,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(32,1,8,1,1,1,'Page','2008-12-18 21:21:23','2008-12-18 21:54:59','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken \">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,1,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(33,7,1,0,1,0,'Page','2008-12-18 21:55:03','2008-12-18 21:55:03','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,1),(34,7,2,0,1,0,'Page','2008-12-18 21:55:03','2008-12-18 21:55:19','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(35,7,3,0,1,0,'Page','2008-12-18 21:55:03','2008-12-18 21:55:20','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(36,7,4,0,1,0,'Page','2008-12-18 21:55:03','2008-12-18 21:55:33','services','Services',NULL,'<p>This is the services page</p>','Services',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(37,7,5,1,1,1,'Page','2008-12-18 21:55:03','2008-12-18 21:55:33','services','Services',NULL,'<p>This is the services page</p>','Services',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(38,6,9,0,1,0,'Page','2008-12-18 21:54:00','2008-12-18 21:55:49','products','Products',NULL,'<p>This is the products Page</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(39,6,10,0,1,0,'Page','2008-12-18 21:54:00','2008-12-18 21:55:56','products','Products',NULL,'<p>This is the products Page</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(40,6,11,1,1,1,'Page','2008-12-18 21:54:00','2008-12-18 21:55:56','products','Products',NULL,'<p>This is the products Page</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(41,8,1,0,1,0,'Page','2008-12-18 22:10:00','2008-12-18 22:10:00','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(42,8,2,0,1,0,'Page','2008-12-18 22:10:00','2008-12-18 22:10:11','services-2','Services',NULL,'<p>This is the services page</p>','Services',NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Saved (new)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(43,8,3,1,1,1,'Page','2008-12-18 22:10:00','2008-12-18 22:10:11','services-2','Services',NULL,'<p>This is the services page</p>','Services',NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(44,9,1,0,1,0,'Page','2008-12-18 22:10:34','2008-12-18 22:10:34','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(45,9,2,0,1,0,'Page','2008-12-18 22:10:34','2008-12-18 22:11:11','downloads','Downloads',NULL,'<p>This is the downloads page</p>','Downloads',NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Saved (new)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(46,9,3,1,1,1,'Page','2008-12-18 22:10:34','2008-12-18 22:11:11','downloads','Downloads',NULL,'<p>This is the downloads page</p>','Downloads',NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(47,10,1,0,1,0,'Page','2008-12-18 22:11:21','2008-12-18 22:11:21','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,9),(48,10,2,0,1,0,'Page','2008-12-18 22:11:21','2008-12-18 22:11:43','support','Support',NULL,'<p>Support Page</p>','Support',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9),(49,10,3,1,1,1,'Page','2008-12-18 22:11:21','2008-12-18 22:11:43','support','Support',NULL,'<p>Support Page</p>','Support',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9),(50,10,4,0,1,0,'Page','2008-12-18 22:11:21','2008-12-18 22:11:53','support','Support',NULL,'<p>Support Page</p>','Support',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,0),(51,10,5,0,1,0,'Page','2008-12-18 22:11:21','2008-12-18 22:11:53','support','Support',NULL,'<p>Support Page</p>','Support',NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,0),(52,9,4,0,1,0,'Page','2008-12-18 22:10:34','2008-12-18 22:11:58','downloads','Downloads',NULL,'<p>This is the downloads page</p>','Downloads',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(53,10,6,0,1,0,'Page','2008-12-18 22:11:21','2008-12-18 22:12:02','support','Support',NULL,'<p>Support Page</p>','Support',NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,0),(54,10,7,0,1,0,'Page','2008-12-18 22:11:21','2008-12-18 22:12:05','support','Support',NULL,'<p>Support Page</p>','Support',NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,0),(55,10,8,1,1,1,'Page','2008-12-18 22:11:21','2008-12-18 22:12:05','support','Support',NULL,'<p>Support Page</p>','Support',NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,0),(56,10,9,0,1,0,'Page','2008-12-18 22:11:21','2008-12-18 22:12:12','support','Support',NULL,'<p>Support Page</p>','Support',NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,0),(57,10,10,1,1,1,'Page','2008-12-18 22:11:21','2008-12-18 22:12:12','support','Support',NULL,'<p>Support Page</p>','Support',NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,0),(58,9,5,0,1,0,'Page','2008-12-18 22:10:34','2008-12-18 22:12:17','downloads','Downloads',NULL,'<p>This is the downloads page</p>','Downloads',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(59,9,6,1,1,1,'Page','2008-12-18 22:10:34','2008-12-18 22:12:17','downloads','Downloads',NULL,'<p>This is the downloads page</p>','Downloads',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(60,11,1,0,1,0,'Page','2008-12-18 22:12:43','2008-12-18 22:12:43','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,9,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(61,11,2,0,1,0,'Page','2008-12-18 22:12:43','2008-12-18 22:12:58','information','Information',NULL,'<p>This is the information page</p>','Information',NULL,NULL,NULL,1,1,NULL,0,9,NULL,0,0,'Saved (new)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(62,11,3,1,1,1,'Page','2008-12-18 22:12:43','2008-12-18 22:12:58','information','Information',NULL,'<p>This is the information page</p>','Information',NULL,NULL,NULL,1,1,NULL,0,9,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(63,11,4,0,1,0,'Page','2008-12-18 22:12:43','2008-12-18 22:13:06','information','Information',NULL,'<p>This is the information page</p>','Information',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(64,11,5,0,1,0,'Page','2008-12-18 22:12:43','2008-12-18 22:13:10','information','Information',NULL,'<p>This is the information page</p>','Information',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(65,11,6,1,1,1,'Page','2008-12-18 22:12:43','2008-12-18 22:13:10','information','Information',NULL,'<p>This is the information page</p>','Information',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(66,12,1,0,1,0,'Page','2008-12-18 22:32:30','2008-12-18 22:32:30','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,6),(67,12,2,0,1,0,'Page','2008-12-18 22:32:30','2008-12-18 22:32:45','policy-minder','Policy Minder',NULL,'<p>This is the policy minder page</p>','Policy Minder',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,6),(68,12,3,1,1,1,'Page','2008-12-18 22:32:30','2008-12-18 22:32:45','policy-minder','Policy Minder',NULL,'<p>This is the policy minder page</p>','Policy Minder',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,6),(69,12,4,0,1,0,'Page','2008-12-18 22:32:30','2008-12-18 22:33:35','products-policy-minder','Policy Minder',NULL,'<p>This is the policy minder page</p>','Policy Minder',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,6),(70,12,5,1,1,1,'Page','2008-12-18 22:32:30','2008-12-18 22:33:35','products-policy-minder','Policy Minder',NULL,'<p>This is the policy minder page</p>','Policy Minder',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,6),(71,12,6,0,1,0,'Page','2008-12-18 22:32:30','2008-12-18 22:33:37','products-policy-minder','Policy Minder',NULL,'<p>This is the policy minder page</p>','Policy Minder',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,6),(72,12,7,1,1,1,'Page','2008-12-18 22:32:30','2008-12-18 22:33:37','products-policy-minder','Policy Minder',NULL,'<p>This is the policy minder page</p>','Policy Minder',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,6),(73,12,8,0,1,0,'Page','2008-12-18 22:32:30','2008-12-18 22:50:13','products-policy-minder','Policy Minder',NULL,'<table border=\"0\"><tbody><tr valign=\"top\"><td><img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage120340-right.gif\" hspace=\"null\" vspace=\"null\" width=\"120\" height=\"340\" align=\"null\"    alt=\"\" /> <br /></td><td><p>I have to update the content since the current minority reader and the published item int he past is not that well sowe</p><p>We can have several updates later on. </p></td></tr></tbody></table>','Policy Minder',NULL,NULL,NULL,1,1,NULL,0,1,NULL,1,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,6),(74,12,9,1,1,1,'Page','2008-12-18 22:32:30','2008-12-18 22:50:13','products-policy-minder','Policy Minder',NULL,'<table border=\"0\"><tbody><tr valign=\"top\"><td><img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage120340-right.gif\" hspace=\"null\" vspace=\"null\" width=\"120\" height=\"340\" align=\"null\"    alt=\"\" /> <br /></td><td><p>I have to update the content since the current minority reader and the published item int he past is not that well sowe</p><p>We can have several updates later on. </p></td></tr></tbody></table>','Policy Minder',NULL,NULL,NULL,1,1,NULL,0,1,NULL,1,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,6),(75,12,10,0,1,0,'Page','2008-12-18 22:32:30','2008-12-18 22:53:48','products-policy-minder','Policy Minder',NULL,'<table border=\"0\"><tbody><tr valign=\"top\"><td style=\"width: 200px\">No content any more <br /></td><td><p>I have to update the content since the current minority reader and the published item int he past is not that well sowe</p><p>We can have several updates later on. </p></td></tr></tbody></table>','Policy Minder',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,6),(76,12,11,1,1,1,'Page','2008-12-18 22:32:30','2008-12-18 22:53:48','products-policy-minder','Policy Minder',NULL,'<table border=\"0\"><tbody><tr valign=\"top\"><td style=\"width: 200px\">No content any more <br /></td><td><p>I have to update the content since the current minority reader and the published item int he past is not that well sowe</p><p>We can have several updates later on. </p></td></tr></tbody></table>','Policy Minder',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,6),(77,1,9,1,1,1,'HomePage','2008-12-18 21:21:23','2008-12-19 06:03:13','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,1,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(78,1,10,0,1,0,'HomePage','2008-12-18 21:21:23','2008-12-19 06:03:28','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,1,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(79,1,11,1,1,1,'HomePage','2008-12-18 21:21:23','2008-12-19 06:03:28','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,1,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0);
/*!40000 ALTER TABLE `SiteTree_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubmittedFileField`
--

DROP TABLE IF EXISTS `SubmittedFileField`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SubmittedFileField` (
  `ID` int(11) NOT NULL auto_increment,
  `UploadedFileID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `UploadedFileID` (`UploadedFileID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SubmittedFileField`
--

LOCK TABLES `SubmittedFileField` WRITE;
/*!40000 ALTER TABLE `SubmittedFileField` DISABLE KEYS */;
/*!40000 ALTER TABLE `SubmittedFileField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubmittedForm`
--

DROP TABLE IF EXISTS `SubmittedForm`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SubmittedForm` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('SubmittedForm') character set utf8 default 'SubmittedForm',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Recipient` varchar(50) character set utf8 default NULL,
  `SubmittedByID` int(11) NOT NULL default '0',
  `ParentID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `SubmittedByID` (`SubmittedByID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SubmittedForm`
--

LOCK TABLES `SubmittedForm` WRITE;
/*!40000 ALTER TABLE `SubmittedForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `SubmittedForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubmittedFormField`
--

DROP TABLE IF EXISTS `SubmittedFormField`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SubmittedFormField` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('SubmittedFormField','SubmittedFileField') character set utf8 default 'SubmittedFormField',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `Name` varchar(50) character set utf8 default NULL,
  `Value` mediumtext character set utf8,
  `Title` varchar(50) character set utf8 default NULL,
  `ParentID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SubmittedFormField`
--

LOCK TABLES `SubmittedFormField` WRITE;
/*!40000 ALTER TABLE `SubmittedFormField` DISABLE KEYS */;
/*!40000 ALTER TABLE `SubmittedFormField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubscribeForm`
--

DROP TABLE IF EXISTS `SubscribeForm`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SubscribeForm` (
  `ID` int(11) NOT NULL auto_increment,
  `Subscribe` tinyint(1) unsigned NOT NULL default '0',
  `AllNewsletters` tinyint(1) unsigned NOT NULL default '0',
  `Subject` varchar(50) character set utf8 default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SubscribeForm`
--

LOCK TABLES `SubscribeForm` WRITE;
/*!40000 ALTER TABLE `SubscribeForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `SubscribeForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubscribeForm_Live`
--

DROP TABLE IF EXISTS `SubscribeForm_Live`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SubscribeForm_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `Subscribe` tinyint(1) unsigned NOT NULL default '0',
  `AllNewsletters` tinyint(1) unsigned NOT NULL default '0',
  `Subject` varchar(50) character set utf8 default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SubscribeForm_Live`
--

LOCK TABLES `SubscribeForm_Live` WRITE;
/*!40000 ALTER TABLE `SubscribeForm_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `SubscribeForm_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubscribeForm_versions`
--

DROP TABLE IF EXISTS `SubscribeForm_versions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `SubscribeForm_versions` (
  `ID` int(11) NOT NULL auto_increment,
  `RecordID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `WasPublished` tinyint(1) unsigned NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `PublisherID` int(11) NOT NULL default '0',
  `Subscribe` tinyint(1) unsigned NOT NULL default '0',
  `AllNewsletters` tinyint(1) unsigned NOT NULL default '0',
  `Subject` varchar(50) character set utf8 default NULL,
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SubscribeForm_versions`
--

LOCK TABLES `SubscribeForm_versions` WRITE;
/*!40000 ALTER TABLE `SubscribeForm_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `SubscribeForm_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserDefinedForm`
--

DROP TABLE IF EXISTS `UserDefinedForm`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `UserDefinedForm` (
  `ID` int(11) NOT NULL auto_increment,
  `EmailTo` varchar(50) character set utf8 default NULL,
  `EmailOnSubmit` tinyint(1) unsigned NOT NULL default '0',
  `SubmitButtonText` varchar(50) character set utf8 default NULL,
  `OnCompleteMessage` mediumtext character set utf8,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `UserDefinedForm`
--

LOCK TABLES `UserDefinedForm` WRITE;
/*!40000 ALTER TABLE `UserDefinedForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserDefinedForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserDefinedForm_Live`
--

DROP TABLE IF EXISTS `UserDefinedForm_Live`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `UserDefinedForm_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `EmailTo` varchar(50) character set utf8 default NULL,
  `EmailOnSubmit` tinyint(1) unsigned NOT NULL default '0',
  `SubmitButtonText` varchar(50) character set utf8 default NULL,
  `OnCompleteMessage` mediumtext character set utf8,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `UserDefinedForm_Live`
--

LOCK TABLES `UserDefinedForm_Live` WRITE;
/*!40000 ALTER TABLE `UserDefinedForm_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserDefinedForm_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserDefinedForm_versions`
--

DROP TABLE IF EXISTS `UserDefinedForm_versions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `UserDefinedForm_versions` (
  `ID` int(11) NOT NULL auto_increment,
  `RecordID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `WasPublished` tinyint(1) unsigned NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `PublisherID` int(11) NOT NULL default '0',
  `EmailTo` varchar(50) character set utf8 default NULL,
  `EmailOnSubmit` tinyint(1) unsigned NOT NULL default '0',
  `SubmitButtonText` varchar(50) character set utf8 default NULL,
  `OnCompleteMessage` mediumtext character set utf8,
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `UserDefinedForm_versions`
--

LOCK TABLES `UserDefinedForm_versions` WRITE;
/*!40000 ALTER TABLE `UserDefinedForm_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserDefinedForm_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VirtualPage`
--

DROP TABLE IF EXISTS `VirtualPage`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `VirtualPage` (
  `ID` int(11) NOT NULL auto_increment,
  `VersionID` int(11) NOT NULL default '0',
  `CopyContentFromID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `VirtualPage`
--

LOCK TABLES `VirtualPage` WRITE;
/*!40000 ALTER TABLE `VirtualPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `VirtualPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VirtualPage_Live`
--

DROP TABLE IF EXISTS `VirtualPage_Live`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `VirtualPage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `VersionID` int(11) NOT NULL default '0',
  `CopyContentFromID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `VirtualPage_Live`
--

LOCK TABLES `VirtualPage_Live` WRITE;
/*!40000 ALTER TABLE `VirtualPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `VirtualPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VirtualPage_versions`
--

DROP TABLE IF EXISTS `VirtualPage_versions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `VirtualPage_versions` (
  `ID` int(11) NOT NULL auto_increment,
  `RecordID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `WasPublished` tinyint(1) unsigned NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `PublisherID` int(11) NOT NULL default '0',
  `VersionID` int(11) NOT NULL default '0',
  `CopyContentFromID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `VirtualPage_versions`
--

LOCK TABLES `VirtualPage_versions` WRITE;
/*!40000 ALTER TABLE `VirtualPage_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `VirtualPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Widget`
--

DROP TABLE IF EXISTS `Widget`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Widget` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('Widget') character set utf8 default 'Widget',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  `ParentID` int(11) NOT NULL default '0',
  `Sort` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Widget`
--

LOCK TABLES `Widget` WRITE;
/*!40000 ALTER TABLE `Widget` DISABLE KEYS */;
/*!40000 ALTER TABLE `Widget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WidgetArea`
--

DROP TABLE IF EXISTS `WidgetArea`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `WidgetArea` (
  `ID` int(11) NOT NULL auto_increment,
  `ClassName` enum('WidgetArea') character set utf8 default 'WidgetArea',
  `Created` datetime default NULL,
  `LastEdited` datetime default NULL,
  PRIMARY KEY  (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `WidgetArea`
--

LOCK TABLES `WidgetArea` WRITE;
/*!40000 ALTER TABLE `WidgetArea` DISABLE KEYS */;
/*!40000 ALTER TABLE `WidgetArea` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2008-12-18 22:17:45

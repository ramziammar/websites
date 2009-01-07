-- MySQL dump 10.11
--
-- Host: localhost    Database: belmarkhomes
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ErrorPage_versions`
--

LOCK TABLES `ErrorPage_versions` WRITE;
/*!40000 ALTER TABLE `ErrorPage_versions` DISABLE KEYS */;
INSERT INTO `ErrorPage_versions` VALUES (1,4,1,0,0,0,404),(2,4,2,0,0,0,404);
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `File`
--

LOCK TABLES `File` WRITE;
/*!40000 ALTER TABLE `File` DISABLE KEYS */;
INSERT INTO `File` VALUES (1,'Folder','2009-01-07 12:41:03','2009-01-07 12:41:03','Uploads','Uploads','assets/Uploads/',NULL,0,0,0),(2,'Image','2009-01-07 12:41:03','2009-01-07 12:41:03','SilverStripeLogo.png','SilverStripeLogo.png','assets/Uploads/SilverStripeLogo.png',NULL,0,1,0);
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
INSERT INTO `Group` VALUES (1,'Group','2009-01-07 12:41:02','2009-01-07 12:41:02','Administrators',NULL,'administrators',0,0,0,0,0);
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Group_Members`
--

LOCK TABLES `Group_Members` WRITE;
/*!40000 ALTER TABLE `Group_Members` DISABLE KEYS */;
INSERT INTO `Group_Members` VALUES (3,1,1);
/*!40000 ALTER TABLE `Group_Members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HomePage`
--

DROP TABLE IF EXISTS `HomePage`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `HomePage` (
  `ID` int(11) NOT NULL auto_increment,
  `FlashCode` mediumtext character set utf8,
  `FlashUrl` varchar(255) character set utf8 default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `HomePage`
--

LOCK TABLES `HomePage` WRITE;
/*!40000 ALTER TABLE `HomePage` DISABLE KEYS */;
INSERT INTO `HomePage` VALUES (1,'			<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0\" width=\"975\" height=\"316\" id=\"home-slideshow\" align=\"middle\">\n				<param name=\"allowFullScreen\" value=\"false\" />\n				<param name=\"movie\" value=\"http://www.issaquahhighlands.com/home-slideshow.swf\" />\n				<param name=\"quality\" value=\"high\" />\n				<param name=\"bgcolor\" value=\"#ffffff\" />\n				<param name=\"wmode\" value=\"transparent\">	\n				<embed src=\"http://www.issaquahhighlands.com/home-slideshow.swf\" quality=\"high\" bgcolor=\"#ffffff\" wmode=\"transparent\" width=\"975\" height=\"316\" name=\"home-slideshow\" align=\"middle\" allowFullScreen=\"false\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" />\n			</object>','http://www.issaquahhighlands.com/home-slideshow.swf');
/*!40000 ALTER TABLE `HomePage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HomePage_Live`
--

DROP TABLE IF EXISTS `HomePage_Live`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `HomePage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `FlashCode` mediumtext character set utf8,
  `FlashUrl` varchar(255) character set utf8 default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `HomePage_Live`
--

LOCK TABLES `HomePage_Live` WRITE;
/*!40000 ALTER TABLE `HomePage_Live` DISABLE KEYS */;
INSERT INTO `HomePage_Live` VALUES (1,'			<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0\" width=\"975\" height=\"316\" id=\"home-slideshow\" align=\"middle\">\n				<param name=\"allowFullScreen\" value=\"false\" />\n				<param name=\"movie\" value=\"http://www.issaquahhighlands.com/home-slideshow.swf\" />\n				<param name=\"quality\" value=\"high\" />\n				<param name=\"bgcolor\" value=\"#ffffff\" />\n				<param name=\"wmode\" value=\"transparent\">	\n				<embed src=\"http://www.issaquahhighlands.com/home-slideshow.swf\" quality=\"high\" bgcolor=\"#ffffff\" wmode=\"transparent\" width=\"975\" height=\"316\" name=\"home-slideshow\" align=\"middle\" allowFullScreen=\"false\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" />\n			</object>','http://www.issaquahhighlands.com/home-slideshow.swf');
/*!40000 ALTER TABLE `HomePage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HomePage_versions`
--

DROP TABLE IF EXISTS `HomePage_versions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `HomePage_versions` (
  `ID` int(11) NOT NULL auto_increment,
  `RecordID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `WasPublished` tinyint(1) unsigned NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `PublisherID` int(11) NOT NULL default '0',
  `FlashCode` mediumtext character set utf8,
  `FlashUrl` varchar(255) character set utf8 default NULL,
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `HomePage_versions`
--

LOCK TABLES `HomePage_versions` WRITE;
/*!40000 ALTER TABLE `HomePage_versions` DISABLE KEYS */;
INSERT INTO `HomePage_versions` VALUES (1,1,1,0,1,0,'			<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0\" width=\"975\" height=\"316\" id=\"home-slideshow\" align=\"middle\">\n				<param name=\"allowFullScreen\" value=\"false\" />\n				<param name=\"movie\" value=\"http://www.issaquahhighlands.com/home-slideshow.swf\" />\n				<param name=\"quality\" value=\"high\" />\n				<param name=\"bgcolor\" value=\"#ffffff\" />\n				<param name=\"wmode\" value=\"transparent\">	\n				<embed src=\"http://www.issaquahhighlands.com/home-slideshow.swf\" quality=\"high\" bgcolor=\"#ffffff\" wmode=\"transparent\" width=\"975\" height=\"316\" name=\"home-slideshow\" align=\"middle\" allowFullScreen=\"false\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" />\n			</object>',NULL),(2,1,2,0,1,0,'			<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0\" width=\"975\" height=\"316\" id=\"home-slideshow\" align=\"middle\">\n				<param name=\"allowFullScreen\" value=\"false\" />\n				<param name=\"movie\" value=\"http://www.issaquahhighlands.com/home-slideshow.swf\" />\n				<param name=\"quality\" value=\"high\" />\n				<param name=\"bgcolor\" value=\"#ffffff\" />\n				<param name=\"wmode\" value=\"transparent\">	\n				<embed src=\"http://www.issaquahhighlands.com/home-slideshow.swf\" quality=\"high\" bgcolor=\"#ffffff\" wmode=\"transparent\" width=\"975\" height=\"316\" name=\"home-slideshow\" align=\"middle\" allowFullScreen=\"false\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" />\n			</object>',NULL),(3,1,3,0,1,0,'			<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0\" width=\"975\" height=\"316\" id=\"home-slideshow\" align=\"middle\">\n				<param name=\"allowFullScreen\" value=\"false\" />\n				<param name=\"movie\" value=\"http://www.issaquahhighlands.com/home-slideshow.swf\" />\n				<param name=\"quality\" value=\"high\" />\n				<param name=\"bgcolor\" value=\"#ffffff\" />\n				<param name=\"wmode\" value=\"transparent\">	\n				<embed src=\"http://www.issaquahhighlands.com/home-slideshow.swf\" quality=\"high\" bgcolor=\"#ffffff\" wmode=\"transparent\" width=\"975\" height=\"316\" name=\"home-slideshow\" align=\"middle\" allowFullScreen=\"false\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" />\n			</object>',NULL),(4,1,4,0,1,0,'			<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0\" width=\"975\" height=\"316\" id=\"home-slideshow\" align=\"middle\">\n				<param name=\"allowFullScreen\" value=\"false\" />\n				<param name=\"movie\" value=\"http://www.issaquahhighlands.com/home-slideshow.swf\" />\n				<param name=\"quality\" value=\"high\" />\n				<param name=\"bgcolor\" value=\"#ffffff\" />\n				<param name=\"wmode\" value=\"transparent\">	\n				<embed src=\"http://www.issaquahhighlands.com/home-slideshow.swf\" quality=\"high\" bgcolor=\"#ffffff\" wmode=\"transparent\" width=\"975\" height=\"316\" name=\"home-slideshow\" align=\"middle\" allowFullScreen=\"false\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" />\n			</object>',NULL),(5,1,5,0,1,0,'			<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0\" width=\"975\" height=\"316\" id=\"home-slideshow\" align=\"middle\">\n				<param name=\"allowFullScreen\" value=\"false\" />\n				<param name=\"movie\" value=\"http://www.issaquahhighlands.com/home-slideshow.swf\" />\n				<param name=\"quality\" value=\"high\" />\n				<param name=\"bgcolor\" value=\"#ffffff\" />\n				<param name=\"wmode\" value=\"transparent\">	\n				<embed src=\"http://www.issaquahhighlands.com/home-slideshow.swf\" quality=\"high\" bgcolor=\"#ffffff\" wmode=\"transparent\" width=\"975\" height=\"316\" name=\"home-slideshow\" align=\"middle\" allowFullScreen=\"false\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" />\n			</object>','http://www.issaquahhighlands.com/home-slideshow.sw'),(6,1,6,0,1,0,'			<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0\" width=\"975\" height=\"316\" id=\"home-slideshow\" align=\"middle\">\n				<param name=\"allowFullScreen\" value=\"false\" />\n				<param name=\"movie\" value=\"http://www.issaquahhighlands.com/home-slideshow.swf\" />\n				<param name=\"quality\" value=\"high\" />\n				<param name=\"bgcolor\" value=\"#ffffff\" />\n				<param name=\"wmode\" value=\"transparent\">	\n				<embed src=\"http://www.issaquahhighlands.com/home-slideshow.swf\" quality=\"high\" bgcolor=\"#ffffff\" wmode=\"transparent\" width=\"975\" height=\"316\" name=\"home-slideshow\" align=\"middle\" allowFullScreen=\"false\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" />\n			</object>','http://www.issaquahhighlands.com/home-slideshow.sw'),(7,1,7,0,1,0,'			<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0\" width=\"975\" height=\"316\" id=\"home-slideshow\" align=\"middle\">\n				<param name=\"allowFullScreen\" value=\"false\" />\n				<param name=\"movie\" value=\"http://www.issaquahhighlands.com/home-slideshow.swf\" />\n				<param name=\"quality\" value=\"high\" />\n				<param name=\"bgcolor\" value=\"#ffffff\" />\n				<param name=\"wmode\" value=\"transparent\">	\n				<embed src=\"http://www.issaquahhighlands.com/home-slideshow.swf\" quality=\"high\" bgcolor=\"#ffffff\" wmode=\"transparent\" width=\"975\" height=\"316\" name=\"home-slideshow\" align=\"middle\" allowFullScreen=\"false\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" />\n			</object>','http://www.issaquahhighlands.com/home-slideshow.swf'),(8,1,8,0,1,0,'			<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0\" width=\"975\" height=\"316\" id=\"home-slideshow\" align=\"middle\">\n				<param name=\"allowFullScreen\" value=\"false\" />\n				<param name=\"movie\" value=\"http://www.issaquahhighlands.com/home-slideshow.swf\" />\n				<param name=\"quality\" value=\"high\" />\n				<param name=\"bgcolor\" value=\"#ffffff\" />\n				<param name=\"wmode\" value=\"transparent\">	\n				<embed src=\"http://www.issaquahhighlands.com/home-slideshow.swf\" quality=\"high\" bgcolor=\"#ffffff\" wmode=\"transparent\" width=\"975\" height=\"316\" name=\"home-slideshow\" align=\"middle\" allowFullScreen=\"false\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" />\n			</object>','http://www.issaquahhighlands.com/home-slideshow.swf');
/*!40000 ALTER TABLE `HomePage_versions` ENABLE KEYS */;
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
INSERT INTO `Member` VALUES (1,'Member','2009-01-07 12:41:02','2009-01-08 03:30:13','Junrey','Beduya','jbeduya@gmail.com','tpzs8tojym80g08c4wk44wkscck08s8',NULL,3,'2009-01-08 03:30:14',0,NULL,NULL,0,'sha1','1o5uopdh15r4co00swcwskk4gc0c004og08w0s8','en_US',NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=176 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `PageView`
--

LOCK TABLES `PageView` WRITE;
/*!40000 ALTER TABLE `PageView` DISABLE KEYS */;
INSERT INTO `PageView` VALUES (1,'PageView','2009-01-07 12:41:06','2009-01-07 12:41:06','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/install.php',0,NULL,NULL,1,-1),(2,'PageView','2009-01-07 12:41:06','2009-01-07 12:41:06','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/install.php',0,NULL,NULL,1,-1),(3,'PageView','2009-01-07 12:41:12','2009-01-07 12:41:12','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/home/successfullyinstalled?flush=1',0,NULL,NULL,1,-1),(4,'PageView','2009-01-07 12:41:37','2009-01-07 12:41:37','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/home/deleteinstallfiles',0,NULL,NULL,0,-1),(5,'PageView','2009-01-07 12:42:11','2009-01-07 12:42:11','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(6,'PageView','2009-01-07 12:42:16','2009-01-07 12:42:16','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/',0,NULL,NULL,2,-1),(7,'PageView','2009-01-07 12:42:17','2009-01-07 12:42:17','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-us/',0,NULL,NULL,1,-1),(8,'PageView','2009-01-07 12:42:18','2009-01-07 12:42:18','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-us/',0,NULL,NULL,1,-1),(9,'PageView','2009-01-07 12:42:19','2009-01-07 12:42:19','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/',0,NULL,NULL,3,-1),(10,'PageView','2009-01-07 22:47:33','2009-01-07 22:47:33','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(11,'PageView','2009-01-07 22:47:40','2009-01-07 22:47:40','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(12,'PageView','2009-01-07 22:48:00','2009-01-07 22:48:00','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(13,'PageView','2009-01-07 22:48:02','2009-01-07 22:48:02','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/',0,NULL,NULL,2,-1),(14,'PageView','2009-01-07 22:48:04','2009-01-07 22:48:04','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-us/',0,NULL,NULL,1,-1),(15,'PageView','2009-01-07 22:48:05','2009-01-07 22:48:05','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-us/',0,NULL,NULL,1,-1),(16,'PageView','2009-01-07 22:48:25','2009-01-07 22:48:25','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-us/',0,NULL,NULL,1,-1),(17,'PageView','2009-01-07 22:48:30','2009-01-07 22:48:30','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(18,'PageView','2009-01-07 22:48:43','2009-01-07 22:48:43','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(19,'PageView','2009-01-07 22:48:55','2009-01-07 22:48:55','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(20,'PageView','2009-01-07 22:48:57','2009-01-07 22:48:57','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/',0,NULL,NULL,2,-1),(21,'PageView','2009-01-07 22:48:58','2009-01-07 22:48:58','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-us/',0,NULL,NULL,1,-1),(22,'PageView','2009-01-07 22:48:58','2009-01-07 22:48:58','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-us/',0,NULL,NULL,1,-1),(23,'PageView','2009-01-07 22:48:59','2009-01-07 22:48:59','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/',0,NULL,NULL,3,-1),(24,'PageView','2009-01-07 22:49:31','2009-01-07 22:49:31','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/',0,NULL,NULL,3,-1),(25,'PageView','2009-01-07 22:49:34','2009-01-07 22:49:34','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/contact-us/',0,NULL,NULL,1,-1),(26,'PageView','2009-01-07 22:49:34','2009-01-07 22:49:34','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/contact-us/',0,NULL,NULL,1,-1),(27,'PageView','2009-01-07 22:49:38','2009-01-07 22:49:38','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(28,'PageView','2009-01-07 22:49:42','2009-01-07 22:49:42','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(29,'PageView','2009-01-07 22:51:25','2009-01-07 22:51:25','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(30,'PageView','2009-01-07 22:53:14','2009-01-07 22:53:14','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(31,'PageView','2009-01-07 22:54:12','2009-01-07 22:54:12','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/?flush=1',0,NULL,NULL,2,-1),(32,'PageView','2009-01-07 22:54:13','2009-01-07 22:54:13','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-us/',0,NULL,NULL,1,-1),(33,'PageView','2009-01-07 22:54:13','2009-01-07 22:54:13','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-us/',0,NULL,NULL,1,-1),(34,'PageView','2009-01-07 22:54:15','2009-01-07 22:54:15','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/',0,NULL,NULL,0,-1),(35,'PageView','2009-01-07 22:54:19','2009-01-07 22:54:19','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/Security/login?BackURL=%2Fwebsites%2Fbelmarkhomes.com%2Fadmin%2F',0,NULL,NULL,1,-1),(36,'PageView','2009-01-07 22:54:19','2009-01-07 22:54:19','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/Security/login?BackURL=%2Fwebsites%2Fbelmarkhomes.com%2Fadmin%2F',0,NULL,NULL,1,-1),(37,'PageView','2009-01-07 22:55:06','2009-01-07 22:55:06','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/Security/login?BackURL=%2Fwebsites%2Fbelmarkhomes.com%2Fadmin%2F',0,NULL,NULL,1,-1),(38,'PageView','2009-01-07 22:55:10','2009-01-07 22:55:10','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(39,'PageView','2009-01-07 22:55:14','2009-01-07 22:55:14','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(40,'PageView','2009-01-07 22:55:20','2009-01-07 22:55:20','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(41,'PageView','2009-01-07 22:55:38','2009-01-07 22:55:38','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(42,'PageView','2009-01-07 22:56:26','2009-01-07 22:56:26','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(43,'PageView','2009-01-07 22:56:29','2009-01-07 22:56:29','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(44,'PageView','2009-01-08 00:50:06','2009-01-08 00:50:06','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(45,'PageView','2009-01-08 00:55:40','2009-01-08 00:55:40','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(46,'PageView','2009-01-08 00:57:10','2009-01-08 00:57:10','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(47,'PageView','2009-01-08 00:57:12','2009-01-08 00:57:12','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(48,'PageView','2009-01-08 00:57:28','2009-01-08 00:57:28','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(49,'PageView','2009-01-08 00:57:35','2009-01-08 00:57:35','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(50,'PageView','2009-01-08 00:57:59','2009-01-08 00:57:59','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(51,'PageView','2009-01-08 00:58:04','2009-01-08 00:58:04','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(52,'PageView','2009-01-08 00:59:01','2009-01-08 00:59:01','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(53,'PageView','2009-01-08 00:59:15','2009-01-08 00:59:15','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(54,'PageView','2009-01-08 00:59:18','2009-01-08 00:59:18','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(55,'PageView','2009-01-08 01:00:02','2009-01-08 01:00:02','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(56,'PageView','2009-01-08 01:02:10','2009-01-08 01:02:10','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(57,'PageView','2009-01-08 01:04:33','2009-01-08 01:04:33','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(58,'PageView','2009-01-08 01:04:45','2009-01-08 01:04:45','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(59,'PageView','2009-01-08 01:05:51','2009-01-08 01:05:51','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(60,'PageView','2009-01-08 01:06:13','2009-01-08 01:06:13','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(61,'PageView','2009-01-08 01:06:20','2009-01-08 01:06:20','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(62,'PageView','2009-01-08 01:06:32','2009-01-08 01:06:32','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(63,'PageView','2009-01-08 01:06:44','2009-01-08 01:06:44','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(64,'PageView','2009-01-08 01:06:46','2009-01-08 01:06:46','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(65,'PageView','2009-01-08 01:07:55','2009-01-08 01:07:55','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(66,'PageView','2009-01-08 01:08:29','2009-01-08 01:08:29','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(67,'PageView','2009-01-08 01:09:36','2009-01-08 01:09:36','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(68,'PageView','2009-01-08 01:10:34','2009-01-08 01:10:34','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(69,'PageView','2009-01-08 01:10:56','2009-01-08 01:10:56','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(70,'PageView','2009-01-08 01:12:29','2009-01-08 01:12:29','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(71,'PageView','2009-01-08 01:13:38','2009-01-08 01:13:38','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(72,'PageView','2009-01-08 01:15:28','2009-01-08 01:15:28','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(73,'PageView','2009-01-08 01:16:12','2009-01-08 01:16:12','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(74,'PageView','2009-01-08 01:16:54','2009-01-08 01:16:54','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(75,'PageView','2009-01-08 01:16:59','2009-01-08 01:16:59','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(76,'PageView','2009-01-08 01:17:06','2009-01-08 01:17:06','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(77,'PageView','2009-01-08 01:17:25','2009-01-08 01:17:25','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(78,'PageView','2009-01-08 01:17:30','2009-01-08 01:17:30','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(79,'PageView','2009-01-08 01:17:39','2009-01-08 01:17:39','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(80,'PageView','2009-01-08 01:17:47','2009-01-08 01:17:47','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(81,'PageView','2009-01-08 01:18:22','2009-01-08 01:18:22','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(82,'PageView','2009-01-08 01:18:25','2009-01-08 01:18:25','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(83,'PageView','2009-01-08 01:18:34','2009-01-08 01:18:34','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(84,'PageView','2009-01-08 01:18:59','2009-01-08 01:18:59','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(85,'PageView','2009-01-08 01:19:08','2009-01-08 01:19:08','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(86,'PageView','2009-01-08 01:19:12','2009-01-08 01:19:12','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(87,'PageView','2009-01-08 01:19:55','2009-01-08 01:19:55','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(88,'PageView','2009-01-08 01:20:21','2009-01-08 01:20:21','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(89,'PageView','2009-01-08 01:20:45','2009-01-08 01:20:45','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(90,'PageView','2009-01-08 01:21:05','2009-01-08 01:21:05','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(91,'PageView','2009-01-08 01:23:02','2009-01-08 01:23:02','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(92,'PageView','2009-01-08 01:23:05','2009-01-08 01:23:05','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(93,'PageView','2009-01-08 01:23:24','2009-01-08 01:23:24','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(94,'PageView','2009-01-08 01:23:41','2009-01-08 01:23:41','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(95,'PageView','2009-01-08 01:23:42','2009-01-08 01:23:42','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(96,'PageView','2009-01-08 01:23:56','2009-01-08 01:23:56','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(97,'PageView','2009-01-08 01:24:04','2009-01-08 01:24:04','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(98,'PageView','2009-01-08 01:24:07','2009-01-08 01:24:07','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(99,'PageView','2009-01-08 01:24:24','2009-01-08 01:24:24','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(100,'PageView','2009-01-08 01:24:30','2009-01-08 01:24:30','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(101,'PageView','2009-01-08 01:24:32','2009-01-08 01:24:32','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(102,'PageView','2009-01-08 01:24:39','2009-01-08 01:24:39','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(103,'PageView','2009-01-08 01:25:02','2009-01-08 01:25:02','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(104,'PageView','2009-01-08 01:25:13','2009-01-08 01:25:13','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(105,'PageView','2009-01-08 01:25:34','2009-01-08 01:25:34','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(106,'PageView','2009-01-08 01:26:26','2009-01-08 01:26:26','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(107,'PageView','2009-01-08 01:26:29','2009-01-08 01:26:29','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(108,'PageView','2009-01-08 01:26:42','2009-01-08 01:26:42','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(109,'PageView','2009-01-08 01:27:18','2009-01-08 01:27:18','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(110,'PageView','2009-01-08 01:27:57','2009-01-08 01:27:57','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(111,'PageView','2009-01-08 01:29:10','2009-01-08 01:29:10','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(112,'PageView','2009-01-08 01:29:55','2009-01-08 01:29:55','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(113,'PageView','2009-01-08 01:30:39','2009-01-08 01:30:39','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(114,'PageView','2009-01-08 01:30:55','2009-01-08 01:30:55','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(115,'PageView','2009-01-08 01:32:22','2009-01-08 01:32:22','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(116,'PageView','2009-01-08 01:32:25','2009-01-08 01:32:25','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(117,'PageView','2009-01-08 01:32:33','2009-01-08 01:32:33','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(118,'PageView','2009-01-08 01:32:36','2009-01-08 01:32:36','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(119,'PageView','2009-01-08 01:33:13','2009-01-08 01:33:13','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(120,'PageView','2009-01-08 01:33:29','2009-01-08 01:33:29','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(121,'PageView','2009-01-08 01:37:26','2009-01-08 01:37:26','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(122,'PageView','2009-01-08 01:37:54','2009-01-08 01:37:54','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(123,'PageView','2009-01-08 01:37:59','2009-01-08 01:37:59','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(124,'PageView','2009-01-08 01:39:23','2009-01-08 01:39:23','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(125,'PageView','2009-01-08 01:39:41','2009-01-08 01:39:41','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(126,'PageView','2009-01-08 01:41:04','2009-01-08 01:41:04','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(127,'PageView','2009-01-08 01:41:07','2009-01-08 01:41:07','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(128,'PageView','2009-01-08 01:41:21','2009-01-08 01:41:21','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(129,'PageView','2009-01-08 01:41:24','2009-01-08 01:41:24','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(130,'PageView','2009-01-08 01:41:48','2009-01-08 01:41:48','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(131,'PageView','2009-01-08 01:41:53','2009-01-08 01:41:53','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(132,'PageView','2009-01-08 01:41:55','2009-01-08 01:41:55','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(133,'PageView','2009-01-08 01:42:07','2009-01-08 01:42:07','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(134,'PageView','2009-01-08 01:44:06','2009-01-08 01:44:06','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(135,'PageView','2009-01-08 01:44:10','2009-01-08 01:44:10','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(136,'PageView','2009-01-08 01:45:18','2009-01-08 01:45:18','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(137,'PageView','2009-01-08 01:45:28','2009-01-08 01:45:28','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(138,'PageView','2009-01-08 01:45:30','2009-01-08 01:45:30','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(139,'PageView','2009-01-08 01:46:05','2009-01-08 01:46:05','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(140,'PageView','2009-01-08 01:46:11','2009-01-08 01:46:11','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(141,'PageView','2009-01-08 01:47:47','2009-01-08 01:47:47','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(142,'PageView','2009-01-08 01:47:52','2009-01-08 01:47:52','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(143,'PageView','2009-01-08 01:48:37','2009-01-08 01:48:37','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(144,'PageView','2009-01-08 01:48:42','2009-01-08 01:48:42','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(145,'PageView','2009-01-08 01:48:47','2009-01-08 01:48:47','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(146,'PageView','2009-01-08 01:49:03','2009-01-08 01:49:03','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(147,'PageView','2009-01-08 01:49:14','2009-01-08 01:49:14','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(148,'PageView','2009-01-08 01:51:39','2009-01-08 01:51:39','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(149,'PageView','2009-01-08 01:56:02','2009-01-08 01:56:02','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(150,'PageView','2009-01-08 01:56:05','2009-01-08 01:56:05','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(151,'PageView','2009-01-08 01:56:15','2009-01-08 01:56:15','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(152,'PageView','2009-01-08 02:01:53','2009-01-08 02:01:53','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(153,'PageView','2009-01-08 02:05:42','2009-01-08 02:05:42','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(154,'PageView','2009-01-08 02:29:59','2009-01-08 02:29:59','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(155,'PageView','2009-01-08 02:42:43','2009-01-08 02:42:43','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(156,'PageView','2009-01-08 02:46:54','2009-01-08 02:46:54','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(157,'PageView','2009-01-08 02:47:04','2009-01-08 02:47:04','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(158,'PageView','2009-01-08 02:47:07','2009-01-08 02:47:07','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(159,'PageView','2009-01-08 02:48:04','2009-01-08 02:48:04','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(160,'PageView','2009-01-08 02:49:17','2009-01-08 02:49:17','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(161,'PageView','2009-01-08 02:49:22','2009-01-08 02:49:22','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(162,'PageView','2009-01-08 02:49:28','2009-01-08 02:49:28','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(163,'PageView','2009-01-08 02:49:33','2009-01-08 02:49:33','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(164,'PageView','2009-01-08 02:50:27','2009-01-08 02:50:27','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(165,'PageView','2009-01-08 02:50:34','2009-01-08 02:50:34','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(166,'PageView','2009-01-08 02:57:24','2009-01-08 02:57:24','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(167,'PageView','2009-01-08 03:01:36','2009-01-08 03:01:36','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(168,'PageView','2009-01-08 03:02:16','2009-01-08 03:02:16','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(169,'PageView','2009-01-08 03:02:17','2009-01-08 03:02:17','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/',0,NULL,NULL,1,1),(170,'PageView','2009-01-08 03:02:26','2009-01-08 03:02:26','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(171,'PageView','2009-01-08 03:02:56','2009-01-08 03:02:56','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(172,'PageView','2009-01-08 03:02:57','2009-01-08 03:02:57','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/',0,NULL,NULL,1,1),(173,'PageView','2009-01-08 03:03:10','2009-01-08 03:03:10','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(174,'PageView','2009-01-08 03:04:51','2009-01-08 03:04:51','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(175,'PageView','2009-01-08 03:07:54','2009-01-08 03:07:54','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1);
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
INSERT INTO `Permission` VALUES (1,'Permission','2009-01-07 12:41:02','2009-01-07 12:41:02','ADMIN',0,1,1);
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SiteTree`
--

LOCK TABLES `SiteTree` WRITE;
/*!40000 ALTER TABLE `SiteTree` DISABLE KEYS */;
INSERT INTO `SiteTree` VALUES (1,'HomePage','2009-01-07 12:41:02','2009-01-08 03:04:45','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,10),(2,'Page','2009-01-07 12:41:02','2009-01-07 12:41:02','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0,1),(3,'Page','2009-01-07 12:41:02','2009-01-07 12:41:02','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0,1),(4,'ErrorPage','2009-01-07 12:41:03','2009-01-07 12:41:03','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,NULL,0,1,NULL,0,0,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0,1);
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SiteTree_Live`
--

LOCK TABLES `SiteTree_Live` WRITE;
/*!40000 ALTER TABLE `SiteTree_Live` DISABLE KEYS */;
INSERT INTO `SiteTree_Live` VALUES (1,'HomePage','2009-01-07 12:41:02','2009-01-08 03:04:45','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,10),(2,'Page','2009-01-07 12:41:02','2009-01-07 12:41:02','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0,1),(3,'Page','2009-01-07 12:41:02','2009-01-07 12:41:02','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0,1),(4,'ErrorPage','2009-01-07 12:41:03','2009-01-07 12:41:07','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,NULL,0,1,NULL,0,0,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0,1);
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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SiteTree_versions`
--

LOCK TABLES `SiteTree_versions` WRITE;
/*!40000 ALTER TABLE `SiteTree_versions` DISABLE KEYS */;
INSERT INTO `SiteTree_versions` VALUES (1,1,1,1,0,0,'Page','2009-01-07 12:41:02','2009-01-07 12:41:02','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(2,2,1,1,0,0,'Page','2009-01-07 12:41:02','2009-01-07 12:41:02','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(3,3,1,1,0,0,'Page','2009-01-07 12:41:02','2009-01-07 12:41:02','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(4,4,1,1,0,0,'ErrorPage','2009-01-07 12:41:03','2009-01-07 12:41:03','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,NULL,0,1,NULL,0,0,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(5,4,2,0,0,0,'ErrorPage','2009-01-07 12:41:03','2009-01-07 12:41:06','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,NULL,0,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(6,1,2,1,1,1,'HomePage','2009-01-07 12:41:02','2009-01-08 00:58:24','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,1,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(7,1,3,0,1,0,'HomePage','2009-01-07 12:41:02','2009-01-08 02:56:38','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(8,1,4,1,1,1,'HomePage','2009-01-07 12:41:02','2009-01-08 02:56:38','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(9,1,5,0,1,0,'HomePage','2009-01-07 12:41:02','2009-01-08 03:01:22','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(10,1,6,1,1,1,'HomePage','2009-01-07 12:41:02','2009-01-08 03:01:22','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(11,1,7,0,1,0,'HomePage','2009-01-07 12:41:02','2009-01-08 03:03:06','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(12,1,8,1,1,1,'HomePage','2009-01-07 12:41:02','2009-01-08 03:03:06','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(13,1,9,0,1,0,'HomePage','2009-01-07 12:41:02','2009-01-08 03:04:45','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(14,1,10,1,1,1,'HomePage','2009-01-07 12:41:02','2009-01-08 03:04:45','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0);
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

-- Dump completed on 2009-01-07 19:30:26

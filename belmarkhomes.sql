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
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `File`
--

LOCK TABLES `File` WRITE;
/*!40000 ALTER TABLE `File` DISABLE KEYS */;
INSERT INTO `File` VALUES (1,'Folder','2009-01-07 12:41:03','2009-01-07 12:41:03','Uploads','Uploads','assets/Uploads/',NULL,0,0,0),(2,'Image','2009-01-07 12:41:03','2009-01-07 12:41:03','SilverStripeLogo.png','SilverStripeLogo.png','assets/Uploads/SilverStripeLogo.png',NULL,0,1,0),(4,'File','2009-01-09 02:10:05','2009-01-09 02:10:05','error-404.html','error-404.html','assets/error-404.html',NULL,0,0,1),(6,'Folder','2009-01-09 02:22:41','2009-01-09 02:24:48','pages','pages','assets/pages/',NULL,0,0,0),(8,'Folder','2009-01-09 02:23:09','2009-01-09 02:23:10','NewFolder','NewFolder','assets/Uploads/NewFolder/',NULL,0,1,0),(10,'Image','2009-01-09 02:25:16','2009-01-09 02:25:16','abbeyroad.gif','abbeyroad.gif','assets/pages/abbeyroad.gif',NULL,0,6,1),(24,'Image','2009-01-09 04:14:18','2009-01-09 04:14:18','find-a-home.gif','find-a-home.gif','assets/pages/find-a-home.gif',NULL,0,6,1),(18,'Image','2009-01-09 03:17:02','2009-01-09 03:17:02','find-a-home-community.gif','find-a-home-community.gif','assets/pages/find-a-home-community.gif',NULL,0,6,1),(25,'Image','2009-01-09 04:15:00','2009-01-09 04:15:00','new-image','new image','assets/new-image',NULL,0,0,0),(19,'Folder','2009-01-09 03:24:31','2009-01-09 03:24:32','NewFolder','NewFolder','assets/pages/NewFolder/',NULL,0,6,0),(20,'Image','2009-01-09 03:25:42','2009-01-09 03:25:42','view-homes-abbeyroad.gif','view-homes-abbeyroad.gif','assets/pages/view-homes-abbeyroad.gif',NULL,0,6,1),(21,'Image','2009-01-09 03:35:02','2009-01-09 03:35:02','learn-coming-soon.gif','learn-coming-soon.gif','assets/pages/learn-coming-soon.gif',NULL,0,6,1),(22,'Image','2009-01-09 03:35:13','2009-01-09 03:35:13','view-homes-beaumont.gif','view-homes-beaumont.gif','assets/pages/view-homes-beaumont.gif',NULL,0,6,1),(23,'Image','2009-01-09 03:35:28','2009-01-09 03:35:28','view-homes-ridge-beaumont.gif','view-homes-ridge-beaumont.gif','assets/pages/view-homes-ridge-beaumont.gif',NULL,0,6,1);
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
INSERT INTO `HomePage` VALUES (1,'			<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0\" width=\"975\" height=\"316\" id=\"home-slideshow\" align=\"middle\">\n				<param name=\"allowFullScreen\" value=\"false\" />\n				<param name=\"movie\" value=\"http://www.issaquahhighlands.com/home-slideshow.swf\" />\n				<param name=\"quality\" value=\"high\" />\n				<param name=\"bgcolor\" value=\"#ffffff\" />\n				<param name=\"wmode\" value=\"transparent\">	\n				<embed src=\"http://www.issaquahhighlands.com/home-slideshow.swf\" quality=\"high\" bgcolor=\"#ffffff\" wmode=\"transparent\" width=\"975\" height=\"316\" name=\"home-slideshow\" align=\"middle\" allowFullScreen=\"false\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" />\n			</object>',NULL);
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
INSERT INTO `HomePage_Live` VALUES (1,'			<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0\" width=\"975\" height=\"316\" id=\"home-slideshow\" align=\"middle\">\n				<param name=\"allowFullScreen\" value=\"false\" />\n				<param name=\"movie\" value=\"http://www.issaquahhighlands.com/home-slideshow.swf\" />\n				<param name=\"quality\" value=\"high\" />\n				<param name=\"bgcolor\" value=\"#ffffff\" />\n				<param name=\"wmode\" value=\"transparent\">	\n				<embed src=\"http://www.issaquahhighlands.com/home-slideshow.swf\" quality=\"high\" bgcolor=\"#ffffff\" wmode=\"transparent\" width=\"975\" height=\"316\" name=\"home-slideshow\" align=\"middle\" allowFullScreen=\"false\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" />\n			</object>',NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `HomePage_versions`
--

LOCK TABLES `HomePage_versions` WRITE;
/*!40000 ALTER TABLE `HomePage_versions` DISABLE KEYS */;
INSERT INTO `HomePage_versions` VALUES (1,1,1,0,1,0,'			<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0\" width=\"975\" height=\"316\" id=\"home-slideshow\" align=\"middle\">\n				<param name=\"allowFullScreen\" value=\"false\" />\n				<param name=\"movie\" value=\"http://www.issaquahhighlands.com/home-slideshow.swf\" />\n				<param name=\"quality\" value=\"high\" />\n				<param name=\"bgcolor\" value=\"#ffffff\" />\n				<param name=\"wmode\" value=\"transparent\">	\n				<embed src=\"http://www.issaquahhighlands.com/home-slideshow.swf\" quality=\"high\" bgcolor=\"#ffffff\" wmode=\"transparent\" width=\"975\" height=\"316\" name=\"home-slideshow\" align=\"middle\" allowFullScreen=\"false\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" />\n			</object>',NULL),(2,1,2,0,1,0,'			<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0\" width=\"975\" height=\"316\" id=\"home-slideshow\" align=\"middle\">\n				<param name=\"allowFullScreen\" value=\"false\" />\n				<param name=\"movie\" value=\"http://www.issaquahhighlands.com/home-slideshow.swf\" />\n				<param name=\"quality\" value=\"high\" />\n				<param name=\"bgcolor\" value=\"#ffffff\" />\n				<param name=\"wmode\" value=\"transparent\">	\n				<embed src=\"http://www.issaquahhighlands.com/home-slideshow.swf\" quality=\"high\" bgcolor=\"#ffffff\" wmode=\"transparent\" width=\"975\" height=\"316\" name=\"home-slideshow\" align=\"middle\" allowFullScreen=\"false\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" />\n			</object>',NULL),(3,1,3,0,1,0,'			<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0\" width=\"975\" height=\"316\" id=\"home-slideshow\" align=\"middle\">\n				<param name=\"allowFullScreen\" value=\"false\" />\n				<param name=\"movie\" value=\"http://www.issaquahhighlands.com/home-slideshow.swf\" />\n				<param name=\"quality\" value=\"high\" />\n				<param name=\"bgcolor\" value=\"#ffffff\" />\n				<param name=\"wmode\" value=\"transparent\">	\n				<embed src=\"http://www.issaquahhighlands.com/home-slideshow.swf\" quality=\"high\" bgcolor=\"#ffffff\" wmode=\"transparent\" width=\"975\" height=\"316\" name=\"home-slideshow\" align=\"middle\" allowFullScreen=\"false\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" />\n			</object>',NULL),(4,1,4,0,1,0,'			<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0\" width=\"975\" height=\"316\" id=\"home-slideshow\" align=\"middle\">\n				<param name=\"allowFullScreen\" value=\"false\" />\n				<param name=\"movie\" value=\"http://www.issaquahhighlands.com/home-slideshow.swf\" />\n				<param name=\"quality\" value=\"high\" />\n				<param name=\"bgcolor\" value=\"#ffffff\" />\n				<param name=\"wmode\" value=\"transparent\">	\n				<embed src=\"http://www.issaquahhighlands.com/home-slideshow.swf\" quality=\"high\" bgcolor=\"#ffffff\" wmode=\"transparent\" width=\"975\" height=\"316\" name=\"home-slideshow\" align=\"middle\" allowFullScreen=\"false\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" />\n			</object>',NULL),(5,1,5,0,1,0,'			<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0\" width=\"975\" height=\"316\" id=\"home-slideshow\" align=\"middle\">\n				<param name=\"allowFullScreen\" value=\"false\" />\n				<param name=\"movie\" value=\"http://www.issaquahhighlands.com/home-slideshow.swf\" />\n				<param name=\"quality\" value=\"high\" />\n				<param name=\"bgcolor\" value=\"#ffffff\" />\n				<param name=\"wmode\" value=\"transparent\">	\n				<embed src=\"http://www.issaquahhighlands.com/home-slideshow.swf\" quality=\"high\" bgcolor=\"#ffffff\" wmode=\"transparent\" width=\"975\" height=\"316\" name=\"home-slideshow\" align=\"middle\" allowFullScreen=\"false\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" />\n			</object>','http://www.issaquahhighlands.com/home-slideshow.sw'),(6,1,6,0,1,0,'			<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0\" width=\"975\" height=\"316\" id=\"home-slideshow\" align=\"middle\">\n				<param name=\"allowFullScreen\" value=\"false\" />\n				<param name=\"movie\" value=\"http://www.issaquahhighlands.com/home-slideshow.swf\" />\n				<param name=\"quality\" value=\"high\" />\n				<param name=\"bgcolor\" value=\"#ffffff\" />\n				<param name=\"wmode\" value=\"transparent\">	\n				<embed src=\"http://www.issaquahhighlands.com/home-slideshow.swf\" quality=\"high\" bgcolor=\"#ffffff\" wmode=\"transparent\" width=\"975\" height=\"316\" name=\"home-slideshow\" align=\"middle\" allowFullScreen=\"false\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" />\n			</object>','http://www.issaquahhighlands.com/home-slideshow.sw'),(7,1,7,0,1,0,'			<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0\" width=\"975\" height=\"316\" id=\"home-slideshow\" align=\"middle\">\n				<param name=\"allowFullScreen\" value=\"false\" />\n				<param name=\"movie\" value=\"http://www.issaquahhighlands.com/home-slideshow.swf\" />\n				<param name=\"quality\" value=\"high\" />\n				<param name=\"bgcolor\" value=\"#ffffff\" />\n				<param name=\"wmode\" value=\"transparent\">	\n				<embed src=\"http://www.issaquahhighlands.com/home-slideshow.swf\" quality=\"high\" bgcolor=\"#ffffff\" wmode=\"transparent\" width=\"975\" height=\"316\" name=\"home-slideshow\" align=\"middle\" allowFullScreen=\"false\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" />\n			</object>','http://www.issaquahhighlands.com/home-slideshow.swf'),(8,1,8,0,1,0,'			<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0\" width=\"975\" height=\"316\" id=\"home-slideshow\" align=\"middle\">\n				<param name=\"allowFullScreen\" value=\"false\" />\n				<param name=\"movie\" value=\"http://www.issaquahhighlands.com/home-slideshow.swf\" />\n				<param name=\"quality\" value=\"high\" />\n				<param name=\"bgcolor\" value=\"#ffffff\" />\n				<param name=\"wmode\" value=\"transparent\">	\n				<embed src=\"http://www.issaquahhighlands.com/home-slideshow.swf\" quality=\"high\" bgcolor=\"#ffffff\" wmode=\"transparent\" width=\"975\" height=\"316\" name=\"home-slideshow\" align=\"middle\" allowFullScreen=\"false\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" />\n			</object>','http://www.issaquahhighlands.com/home-slideshow.swf'),(9,1,9,0,1,0,'			<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0\" width=\"975\" height=\"316\" id=\"home-slideshow\" align=\"middle\">\n				<param name=\"allowFullScreen\" value=\"false\" />\n				<param name=\"movie\" value=\"http://www.issaquahhighlands.com/home-slideshow.swf\" />\n				<param name=\"quality\" value=\"high\" />\n				<param name=\"bgcolor\" value=\"#ffffff\" />\n				<param name=\"wmode\" value=\"transparent\">	\n				<embed src=\"http://www.issaquahhighlands.com/home-slideshow.swf\" quality=\"high\" bgcolor=\"#ffffff\" wmode=\"transparent\" width=\"975\" height=\"316\" name=\"home-slideshow\" align=\"middle\" allowFullScreen=\"false\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" />\n			</object>',NULL),(10,1,10,0,1,0,'			<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0\" width=\"975\" height=\"316\" id=\"home-slideshow\" align=\"middle\">\n				<param name=\"allowFullScreen\" value=\"false\" />\n				<param name=\"movie\" value=\"http://www.issaquahhighlands.com/home-slideshow.swf\" />\n				<param name=\"quality\" value=\"high\" />\n				<param name=\"bgcolor\" value=\"#ffffff\" />\n				<param name=\"wmode\" value=\"transparent\">	\n				<embed src=\"http://www.issaquahhighlands.com/home-slideshow.swf\" quality=\"high\" bgcolor=\"#ffffff\" wmode=\"transparent\" width=\"975\" height=\"316\" name=\"home-slideshow\" align=\"middle\" allowFullScreen=\"false\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" />\n			</object>',NULL),(11,1,11,0,1,0,'			<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0\" width=\"975\" height=\"316\" id=\"home-slideshow\" align=\"middle\">\n				<param name=\"allowFullScreen\" value=\"false\" />\n				<param name=\"movie\" value=\"http://www.issaquahhighlands.com/home-slideshow.swf\" />\n				<param name=\"quality\" value=\"high\" />\n				<param name=\"bgcolor\" value=\"#ffffff\" />\n				<param name=\"wmode\" value=\"transparent\">	\n				<embed src=\"http://www.issaquahhighlands.com/home-slideshow.swf\" quality=\"high\" bgcolor=\"#ffffff\" wmode=\"transparent\" width=\"975\" height=\"316\" name=\"home-slideshow\" align=\"middle\" allowFullScreen=\"false\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" />\n			</object>',NULL),(12,1,12,0,1,0,'			<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0\" width=\"975\" height=\"316\" id=\"home-slideshow\" align=\"middle\">\n				<param name=\"allowFullScreen\" value=\"false\" />\n				<param name=\"movie\" value=\"http://www.issaquahhighlands.com/home-slideshow.swf\" />\n				<param name=\"quality\" value=\"high\" />\n				<param name=\"bgcolor\" value=\"#ffffff\" />\n				<param name=\"wmode\" value=\"transparent\">	\n				<embed src=\"http://www.issaquahhighlands.com/home-slideshow.swf\" quality=\"high\" bgcolor=\"#ffffff\" wmode=\"transparent\" width=\"975\" height=\"316\" name=\"home-slideshow\" align=\"middle\" allowFullScreen=\"false\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" />\n			</object>',NULL),(13,1,13,0,1,0,'			<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0\" width=\"975\" height=\"316\" id=\"home-slideshow\" align=\"middle\">\n				<param name=\"allowFullScreen\" value=\"false\" />\n				<param name=\"movie\" value=\"http://www.issaquahhighlands.com/home-slideshow.swf\" />\n				<param name=\"quality\" value=\"high\" />\n				<param name=\"bgcolor\" value=\"#ffffff\" />\n				<param name=\"wmode\" value=\"transparent\">	\n				<embed src=\"http://www.issaquahhighlands.com/home-slideshow.swf\" quality=\"high\" bgcolor=\"#ffffff\" wmode=\"transparent\" width=\"975\" height=\"316\" name=\"home-slideshow\" align=\"middle\" allowFullScreen=\"false\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" />\n			</object>',NULL);
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
INSERT INTO `Member` VALUES (1,'Member','2009-01-07 12:41:02','2009-01-08 20:53:29','Junrey','Beduya','jbeduya@gmail.com','tpzs8tojym80g08c4wk44wkscck08s8','7f307200a88dbdd4db355f9d0421cc35',5,'2009-01-09 04:19:01',0,NULL,NULL,0,'sha1','1o5uopdh15r4co00swcwskk4gc0c004og08w0s8','en_US',NULL);
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
-- Table structure for table `NewsPage`
--

DROP TABLE IF EXISTS `NewsPage`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `NewsPage` (
  `ID` int(11) NOT NULL auto_increment,
  `Date` date default NULL,
  `Author` varchar(255) character set utf8 default NULL,
  `IntroText` mediumtext character set utf8,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `NewsPage`
--

LOCK TABLES `NewsPage` WRITE;
/*!40000 ALTER TABLE `NewsPage` DISABLE KEYS */;
INSERT INTO `NewsPage` VALUES (6,'2008-12-12','Junrey Beduya','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),(7,'2009-01-07','Name','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),(8,'2009-01-09','secret','The quick brown fox jumps over the lazy dog.');
/*!40000 ALTER TABLE `NewsPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewsPage_Live`
--

DROP TABLE IF EXISTS `NewsPage_Live`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `NewsPage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `Date` date default NULL,
  `Author` varchar(255) character set utf8 default NULL,
  `IntroText` mediumtext character set utf8,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `NewsPage_Live`
--

LOCK TABLES `NewsPage_Live` WRITE;
/*!40000 ALTER TABLE `NewsPage_Live` DISABLE KEYS */;
INSERT INTO `NewsPage_Live` VALUES (6,'2008-12-12','Junrey Beduya','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),(7,'2009-01-07','Name','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),(8,'2009-01-09','secret','The quick brown fox jumps over the lazy dog.');
/*!40000 ALTER TABLE `NewsPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewsPage_versions`
--

DROP TABLE IF EXISTS `NewsPage_versions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `NewsPage_versions` (
  `ID` int(11) NOT NULL auto_increment,
  `RecordID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `WasPublished` tinyint(1) unsigned NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `PublisherID` int(11) NOT NULL default '0',
  `Date` date default NULL,
  `Author` varchar(255) character set utf8 default NULL,
  `IntroText` mediumtext character set utf8,
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `NewsPage_versions`
--

LOCK TABLES `NewsPage_versions` WRITE;
/*!40000 ALTER TABLE `NewsPage_versions` DISABLE KEYS */;
INSERT INTO `NewsPage_versions` VALUES (1,6,1,0,1,0,NULL,NULL,NULL),(2,6,2,0,1,0,'2008-12-12','Junrey Beduya','The are content that can only be given though'),(3,6,3,0,1,0,'2008-12-12','Junrey Beduya','The are content that can only be given though'),(4,6,4,0,1,0,'2008-12-12','Junrey Beduya','The are content that can only be given though'),(5,6,5,0,1,0,'2008-12-12','Junrey Beduya','The are content that can only be given though'),(6,6,6,0,1,0,'2008-12-12','Junrey Beduya','We can have a new news that says right. and this is right.'),(7,6,7,0,1,0,'2008-12-12','Junrey Beduya','We can have a new news that says right. and this is right.'),(8,7,1,0,1,0,NULL,NULL,NULL),(9,7,2,0,1,0,'2009-01-07','Name','This just a test of the order'),(10,7,3,0,1,0,'2009-01-07','Name','This just a test of the order'),(11,7,4,0,1,0,'2009-01-07','Name','This just a test of the order'),(12,7,5,0,1,0,'2009-01-07','Name','This just a test of the order'),(13,7,6,0,1,0,'2009-01-07','Name','This just a test of the order'),(14,7,7,0,1,0,'2009-01-07','Name','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),(15,7,8,0,1,0,'2009-01-07','Name','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),(16,6,8,0,1,0,'2008-12-12','Junrey Beduya','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),(17,6,9,0,1,0,'2008-12-12','Junrey Beduya','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),(18,8,1,0,1,0,NULL,NULL,NULL),(19,8,2,0,1,0,'2009-01-09','secret','The quick brown fox jumps over the lazy dog.'),(20,8,3,0,1,0,'2009-01-09','secret','The quick brown fox jumps over the lazy dog.'),(21,8,4,0,1,0,'2009-01-09','secret','The quick brown fox jumps over the lazy dog.'),(22,8,5,0,1,0,'2009-01-09','secret','The quick brown fox jumps over the lazy dog.'),(23,8,6,0,1,0,'2009-01-09','secret','The quick brown fox jumps over the lazy dog.'),(24,8,7,0,1,0,'2009-01-09','secret','The quick brown fox jumps over the lazy dog.');
/*!40000 ALTER TABLE `NewsPage_versions` ENABLE KEYS */;
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
-- Table structure for table `Page`
--

DROP TABLE IF EXISTS `Page`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Page` (
  `ID` int(11) NOT NULL auto_increment,
  `MenuBarTitle` varchar(50) character set utf8 default NULL,
  `TopImageID` int(11) NOT NULL default '0',
  `FloatingImageID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `TopImageID` (`TopImageID`),
  KEY `FloatingImageID` (`FloatingImageID`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Page`
--

LOCK TABLES `Page` WRITE;
/*!40000 ALTER TABLE `Page` DISABLE KEYS */;
INSERT INTO `Page` VALUES (1,'Home',2,0),(9,'Find a Home',0,24),(11,'Find a Home',0,0),(12,'Find a Home',0,0),(13,'Find a Home',0,0),(14,'Find a Home',10,0),(15,'Find a Home',10,0),(16,'Find a Home',10,0),(17,'Now Renting',0,0),(18,'Now Renting',0,0),(19,'Now Renting',0,0),(20,'Now Renting',0,0),(21,'Now Renting',0,0),(10,'Find a Home',10,10),(22,'My Belmark Home',0,0),(23,'Belmark Cares',0,0),(24,'Agents',0,0),(25,'Why Belmark',0,0),(26,'Our Friends',0,0),(27,'Belmark Cares',0,0),(28,'Belmark Cares',0,0),(29,'Agents',0,0),(30,'Agents',0,0),(31,'Agents',0,0),(32,'Why Belmark',0,0),(33,'Why Belmark',0,0),(34,'Our Friends',0,0);
/*!40000 ALTER TABLE `Page` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=1189 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `PageView`
--

LOCK TABLES `PageView` WRITE;
/*!40000 ALTER TABLE `PageView` DISABLE KEYS */;
INSERT INTO `PageView` VALUES (1,'PageView','2009-01-07 12:41:06','2009-01-07 12:41:06','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/install.php',0,NULL,NULL,1,-1),(2,'PageView','2009-01-07 12:41:06','2009-01-07 12:41:06','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/install.php',0,NULL,NULL,1,-1),(3,'PageView','2009-01-07 12:41:12','2009-01-07 12:41:12','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/home/successfullyinstalled?flush=1',0,NULL,NULL,1,-1),(4,'PageView','2009-01-07 12:41:37','2009-01-07 12:41:37','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/home/deleteinstallfiles',0,NULL,NULL,0,-1),(5,'PageView','2009-01-07 12:42:11','2009-01-07 12:42:11','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(6,'PageView','2009-01-07 12:42:16','2009-01-07 12:42:16','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/',0,NULL,NULL,2,-1),(7,'PageView','2009-01-07 12:42:17','2009-01-07 12:42:17','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-us/',0,NULL,NULL,1,-1),(8,'PageView','2009-01-07 12:42:18','2009-01-07 12:42:18','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-us/',0,NULL,NULL,1,-1),(9,'PageView','2009-01-07 12:42:19','2009-01-07 12:42:19','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/',0,NULL,NULL,3,-1),(10,'PageView','2009-01-07 22:47:33','2009-01-07 22:47:33','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(11,'PageView','2009-01-07 22:47:40','2009-01-07 22:47:40','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(12,'PageView','2009-01-07 22:48:00','2009-01-07 22:48:00','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(13,'PageView','2009-01-07 22:48:02','2009-01-07 22:48:02','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/',0,NULL,NULL,2,-1),(14,'PageView','2009-01-07 22:48:04','2009-01-07 22:48:04','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-us/',0,NULL,NULL,1,-1),(15,'PageView','2009-01-07 22:48:05','2009-01-07 22:48:05','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-us/',0,NULL,NULL,1,-1),(16,'PageView','2009-01-07 22:48:25','2009-01-07 22:48:25','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-us/',0,NULL,NULL,1,-1),(17,'PageView','2009-01-07 22:48:30','2009-01-07 22:48:30','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(18,'PageView','2009-01-07 22:48:43','2009-01-07 22:48:43','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(19,'PageView','2009-01-07 22:48:55','2009-01-07 22:48:55','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(20,'PageView','2009-01-07 22:48:57','2009-01-07 22:48:57','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/',0,NULL,NULL,2,-1),(21,'PageView','2009-01-07 22:48:58','2009-01-07 22:48:58','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-us/',0,NULL,NULL,1,-1),(22,'PageView','2009-01-07 22:48:58','2009-01-07 22:48:58','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-us/',0,NULL,NULL,1,-1),(23,'PageView','2009-01-07 22:48:59','2009-01-07 22:48:59','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/',0,NULL,NULL,3,-1),(24,'PageView','2009-01-07 22:49:31','2009-01-07 22:49:31','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/',0,NULL,NULL,3,-1),(25,'PageView','2009-01-07 22:49:34','2009-01-07 22:49:34','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/contact-us/',0,NULL,NULL,1,-1),(26,'PageView','2009-01-07 22:49:34','2009-01-07 22:49:34','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/contact-us/',0,NULL,NULL,1,-1),(27,'PageView','2009-01-07 22:49:38','2009-01-07 22:49:38','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(28,'PageView','2009-01-07 22:49:42','2009-01-07 22:49:42','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(29,'PageView','2009-01-07 22:51:25','2009-01-07 22:51:25','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(30,'PageView','2009-01-07 22:53:14','2009-01-07 22:53:14','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(31,'PageView','2009-01-07 22:54:12','2009-01-07 22:54:12','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/?flush=1',0,NULL,NULL,2,-1),(32,'PageView','2009-01-07 22:54:13','2009-01-07 22:54:13','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-us/',0,NULL,NULL,1,-1),(33,'PageView','2009-01-07 22:54:13','2009-01-07 22:54:13','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-us/',0,NULL,NULL,1,-1),(34,'PageView','2009-01-07 22:54:15','2009-01-07 22:54:15','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/',0,NULL,NULL,0,-1),(35,'PageView','2009-01-07 22:54:19','2009-01-07 22:54:19','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/Security/login?BackURL=%2Fwebsites%2Fbelmarkhomes.com%2Fadmin%2F',0,NULL,NULL,1,-1),(36,'PageView','2009-01-07 22:54:19','2009-01-07 22:54:19','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/Security/login?BackURL=%2Fwebsites%2Fbelmarkhomes.com%2Fadmin%2F',0,NULL,NULL,1,-1),(37,'PageView','2009-01-07 22:55:06','2009-01-07 22:55:06','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/Security/login?BackURL=%2Fwebsites%2Fbelmarkhomes.com%2Fadmin%2F',0,NULL,NULL,1,-1),(38,'PageView','2009-01-07 22:55:10','2009-01-07 22:55:10','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(39,'PageView','2009-01-07 22:55:14','2009-01-07 22:55:14','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(40,'PageView','2009-01-07 22:55:20','2009-01-07 22:55:20','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(41,'PageView','2009-01-07 22:55:38','2009-01-07 22:55:38','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(42,'PageView','2009-01-07 22:56:26','2009-01-07 22:56:26','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(43,'PageView','2009-01-07 22:56:29','2009-01-07 22:56:29','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(44,'PageView','2009-01-08 00:50:06','2009-01-08 00:50:06','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(45,'PageView','2009-01-08 00:55:40','2009-01-08 00:55:40','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(46,'PageView','2009-01-08 00:57:10','2009-01-08 00:57:10','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(47,'PageView','2009-01-08 00:57:12','2009-01-08 00:57:12','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(48,'PageView','2009-01-08 00:57:28','2009-01-08 00:57:28','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(49,'PageView','2009-01-08 00:57:35','2009-01-08 00:57:35','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(50,'PageView','2009-01-08 00:57:59','2009-01-08 00:57:59','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(51,'PageView','2009-01-08 00:58:04','2009-01-08 00:58:04','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(52,'PageView','2009-01-08 00:59:01','2009-01-08 00:59:01','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(53,'PageView','2009-01-08 00:59:15','2009-01-08 00:59:15','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(54,'PageView','2009-01-08 00:59:18','2009-01-08 00:59:18','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(55,'PageView','2009-01-08 01:00:02','2009-01-08 01:00:02','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(56,'PageView','2009-01-08 01:02:10','2009-01-08 01:02:10','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(57,'PageView','2009-01-08 01:04:33','2009-01-08 01:04:33','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(58,'PageView','2009-01-08 01:04:45','2009-01-08 01:04:45','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(59,'PageView','2009-01-08 01:05:51','2009-01-08 01:05:51','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(60,'PageView','2009-01-08 01:06:13','2009-01-08 01:06:13','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(61,'PageView','2009-01-08 01:06:20','2009-01-08 01:06:20','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(62,'PageView','2009-01-08 01:06:32','2009-01-08 01:06:32','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(63,'PageView','2009-01-08 01:06:44','2009-01-08 01:06:44','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(64,'PageView','2009-01-08 01:06:46','2009-01-08 01:06:46','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(65,'PageView','2009-01-08 01:07:55','2009-01-08 01:07:55','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(66,'PageView','2009-01-08 01:08:29','2009-01-08 01:08:29','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(67,'PageView','2009-01-08 01:09:36','2009-01-08 01:09:36','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(68,'PageView','2009-01-08 01:10:34','2009-01-08 01:10:34','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(69,'PageView','2009-01-08 01:10:56','2009-01-08 01:10:56','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(70,'PageView','2009-01-08 01:12:29','2009-01-08 01:12:29','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(71,'PageView','2009-01-08 01:13:38','2009-01-08 01:13:38','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(72,'PageView','2009-01-08 01:15:28','2009-01-08 01:15:28','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(73,'PageView','2009-01-08 01:16:12','2009-01-08 01:16:12','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(74,'PageView','2009-01-08 01:16:54','2009-01-08 01:16:54','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(75,'PageView','2009-01-08 01:16:59','2009-01-08 01:16:59','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(76,'PageView','2009-01-08 01:17:06','2009-01-08 01:17:06','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(77,'PageView','2009-01-08 01:17:25','2009-01-08 01:17:25','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(78,'PageView','2009-01-08 01:17:30','2009-01-08 01:17:30','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(79,'PageView','2009-01-08 01:17:39','2009-01-08 01:17:39','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(80,'PageView','2009-01-08 01:17:47','2009-01-08 01:17:47','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(81,'PageView','2009-01-08 01:18:22','2009-01-08 01:18:22','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(82,'PageView','2009-01-08 01:18:25','2009-01-08 01:18:25','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(83,'PageView','2009-01-08 01:18:34','2009-01-08 01:18:34','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(84,'PageView','2009-01-08 01:18:59','2009-01-08 01:18:59','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(85,'PageView','2009-01-08 01:19:08','2009-01-08 01:19:08','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(86,'PageView','2009-01-08 01:19:12','2009-01-08 01:19:12','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(87,'PageView','2009-01-08 01:19:55','2009-01-08 01:19:55','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(88,'PageView','2009-01-08 01:20:21','2009-01-08 01:20:21','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(89,'PageView','2009-01-08 01:20:45','2009-01-08 01:20:45','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(90,'PageView','2009-01-08 01:21:05','2009-01-08 01:21:05','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(91,'PageView','2009-01-08 01:23:02','2009-01-08 01:23:02','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(92,'PageView','2009-01-08 01:23:05','2009-01-08 01:23:05','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(93,'PageView','2009-01-08 01:23:24','2009-01-08 01:23:24','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(94,'PageView','2009-01-08 01:23:41','2009-01-08 01:23:41','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(95,'PageView','2009-01-08 01:23:42','2009-01-08 01:23:42','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(96,'PageView','2009-01-08 01:23:56','2009-01-08 01:23:56','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(97,'PageView','2009-01-08 01:24:04','2009-01-08 01:24:04','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(98,'PageView','2009-01-08 01:24:07','2009-01-08 01:24:07','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(99,'PageView','2009-01-08 01:24:24','2009-01-08 01:24:24','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(100,'PageView','2009-01-08 01:24:30','2009-01-08 01:24:30','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(101,'PageView','2009-01-08 01:24:32','2009-01-08 01:24:32','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(102,'PageView','2009-01-08 01:24:39','2009-01-08 01:24:39','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(103,'PageView','2009-01-08 01:25:02','2009-01-08 01:25:02','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(104,'PageView','2009-01-08 01:25:13','2009-01-08 01:25:13','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(105,'PageView','2009-01-08 01:25:34','2009-01-08 01:25:34','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(106,'PageView','2009-01-08 01:26:26','2009-01-08 01:26:26','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(107,'PageView','2009-01-08 01:26:29','2009-01-08 01:26:29','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(108,'PageView','2009-01-08 01:26:42','2009-01-08 01:26:42','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(109,'PageView','2009-01-08 01:27:18','2009-01-08 01:27:18','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(110,'PageView','2009-01-08 01:27:57','2009-01-08 01:27:57','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(111,'PageView','2009-01-08 01:29:10','2009-01-08 01:29:10','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(112,'PageView','2009-01-08 01:29:55','2009-01-08 01:29:55','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(113,'PageView','2009-01-08 01:30:39','2009-01-08 01:30:39','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(114,'PageView','2009-01-08 01:30:55','2009-01-08 01:30:55','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(115,'PageView','2009-01-08 01:32:22','2009-01-08 01:32:22','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(116,'PageView','2009-01-08 01:32:25','2009-01-08 01:32:25','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(117,'PageView','2009-01-08 01:32:33','2009-01-08 01:32:33','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(118,'PageView','2009-01-08 01:32:36','2009-01-08 01:32:36','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(119,'PageView','2009-01-08 01:33:13','2009-01-08 01:33:13','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(120,'PageView','2009-01-08 01:33:29','2009-01-08 01:33:29','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(121,'PageView','2009-01-08 01:37:26','2009-01-08 01:37:26','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(122,'PageView','2009-01-08 01:37:54','2009-01-08 01:37:54','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(123,'PageView','2009-01-08 01:37:59','2009-01-08 01:37:59','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(124,'PageView','2009-01-08 01:39:23','2009-01-08 01:39:23','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(125,'PageView','2009-01-08 01:39:41','2009-01-08 01:39:41','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(126,'PageView','2009-01-08 01:41:04','2009-01-08 01:41:04','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(127,'PageView','2009-01-08 01:41:07','2009-01-08 01:41:07','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(128,'PageView','2009-01-08 01:41:21','2009-01-08 01:41:21','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(129,'PageView','2009-01-08 01:41:24','2009-01-08 01:41:24','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(130,'PageView','2009-01-08 01:41:48','2009-01-08 01:41:48','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(131,'PageView','2009-01-08 01:41:53','2009-01-08 01:41:53','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(132,'PageView','2009-01-08 01:41:55','2009-01-08 01:41:55','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(133,'PageView','2009-01-08 01:42:07','2009-01-08 01:42:07','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(134,'PageView','2009-01-08 01:44:06','2009-01-08 01:44:06','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(135,'PageView','2009-01-08 01:44:10','2009-01-08 01:44:10','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(136,'PageView','2009-01-08 01:45:18','2009-01-08 01:45:18','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(137,'PageView','2009-01-08 01:45:28','2009-01-08 01:45:28','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(138,'PageView','2009-01-08 01:45:30','2009-01-08 01:45:30','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(139,'PageView','2009-01-08 01:46:05','2009-01-08 01:46:05','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(140,'PageView','2009-01-08 01:46:11','2009-01-08 01:46:11','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(141,'PageView','2009-01-08 01:47:47','2009-01-08 01:47:47','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(142,'PageView','2009-01-08 01:47:52','2009-01-08 01:47:52','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(143,'PageView','2009-01-08 01:48:37','2009-01-08 01:48:37','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(144,'PageView','2009-01-08 01:48:42','2009-01-08 01:48:42','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(145,'PageView','2009-01-08 01:48:47','2009-01-08 01:48:47','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(146,'PageView','2009-01-08 01:49:03','2009-01-08 01:49:03','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(147,'PageView','2009-01-08 01:49:14','2009-01-08 01:49:14','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(148,'PageView','2009-01-08 01:51:39','2009-01-08 01:51:39','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(149,'PageView','2009-01-08 01:56:02','2009-01-08 01:56:02','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(150,'PageView','2009-01-08 01:56:05','2009-01-08 01:56:05','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(151,'PageView','2009-01-08 01:56:15','2009-01-08 01:56:15','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(152,'PageView','2009-01-08 02:01:53','2009-01-08 02:01:53','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(153,'PageView','2009-01-08 02:05:42','2009-01-08 02:05:42','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(154,'PageView','2009-01-08 02:29:59','2009-01-08 02:29:59','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(155,'PageView','2009-01-08 02:42:43','2009-01-08 02:42:43','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(156,'PageView','2009-01-08 02:46:54','2009-01-08 02:46:54','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(157,'PageView','2009-01-08 02:47:04','2009-01-08 02:47:04','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(158,'PageView','2009-01-08 02:47:07','2009-01-08 02:47:07','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(159,'PageView','2009-01-08 02:48:04','2009-01-08 02:48:04','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(160,'PageView','2009-01-08 02:49:17','2009-01-08 02:49:17','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(161,'PageView','2009-01-08 02:49:22','2009-01-08 02:49:22','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(162,'PageView','2009-01-08 02:49:28','2009-01-08 02:49:28','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(163,'PageView','2009-01-08 02:49:33','2009-01-08 02:49:33','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(164,'PageView','2009-01-08 02:50:27','2009-01-08 02:50:27','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(165,'PageView','2009-01-08 02:50:34','2009-01-08 02:50:34','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(166,'PageView','2009-01-08 02:57:24','2009-01-08 02:57:24','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(167,'PageView','2009-01-08 03:01:36','2009-01-08 03:01:36','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(168,'PageView','2009-01-08 03:02:16','2009-01-08 03:02:16','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(169,'PageView','2009-01-08 03:02:17','2009-01-08 03:02:17','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/',0,NULL,NULL,1,1),(170,'PageView','2009-01-08 03:02:26','2009-01-08 03:02:26','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(171,'PageView','2009-01-08 03:02:56','2009-01-08 03:02:56','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(172,'PageView','2009-01-08 03:02:57','2009-01-08 03:02:57','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/',0,NULL,NULL,1,1),(173,'PageView','2009-01-08 03:03:10','2009-01-08 03:03:10','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(174,'PageView','2009-01-08 03:04:51','2009-01-08 03:04:51','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(175,'PageView','2009-01-08 03:07:54','2009-01-08 03:07:54','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(176,'PageView','2009-01-08 04:04:23','2009-01-08 04:04:23','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(177,'PageView','2009-01-08 04:04:34','2009-01-08 04:04:34','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(178,'PageView','2009-01-08 04:06:18','2009-01-08 04:06:18','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(179,'PageView','2009-01-08 04:07:47','2009-01-08 04:07:47','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(180,'PageView','2009-01-08 04:08:02','2009-01-08 04:08:02','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(181,'PageView','2009-01-08 04:09:59','2009-01-08 04:09:59','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(182,'PageView','2009-01-08 05:03:41','2009-01-08 05:03:41','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(183,'PageView','2009-01-08 05:04:06','2009-01-08 05:04:06','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(184,'PageView','2009-01-08 16:16:11','2009-01-08 16:16:11','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(185,'PageView','2009-01-08 16:39:06','2009-01-08 16:39:06','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(186,'PageView','2009-01-08 16:39:09','2009-01-08 16:39:09','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(187,'PageView','2009-01-08 16:39:29','2009-01-08 16:39:29','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(188,'PageView','2009-01-08 16:43:45','2009-01-08 16:43:45','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(189,'PageView','2009-01-08 16:43:53','2009-01-08 16:43:53','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(190,'PageView','2009-01-08 16:44:39','2009-01-08 16:44:39','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(191,'PageView','2009-01-08 16:45:51','2009-01-08 16:45:51','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(192,'PageView','2009-01-08 16:46:30','2009-01-08 16:46:30','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(193,'PageView','2009-01-08 16:46:34','2009-01-08 16:46:34','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(194,'PageView','2009-01-08 16:46:39','2009-01-08 16:46:39','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(195,'PageView','2009-01-08 16:47:34','2009-01-08 16:47:34','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(196,'PageView','2009-01-08 16:49:41','2009-01-08 16:49:41','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(197,'PageView','2009-01-08 16:50:56','2009-01-08 16:50:56','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(198,'PageView','2009-01-08 16:51:00','2009-01-08 16:51:00','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(199,'PageView','2009-01-08 16:51:17','2009-01-08 16:51:17','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(200,'PageView','2009-01-08 16:53:30','2009-01-08 16:53:30','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(201,'PageView','2009-01-08 16:53:39','2009-01-08 16:53:39','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(202,'PageView','2009-01-08 16:53:46','2009-01-08 16:53:46','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(203,'PageView','2009-01-08 16:55:40','2009-01-08 16:55:40','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(204,'PageView','2009-01-08 17:01:31','2009-01-08 17:01:31','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(205,'PageView','2009-01-08 17:02:49','2009-01-08 17:02:49','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(206,'PageView','2009-01-08 17:02:57','2009-01-08 17:02:57','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(207,'PageView','2009-01-08 17:03:02','2009-01-08 17:03:02','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(208,'PageView','2009-01-08 17:03:09','2009-01-08 17:03:09','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(209,'PageView','2009-01-08 17:03:27','2009-01-08 17:03:27','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(210,'PageView','2009-01-08 17:03:41','2009-01-08 17:03:41','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(211,'PageView','2009-01-08 17:03:48','2009-01-08 17:03:48','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(212,'PageView','2009-01-08 17:04:22','2009-01-08 17:04:22','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(213,'PageView','2009-01-08 17:04:29','2009-01-08 17:04:29','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(214,'PageView','2009-01-08 17:04:49','2009-01-08 17:04:49','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(215,'PageView','2009-01-08 17:05:02','2009-01-08 17:05:02','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(216,'PageView','2009-01-08 17:07:05','2009-01-08 17:07:05','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(217,'PageView','2009-01-08 17:08:15','2009-01-08 17:08:15','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(218,'PageView','2009-01-08 17:08:31','2009-01-08 17:08:31','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(219,'PageView','2009-01-08 17:08:40','2009-01-08 17:08:40','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(220,'PageView','2009-01-08 17:08:45','2009-01-08 17:08:45','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(221,'PageView','2009-01-08 17:09:01','2009-01-08 17:09:01','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(222,'PageView','2009-01-08 17:09:13','2009-01-08 17:09:13','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(223,'PageView','2009-01-08 17:09:18','2009-01-08 17:09:18','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(224,'PageView','2009-01-08 17:09:25','2009-01-08 17:09:25','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(225,'PageView','2009-01-08 17:09:51','2009-01-08 17:09:51','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(226,'PageView','2009-01-08 17:11:40','2009-01-08 17:11:40','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(227,'PageView','2009-01-08 17:11:45','2009-01-08 17:11:45','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(228,'PageView','2009-01-08 17:11:50','2009-01-08 17:11:50','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(229,'PageView','2009-01-08 17:11:55','2009-01-08 17:11:55','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(230,'PageView','2009-01-08 17:12:00','2009-01-08 17:12:00','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(231,'PageView','2009-01-08 17:12:07','2009-01-08 17:12:07','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(232,'PageView','2009-01-08 17:12:13','2009-01-08 17:12:13','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(233,'PageView','2009-01-08 17:12:20','2009-01-08 17:12:20','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(234,'PageView','2009-01-08 17:12:25','2009-01-08 17:12:25','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(235,'PageView','2009-01-08 17:12:43','2009-01-08 17:12:43','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(236,'PageView','2009-01-08 17:12:47','2009-01-08 17:12:47','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(237,'PageView','2009-01-08 17:13:36','2009-01-08 17:13:36','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(238,'PageView','2009-01-08 20:52:38','2009-01-08 20:52:38','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(239,'PageView','2009-01-08 20:53:22','2009-01-08 20:53:22','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(240,'PageView','2009-01-08 20:54:44','2009-01-08 20:54:44','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(241,'PageView','2009-01-08 20:55:05','2009-01-08 20:55:05','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(242,'PageView','2009-01-08 21:06:59','2009-01-08 21:06:59','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(243,'PageView','2009-01-08 21:10:57','2009-01-08 21:10:57','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(244,'PageView','2009-01-08 21:11:04','2009-01-08 21:11:04','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,1),(245,'PageView','2009-01-08 21:26:06','2009-01-08 21:26:06','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,1),(246,'PageView','2009-01-08 21:27:13','2009-01-08 21:27:13','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,1),(247,'PageView','2009-01-08 21:27:21','2009-01-08 21:27:21','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,1),(248,'PageView','2009-01-08 21:27:25','2009-01-08 21:27:25','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,1),(249,'PageView','2009-01-08 21:27:46','2009-01-08 21:27:46','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,1),(250,'PageView','2009-01-08 21:27:50','2009-01-08 21:27:50','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,1),(251,'PageView','2009-01-08 21:28:00','2009-01-08 21:28:00','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(252,'PageView','2009-01-08 21:28:04','2009-01-08 21:28:04','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(253,'PageView','2009-01-08 21:28:12','2009-01-08 21:28:12','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,1),(254,'PageView','2009-01-08 21:28:19','2009-01-08 21:28:19','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,1),(255,'PageView','2009-01-08 21:29:07','2009-01-08 21:29:07','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,1),(256,'PageView','2009-01-08 21:29:09','2009-01-08 21:29:09','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,1),(257,'PageView','2009-01-08 21:29:13','2009-01-08 21:29:13','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(258,'PageView','2009-01-08 21:29:21','2009-01-08 21:29:21','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(259,'PageView','2009-01-08 21:32:54','2009-01-08 21:32:54','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(260,'PageView','2009-01-08 21:33:07','2009-01-08 21:33:07','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(261,'PageView','2009-01-08 21:33:18','2009-01-08 21:33:18','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(262,'PageView','2009-01-08 21:33:53','2009-01-08 21:33:53','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(263,'PageView','2009-01-08 21:34:26','2009-01-08 21:34:26','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(264,'PageView','2009-01-08 21:34:48','2009-01-08 21:34:48','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(265,'PageView','2009-01-08 21:34:53','2009-01-08 21:34:53','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(266,'PageView','2009-01-08 21:35:01','2009-01-08 21:35:01','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(267,'PageView','2009-01-08 21:35:19','2009-01-08 21:35:19','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(268,'PageView','2009-01-08 21:35:28','2009-01-08 21:35:28','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(269,'PageView','2009-01-08 21:35:32','2009-01-08 21:35:32','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(270,'PageView','2009-01-08 21:35:42','2009-01-08 21:35:42','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(271,'PageView','2009-01-08 21:36:17','2009-01-08 21:36:17','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(272,'PageView','2009-01-08 21:37:39','2009-01-08 21:37:39','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(273,'PageView','2009-01-08 21:38:02','2009-01-08 21:38:02','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(274,'PageView','2009-01-08 21:40:07','2009-01-08 21:40:07','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(275,'PageView','2009-01-08 21:40:45','2009-01-08 21:40:45','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(276,'PageView','2009-01-08 21:41:15','2009-01-08 21:41:15','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(277,'PageView','2009-01-08 21:41:31','2009-01-08 21:41:31','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(278,'PageView','2009-01-08 21:42:01','2009-01-08 21:42:01','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(279,'PageView','2009-01-08 21:43:02','2009-01-08 21:43:02','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(280,'PageView','2009-01-08 21:43:10','2009-01-08 21:43:10','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(281,'PageView','2009-01-08 21:43:35','2009-01-08 21:43:35','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(282,'PageView','2009-01-08 21:43:49','2009-01-08 21:43:49','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(283,'PageView','2009-01-08 21:43:55','2009-01-08 21:43:55','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(284,'PageView','2009-01-08 21:44:31','2009-01-08 21:44:31','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(285,'PageView','2009-01-08 21:44:49','2009-01-08 21:44:49','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(286,'PageView','2009-01-08 21:45:15','2009-01-08 21:45:15','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(287,'PageView','2009-01-08 21:45:23','2009-01-08 21:45:23','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(288,'PageView','2009-01-08 21:45:48','2009-01-08 21:45:48','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(289,'PageView','2009-01-08 21:46:07','2009-01-08 21:46:07','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(290,'PageView','2009-01-08 21:46:22','2009-01-08 21:46:22','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(291,'PageView','2009-01-08 21:47:12','2009-01-08 21:47:12','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(292,'PageView','2009-01-08 21:50:46','2009-01-08 21:50:46','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(293,'PageView','2009-01-08 21:50:59','2009-01-08 21:50:59','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(294,'PageView','2009-01-08 21:51:41','2009-01-08 21:51:41','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(295,'PageView','2009-01-08 21:51:54','2009-01-08 21:51:54','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(296,'PageView','2009-01-08 21:52:32','2009-01-08 21:52:32','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(297,'PageView','2009-01-08 21:54:05','2009-01-08 21:54:05','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(298,'PageView','2009-01-08 21:56:46','2009-01-08 21:56:46','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(299,'PageView','2009-01-08 21:58:02','2009-01-08 21:58:02','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(300,'PageView','2009-01-08 21:58:21','2009-01-08 21:58:21','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(301,'PageView','2009-01-08 21:59:09','2009-01-08 21:59:09','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(302,'PageView','2009-01-08 21:59:44','2009-01-08 21:59:44','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(303,'PageView','2009-01-08 22:00:46','2009-01-08 22:00:46','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(304,'PageView','2009-01-08 22:01:00','2009-01-08 22:01:00','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(305,'PageView','2009-01-08 22:01:40','2009-01-08 22:01:40','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(306,'PageView','2009-01-08 22:01:51','2009-01-08 22:01:51','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(307,'PageView','2009-01-08 22:02:39','2009-01-08 22:02:39','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(308,'PageView','2009-01-08 22:02:49','2009-01-08 22:02:49','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(309,'PageView','2009-01-08 22:02:59','2009-01-08 22:02:59','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(310,'PageView','2009-01-08 22:03:30','2009-01-08 22:03:30','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(311,'PageView','2009-01-08 22:03:51','2009-01-08 22:03:51','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(312,'PageView','2009-01-08 22:04:01','2009-01-08 22:04:01','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(313,'PageView','2009-01-08 22:04:06','2009-01-08 22:04:06','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(314,'PageView','2009-01-08 22:04:56','2009-01-08 22:04:56','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(315,'PageView','2009-01-08 22:05:01','2009-01-08 22:05:01','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(316,'PageView','2009-01-08 22:05:23','2009-01-08 22:05:23','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(317,'PageView','2009-01-08 22:06:31','2009-01-08 22:06:31','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(318,'PageView','2009-01-08 22:06:43','2009-01-08 22:06:43','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(319,'PageView','2009-01-08 22:06:49','2009-01-08 22:06:49','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(320,'PageView','2009-01-08 22:06:53','2009-01-08 22:06:53','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(321,'PageView','2009-01-08 22:07:14','2009-01-08 22:07:14','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(322,'PageView','2009-01-08 22:07:19','2009-01-08 22:07:19','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(323,'PageView','2009-01-08 22:07:22','2009-01-08 22:07:22','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(324,'PageView','2009-01-08 22:07:30','2009-01-08 22:07:30','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(325,'PageView','2009-01-08 22:08:02','2009-01-08 22:08:02','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(326,'PageView','2009-01-08 22:09:15','2009-01-08 22:09:15','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(327,'PageView','2009-01-08 22:09:39','2009-01-08 22:09:39','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(328,'PageView','2009-01-08 22:09:57','2009-01-08 22:09:57','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(329,'PageView','2009-01-08 22:10:03','2009-01-08 22:10:03','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(330,'PageView','2009-01-08 22:10:08','2009-01-08 22:10:08','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(331,'PageView','2009-01-08 22:10:13','2009-01-08 22:10:13','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(332,'PageView','2009-01-08 22:10:26','2009-01-08 22:10:26','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(333,'PageView','2009-01-08 22:10:30','2009-01-08 22:10:30','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(334,'PageView','2009-01-08 22:10:36','2009-01-08 22:10:36','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(335,'PageView','2009-01-08 22:10:47','2009-01-08 22:10:47','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(336,'PageView','2009-01-08 22:11:02','2009-01-08 22:11:02','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(337,'PageView','2009-01-08 22:11:34','2009-01-08 22:11:34','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(338,'PageView','2009-01-08 22:11:50','2009-01-08 22:11:50','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(339,'PageView','2009-01-08 22:11:57','2009-01-08 22:11:57','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(340,'PageView','2009-01-08 22:12:02','2009-01-08 22:12:02','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(341,'PageView','2009-01-08 22:12:06','2009-01-08 22:12:06','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(342,'PageView','2009-01-08 22:12:27','2009-01-08 22:12:27','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(343,'PageView','2009-01-08 22:15:22','2009-01-08 22:15:22','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(344,'PageView','2009-01-08 22:15:36','2009-01-08 22:15:36','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(345,'PageView','2009-01-08 22:17:00','2009-01-08 22:17:00','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(346,'PageView','2009-01-08 22:17:22','2009-01-08 22:17:22','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(347,'PageView','2009-01-08 22:17:38','2009-01-08 22:17:38','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(348,'PageView','2009-01-08 22:17:50','2009-01-08 22:17:50','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(349,'PageView','2009-01-08 22:18:29','2009-01-08 22:18:29','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(350,'PageView','2009-01-08 22:18:40','2009-01-08 22:18:40','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(351,'PageView','2009-01-08 22:19:26','2009-01-08 22:19:26','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(352,'PageView','2009-01-08 22:19:42','2009-01-08 22:19:42','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(353,'PageView','2009-01-08 22:20:08','2009-01-08 22:20:08','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(354,'PageView','2009-01-08 22:20:18','2009-01-08 22:20:18','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(355,'PageView','2009-01-08 22:20:21','2009-01-08 22:20:21','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(356,'PageView','2009-01-08 22:20:35','2009-01-08 22:20:35','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,1),(357,'PageView','2009-01-08 22:21:43','2009-01-08 22:21:43','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(358,'PageView','2009-01-08 22:21:58','2009-01-08 22:21:58','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(359,'PageView','2009-01-08 22:22:17','2009-01-08 22:22:17','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(360,'PageView','2009-01-08 22:22:32','2009-01-08 22:22:32','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(361,'PageView','2009-01-08 22:22:45','2009-01-08 22:22:45','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(362,'PageView','2009-01-08 22:23:04','2009-01-08 22:23:04','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(363,'PageView','2009-01-08 22:23:20','2009-01-08 22:23:20','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(364,'PageView','2009-01-08 22:23:55','2009-01-08 22:23:55','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(365,'PageView','2009-01-08 22:24:07','2009-01-08 22:24:07','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(366,'PageView','2009-01-08 22:24:16','2009-01-08 22:24:16','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(367,'PageView','2009-01-08 22:24:52','2009-01-08 22:24:52','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(368,'PageView','2009-01-08 22:24:57','2009-01-08 22:24:57','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(369,'PageView','2009-01-08 22:25:10','2009-01-08 22:25:10','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(370,'PageView','2009-01-08 22:25:20','2009-01-08 22:25:20','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(371,'PageView','2009-01-08 22:25:41','2009-01-08 22:25:41','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(372,'PageView','2009-01-08 22:26:00','2009-01-08 22:26:00','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(373,'PageView','2009-01-08 22:26:30','2009-01-08 22:26:30','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(374,'PageView','2009-01-08 22:26:46','2009-01-08 22:26:46','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(375,'PageView','2009-01-08 22:26:56','2009-01-08 22:26:56','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(376,'PageView','2009-01-08 22:27:11','2009-01-08 22:27:11','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(377,'PageView','2009-01-08 22:27:27','2009-01-08 22:27:27','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(378,'PageView','2009-01-08 22:27:52','2009-01-08 22:27:52','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(379,'PageView','2009-01-08 22:27:59','2009-01-08 22:27:59','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(380,'PageView','2009-01-08 22:28:22','2009-01-08 22:28:22','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(381,'PageView','2009-01-08 22:28:56','2009-01-08 22:28:56','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(382,'PageView','2009-01-08 22:29:17','2009-01-08 22:29:17','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(383,'PageView','2009-01-08 22:29:46','2009-01-08 22:29:46','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(384,'PageView','2009-01-08 22:29:54','2009-01-08 22:29:54','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(385,'PageView','2009-01-08 22:30:01','2009-01-08 22:30:01','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(386,'PageView','2009-01-08 22:30:07','2009-01-08 22:30:07','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(387,'PageView','2009-01-08 22:30:12','2009-01-08 22:30:12','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(388,'PageView','2009-01-08 22:30:44','2009-01-08 22:30:44','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(389,'PageView','2009-01-08 22:30:48','2009-01-08 22:30:48','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(390,'PageView','2009-01-08 22:31:13','2009-01-08 22:31:13','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(391,'PageView','2009-01-08 22:31:18','2009-01-08 22:31:18','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(392,'PageView','2009-01-08 22:31:41','2009-01-08 22:31:41','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(393,'PageView','2009-01-08 22:32:28','2009-01-08 22:32:28','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(394,'PageView','2009-01-08 22:32:49','2009-01-08 22:32:49','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(395,'PageView','2009-01-08 22:33:21','2009-01-08 22:33:21','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(396,'PageView','2009-01-08 22:33:44','2009-01-08 22:33:44','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(397,'PageView','2009-01-08 22:34:00','2009-01-08 22:34:00','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(398,'PageView','2009-01-08 22:34:14','2009-01-08 22:34:14','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(399,'PageView','2009-01-08 22:34:21','2009-01-08 22:34:21','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(400,'PageView','2009-01-08 22:37:09','2009-01-08 22:37:09','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,1),(401,'PageView','2009-01-08 22:37:18','2009-01-08 22:37:18','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,1),(402,'PageView','2009-01-08 22:37:25','2009-01-08 22:37:25','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,1),(403,'PageView','2009-01-08 22:37:41','2009-01-08 22:37:41','::1',NULL,NULL,0,NULL,0,NULL,NULL,10,1),(404,'PageView','2009-01-08 23:16:18','2009-01-08 23:16:18','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(405,'PageView','2009-01-08 23:21:30','2009-01-08 23:21:30','::1',NULL,NULL,0,NULL,0,NULL,NULL,10,1),(406,'PageView','2009-01-08 23:30:06','2009-01-08 23:30:06','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(407,'PageView','2009-01-08 23:47:59','2009-01-08 23:47:59','::1',NULL,NULL,0,NULL,0,NULL,NULL,10,1),(408,'PageView','2009-01-09 00:15:29','2009-01-09 00:15:29','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(409,'PageView','2009-01-09 00:15:32','2009-01-09 00:15:32','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(410,'PageView','2009-01-09 00:15:37','2009-01-09 00:15:37','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(411,'PageView','2009-01-09 00:16:15','2009-01-09 00:16:15','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(412,'PageView','2009-01-09 00:16:19','2009-01-09 00:16:19','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(413,'PageView','2009-01-09 00:18:45','2009-01-09 00:18:45','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(414,'PageView','2009-01-09 00:20:00','2009-01-09 00:20:00','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(415,'PageView','2009-01-09 00:20:12','2009-01-09 00:20:12','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(416,'PageView','2009-01-09 00:22:52','2009-01-09 00:22:52','::1',NULL,NULL,0,NULL,0,NULL,NULL,10,1),(417,'PageView','2009-01-09 00:23:03','2009-01-09 00:23:03','::1',NULL,NULL,0,NULL,0,NULL,NULL,10,1),(418,'PageView','2009-01-09 00:23:11','2009-01-09 00:23:11','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(419,'PageView','2009-01-09 00:23:16','2009-01-09 00:23:16','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(420,'PageView','2009-01-09 00:25:06','2009-01-09 00:25:06','::1',NULL,NULL,0,NULL,0,NULL,NULL,10,1),(421,'PageView','2009-01-09 00:25:19','2009-01-09 00:25:19','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(422,'PageView','2009-01-09 00:28:29','2009-01-09 00:28:29','::1',NULL,NULL,0,NULL,0,NULL,NULL,14,-1),(423,'PageView','2009-01-09 00:28:33','2009-01-09 00:28:33','::1',NULL,NULL,0,NULL,0,NULL,NULL,14,-1),(424,'PageView','2009-01-09 00:28:39','2009-01-09 00:28:39','::1',NULL,NULL,0,NULL,0,NULL,NULL,14,-1),(425,'PageView','2009-01-09 00:28:44','2009-01-09 00:28:44','::1',NULL,NULL,0,NULL,0,NULL,NULL,14,-1),(426,'PageView','2009-01-09 00:30:02','2009-01-09 00:30:02','::1',NULL,NULL,0,NULL,0,NULL,NULL,14,-1),(427,'PageView','2009-01-09 00:30:04','2009-01-09 00:30:04','::1',NULL,NULL,0,NULL,0,NULL,NULL,14,-1),(428,'PageView','2009-01-09 00:30:16','2009-01-09 00:30:16','::1',NULL,NULL,0,NULL,0,NULL,NULL,10,1),(429,'PageView','2009-01-09 00:30:18','2009-01-09 00:30:18','::1',NULL,NULL,0,NULL,0,NULL,NULL,10,1),(430,'PageView','2009-01-09 00:30:54','2009-01-09 00:30:54','::1',NULL,NULL,0,NULL,0,NULL,NULL,14,-1),(431,'PageView','2009-01-09 00:31:05','2009-01-09 00:31:05','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(432,'PageView','2009-01-09 00:31:08','2009-01-09 00:31:08','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/?flush=1',0,NULL,NULL,9,-1),(433,'PageView','2009-01-09 00:31:56','2009-01-09 00:31:56','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/?flush=1',0,NULL,NULL,9,-1),(434,'PageView','2009-01-09 00:32:02','2009-01-09 00:32:02','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(435,'PageView','2009-01-09 00:32:12','2009-01-09 00:32:12','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(436,'PageView','2009-01-09 00:32:15','2009-01-09 00:32:15','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/?flush=1',0,NULL,NULL,0,-1),(437,'PageView','2009-01-09 00:32:39','2009-01-09 00:32:39','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(438,'PageView','2009-01-09 00:32:41','2009-01-09 00:32:41','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(439,'PageView','2009-01-09 00:32:43','2009-01-09 00:32:43','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(440,'PageView','2009-01-09 00:32:46','2009-01-09 00:32:46','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/?flush=1',0,NULL,NULL,9,1),(441,'PageView','2009-01-09 00:32:57','2009-01-09 00:32:57','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,1),(442,'PageView','2009-01-09 00:33:02','2009-01-09 00:33:02','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,1),(443,'PageView','2009-01-09 00:34:01','2009-01-09 00:34:01','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(444,'PageView','2009-01-09 00:34:02','2009-01-09 00:34:02','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/?flush=1',0,NULL,NULL,9,-1),(445,'PageView','2009-01-09 00:34:11','2009-01-09 00:34:11','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(446,'PageView','2009-01-09 00:34:15','2009-01-09 00:34:15','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home?flush=1',0,NULL,NULL,10,-1),(447,'PageView','2009-01-09 00:34:18','2009-01-09 00:34:18','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,-1),(448,'PageView','2009-01-09 00:34:23','2009-01-09 00:34:23','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,10,-1),(449,'PageView','2009-01-09 00:34:35','2009-01-09 00:34:35','::1',NULL,NULL,0,NULL,0,NULL,NULL,10,-1),(450,'PageView','2009-01-09 00:35:36','2009-01-09 00:35:36','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,1),(451,'PageView','2009-01-09 00:35:39','2009-01-09 00:35:39','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home?flush=1',0,NULL,NULL,14,1),(452,'PageView','2009-01-09 00:35:55','2009-01-09 00:35:55','::1',NULL,NULL,0,NULL,0,NULL,NULL,10,-1),(453,'PageView','2009-01-09 00:35:59','2009-01-09 00:35:59','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road?flush=1',0,NULL,NULL,14,-1),(454,'PageView','2009-01-09 00:36:00','2009-01-09 00:36:00','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,10,-1),(455,'PageView','2009-01-09 00:36:00','2009-01-09 00:36:00','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,10,-1),(456,'PageView','2009-01-09 00:36:03','2009-01-09 00:36:03','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,10,-1),(457,'PageView','2009-01-09 00:36:05','2009-01-09 00:36:05','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,10,-1),(458,'PageView','2009-01-09 00:36:07','2009-01-09 00:36:07','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(459,'PageView','2009-01-09 00:36:08','2009-01-09 00:36:08','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,0,-1),(460,'PageView','2009-01-09 00:36:09','2009-01-09 00:36:09','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,9,-1),(461,'PageView','2009-01-09 00:36:11','2009-01-09 00:36:11','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,-1),(462,'PageView','2009-01-09 00:36:18','2009-01-09 00:36:18','::1',NULL,NULL,0,NULL,0,NULL,NULL,10,-1),(463,'PageView','2009-01-09 00:36:43','2009-01-09 00:36:43','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home?flush=1',0,NULL,NULL,14,1),(464,'PageView','2009-01-09 00:36:45','2009-01-09 00:36:45','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,10,1),(465,'PageView','2009-01-09 00:36:48','2009-01-09 00:36:48','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,1),(466,'PageView','2009-01-09 00:36:52','2009-01-09 00:36:52','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,1),(467,'PageView','2009-01-09 00:36:59','2009-01-09 00:36:59','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,10,1),(468,'PageView','2009-01-09 00:37:03','2009-01-09 00:37:03','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,10,1),(469,'PageView','2009-01-09 00:37:04','2009-01-09 00:37:04','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,1),(470,'PageView','2009-01-09 00:37:06','2009-01-09 00:37:06','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,10,1),(471,'PageView','2009-01-09 00:37:10','2009-01-09 00:37:10','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,1),(472,'PageView','2009-01-09 00:37:12','2009-01-09 00:37:12','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,10,1),(473,'PageView','2009-01-09 00:37:14','2009-01-09 00:37:14','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,1),(474,'PageView','2009-01-09 00:37:46','2009-01-09 00:37:46','127.0.0.1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(475,'PageView','2009-01-09 00:37:48','2009-01-09 00:37:48','127.0.0.1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/',0,NULL,NULL,9,-1),(476,'PageView','2009-01-09 00:37:51','2009-01-09 00:37:51','127.0.0.1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,-1),(477,'PageView','2009-01-09 00:37:53','2009-01-09 00:37:53','127.0.0.1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,-1),(478,'PageView','2009-01-09 00:37:56','2009-01-09 00:37:56','127.0.0.1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,14,-1),(479,'PageView','2009-01-09 00:37:58','2009-01-09 00:37:58','127.0.0.1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,14,-1),(480,'PageView','2009-01-09 00:37:59','2009-01-09 00:37:59','127.0.0.1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,14,-1),(481,'PageView','2009-01-09 00:38:00','2009-01-09 00:38:00','127.0.0.1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,14,-1),(482,'PageView','2009-01-09 00:38:19','2009-01-09 00:38:19','127.0.0.1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,14,-1),(483,'PageView','2009-01-09 00:38:26','2009-01-09 00:38:26','127.0.0.1',NULL,NULL,0,NULL,0,NULL,NULL,14,-1),(484,'PageView','2009-01-09 00:38:28','2009-01-09 00:38:28','127.0.0.1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/?flush=1',0,NULL,NULL,10,-1),(485,'PageView','2009-01-09 00:38:29','2009-01-09 00:38:29','127.0.0.1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,-1),(486,'PageView','2009-01-09 00:38:39','2009-01-09 00:38:39','127.0.0.1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,-1),(487,'PageView','2009-01-09 00:38:47','2009-01-09 00:38:47','127.0.0.1',NULL,NULL,0,NULL,0,NULL,NULL,14,-1),(488,'PageView','2009-01-09 00:38:49','2009-01-09 00:38:49','127.0.0.1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/?flush=1',0,NULL,NULL,10,-1),(489,'PageView','2009-01-09 00:40:03','2009-01-09 00:40:03','::1',NULL,NULL,0,NULL,0,NULL,NULL,10,-1),(490,'PageView','2009-01-09 00:40:05','2009-01-09 00:40:05','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/?flush=1',0,NULL,NULL,15,-1),(491,'PageView','2009-01-09 00:40:06','2009-01-09 00:40:06','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(492,'PageView','2009-01-09 00:40:08','2009-01-09 00:40:08','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,14,-1),(493,'PageView','2009-01-09 00:40:09','2009-01-09 00:40:09','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,-1),(494,'PageView','2009-01-09 00:40:11','2009-01-09 00:40:11','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(495,'PageView','2009-01-09 00:40:58','2009-01-09 00:40:58','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,14,-1),(496,'PageView','2009-01-09 00:41:00','2009-01-09 00:41:00','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,-1),(497,'PageView','2009-01-09 00:41:01','2009-01-09 00:41:01','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,11,-1),(498,'PageView','2009-01-09 00:41:03','2009-01-09 00:41:03','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(499,'PageView','2009-01-09 00:41:05','2009-01-09 00:41:05','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,-1),(500,'PageView','2009-01-09 00:41:06','2009-01-09 00:41:06','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(501,'PageView','2009-01-09 00:41:08','2009-01-09 00:41:08','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,-1),(502,'PageView','2009-01-09 00:41:16','2009-01-09 00:41:16','::1',NULL,NULL,0,NULL,0,NULL,NULL,11,-1),(503,'PageView','2009-01-09 00:41:18','2009-01-09 00:41:18','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/?flush=1',0,NULL,NULL,10,-1),(504,'PageView','2009-01-09 00:41:20','2009-01-09 00:41:20','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,-1),(505,'PageView','2009-01-09 00:41:21','2009-01-09 00:41:21','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,12,-1),(506,'PageView','2009-01-09 00:41:22','2009-01-09 00:41:22','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/the-ridge-at-beaumont/',0,NULL,NULL,13,-1),(507,'PageView','2009-01-09 00:41:24','2009-01-09 00:41:24','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/coming-soon/',0,NULL,NULL,10,-1),(508,'PageView','2009-01-09 00:41:26','2009-01-09 00:41:26','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,10,-1),(509,'PageView','2009-01-09 00:41:27','2009-01-09 00:41:27','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,10,-1),(510,'PageView','2009-01-09 00:41:28','2009-01-09 00:41:28','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,-1),(511,'PageView','2009-01-09 00:41:29','2009-01-09 00:41:29','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,-1),(512,'PageView','2009-01-09 00:41:30','2009-01-09 00:41:30','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(513,'PageView','2009-01-09 00:41:32','2009-01-09 00:41:32','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,14,-1),(514,'PageView','2009-01-09 00:41:51','2009-01-09 00:41:51','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,14,-1),(515,'PageView','2009-01-09 00:41:53','2009-01-09 00:41:53','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,10,-1),(516,'PageView','2009-01-09 00:41:57','2009-01-09 00:41:57','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,-1),(517,'PageView','2009-01-09 00:41:59','2009-01-09 00:41:59','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(518,'PageView','2009-01-09 00:42:00','2009-01-09 00:42:00','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,-1),(519,'PageView','2009-01-09 00:42:02','2009-01-09 00:42:02','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,14,-1),(520,'PageView','2009-01-09 00:42:04','2009-01-09 00:42:04','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,-1),(521,'PageView','2009-01-09 00:42:06','2009-01-09 00:42:06','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(522,'PageView','2009-01-09 00:42:08','2009-01-09 00:42:08','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,10,-1),(523,'PageView','2009-01-09 00:42:09','2009-01-09 00:42:09','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,0,-1),(524,'PageView','2009-01-09 00:42:11','2009-01-09 00:42:11','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,9,-1),(525,'PageView','2009-01-09 00:42:13','2009-01-09 00:42:13','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,0,-1),(526,'PageView','2009-01-09 00:42:14','2009-01-09 00:42:14','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/my-belmark-home',0,NULL,NULL,0,-1),(527,'PageView','2009-01-09 00:42:16','2009-01-09 00:42:16','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,9,-1),(528,'PageView','2009-01-09 00:42:19','2009-01-09 00:42:19','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,11,-1),(529,'PageView','2009-01-09 00:42:20','2009-01-09 00:42:20','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(530,'PageView','2009-01-09 00:42:22','2009-01-09 00:42:22','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,-1),(531,'PageView','2009-01-09 00:42:43','2009-01-09 00:42:43','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,-1),(532,'PageView','2009-01-09 00:42:49','2009-01-09 00:42:49','::1',NULL,NULL,0,NULL,0,NULL,NULL,11,-1),(533,'PageView','2009-01-09 00:42:51','2009-01-09 00:42:51','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/?flush=1',0,NULL,NULL,10,-1),(534,'PageView','2009-01-09 00:42:53','2009-01-09 00:42:53','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,-1),(535,'PageView','2009-01-09 00:42:55','2009-01-09 00:42:55','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(536,'PageView','2009-01-09 00:42:56','2009-01-09 00:42:56','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,-1),(537,'PageView','2009-01-09 00:42:57','2009-01-09 00:42:57','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,-1),(538,'PageView','2009-01-09 00:42:58','2009-01-09 00:42:58','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(539,'PageView','2009-01-09 00:43:00','2009-01-09 00:43:00','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,14,-1),(540,'PageView','2009-01-09 00:43:01','2009-01-09 00:43:01','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,11,-1),(541,'PageView','2009-01-09 00:43:02','2009-01-09 00:43:02','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(542,'PageView','2009-01-09 00:43:11','2009-01-09 00:43:11','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,-1),(543,'PageView','2009-01-09 00:43:12','2009-01-09 00:43:12','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(544,'PageView','2009-01-09 00:43:14','2009-01-09 00:43:14','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,-1),(545,'PageView','2009-01-09 00:43:15','2009-01-09 00:43:15','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,-1),(546,'PageView','2009-01-09 00:43:16','2009-01-09 00:43:16','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(547,'PageView','2009-01-09 00:44:07','2009-01-09 00:44:07','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(548,'PageView','2009-01-09 00:44:10','2009-01-09 00:44:10','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,11,-1),(549,'PageView','2009-01-09 00:44:11','2009-01-09 00:44:11','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(550,'PageView','2009-01-09 00:44:14','2009-01-09 00:44:14','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,-1),(551,'PageView','2009-01-09 00:44:15','2009-01-09 00:44:15','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(552,'PageView','2009-01-09 00:44:21','2009-01-09 00:44:21','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,10,-1),(553,'PageView','2009-01-09 00:44:22','2009-01-09 00:44:22','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,-1),(554,'PageView','2009-01-09 00:44:23','2009-01-09 00:44:23','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(555,'PageView','2009-01-09 00:44:25','2009-01-09 00:44:25','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,-1),(556,'PageView','2009-01-09 00:44:33','2009-01-09 00:44:33','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,9,-1),(557,'PageView','2009-01-09 00:44:39','2009-01-09 00:44:39','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,-1),(558,'PageView','2009-01-09 00:44:43','2009-01-09 00:44:43','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,-1),(559,'PageView','2009-01-09 00:44:44','2009-01-09 00:44:44','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,-1),(560,'PageView','2009-01-09 00:44:45','2009-01-09 00:44:45','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(561,'PageView','2009-01-09 00:47:57','2009-01-09 00:47:57','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(562,'PageView','2009-01-09 00:48:02','2009-01-09 00:48:02','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,10,-1),(563,'PageView','2009-01-09 00:48:08','2009-01-09 00:48:08','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,15,-1),(564,'PageView','2009-01-09 00:49:47','2009-01-09 00:49:47','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,15,-1),(565,'PageView','2009-01-09 00:49:50','2009-01-09 00:49:50','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,14,-1),(566,'PageView','2009-01-09 00:49:51','2009-01-09 00:49:51','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,-1),(567,'PageView','2009-01-09 00:50:36','2009-01-09 00:50:36','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,-1),(568,'PageView','2009-01-09 00:50:38','2009-01-09 00:50:38','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,14,-1),(569,'PageView','2009-01-09 00:50:40','2009-01-09 00:50:40','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,-1),(570,'PageView','2009-01-09 00:50:41','2009-01-09 00:50:41','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(571,'PageView','2009-01-09 00:50:42','2009-01-09 00:50:42','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,10,-1),(572,'PageView','2009-01-09 00:50:43','2009-01-09 00:50:43','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,-1),(573,'PageView','2009-01-09 00:50:54','2009-01-09 00:50:54','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,1),(574,'PageView','2009-01-09 00:50:57','2009-01-09 00:50:57','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,1),(575,'PageView','2009-01-09 00:50:59','2009-01-09 00:50:59','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,1),(576,'PageView','2009-01-09 00:51:54','2009-01-09 00:51:54','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,-1),(577,'PageView','2009-01-09 00:51:56','2009-01-09 00:51:56','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,16,-1),(578,'PageView','2009-01-09 00:51:58','2009-01-09 00:51:58','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,14,-1),(579,'PageView','2009-01-09 00:51:59','2009-01-09 00:51:59','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,-1),(580,'PageView','2009-01-09 00:52:00','2009-01-09 00:52:00','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(581,'PageView','2009-01-09 00:52:03','2009-01-09 00:52:03','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,1),(582,'PageView','2009-01-09 00:52:12','2009-01-09 00:52:12','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,9,1),(583,'PageView','2009-01-09 00:52:15','2009-01-09 00:52:15','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,1),(584,'PageView','2009-01-09 00:52:20','2009-01-09 00:52:20','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,1),(585,'PageView','2009-01-09 00:52:22','2009-01-09 00:52:22','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,1),(586,'PageView','2009-01-09 00:52:26','2009-01-09 00:52:26','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,1),(587,'PageView','2009-01-09 00:52:32','2009-01-09 00:52:32','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(588,'PageView','2009-01-09 00:52:34','2009-01-09 00:52:34','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/?flush=1',0,NULL,NULL,9,1),(589,'PageView','2009-01-09 00:53:03','2009-01-09 00:53:03','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(590,'PageView','2009-01-09 00:53:07','2009-01-09 00:53:07','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,14,-1),(591,'PageView','2009-01-09 00:53:21','2009-01-09 00:53:21','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/?flush=1',0,NULL,NULL,9,1),(592,'PageView','2009-01-09 00:53:24','2009-01-09 00:53:24','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,1),(593,'PageView','2009-01-09 00:53:39','2009-01-09 00:53:39','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,1),(594,'PageView','2009-01-09 00:54:05','2009-01-09 00:54:05','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,1),(595,'PageView','2009-01-09 00:54:07','2009-01-09 00:54:07','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,15,1),(596,'PageView','2009-01-09 00:54:22','2009-01-09 00:54:22','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,14,-1),(597,'PageView','2009-01-09 00:54:24','2009-01-09 00:54:24','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,14,-1),(598,'PageView','2009-01-09 00:54:25','2009-01-09 00:54:25','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,-1),(599,'PageView','2009-01-09 00:54:26','2009-01-09 00:54:26','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(600,'PageView','2009-01-09 00:54:28','2009-01-09 00:54:28','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,14,-1),(601,'PageView','2009-01-09 00:54:29','2009-01-09 00:54:29','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,-1),(602,'PageView','2009-01-09 00:54:31','2009-01-09 00:54:31','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(603,'PageView','2009-01-09 00:54:33','2009-01-09 00:54:33','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,14,-1),(604,'PageView','2009-01-09 00:54:34','2009-01-09 00:54:34','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,16,-1),(605,'PageView','2009-01-09 00:54:36','2009-01-09 00:54:36','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,15,-1),(606,'PageView','2009-01-09 00:54:56','2009-01-09 00:54:56','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,14,-1),(607,'PageView','2009-01-09 00:54:57','2009-01-09 00:54:57','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,-1),(608,'PageView','2009-01-09 00:54:58','2009-01-09 00:54:58','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(609,'PageView','2009-01-09 00:55:00','2009-01-09 00:55:00','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,14,-1),(610,'PageView','2009-01-09 00:55:01','2009-01-09 00:55:01','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,-1),(611,'PageView','2009-01-09 00:55:02','2009-01-09 00:55:02','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(612,'PageView','2009-01-09 00:55:03','2009-01-09 00:55:03','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,15,-1),(613,'PageView','2009-01-09 00:55:05','2009-01-09 00:55:05','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,14,-1),(614,'PageView','2009-01-09 00:55:08','2009-01-09 00:55:08','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,-1),(615,'PageView','2009-01-09 00:55:09','2009-01-09 00:55:09','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,14,-1),(616,'PageView','2009-01-09 00:55:10','2009-01-09 00:55:10','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,9,-1),(617,'PageView','2009-01-09 00:55:14','2009-01-09 00:55:14','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,-1),(618,'PageView','2009-01-09 00:55:16','2009-01-09 00:55:16','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,-1),(619,'PageView','2009-01-09 00:55:18','2009-01-09 00:55:18','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(620,'PageView','2009-01-09 00:55:19','2009-01-09 00:55:19','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,11,-1),(621,'PageView','2009-01-09 00:55:20','2009-01-09 00:55:20','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(622,'PageView','2009-01-09 00:55:22','2009-01-09 00:55:22','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,-1),(623,'PageView','2009-01-09 00:55:23','2009-01-09 00:55:23','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(624,'PageView','2009-01-09 00:55:24','2009-01-09 00:55:24','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,-1),(625,'PageView','2009-01-09 00:55:25','2009-01-09 00:55:25','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,12,-1),(626,'PageView','2009-01-09 00:55:27','2009-01-09 00:55:27','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/the-ridge-at-beaumont/',0,NULL,NULL,11,-1),(627,'PageView','2009-01-09 00:55:28','2009-01-09 00:55:28','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(628,'PageView','2009-01-09 00:55:31','2009-01-09 00:55:31','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,-1),(629,'PageView','2009-01-09 00:55:54','2009-01-09 00:55:54','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,-1),(630,'PageView','2009-01-09 00:56:02','2009-01-09 00:56:02','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,-1),(631,'PageView','2009-01-09 00:56:04','2009-01-09 00:56:04','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,10,-1),(632,'PageView','2009-01-09 00:56:05','2009-01-09 00:56:05','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,-1),(633,'PageView','2009-01-09 00:56:06','2009-01-09 00:56:06','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,-1),(634,'PageView','2009-01-09 00:56:07','2009-01-09 00:56:07','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,15,-1),(635,'PageView','2009-01-09 00:56:39','2009-01-09 00:56:39','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,15,-1),(636,'PageView','2009-01-09 00:56:45','2009-01-09 00:56:45','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,11,-1),(637,'PageView','2009-01-09 00:56:46','2009-01-09 00:56:46','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(638,'PageView','2009-01-09 00:57:07','2009-01-09 00:57:07','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(639,'PageView','2009-01-09 00:57:09','2009-01-09 00:57:09','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,-1),(640,'PageView','2009-01-09 00:57:15','2009-01-09 00:57:15','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,15,1),(641,'PageView','2009-01-09 00:57:29','2009-01-09 00:57:29','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,15,1),(642,'PageView','2009-01-09 01:02:58','2009-01-09 01:02:58','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,-1),(643,'PageView','2009-01-09 01:03:01','2009-01-09 01:03:01','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,11,-1),(644,'PageView','2009-01-09 01:03:03','2009-01-09 01:03:03','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(645,'PageView','2009-01-09 01:03:06','2009-01-09 01:03:06','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,-1),(646,'PageView','2009-01-09 01:03:07','2009-01-09 01:03:07','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,-1),(647,'PageView','2009-01-09 01:03:08','2009-01-09 01:03:08','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(648,'PageView','2009-01-09 01:03:11','2009-01-09 01:03:11','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,14,-1),(649,'PageView','2009-01-09 01:03:22','2009-01-09 01:03:22','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,14,-1),(650,'PageView','2009-01-09 01:03:24','2009-01-09 01:03:24','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,-1),(651,'PageView','2009-01-09 01:03:26','2009-01-09 01:03:26','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(652,'PageView','2009-01-09 01:03:28','2009-01-09 01:03:28','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,15,-1),(653,'PageView','2009-01-09 01:03:29','2009-01-09 01:03:29','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,14,-1),(654,'PageView','2009-01-09 01:03:30','2009-01-09 01:03:30','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,10,-1),(655,'PageView','2009-01-09 01:04:05','2009-01-09 01:04:05','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(656,'PageView','2009-01-09 01:04:18','2009-01-09 01:04:18','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,-1),(657,'PageView','2009-01-09 01:06:45','2009-01-09 01:06:45','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,-1),(658,'PageView','2009-01-09 01:06:48','2009-01-09 01:06:48','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,-1),(659,'PageView','2009-01-09 01:06:55','2009-01-09 01:06:55','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,-1),(660,'PageView','2009-01-09 01:06:58','2009-01-09 01:06:58','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,-1),(661,'PageView','2009-01-09 01:06:59','2009-01-09 01:06:59','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(662,'PageView','2009-01-09 01:07:15','2009-01-09 01:07:15','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(663,'PageView','2009-01-09 01:07:21','2009-01-09 01:07:21','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(664,'PageView','2009-01-09 01:07:24','2009-01-09 01:07:24','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,15,1),(665,'PageView','2009-01-09 01:07:30','2009-01-09 01:07:30','::1',NULL,NULL,0,NULL,0,NULL,NULL,15,1),(666,'PageView','2009-01-09 01:07:48','2009-01-09 01:07:48','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(667,'PageView','2009-01-09 01:07:51','2009-01-09 01:07:51','::1',NULL,NULL,0,NULL,0,NULL,NULL,15,1),(668,'PageView','2009-01-09 01:08:06','2009-01-09 01:08:06','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(669,'PageView','2009-01-09 01:08:18','2009-01-09 01:08:18','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(670,'PageView','2009-01-09 01:08:20','2009-01-09 01:08:20','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(671,'PageView','2009-01-09 01:08:27','2009-01-09 01:08:27','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(672,'PageView','2009-01-09 01:08:44','2009-01-09 01:08:44','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(673,'PageView','2009-01-09 01:08:50','2009-01-09 01:08:50','::1',NULL,NULL,0,NULL,0,NULL,NULL,15,1),(674,'PageView','2009-01-09 01:09:00','2009-01-09 01:09:00','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(675,'PageView','2009-01-09 01:09:10','2009-01-09 01:09:10','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home?flush=1',0,NULL,NULL,10,-1),(676,'PageView','2009-01-09 01:09:30','2009-01-09 01:09:30','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home?flush=1',0,NULL,NULL,10,-1),(677,'PageView','2009-01-09 01:10:16','2009-01-09 01:10:16','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home?flush=1',0,NULL,NULL,10,-1),(678,'PageView','2009-01-09 01:10:30','2009-01-09 01:10:30','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home?flush=1',0,NULL,NULL,10,-1),(679,'PageView','2009-01-09 01:10:52','2009-01-09 01:10:52','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home?flush=1',0,NULL,NULL,10,-1),(680,'PageView','2009-01-09 01:11:01','2009-01-09 01:11:01','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home?flush=1',0,NULL,NULL,10,-1),(681,'PageView','2009-01-09 01:11:19','2009-01-09 01:11:19','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home?flush=1',0,NULL,NULL,10,-1),(682,'PageView','2009-01-09 01:11:39','2009-01-09 01:11:39','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,-1),(683,'PageView','2009-01-09 01:11:40','2009-01-09 01:11:40','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,-1),(684,'PageView','2009-01-09 01:11:42','2009-01-09 01:11:42','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(685,'PageView','2009-01-09 01:11:54','2009-01-09 01:11:54','::1',NULL,NULL,0,NULL,0,NULL,NULL,15,1),(686,'PageView','2009-01-09 01:11:56','2009-01-09 01:11:56','::1',NULL,NULL,0,NULL,0,NULL,NULL,15,1),(687,'PageView','2009-01-09 01:11:59','2009-01-09 01:11:59','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(688,'PageView','2009-01-09 01:12:02','2009-01-09 01:12:02','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,14,-1),(689,'PageView','2009-01-09 01:12:04','2009-01-09 01:12:04','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,-1),(690,'PageView','2009-01-09 01:12:05','2009-01-09 01:12:05','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(691,'PageView','2009-01-09 01:12:11','2009-01-09 01:12:11','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,14,-1),(692,'PageView','2009-01-09 01:12:12','2009-01-09 01:12:12','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,-1),(693,'PageView','2009-01-09 01:12:13','2009-01-09 01:12:13','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(694,'PageView','2009-01-09 01:12:17','2009-01-09 01:12:17','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,11,-1),(695,'PageView','2009-01-09 01:12:18','2009-01-09 01:12:18','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(696,'PageView','2009-01-09 01:12:22','2009-01-09 01:12:22','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,10,-1),(697,'PageView','2009-01-09 01:13:21','2009-01-09 01:13:21','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,10,-1),(698,'PageView','2009-01-09 01:13:43','2009-01-09 01:13:43','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(699,'PageView','2009-01-09 01:14:17','2009-01-09 01:14:17','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(700,'PageView','2009-01-09 01:14:19','2009-01-09 01:14:19','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(701,'PageView','2009-01-09 01:15:21','2009-01-09 01:15:21','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(702,'PageView','2009-01-09 01:15:26','2009-01-09 01:15:26','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(703,'PageView','2009-01-09 01:16:43','2009-01-09 01:16:43','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(704,'PageView','2009-01-09 01:16:58','2009-01-09 01:16:58','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,-1),(705,'PageView','2009-01-09 01:17:26','2009-01-09 01:17:26','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,-1),(706,'PageView','2009-01-09 01:17:42','2009-01-09 01:17:42','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,-1),(707,'PageView','2009-01-09 01:17:49','2009-01-09 01:17:49','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,-1),(708,'PageView','2009-01-09 01:17:52','2009-01-09 01:17:52','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,16,-1),(709,'PageView','2009-01-09 01:17:53','2009-01-09 01:17:53','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,15,-1),(710,'PageView','2009-01-09 01:17:54','2009-01-09 01:17:54','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,14,-1),(711,'PageView','2009-01-09 01:18:00','2009-01-09 01:18:00','::1',NULL,NULL,0,NULL,0,NULL,NULL,14,-1),(712,'PageView','2009-01-09 01:18:02','2009-01-09 01:18:02','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/?flush=1',0,NULL,NULL,15,-1),(713,'PageView','2009-01-09 01:18:04','2009-01-09 01:18:04','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(714,'PageView','2009-01-09 01:18:06','2009-01-09 01:18:06','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,14,-1),(715,'PageView','2009-01-09 01:18:27','2009-01-09 01:18:27','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,9,-1),(716,'PageView','2009-01-09 01:18:29','2009-01-09 01:18:29','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,0,-1),(717,'PageView','2009-01-09 01:18:33','2009-01-09 01:18:33','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/my-belmark-home',0,NULL,NULL,0,-1),(718,'PageView','2009-01-09 01:18:35','2009-01-09 01:18:35','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/belmark-cares',0,NULL,NULL,0,-1),(719,'PageView','2009-01-09 01:18:36','2009-01-09 01:18:36','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/my-belmark-home',0,NULL,NULL,0,-1),(720,'PageView','2009-01-09 01:18:38','2009-01-09 01:18:38','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/why-belmark',0,NULL,NULL,0,-1),(721,'PageView','2009-01-09 01:20:15','2009-01-09 01:20:15','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/agents',0,NULL,NULL,9,-1),(722,'PageView','2009-01-09 01:20:17','2009-01-09 01:20:17','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,0,-1),(723,'PageView','2009-01-09 01:20:18','2009-01-09 01:20:18','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/my-belmark-home',0,NULL,NULL,9,-1),(724,'PageView','2009-01-09 01:20:20','2009-01-09 01:20:20','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,-1),(725,'PageView','2009-01-09 01:20:22','2009-01-09 01:20:22','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,-1),(726,'PageView','2009-01-09 01:20:23','2009-01-09 01:20:23','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,12,-1),(727,'PageView','2009-01-09 01:20:24','2009-01-09 01:20:24','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/the-ridge-at-beaumont/',0,NULL,NULL,11,-1),(728,'PageView','2009-01-09 01:20:25','2009-01-09 01:20:25','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(729,'PageView','2009-01-09 01:22:54','2009-01-09 01:22:54','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(730,'PageView','2009-01-09 01:23:18','2009-01-09 01:23:18','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(731,'PageView','2009-01-09 01:23:32','2009-01-09 01:23:32','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(732,'PageView','2009-01-09 01:23:33','2009-01-09 01:23:33','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(733,'PageView','2009-01-09 01:23:37','2009-01-09 01:23:37','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(734,'PageView','2009-01-09 01:23:39','2009-01-09 01:23:39','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,0,-1),(735,'PageView','2009-01-09 01:23:40','2009-01-09 01:23:40','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,9,-1),(736,'PageView','2009-01-09 01:23:42','2009-01-09 01:23:42','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,0,-1),(737,'PageView','2009-01-09 01:23:43','2009-01-09 01:23:43','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,0,-1),(738,'PageView','2009-01-09 01:23:44','2009-01-09 01:23:44','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/my-belmark-home',0,NULL,NULL,0,-1),(739,'PageView','2009-01-09 01:23:45','2009-01-09 01:23:45','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/belmark-cares',0,NULL,NULL,0,-1),(740,'PageView','2009-01-09 01:23:46','2009-01-09 01:23:46','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/why-belmark',0,NULL,NULL,0,-1),(741,'PageView','2009-01-09 01:23:49','2009-01-09 01:23:49','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/agents',0,NULL,NULL,9,-1),(742,'PageView','2009-01-09 01:23:52','2009-01-09 01:23:52','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,-1),(743,'PageView','2009-01-09 01:23:53','2009-01-09 01:23:53','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,-1),(744,'PageView','2009-01-09 01:23:53','2009-01-09 01:23:53','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,12,-1),(745,'PageView','2009-01-09 01:23:54','2009-01-09 01:23:54','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/the-ridge-at-beaumont/',0,NULL,NULL,13,-1),(746,'PageView','2009-01-09 01:23:55','2009-01-09 01:23:55','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/coming-soon/',0,NULL,NULL,10,-1),(747,'PageView','2009-01-09 01:23:57','2009-01-09 01:23:57','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,-1),(748,'PageView','2009-01-09 01:23:58','2009-01-09 01:23:58','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,12,-1),(749,'PageView','2009-01-09 01:23:58','2009-01-09 01:23:58','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/the-ridge-at-beaumont/',0,NULL,NULL,13,-1),(750,'PageView','2009-01-09 01:24:00','2009-01-09 01:24:00','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/coming-soon/',0,NULL,NULL,10,-1),(751,'PageView','2009-01-09 01:24:02','2009-01-09 01:24:02','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,-1),(752,'PageView','2009-01-09 01:24:04','2009-01-09 01:24:04','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,-1),(753,'PageView','2009-01-09 01:24:05','2009-01-09 01:24:05','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(754,'PageView','2009-01-09 01:24:06','2009-01-09 01:24:06','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,15,-1),(755,'PageView','2009-01-09 01:24:07','2009-01-09 01:24:07','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,14,-1),(756,'PageView','2009-01-09 01:26:18','2009-01-09 01:26:18','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,14,-1),(757,'PageView','2009-01-09 01:26:19','2009-01-09 01:26:19','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,0,-1),(758,'PageView','2009-01-09 01:26:21','2009-01-09 01:26:21','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/belmark-cares',0,NULL,NULL,0,-1),(759,'PageView','2009-01-09 01:26:22','2009-01-09 01:26:22','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/my-belmark-home',0,NULL,NULL,0,-1),(760,'PageView','2009-01-09 01:27:04','2009-01-09 01:27:04','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/my-belmark-home',0,NULL,NULL,0,-1),(761,'PageView','2009-01-09 01:27:14','2009-01-09 01:27:14','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/my-belmark-home',0,NULL,NULL,0,-1),(762,'PageView','2009-01-09 01:30:08','2009-01-09 01:30:08','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/my-belmark-home',0,NULL,NULL,0,-1),(763,'PageView','2009-01-09 01:31:09','2009-01-09 01:31:09','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/my-belmark-home',0,NULL,NULL,0,-1),(764,'PageView','2009-01-09 01:31:34','2009-01-09 01:31:34','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/my-belmark-home',0,NULL,NULL,0,-1),(765,'PageView','2009-01-09 01:32:14','2009-01-09 01:32:14','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/my-belmark-home',0,NULL,NULL,0,-1),(766,'PageView','2009-01-09 01:32:52','2009-01-09 01:32:52','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/my-belmark-home',0,NULL,NULL,0,-1),(767,'PageView','2009-01-09 01:33:07','2009-01-09 01:33:07','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/my-belmark-home',0,NULL,NULL,0,-1),(768,'PageView','2009-01-09 01:33:30','2009-01-09 01:33:30','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/my-belmark-home',0,NULL,NULL,0,-1),(769,'PageView','2009-01-09 01:34:01','2009-01-09 01:34:01','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/my-belmark-home',0,NULL,NULL,0,-1),(770,'PageView','2009-01-09 01:35:25','2009-01-09 01:35:25','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/my-belmark-home',0,NULL,NULL,0,-1),(771,'PageView','2009-01-09 01:35:35','2009-01-09 01:35:35','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/my-belmark-home',0,NULL,NULL,0,-1),(772,'PageView','2009-01-09 01:35:49','2009-01-09 01:35:49','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/why-belmark',0,NULL,NULL,9,-1),(773,'PageView','2009-01-09 01:40:34','2009-01-09 01:40:34','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/why-belmark',0,NULL,NULL,9,-1),(774,'PageView','2009-01-09 01:40:37','2009-01-09 01:40:37','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,-1),(775,'PageView','2009-01-09 01:40:40','2009-01-09 01:40:40','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,0,-1),(776,'PageView','2009-01-09 01:40:41','2009-01-09 01:40:41','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,9,-1),(777,'PageView','2009-01-09 01:40:43','2009-01-09 01:40:43','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,0,-1),(778,'PageView','2009-01-09 01:40:44','2009-01-09 01:40:44','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/my-belmark-home',0,NULL,NULL,0,-1),(779,'PageView','2009-01-09 01:40:45','2009-01-09 01:40:45','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/belmark-cares',0,NULL,NULL,0,-1),(780,'PageView','2009-01-09 01:40:47','2009-01-09 01:40:47','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,9,-1),(781,'PageView','2009-01-09 01:40:55','2009-01-09 01:40:55','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,9,-1),(782,'PageView','2009-01-09 01:40:57','2009-01-09 01:40:57','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,-1),(783,'PageView','2009-01-09 01:41:01','2009-01-09 01:41:01','::1',NULL,NULL,0,NULL,0,NULL,NULL,15,1),(784,'PageView','2009-01-09 01:41:02','2009-01-09 01:41:02','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/?flush=1',0,NULL,NULL,9,1),(785,'PageView','2009-01-09 01:41:05','2009-01-09 01:41:05','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,1),(786,'PageView','2009-01-09 01:41:08','2009-01-09 01:41:08','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,1),(787,'PageView','2009-01-09 01:41:10','2009-01-09 01:41:10','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,1),(788,'PageView','2009-01-09 01:41:51','2009-01-09 01:41:51','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,-1),(789,'PageView','2009-01-09 01:41:53','2009-01-09 01:41:53','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,-1),(790,'PageView','2009-01-09 01:41:55','2009-01-09 01:41:55','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,-1),(791,'PageView','2009-01-09 01:42:01','2009-01-09 01:42:01','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,1),(792,'PageView','2009-01-09 01:42:03','2009-01-09 01:42:03','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,1),(793,'PageView','2009-01-09 01:42:05','2009-01-09 01:42:05','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,12,1),(794,'PageView','2009-01-09 01:42:07','2009-01-09 01:42:07','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/the-ridge-at-beaumont/',0,NULL,NULL,13,1),(795,'PageView','2009-01-09 01:42:09','2009-01-09 01:42:09','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/coming-soon/',0,NULL,NULL,11,1),(796,'PageView','2009-01-09 01:42:11','2009-01-09 01:42:11','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,1),(797,'PageView','2009-01-09 01:42:14','2009-01-09 01:42:14','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,1),(798,'PageView','2009-01-09 01:42:15','2009-01-09 01:42:15','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,1),(799,'PageView','2009-01-09 01:42:18','2009-01-09 01:42:18','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,1),(800,'PageView','2009-01-09 01:42:25','2009-01-09 01:42:25','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,9,1),(801,'PageView','2009-01-09 01:42:29','2009-01-09 01:42:29','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,1),(802,'PageView','2009-01-09 01:42:34','2009-01-09 01:42:34','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(803,'PageView','2009-01-09 01:42:36','2009-01-09 01:42:36','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/',0,NULL,NULL,9,1),(804,'PageView','2009-01-09 01:42:40','2009-01-09 01:42:40','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,0,1),(805,'PageView','2009-01-09 01:42:42','2009-01-09 01:42:42','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,9,1),(806,'PageView','2009-01-09 01:42:44','2009-01-09 01:42:44','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,1),(807,'PageView','2009-01-09 01:42:46','2009-01-09 01:42:46','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,1),(808,'PageView','2009-01-09 01:42:47','2009-01-09 01:42:47','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,1),(809,'PageView','2009-01-09 01:42:52','2009-01-09 01:42:52','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,1),(810,'PageView','2009-01-09 01:42:53','2009-01-09 01:42:53','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,0,1),(811,'PageView','2009-01-09 01:42:55','2009-01-09 01:42:55','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,9,1),(812,'PageView','2009-01-09 01:42:58','2009-01-09 01:42:58','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,1),(813,'PageView','2009-01-09 01:43:02','2009-01-09 01:43:02','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,1),(814,'PageView','2009-01-09 01:43:04','2009-01-09 01:43:04','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,9,1),(815,'PageView','2009-01-09 01:43:12','2009-01-09 01:43:12','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,1),(816,'PageView','2009-01-09 01:43:31','2009-01-09 01:43:31','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,-1),(817,'PageView','2009-01-09 01:43:34','2009-01-09 01:43:34','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(818,'PageView','2009-01-09 01:43:36','2009-01-09 01:43:36','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(819,'PageView','2009-01-09 01:43:37','2009-01-09 01:43:37','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,0,-1),(820,'PageView','2009-01-09 01:43:39','2009-01-09 01:43:39','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,9,-1),(821,'PageView','2009-01-09 01:43:40','2009-01-09 01:43:40','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,-1),(822,'PageView','2009-01-09 01:43:41','2009-01-09 01:43:41','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,-1),(823,'PageView','2009-01-09 01:43:42','2009-01-09 01:43:42','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(824,'PageView','2009-01-09 01:43:44','2009-01-09 01:43:44','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,-1),(825,'PageView','2009-01-09 01:43:45','2009-01-09 01:43:45','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,-1),(826,'PageView','2009-01-09 01:43:46','2009-01-09 01:43:46','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(827,'PageView','2009-01-09 01:43:49','2009-01-09 01:43:49','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,9,-1),(828,'PageView','2009-01-09 01:46:49','2009-01-09 01:46:49','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,9,-1),(829,'PageView','2009-01-09 01:46:52','2009-01-09 01:46:52','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,-1),(830,'PageView','2009-01-09 01:46:53','2009-01-09 01:46:53','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,-1),(831,'PageView','2009-01-09 01:46:54','2009-01-09 01:46:54','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,12,-1),(832,'PageView','2009-01-09 01:46:57','2009-01-09 01:46:57','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/the-ridge-at-beaumont/',0,NULL,NULL,11,-1),(833,'PageView','2009-01-09 01:46:58','2009-01-09 01:46:58','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,12,-1),(834,'PageView','2009-01-09 01:47:00','2009-01-09 01:47:00','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/the-ridge-at-beaumont/',0,NULL,NULL,13,-1),(835,'PageView','2009-01-09 01:47:02','2009-01-09 01:47:02','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/coming-soon/',0,NULL,NULL,12,-1),(836,'PageView','2009-01-09 01:47:06','2009-01-09 01:47:06','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/the-ridge-at-beaumont/',0,NULL,NULL,11,-1),(837,'PageView','2009-01-09 01:47:09','2009-01-09 01:47:09','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(838,'PageView','2009-01-09 01:47:10','2009-01-09 01:47:10','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,-1),(839,'PageView','2009-01-09 01:47:12','2009-01-09 01:47:12','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,12,-1),(840,'PageView','2009-01-09 01:47:14','2009-01-09 01:47:14','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/the-ridge-at-beaumont/',0,NULL,NULL,13,-1),(841,'PageView','2009-01-09 01:47:16','2009-01-09 01:47:16','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/coming-soon/',0,NULL,NULL,12,-1),(842,'PageView','2009-01-09 01:47:38','2009-01-09 01:47:38','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/the-ridge-at-beaumont/',0,NULL,NULL,11,-1),(843,'PageView','2009-01-09 01:47:38','2009-01-09 01:47:38','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/the-ridge-at-beaumont/',0,NULL,NULL,11,-1),(844,'PageView','2009-01-09 01:47:40','2009-01-09 01:47:40','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(845,'PageView','2009-01-09 01:47:46','2009-01-09 01:47:46','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,15,-1),(846,'PageView','2009-01-09 01:47:47','2009-01-09 01:47:47','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,-1),(847,'PageView','2009-01-09 01:47:50','2009-01-09 01:47:50','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(848,'PageView','2009-01-09 01:47:51','2009-01-09 01:47:51','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,9,-1),(849,'PageView','2009-01-09 01:47:54','2009-01-09 01:47:54','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,0,-1),(850,'PageView','2009-01-09 01:48:56','2009-01-09 01:48:56','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,1),(851,'PageView','2009-01-09 01:48:59','2009-01-09 01:48:59','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,17,1),(852,'PageView','2009-01-09 01:49:04','2009-01-09 01:49:04','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,17,1),(853,'PageView','2009-01-09 01:52:39','2009-01-09 01:52:39','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,17,-1),(854,'PageView','2009-01-09 01:52:42','2009-01-09 01:52:42','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,9,-1),(855,'PageView','2009-01-09 01:52:44','2009-01-09 01:52:44','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,17,-1),(856,'PageView','2009-01-09 01:52:47','2009-01-09 01:52:47','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,9,-1),(857,'PageView','2009-01-09 01:52:48','2009-01-09 01:52:48','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,-1),(858,'PageView','2009-01-09 01:52:50','2009-01-09 01:52:50','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,-1),(859,'PageView','2009-01-09 01:52:51','2009-01-09 01:52:51','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,17,-1),(860,'PageView','2009-01-09 01:52:52','2009-01-09 01:52:52','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,18,-1),(861,'PageView','2009-01-09 01:52:53','2009-01-09 01:52:53','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/gallery/',0,NULL,NULL,19,-1),(862,'PageView','2009-01-09 01:52:54','2009-01-09 01:52:54','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/available-properties/',0,NULL,NULL,20,-1),(863,'PageView','2009-01-09 01:52:56','2009-01-09 01:52:56','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/rental-guidelines/',0,NULL,NULL,17,-1),(864,'PageView','2009-01-09 01:52:58','2009-01-09 01:52:58','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,9,-1),(865,'PageView','2009-01-09 01:52:59','2009-01-09 01:52:59','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,17,-1),(866,'PageView','2009-01-09 01:53:02','2009-01-09 01:53:02','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,9,-1),(867,'PageView','2009-01-09 01:57:43','2009-01-09 01:57:43','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,9,-1),(868,'PageView','2009-01-09 01:57:45','2009-01-09 01:57:45','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,23,-1),(869,'PageView','2009-01-09 01:57:47','2009-01-09 01:57:47','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/belmark-cares',0,NULL,NULL,25,-1),(870,'PageView','2009-01-09 01:57:50','2009-01-09 01:57:50','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/why-belmark',0,NULL,NULL,17,-1),(871,'PageView','2009-01-09 01:57:51','2009-01-09 01:57:51','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,9,-1),(872,'PageView','2009-01-09 01:57:52','2009-01-09 01:57:52','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,22,-1),(873,'PageView','2009-01-09 01:57:53','2009-01-09 01:57:53','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/my-belmark-home',0,NULL,NULL,23,-1),(874,'PageView','2009-01-09 01:57:55','2009-01-09 01:57:55','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/belmark-cares',0,NULL,NULL,24,-1),(875,'PageView','2009-01-09 01:57:56','2009-01-09 01:57:56','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/agents',0,NULL,NULL,26,-1),(876,'PageView','2009-01-09 01:57:57','2009-01-09 01:57:57','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/our-friends',0,NULL,NULL,3,-1),(877,'PageView','2009-01-09 01:57:58','2009-01-09 01:57:58','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/contact-us',0,NULL,NULL,25,-1),(878,'PageView','2009-01-09 01:58:03','2009-01-09 01:58:03','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/why-belmark',0,NULL,NULL,25,-1),(879,'PageView','2009-01-09 01:58:04','2009-01-09 01:58:04','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/why-belmark',0,NULL,NULL,23,-1),(880,'PageView','2009-01-09 01:58:23','2009-01-09 01:58:23','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/why-belmark',0,NULL,NULL,23,-1),(881,'PageView','2009-01-09 01:58:56','2009-01-09 01:58:56','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/why-belmark',0,NULL,NULL,23,-1),(882,'PageView','2009-01-09 01:58:58','2009-01-09 01:58:58','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/why-belmark',0,NULL,NULL,23,-1),(883,'PageView','2009-01-09 01:59:26','2009-01-09 01:59:26','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/why-belmark',0,NULL,NULL,23,-1),(884,'PageView','2009-01-09 01:59:45','2009-01-09 01:59:45','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/belmark-cares',0,NULL,NULL,9,-1),(885,'PageView','2009-01-09 02:02:26','2009-01-09 02:02:26','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,17,1),(886,'PageView','2009-01-09 02:02:29','2009-01-09 02:02:29','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,23,1),(887,'PageView','2009-01-09 02:02:33','2009-01-09 02:02:33','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/belmark-cares',0,NULL,NULL,22,1),(888,'PageView','2009-01-09 02:02:35','2009-01-09 02:02:35','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/my-belmark-home',0,NULL,NULL,23,1),(889,'PageView','2009-01-09 02:02:37','2009-01-09 02:02:37','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/belmark-cares',0,NULL,NULL,17,1),(890,'PageView','2009-01-09 02:02:40','2009-01-09 02:02:40','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,25,1),(891,'PageView','2009-01-09 02:07:36','2009-01-09 02:07:36','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/belmark-cares',0,NULL,NULL,9,-1),(892,'PageView','2009-01-09 02:16:09','2009-01-09 02:16:09','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,25,1),(893,'PageView','2009-01-09 02:16:13','2009-01-09 02:16:13','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,25,1),(894,'PageView','2009-01-09 02:16:16','2009-01-09 02:16:16','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/why-belmark',0,NULL,NULL,22,1),(895,'PageView','2009-01-09 02:16:18','2009-01-09 02:16:18','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/my-belmark-home',0,NULL,NULL,17,1),(896,'PageView','2009-01-09 02:16:20','2009-01-09 02:16:20','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,23,1),(897,'PageView','2009-01-09 02:16:22','2009-01-09 02:16:22','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/belmark-cares',0,NULL,NULL,24,1),(898,'PageView','2009-01-09 02:16:24','2009-01-09 02:16:24','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/agents',0,NULL,NULL,25,1),(899,'PageView','2009-01-09 02:27:27','2009-01-09 02:27:27','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/belmark-cares',0,NULL,NULL,9,-1),(900,'PageView','2009-01-09 02:27:29','2009-01-09 02:27:29','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,-1),(901,'PageView','2009-01-09 02:27:30','2009-01-09 02:27:30','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,-1),(902,'PageView','2009-01-09 02:27:35','2009-01-09 02:27:35','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,10,-1),(903,'PageView','2009-01-09 02:27:37','2009-01-09 02:27:37','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,-1),(904,'PageView','2009-01-09 02:27:39','2009-01-09 02:27:39','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,10,-1),(905,'PageView','2009-01-09 02:27:42','2009-01-09 02:27:42','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,10,-1),(906,'PageView','2009-01-09 02:29:15','2009-01-09 02:29:15','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,10,-1),(907,'PageView','2009-01-09 02:29:16','2009-01-09 02:29:16','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,0,-1),(908,'PageView','2009-01-09 02:29:22','2009-01-09 02:29:22','::1',NULL,NULL,0,NULL,0,NULL,NULL,10,-1),(909,'PageView','2009-01-09 02:29:22','2009-01-09 02:29:22','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/?flush=1',0,NULL,NULL,0,-1),(910,'PageView','2009-01-09 02:29:27','2009-01-09 02:29:27','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/?flush=1',0,NULL,NULL,10,-1),(911,'PageView','2009-01-09 02:29:28','2009-01-09 02:29:28','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,0,-1),(912,'PageView','2009-01-09 02:29:29','2009-01-09 02:29:29','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,-1),(913,'PageView','2009-01-09 02:29:30','2009-01-09 02:29:30','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,0,-1),(914,'PageView','2009-01-09 02:29:31','2009-01-09 02:29:31','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,-1),(915,'PageView','2009-01-09 02:29:32','2009-01-09 02:29:32','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,0,-1),(916,'PageView','2009-01-09 02:29:32','2009-01-09 02:29:32','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(917,'PageView','2009-01-09 02:29:33','2009-01-09 02:29:33','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,0,-1),(918,'PageView','2009-01-09 02:29:34','2009-01-09 02:29:34','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,10,-1),(919,'PageView','2009-01-09 02:29:35','2009-01-09 02:29:35','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,0,-1),(920,'PageView','2009-01-09 02:30:26','2009-01-09 02:30:26','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/agents',0,NULL,NULL,25,1),(921,'PageView','2009-01-09 02:30:27','2009-01-09 02:30:27','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/why-belmark',0,NULL,NULL,0,1),(922,'PageView','2009-01-09 02:30:30','2009-01-09 02:30:30','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/why-belmark',0,NULL,NULL,9,1),(923,'PageView','2009-01-09 02:30:31','2009-01-09 02:30:31','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,0,1),(924,'PageView','2009-01-09 02:30:32','2009-01-09 02:30:32','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,17,1),(925,'PageView','2009-01-09 02:30:34','2009-01-09 02:30:34','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,0,1),(926,'PageView','2009-01-09 02:30:35','2009-01-09 02:30:35','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,9,1),(927,'PageView','2009-01-09 02:30:36','2009-01-09 02:30:36','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,0,1),(928,'PageView','2009-01-09 02:30:37','2009-01-09 02:30:37','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,1),(929,'PageView','2009-01-09 02:30:41','2009-01-09 02:30:41','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,1),(930,'PageView','2009-01-09 02:30:43','2009-01-09 02:30:43','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,1),(931,'PageView','2009-01-09 02:30:45','2009-01-09 02:30:45','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,0,1),(932,'PageView','2009-01-09 02:30:53','2009-01-09 02:30:53','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,1),(933,'PageView','2009-01-09 02:31:36','2009-01-09 02:31:36','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,1),(934,'PageView','2009-01-09 02:31:44','2009-01-09 02:31:44','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,1),(935,'PageView','2009-01-09 02:31:47','2009-01-09 02:31:47','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home?flush=1',0,NULL,NULL,10,1),(936,'PageView','2009-01-09 02:31:51','2009-01-09 02:31:51','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,1),(937,'PageView','2009-01-09 02:31:53','2009-01-09 02:31:53','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,1),(938,'PageView','2009-01-09 02:31:54','2009-01-09 02:31:54','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,1),(939,'PageView','2009-01-09 02:33:01','2009-01-09 02:33:01','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,10,-1),(940,'PageView','2009-01-09 02:33:03','2009-01-09 02:33:03','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,-1),(941,'PageView','2009-01-09 02:33:04','2009-01-09 02:33:04','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(942,'PageView','2009-01-09 02:33:06','2009-01-09 02:33:06','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,-1),(943,'PageView','2009-01-09 02:33:07','2009-01-09 02:33:07','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,12,-1),(944,'PageView','2009-01-09 02:33:08','2009-01-09 02:33:08','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/the-ridge-at-beaumont/',0,NULL,NULL,10,-1),(945,'PageView','2009-01-09 02:33:10','2009-01-09 02:33:10','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,-1),(946,'PageView','2009-01-09 02:34:32','2009-01-09 02:34:32','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,1),(947,'PageView','2009-01-09 02:34:35','2009-01-09 02:34:35','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,1),(948,'PageView','2009-01-09 02:34:42','2009-01-09 02:34:42','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,1),(949,'PageView','2009-01-09 02:34:46','2009-01-09 02:34:46','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,1),(950,'PageView','2009-01-09 02:35:13','2009-01-09 02:35:13','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,-1),(951,'PageView','2009-01-09 02:35:15','2009-01-09 02:35:15','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(952,'PageView','2009-01-09 02:35:27','2009-01-09 02:35:27','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,1),(953,'PageView','2009-01-09 02:35:38','2009-01-09 02:35:38','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,1),(954,'PageView','2009-01-09 02:35:41','2009-01-09 02:35:41','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,1),(955,'PageView','2009-01-09 02:35:45','2009-01-09 02:35:45','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,1),(956,'PageView','2009-01-09 02:35:47','2009-01-09 02:35:47','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,1),(957,'PageView','2009-01-09 02:35:49','2009-01-09 02:35:49','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,1),(958,'PageView','2009-01-09 02:35:52','2009-01-09 02:35:52','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,1),(959,'PageView','2009-01-09 02:35:57','2009-01-09 02:35:57','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,15,1),(960,'PageView','2009-01-09 02:35:59','2009-01-09 02:35:59','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,14,1),(961,'PageView','2009-01-09 02:37:55','2009-01-09 02:37:55','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(962,'PageView','2009-01-09 02:37:59','2009-01-09 02:37:59','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(963,'PageView','2009-01-09 02:38:22','2009-01-09 02:38:22','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(964,'PageView','2009-01-09 02:38:51','2009-01-09 02:38:51','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(965,'PageView','2009-01-09 02:38:58','2009-01-09 02:38:58','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(966,'PageView','2009-01-09 02:39:11','2009-01-09 02:39:11','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(967,'PageView','2009-01-09 02:39:24','2009-01-09 02:39:24','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(968,'PageView','2009-01-09 02:39:40','2009-01-09 02:39:40','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(969,'PageView','2009-01-09 02:39:49','2009-01-09 02:39:49','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(970,'PageView','2009-01-09 02:39:51','2009-01-09 02:39:51','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,-1),(971,'PageView','2009-01-09 02:39:59','2009-01-09 02:39:59','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,23,-1),(972,'PageView','2009-01-09 02:40:01','2009-01-09 02:40:01','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/belmark-cares',0,NULL,NULL,22,-1),(973,'PageView','2009-01-09 02:40:02','2009-01-09 02:40:02','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/my-belmark-home',0,NULL,NULL,9,-1),(974,'PageView','2009-01-09 02:40:03','2009-01-09 02:40:03','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,17,-1),(975,'PageView','2009-01-09 02:40:09','2009-01-09 02:40:09','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,18,-1),(976,'PageView','2009-01-09 02:40:10','2009-01-09 02:40:10','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/gallery/',0,NULL,NULL,19,-1),(977,'PageView','2009-01-09 02:40:11','2009-01-09 02:40:11','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/available-properties/',0,NULL,NULL,20,-1),(978,'PageView','2009-01-09 02:40:12','2009-01-09 02:40:12','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/rental-guidelines/',0,NULL,NULL,21,-1),(979,'PageView','2009-01-09 02:40:13','2009-01-09 02:40:13','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/application-pdf/',0,NULL,NULL,19,-1),(980,'PageView','2009-01-09 02:40:14','2009-01-09 02:40:14','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/available-properties/',0,NULL,NULL,9,-1),(981,'PageView','2009-01-09 02:40:16','2009-01-09 02:40:16','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,-1),(982,'PageView','2009-01-09 02:41:13','2009-01-09 02:41:13','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,-1),(983,'PageView','2009-01-09 02:41:16','2009-01-09 02:41:16','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,-1),(984,'PageView','2009-01-09 02:41:19','2009-01-09 02:41:19','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,-1),(985,'PageView','2009-01-09 02:41:21','2009-01-09 02:41:21','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(986,'PageView','2009-01-09 02:41:22','2009-01-09 02:41:22','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,14,-1),(987,'PageView','2009-01-09 02:41:24','2009-01-09 02:41:24','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,-1),(988,'PageView','2009-01-09 02:41:26','2009-01-09 02:41:26','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(989,'PageView','2009-01-09 02:41:27','2009-01-09 02:41:27','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,14,-1),(990,'PageView','2009-01-09 02:41:33','2009-01-09 02:41:33','::1',NULL,NULL,0,NULL,0,NULL,NULL,14,-1),(991,'PageView','2009-01-09 02:41:36','2009-01-09 02:41:36','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/?flush=1',0,NULL,NULL,14,-1),(992,'PageView','2009-01-09 02:41:50','2009-01-09 02:41:50','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,14,1),(993,'PageView','2009-01-09 02:41:53','2009-01-09 02:41:53','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,10,1),(994,'PageView','2009-01-09 02:41:55','2009-01-09 02:41:55','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,1),(995,'PageView','2009-01-09 02:41:58','2009-01-09 02:41:58','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,14,1),(996,'PageView','2009-01-09 02:42:03','2009-01-09 02:42:03','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,14,1),(997,'PageView','2009-01-09 02:42:07','2009-01-09 02:42:07','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,1),(998,'PageView','2009-01-09 02:42:09','2009-01-09 02:42:09','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,1),(999,'PageView','2009-01-09 02:42:12','2009-01-09 02:42:12','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,14,1),(1000,'PageView','2009-01-09 02:42:19','2009-01-09 02:42:19','::1',NULL,NULL,0,NULL,0,NULL,NULL,14,1),(1001,'PageView','2009-01-09 02:42:22','2009-01-09 02:42:22','::1',NULL,NULL,0,NULL,0,NULL,NULL,14,1),(1002,'PageView','2009-01-09 02:42:25','2009-01-09 02:42:25','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/?flush=1',0,NULL,NULL,16,1),(1003,'PageView','2009-01-09 02:42:38','2009-01-09 02:42:38','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,9,1),(1004,'PageView','2009-01-09 02:42:41','2009-01-09 02:42:41','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,11,1),(1005,'PageView','2009-01-09 02:42:43','2009-01-09 02:42:43','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,1),(1006,'PageView','2009-01-09 02:42:45','2009-01-09 02:42:45','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,1),(1007,'PageView','2009-01-09 02:46:12','2009-01-09 02:46:12','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,1),(1008,'PageView','2009-01-09 02:46:16','2009-01-09 02:46:16','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,1),(1009,'PageView','2009-01-09 02:46:19','2009-01-09 02:46:19','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,1),(1010,'PageView','2009-01-09 02:46:22','2009-01-09 02:46:22','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,1),(1011,'PageView','2009-01-09 02:46:55','2009-01-09 02:46:55','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,10,1),(1012,'PageView','2009-01-09 02:46:56','2009-01-09 02:46:56','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,16,1),(1013,'PageView','2009-01-09 02:47:03','2009-01-09 02:47:03','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,9,1),(1014,'PageView','2009-01-09 02:48:23','2009-01-09 02:48:23','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,9,1),(1015,'PageView','2009-01-09 02:48:27','2009-01-09 02:48:27','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,9,1),(1016,'PageView','2009-01-09 02:48:30','2009-01-09 02:48:30','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,1),(1017,'PageView','2009-01-09 02:49:06','2009-01-09 02:49:06','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,1),(1018,'PageView','2009-01-09 02:49:08','2009-01-09 02:49:08','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,1),(1019,'PageView','2009-01-09 02:49:10','2009-01-09 02:49:10','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,9,1),(1020,'PageView','2009-01-09 02:51:37','2009-01-09 02:51:37','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/?flush=1',0,NULL,NULL,14,-1),(1021,'PageView','2009-01-09 02:51:40','2009-01-09 02:51:40','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,10,-1),(1022,'PageView','2009-01-09 02:51:43','2009-01-09 02:51:43','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(1023,'PageView','2009-01-09 02:51:56','2009-01-09 02:51:56','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,9,1),(1024,'PageView','2009-01-09 02:53:20','2009-01-09 02:53:20','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,9,1),(1025,'PageView','2009-01-09 03:01:50','2009-01-09 03:01:50','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,9,1),(1026,'PageView','2009-01-09 03:04:23','2009-01-09 03:04:23','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,9,1),(1027,'PageView','2009-01-09 03:04:30','2009-01-09 03:04:30','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,1),(1028,'PageView','2009-01-09 03:04:34','2009-01-09 03:04:34','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,1),(1029,'PageView','2009-01-09 03:04:36','2009-01-09 03:04:36','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,1),(1030,'PageView','2009-01-09 03:04:49','2009-01-09 03:04:49','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(1031,'PageView','2009-01-09 03:04:51','2009-01-09 03:04:51','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(1032,'PageView','2009-01-09 03:04:56','2009-01-09 03:04:56','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(1033,'PageView','2009-01-09 03:05:25','2009-01-09 03:05:25','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,1),(1034,'PageView','2009-01-09 03:05:28','2009-01-09 03:05:28','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,1),(1035,'PageView','2009-01-09 03:05:29','2009-01-09 03:05:29','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,1),(1036,'PageView','2009-01-09 03:05:32','2009-01-09 03:05:32','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,1),(1037,'PageView','2009-01-09 03:05:35','2009-01-09 03:05:35','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,1),(1038,'PageView','2009-01-09 03:05:38','2009-01-09 03:05:38','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,12,1),(1039,'PageView','2009-01-09 03:05:40','2009-01-09 03:05:40','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/the-ridge-at-beaumont/',0,NULL,NULL,11,1),(1040,'PageView','2009-01-09 03:05:43','2009-01-09 03:05:43','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,1),(1041,'PageView','2009-01-09 03:05:49','2009-01-09 03:05:49','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,1),(1042,'PageView','2009-01-09 03:05:52','2009-01-09 03:05:52','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,9,1),(1043,'PageView','2009-01-09 03:05:56','2009-01-09 03:05:56','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,9,1),(1044,'PageView','2009-01-09 03:06:01','2009-01-09 03:06:01','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,9,1),(1045,'PageView','2009-01-09 03:06:05','2009-01-09 03:06:05','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,9,1),(1046,'PageView','2009-01-09 03:06:10','2009-01-09 03:06:10','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,22,1),(1047,'PageView','2009-01-09 03:06:16','2009-01-09 03:06:16','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/my-belmark-home',0,NULL,NULL,24,1),(1048,'PageView','2009-01-09 03:06:19','2009-01-09 03:06:19','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/agents',0,NULL,NULL,29,1),(1049,'PageView','2009-01-09 03:06:21','2009-01-09 03:06:21','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/we-make-it-easy/',0,NULL,NULL,30,1),(1050,'PageView','2009-01-09 03:06:23','2009-01-09 03:06:23','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/purchase-and-sale-agreements/',0,NULL,NULL,31,1),(1051,'PageView','2009-01-09 03:06:26','2009-01-09 03:06:26','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/agent-protocol-pdf/',0,NULL,NULL,3,1),(1052,'PageView','2009-01-09 03:06:28','2009-01-09 03:06:28','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/contact-us',0,NULL,NULL,26,1),(1053,'PageView','2009-01-09 03:06:32','2009-01-09 03:06:32','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/our-friends',0,NULL,NULL,34,1),(1054,'PageView','2009-01-09 03:06:35','2009-01-09 03:06:35','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/testimonial-page/',0,NULL,NULL,26,1),(1055,'PageView','2009-01-09 03:12:47','2009-01-09 03:12:47','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(1056,'PageView','2009-01-09 03:12:50','2009-01-09 03:12:50','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(1057,'PageView','2009-01-09 03:13:06','2009-01-09 03:13:06','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/testimonial-page/',0,NULL,NULL,26,1),(1058,'PageView','2009-01-09 03:13:08','2009-01-09 03:13:08','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/our-friends',0,NULL,NULL,9,1),(1059,'PageView','2009-01-09 03:14:13','2009-01-09 03:14:13','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/our-friends',0,NULL,NULL,9,1),(1060,'PageView','2009-01-09 03:14:16','2009-01-09 03:14:16','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/our-friends',0,NULL,NULL,9,1),(1061,'PageView','2009-01-09 03:14:25','2009-01-09 03:14:25','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(1062,'PageView','2009-01-09 03:14:36','2009-01-09 03:14:36','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(1063,'PageView','2009-01-09 03:14:43','2009-01-09 03:14:43','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(1064,'PageView','2009-01-09 03:14:50','2009-01-09 03:14:50','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(1065,'PageView','2009-01-09 03:26:35','2009-01-09 03:26:35','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(1066,'PageView','2009-01-09 03:28:01','2009-01-09 03:28:01','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(1067,'PageView','2009-01-09 03:28:53','2009-01-09 03:28:53','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,-1),(1068,'PageView','2009-01-09 03:29:01','2009-01-09 03:29:01','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home?flush=1',0,NULL,NULL,10,-1),(1069,'PageView','2009-01-09 03:29:05','2009-01-09 03:29:05','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(1070,'PageView','2009-01-09 03:30:41','2009-01-09 03:30:41','127.0.0.1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/?flush=1',0,NULL,NULL,10,-1),(1071,'PageView','2009-01-09 03:30:45','2009-01-09 03:30:45','127.0.0.1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(1072,'PageView','2009-01-09 03:36:30','2009-01-09 03:36:30','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/our-friends',0,NULL,NULL,9,1),(1073,'PageView','2009-01-09 03:37:14','2009-01-09 03:37:14','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/our-friends',0,NULL,NULL,9,1),(1074,'PageView','2009-01-09 03:37:17','2009-01-09 03:37:17','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/our-friends',0,NULL,NULL,9,1),(1075,'PageView','2009-01-09 03:37:26','2009-01-09 03:37:26','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/our-friends',0,NULL,NULL,9,1),(1076,'PageView','2009-01-09 03:37:30','2009-01-09 03:37:30','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(1077,'PageView','2009-01-09 03:37:32','2009-01-09 03:37:32','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(1078,'PageView','2009-01-09 03:38:34','2009-01-09 03:38:34','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/admin/ImageEditor?fileToEdit=http://localhost/websites/belmarkhomes.com/assets/pages/find-a-home-community.gif?r=41415',0,NULL,NULL,1,1),(1079,'PageView','2009-01-09 03:38:41','2009-01-09 03:38:41','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/admin/ImageEditor?fileToEdit=http://localhost/websites/belmarkhomes.com/assets/pages/find-a-home-community.gif?r=41415',0,NULL,NULL,1,1),(1080,'PageView','2009-01-09 03:38:54','2009-01-09 03:38:54','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/admin/ImageEditor?fileToEdit=http://localhost/websites/belmarkhomes.com/assets/pages/find-a-home-community.gif?r=74702',0,NULL,NULL,1,1),(1081,'PageView','2009-01-09 03:39:40','2009-01-09 03:39:40','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/our-friends',0,NULL,NULL,9,1),(1082,'PageView','2009-01-09 03:39:43','2009-01-09 03:39:43','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/our-friends',0,NULL,NULL,9,1),(1083,'PageView','2009-01-09 03:40:10','2009-01-09 03:40:10','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/our-friends',0,NULL,NULL,9,1),(1084,'PageView','2009-01-09 03:41:54','2009-01-09 03:41:54','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/our-friends',0,NULL,NULL,9,1),(1085,'PageView','2009-01-09 03:42:05','2009-01-09 03:42:05','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/our-friends',0,NULL,NULL,9,1),(1086,'PageView','2009-01-09 03:42:29','2009-01-09 03:42:29','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/our-friends',0,NULL,NULL,9,1),(1087,'PageView','2009-01-09 03:42:32','2009-01-09 03:42:32','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,1),(1088,'PageView','2009-01-09 03:42:33','2009-01-09 03:42:33','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,1),(1089,'PageView','2009-01-09 03:42:35','2009-01-09 03:42:35','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,17,1),(1090,'PageView','2009-01-09 03:42:37','2009-01-09 03:42:37','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,9,1),(1091,'PageView','2009-01-09 03:44:02','2009-01-09 03:44:02','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,9,1),(1092,'PageView','2009-01-09 03:44:07','2009-01-09 03:44:07','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,9,1),(1093,'PageView','2009-01-09 03:44:14','2009-01-09 03:44:14','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,1),(1094,'PageView','2009-01-09 03:44:53','2009-01-09 03:44:53','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home?flush=1',0,NULL,NULL,10,1),(1095,'PageView','2009-01-09 03:44:58','2009-01-09 03:44:58','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,1),(1096,'PageView','2009-01-09 03:45:02','2009-01-09 03:45:02','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,1),(1097,'PageView','2009-01-09 03:45:24','2009-01-09 03:45:24','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/admin/ImageEditor?fileToEdit=http://localhost/websites/belmarkhomes.com/assets/pages/find-a-home.gif?r=47318',0,NULL,NULL,1,1),(1098,'PageView','2009-01-09 03:45:40','2009-01-09 03:45:40','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/admin/ImageEditor?fileToEdit=http://localhost/websites/belmarkhomes.com/assets/pages/find-a-home.gif?r=47318',0,NULL,NULL,1,1),(1099,'PageView','2009-01-09 03:45:50','2009-01-09 03:45:50','::1',NULL,NULL,0,NULL,0,NULL,NULL,9,1),(1100,'PageView','2009-01-09 03:46:06','2009-01-09 03:46:06','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home?flush=1',0,NULL,NULL,9,1),(1101,'PageView','2009-01-09 03:46:53','2009-01-09 03:46:53','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home?flush=1',0,NULL,NULL,9,1),(1102,'PageView','2009-01-09 03:47:04','2009-01-09 03:47:04','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home?flush=1',0,NULL,NULL,9,1),(1103,'PageView','2009-01-09 03:47:10','2009-01-09 03:47:10','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home?flush=1',0,NULL,NULL,9,1),(1104,'PageView','2009-01-09 03:47:17','2009-01-09 03:47:17','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home?flush=1',0,NULL,NULL,9,1),(1105,'PageView','2009-01-09 03:47:24','2009-01-09 03:47:24','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home?flush=1',0,NULL,NULL,9,1),(1106,'PageView','2009-01-09 03:47:37','2009-01-09 03:47:37','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home?flush=1',0,NULL,NULL,9,1),(1107,'PageView','2009-01-09 03:47:48','2009-01-09 03:47:48','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home?flush=1',0,NULL,NULL,9,1),(1108,'PageView','2009-01-09 03:47:58','2009-01-09 03:47:58','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home?flush=1',0,NULL,NULL,9,1),(1109,'PageView','2009-01-09 03:48:14','2009-01-09 03:48:14','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home?flush=1',0,NULL,NULL,9,1),(1110,'PageView','2009-01-09 03:48:53','2009-01-09 03:48:53','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home?flush=1',0,NULL,NULL,9,1),(1111,'PageView','2009-01-09 03:49:00','2009-01-09 03:49:00','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home?flush=1',0,NULL,NULL,9,1),(1112,'PageView','2009-01-09 03:50:07','2009-01-09 03:50:07','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home?flush=1',0,NULL,NULL,9,1),(1113,'PageView','2009-01-09 03:50:12','2009-01-09 03:50:12','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home?flush=1',0,NULL,NULL,9,1),(1114,'PageView','2009-01-09 03:50:15','2009-01-09 03:50:15','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,1),(1115,'PageView','2009-01-09 03:50:36','2009-01-09 03:50:36','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,1),(1116,'PageView','2009-01-09 03:55:35','2009-01-09 03:55:35','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(1117,'PageView','2009-01-09 03:55:56','2009-01-09 03:55:56','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(1118,'PageView','2009-01-09 03:56:26','2009-01-09 03:56:26','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(1119,'PageView','2009-01-09 03:56:44','2009-01-09 03:56:44','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(1120,'PageView','2009-01-09 03:56:57','2009-01-09 03:56:57','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(1121,'PageView','2009-01-09 03:57:11','2009-01-09 03:57:11','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(1122,'PageView','2009-01-09 03:57:25','2009-01-09 03:57:25','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(1123,'PageView','2009-01-09 03:59:49','2009-01-09 03:59:49','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(1124,'PageView','2009-01-09 04:00:51','2009-01-09 04:00:51','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(1125,'PageView','2009-01-09 04:00:55','2009-01-09 04:00:55','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(1126,'PageView','2009-01-09 04:01:54','2009-01-09 04:01:54','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(1127,'PageView','2009-01-09 04:02:14','2009-01-09 04:02:14','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(1128,'PageView','2009-01-09 04:02:37','2009-01-09 04:02:37','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(1129,'PageView','2009-01-09 04:02:44','2009-01-09 04:02:44','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(1130,'PageView','2009-01-09 04:02:49','2009-01-09 04:02:49','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(1131,'PageView','2009-01-09 04:03:12','2009-01-09 04:03:12','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(1132,'PageView','2009-01-09 04:03:20','2009-01-09 04:03:20','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(1133,'PageView','2009-01-09 04:03:27','2009-01-09 04:03:27','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(1134,'PageView','2009-01-09 04:03:33','2009-01-09 04:03:33','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(1135,'PageView','2009-01-09 04:03:48','2009-01-09 04:03:48','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(1136,'PageView','2009-01-09 04:04:24','2009-01-09 04:04:24','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(1137,'PageView','2009-01-09 04:04:58','2009-01-09 04:04:58','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(1138,'PageView','2009-01-09 04:05:35','2009-01-09 04:05:35','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(1139,'PageView','2009-01-09 04:05:37','2009-01-09 04:05:37','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(1140,'PageView','2009-01-09 04:05:54','2009-01-09 04:05:54','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(1141,'PageView','2009-01-09 04:06:04','2009-01-09 04:06:04','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(1142,'PageView','2009-01-09 04:06:08','2009-01-09 04:06:08','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(1143,'PageView','2009-01-09 04:06:14','2009-01-09 04:06:14','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/',0,NULL,NULL,9,-1),(1144,'PageView','2009-01-09 04:06:17','2009-01-09 04:06:17','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,17,-1),(1145,'PageView','2009-01-09 04:06:18','2009-01-09 04:06:18','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,9,-1),(1146,'PageView','2009-01-09 04:06:20','2009-01-09 04:06:20','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,22,-1),(1147,'PageView','2009-01-09 04:06:22','2009-01-09 04:06:22','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/my-belmark-home',0,NULL,NULL,23,-1),(1148,'PageView','2009-01-09 04:06:23','2009-01-09 04:06:23','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/belmark-cares',0,NULL,NULL,9,-1),(1149,'PageView','2009-01-09 04:06:51','2009-01-09 04:06:51','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,1),(1150,'PageView','2009-01-09 04:07:14','2009-01-09 04:07:14','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,1),(1151,'PageView','2009-01-09 04:08:02','2009-01-09 04:08:02','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/belmark-cares',0,NULL,NULL,9,-1),(1152,'PageView','2009-01-09 04:08:07','2009-01-09 04:08:07','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,11,-1),(1153,'PageView','2009-01-09 04:08:10','2009-01-09 04:08:10','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,-1),(1154,'PageView','2009-01-09 04:08:11','2009-01-09 04:08:11','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,-1),(1155,'PageView','2009-01-09 04:08:16','2009-01-09 04:08:16','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,-1),(1156,'PageView','2009-01-09 04:08:28','2009-01-09 04:08:28','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(1157,'PageView','2009-01-09 04:08:35','2009-01-09 04:08:35','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(1158,'PageView','2009-01-09 04:08:41','2009-01-09 04:08:41','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/',0,NULL,NULL,9,-1),(1159,'PageView','2009-01-09 04:08:45','2009-01-09 04:08:45','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,-1),(1160,'PageView','2009-01-09 04:08:47','2009-01-09 04:08:47','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,14,-1),(1161,'PageView','2009-01-09 04:08:49','2009-01-09 04:08:49','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/about-abbey-road/',0,NULL,NULL,15,-1),(1162,'PageView','2009-01-09 04:08:50','2009-01-09 04:08:50','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(1163,'PageView','2009-01-09 04:10:08','2009-01-09 04:10:08','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,1),(1164,'PageView','2009-01-09 04:10:11','2009-01-09 04:10:11','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,10,1),(1165,'PageView','2009-01-09 04:10:13','2009-01-09 04:10:13','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,1),(1166,'PageView','2009-01-09 04:10:15','2009-01-09 04:10:15','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,10,1),(1167,'PageView','2009-01-09 04:11:10','2009-01-09 04:11:10','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,10,1),(1168,'PageView','2009-01-09 04:11:13','2009-01-09 04:11:13','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,11,1),(1169,'PageView','2009-01-09 04:11:15','2009-01-09 04:11:15','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/beaumont/',0,NULL,NULL,12,1),(1170,'PageView','2009-01-09 04:11:17','2009-01-09 04:11:17','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/the-ridge-at-beaumont/',0,NULL,NULL,10,1),(1171,'PageView','2009-01-09 04:11:19','2009-01-09 04:11:19','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/abbey-road/',0,NULL,NULL,9,1),(1172,'PageView','2009-01-09 04:14:24','2009-01-09 04:14:24','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/sitemap/',0,NULL,NULL,16,-1),(1173,'PageView','2009-01-09 04:14:26','2009-01-09 04:14:26','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,9,-1),(1174,'PageView','2009-01-09 04:14:30','2009-01-09 04:14:30','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,9,-1),(1175,'PageView','2009-01-09 04:15:11','2009-01-09 04:15:11','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,1),(1176,'PageView','2009-01-09 04:15:43','2009-01-09 04:15:43','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,1),(1177,'PageView','2009-01-09 04:15:55','2009-01-09 04:15:55','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,1),(1178,'PageView','2009-01-09 04:16:09','2009-01-09 04:16:09','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,13,1),(1179,'PageView','2009-01-09 04:16:13','2009-01-09 04:16:13','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/coming-soon/',0,NULL,NULL,9,1),(1180,'PageView','2009-01-09 04:16:14','2009-01-09 04:16:14','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,22,1),(1181,'PageView','2009-01-09 04:17:16','2009-01-09 04:17:16','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,9,-1),(1182,'PageView','2009-01-09 04:17:47','2009-01-09 04:17:47','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/homes/',0,NULL,NULL,9,-1),(1183,'PageView','2009-01-09 04:18:41','2009-01-09 04:18:41','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/my-belmark-home',0,NULL,NULL,9,1),(1184,'PageView','2009-01-09 04:18:50','2009-01-09 04:18:50','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,9,1),(1185,'PageView','2009-01-09 04:18:52','2009-01-09 04:18:52','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/find-a-home',0,NULL,NULL,17,1),(1186,'PageView','2009-01-09 04:18:55','2009-01-09 04:18:55','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,24,1),(1187,'PageView','2009-01-09 04:18:57','2009-01-09 04:18:57','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/agents',0,NULL,NULL,17,1),(1188,'PageView','2009-01-09 04:19:01','2009-01-09 04:19:01','::1',NULL,NULL,0,'http://localhost/websites/belmarkhomes.com/now-renting',0,NULL,NULL,9,1);
/*!40000 ALTER TABLE `PageView` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Page_Live`
--

DROP TABLE IF EXISTS `Page_Live`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Page_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `MenuBarTitle` varchar(50) character set utf8 default NULL,
  `TopImageID` int(11) NOT NULL default '0',
  `FloatingImageID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `TopImageID` (`TopImageID`),
  KEY `FloatingImageID` (`FloatingImageID`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Page_Live`
--

LOCK TABLES `Page_Live` WRITE;
/*!40000 ALTER TABLE `Page_Live` DISABLE KEYS */;
INSERT INTO `Page_Live` VALUES (1,'Home',2,0),(9,'Find a Home',0,24),(11,'Find a Home',0,0),(12,'Find a Home',0,0),(13,'Find a Home',0,0),(14,'Find a Home',10,0),(15,'Find a Home',10,0),(16,'Find a Home',10,0),(17,'Now Renting',0,0),(18,'Now Renting',0,0),(19,'Now Renting',0,0),(20,'Now Renting',0,0),(21,'Now Renting',0,0),(10,'Find a Home',10,10),(22,'My Belmark Home',0,0),(23,'Belmark Cares',0,0),(24,'Agents',0,0),(25,'Why Belmark',0,0),(26,'Our Friends',0,0),(27,'Belmark Cares',0,0),(28,'Belmark Cares',0,0),(29,'Agents',0,0),(30,'Agents',0,0),(31,'Agents',0,0),(32,'Why Belmark',0,0),(33,'Why Belmark',0,0),(34,'Our Friends',0,0);
/*!40000 ALTER TABLE `Page_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Page_versions`
--

DROP TABLE IF EXISTS `Page_versions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `Page_versions` (
  `ID` int(11) NOT NULL auto_increment,
  `RecordID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `WasPublished` tinyint(1) unsigned NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `PublisherID` int(11) NOT NULL default '0',
  `MenuBarTitle` varchar(50) character set utf8 default NULL,
  `TopImageID` int(11) NOT NULL default '0',
  `FloatingImageID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `TopImageID` (`TopImageID`),
  KEY `FloatingImageID` (`FloatingImageID`)
) ENGINE=MyISAM AUTO_INCREMENT=175 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `Page_versions`
--

LOCK TABLES `Page_versions` WRITE;
/*!40000 ALTER TABLE `Page_versions` DISABLE KEYS */;
INSERT INTO `Page_versions` VALUES (1,1,1,0,1,0,NULL,2,0),(2,1,2,0,1,0,'Home',2,0),(3,1,3,0,1,0,'Home',2,0),(4,9,1,0,1,0,'Find a Home',0,0),(5,9,2,0,1,0,'Find a Home',0,0),(6,11,1,0,1,0,NULL,0,0),(7,11,2,0,1,0,NULL,0,0),(8,11,3,0,1,0,NULL,0,0),(9,12,1,0,1,0,NULL,0,0),(10,12,2,0,1,0,NULL,0,0),(11,12,3,0,1,0,NULL,0,0),(12,13,1,0,1,0,NULL,0,0),(13,13,2,0,1,0,NULL,0,0),(14,13,3,0,1,0,NULL,0,0),(15,14,1,0,1,0,NULL,0,0),(16,14,2,0,1,0,NULL,0,0),(17,14,3,0,1,0,NULL,0,0),(18,15,1,0,1,0,NULL,0,0),(19,15,2,0,1,0,NULL,0,0),(20,15,3,0,1,0,NULL,0,0),(21,16,1,0,1,0,NULL,0,0),(22,16,2,0,1,0,'Find a Home',0,0),(23,16,3,0,1,0,'Find a Home',0,0),(24,17,1,0,1,0,NULL,0,0),(25,17,2,0,1,0,'Now Renting',0,0),(26,17,3,0,1,0,'Now Renting',0,0),(27,17,4,0,1,0,'Now Renting',0,0),(28,17,5,0,1,0,'Now Renting',0,0),(29,17,6,0,1,0,'Now Renting',0,0),(30,17,7,0,1,0,'Now Renting',0,0),(31,18,1,0,1,0,NULL,0,0),(32,18,2,0,1,0,'Now Renting',0,0),(33,18,3,0,1,0,'Now Renting',0,0),(34,19,1,0,1,0,NULL,0,0),(35,19,2,0,1,0,'Now Renting',0,0),(36,19,3,0,1,0,'Now Renting',0,0),(37,20,1,0,1,0,NULL,0,0),(38,20,2,0,1,0,'Now Renting',0,0),(39,20,3,0,1,0,'Now Renting',0,0),(40,21,1,0,1,0,NULL,0,0),(41,21,2,0,1,0,'Now Renting',0,0),(42,21,3,0,1,0,'Now Renting',0,0),(43,10,1,0,1,0,'Find a Home',0,0),(44,10,2,0,1,0,'Find a Home',0,0),(45,14,4,0,1,0,'Find a Home',0,0),(46,14,5,0,1,0,'Find a Home',0,0),(47,15,4,0,1,0,'Find a Home',0,0),(48,15,5,0,1,0,'Find a Home',0,0),(49,11,4,0,1,0,'Find a Home',0,0),(50,11,5,0,1,0,'Find a Home',0,0),(51,12,4,0,1,0,'Find a Home',0,0),(52,12,5,0,1,0,'Find a Home',0,0),(53,13,4,0,1,0,'Find a Home',0,0),(54,13,5,0,1,0,'Find a Home',0,0),(55,22,1,0,1,0,NULL,0,0),(56,22,2,0,1,0,'My Belmark Home',0,0),(57,22,3,0,1,0,'My Belmark Home',0,0),(58,22,4,0,1,0,'My Belmark Home',0,0),(59,22,5,0,1,0,'My Belmark Home',0,0),(60,22,6,0,1,0,'My Belmark Home',0,0),(61,22,7,0,1,0,'My Belmark Home',0,0),(62,23,1,0,1,0,NULL,0,0),(63,23,2,0,1,0,'Belmark Cares',0,0),(64,23,3,0,1,0,'Belmark Cares',0,0),(65,24,1,0,1,0,NULL,0,0),(66,24,2,0,1,0,'Agents',0,0),(67,24,3,0,1,0,'Agents',0,0),(68,25,1,0,1,0,NULL,0,0),(69,25,2,0,1,0,'Why Belmark',0,0),(70,25,3,0,1,0,'Why Belmark',0,0),(71,26,1,0,1,0,NULL,0,0),(72,26,2,0,1,0,'Our Friends',0,0),(73,26,3,0,1,0,'Our Friends',0,0),(74,23,4,0,1,0,'Belmark Cares',0,0),(75,23,5,0,1,0,'Belmark Cares',0,0),(76,26,4,0,1,0,'Our Friends',0,0),(77,26,5,0,1,0,'Our Friends',0,0),(78,24,4,0,1,0,'Agents',0,0),(79,24,5,0,1,0,'Agents',0,0),(80,24,6,0,1,0,'Agents',0,0),(81,24,7,0,1,0,'Agents',0,0),(82,25,4,0,1,0,'Why Belmark',0,0),(83,25,5,0,1,0,'Why Belmark',0,0),(84,26,6,0,1,0,'Our Friends',0,0),(85,26,7,0,1,0,'Our Friends',0,0),(86,26,8,0,1,0,'Our Friends',0,0),(87,26,9,0,1,0,'Our Friends',0,0),(88,23,6,0,1,0,'Belmark Cares',0,0),(89,23,7,0,1,0,'Belmark Cares',0,0),(90,24,8,0,1,0,'Agents',0,0),(91,24,9,0,1,0,'Agents',0,0),(92,25,6,0,1,0,'Why Belmark',0,0),(93,25,7,0,1,0,'Why Belmark',0,0),(94,27,1,0,1,0,NULL,0,0),(95,27,2,0,1,0,'Belmark Cares',0,0),(96,27,3,0,1,0,'Belmark Cares',0,0),(97,28,1,0,1,0,NULL,0,0),(98,28,2,0,1,0,'Belmark Cares',0,0),(99,28,3,0,1,0,'Belmark Cares',0,0),(100,28,4,0,1,0,'Belmark Cares',0,0),(101,28,5,0,1,0,'Belmark Cares',0,0),(102,29,1,0,1,0,NULL,0,0),(103,29,2,0,1,0,'Agents',0,0),(104,29,3,0,1,0,'Agents',0,0),(105,30,1,0,1,0,NULL,0,0),(106,30,2,0,1,0,'Agents',0,0),(107,30,3,0,1,0,'Agents',0,0),(108,30,4,0,1,0,'Agents',0,0),(109,30,5,0,1,0,'Agents',0,0),(110,31,1,0,1,0,NULL,0,0),(111,31,2,0,1,0,'Agents',0,0),(112,31,3,0,1,0,'Agents',0,0),(113,32,1,0,1,0,NULL,0,0),(114,32,2,0,1,0,'Why Belmark',0,0),(115,32,3,0,1,0,'Why Belmark',0,0),(116,33,1,0,1,0,NULL,0,0),(117,33,2,0,1,0,'Why Belmark',0,0),(118,33,3,0,1,0,'Why Belmark',0,0),(119,34,1,0,1,0,NULL,0,0),(120,34,2,0,1,0,'Our Friends',0,0),(121,34,3,0,1,0,'Our Friends',0,0),(122,10,3,0,1,0,'Find a Home',10,0),(123,10,4,0,1,0,'Find a Home',10,0),(124,10,5,0,1,0,'Find a Home',10,0),(125,10,6,0,1,0,'Find a Home',10,10),(126,10,7,0,1,0,'Find a Home',10,10),(127,10,8,0,1,0,'Find a Home',10,10),(128,14,6,0,1,0,'Find a Home',10,0),(129,15,6,0,1,0,'Find a Home',0,0),(130,15,7,0,1,0,'Find a Home',0,0),(131,15,8,0,1,0,'Find a Home',10,0),(132,15,9,0,1,0,'Find a Home',10,0),(133,15,10,0,1,0,'Find a Home',10,0),(134,14,7,0,1,0,'Find a Home',10,0),(135,14,8,0,1,0,'Find a Home',10,0),(136,16,4,0,1,0,'Find a Home',10,0),(137,16,5,0,1,0,'Find a Home',10,0),(138,16,6,0,1,0,'Find a Home',10,0),(139,16,7,0,1,0,'Find a Home',10,0),(140,16,8,0,1,0,'Find a Home',10,0),(141,9,3,0,1,0,'Find a Home',0,0),(142,9,4,0,1,0,'Find a Home',0,0),(143,9,5,0,1,0,'Find a Home',0,0),(144,9,6,0,1,0,'Find a Home',0,0),(145,9,7,0,1,0,'Find a Home',0,0),(146,9,8,0,1,0,'Find a Home',0,0),(147,9,9,0,1,0,'Find a Home',0,0),(148,9,10,0,1,0,'Find a Home',0,0),(149,9,11,0,1,0,'Find a Home',0,16),(150,9,12,0,1,0,'Find a Home',0,16),(151,9,13,0,1,0,'Find a Home',0,16),(152,9,14,0,1,0,'Find a Home',0,16),(153,9,15,0,1,0,'Find a Home',0,16),(154,9,16,0,1,0,'Find a Home',0,16),(155,9,17,0,1,0,'Find a Home',0,16),(156,9,18,0,1,0,'Find a Home',0,16),(157,9,19,0,1,0,'Find a Home',0,16),(158,9,20,0,1,0,'Find a Home',0,16),(159,9,21,0,1,0,'Find a Home',0,16),(160,9,22,0,1,0,'Find a Home',0,16),(161,9,23,0,1,0,'Find a Home',0,16),(162,9,24,0,1,0,'Find a Home',0,16),(163,9,25,0,1,0,'Find a Home',0,16),(164,9,26,0,1,0,'Find a Home',0,16),(165,9,27,0,1,0,'Find a Home',0,16),(166,9,28,0,1,0,'Find a Home',0,16),(167,9,29,0,1,0,'Find a Home',0,16),(168,9,30,0,1,0,'Find a Home',0,16),(169,9,31,0,1,0,'Find a Home',0,16),(170,9,32,0,1,0,'Find a Home',0,24),(171,9,33,0,1,0,'Find a Home',0,24),(172,9,34,0,1,0,'Find a Home',0,24),(173,9,35,0,1,0,'Find a Home',0,24),(174,9,36,0,1,0,'Find a Home',0,24);
/*!40000 ALTER TABLE `Page_versions` ENABLE KEYS */;
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
  `ClassName` enum('SiteTree','Page','GhostPage','UserDefinedForm','HomePage','NewsHolder','NewsPage','ErrorPage','RedirectorPage','VirtualPage','SubscribeForm') character set utf8 default 'SiteTree',
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
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SiteTree`
--

LOCK TABLES `SiteTree` WRITE;
/*!40000 ALTER TABLE `SiteTree` DISABLE KEYS */;
INSERT INTO `SiteTree` VALUES (1,'HomePage','2009-01-07 12:41:02','2009-01-09 00:15:00','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,15),(2,'Page','2009-01-07 12:41:02','2009-01-07 12:41:02','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,9,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0,1),(3,'Page','2009-01-07 12:41:02','2009-01-07 12:41:02','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,10,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0,1),(4,'ErrorPage','2009-01-07 12:41:03','2009-01-07 12:41:03','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,NULL,0,1,NULL,0,11,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0,1),(5,'NewsHolder','2009-01-08 16:16:32','2009-01-08 16:16:57','news','News',NULL,'<p>This is the News Container</p>','News',NULL,NULL,NULL,0,1,NULL,0,12,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,3),(6,'NewsPage','2009-01-08 16:17:13','2009-01-08 16:49:36','headline-today','Headline Today',NULL,'<p></p>','This is a test',NULL,NULL,NULL,0,1,NULL,0,3,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,5,9),(7,'NewsPage','2009-01-08 16:45:23','2009-01-08 16:49:00','breaking-news','Breaking News',NULL,'<p></p>','Breaking News',NULL,NULL,NULL,0,1,NULL,0,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,5,8),(8,'NewsPage','2009-01-08 20:54:06','2009-01-08 20:55:01','news-break','News Break',NULL,'<p></p>','News Break',NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,5,7),(9,'Page','2009-01-08 21:06:28','2009-01-09 04:18:34','find-a-home','Find a Home',NULL,'<table border=\"0\" height=\"466\" width=\"563\"><tbody><tr valign=\"top\"><td><h1>Our Communities</h1><p><span class=\"emphasized\">ABBEY ROAD</span> Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"abbey-road/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15517-view-homes-abbeyroad.gif\" hspace=\"null\" vspace=\"null\" width=\"155\" height=\"17\" align=\"null\"  alt=\"\" /></a><br /> </p><p><span class=\"emphasized\">BEAUMONT</span> Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"beaumont/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15117-view-homes-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"151\" height=\"17\" align=\"null\"  alt=\"\" /></a></p><p><span class=\"emphasized\">THE RIDGE AT BEAUMONT</span> Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"the-ridge-at-beaumont/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage14714-view-homes-ridge-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"147\" height=\"14\" align=\"null\"  alt=\"\" /></a></p><p><span class=\"emphasized\">COMING SOON!</span><br /><a href=\"coming-soon/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage28317-learn-coming-soon.gif\" hspace=\"null\" vspace=\"null\" width=\"283\" height=\"17\" align=\"null\"  alt=\"\" /></a><br /> </p></td><td><p><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage264470-find-a-home-community.gif\" hspace=\"null\" vspace=\"null\" width=\"264\" height=\"470\" align=\"null\"  alt=\"\" /> </p></td></tr></tbody></table>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,42),(10,'Page','2009-01-08 22:35:43','2009-01-09 02:37:46','abbey-road','Abbey Road',NULL,'<p>This is the content</p>','Abbey Road',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9,11),(11,'Page','2009-01-09 00:21:55','2009-01-09 01:52:19','beaumont','Beaumont',NULL,'<p></p>','Beaumont',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9,5),(12,'Page','2009-01-09 00:22:14','2009-01-09 01:52:27','the-ridge-at-beaumont','The Ridge at Beaumont',NULL,'<p></p>','The Ridge at Beaumont',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9,5),(13,'Page','2009-01-09 00:22:35','2009-01-09 01:52:35','coming-soon','Coming Soon',NULL,'<p></p>','Coming Soon',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9,5),(14,'Page','2009-01-09 00:28:05','2009-01-09 02:46:08','about-abbey-road','About Abbey Road',NULL,'<p></p>','About Abbey Road',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,10,8),(15,'Page','2009-01-09 00:39:11','2009-01-09 02:41:02','sitemap','Sitemap',NULL,'<p></p>','sitemap',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,10,10),(16,'Page','2009-01-09 00:39:39','2009-01-09 02:46:53','homes','Homes',NULL,'<p></p>','Homes',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,10,8),(17,'Page','2009-01-09 01:48:27','2009-01-09 01:48:54','now-renting','Now Renting',NULL,'<p></p>','Now Renting',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,7),(18,'Page','2009-01-09 01:49:22','2009-01-09 01:49:38','gallery','Gallery',NULL,'<p></p>','Gallery',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,17,3),(19,'Page','2009-01-09 01:50:09','2009-01-09 01:50:28','available-properties','Available Properties',NULL,'<p></p>','Available Properties',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,17,3),(20,'Page','2009-01-09 01:50:39','2009-01-09 01:50:53','rental-guidelines','Rental Guidelines',NULL,'<p></p>','Rental Guidelines',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,17,3),(21,'Page','2009-01-09 01:51:08','2009-01-09 01:51:36','application-pdf','Application (PDF)',NULL,'<p></p>','Application(PDF)',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,17,3),(22,'Page','2009-01-09 01:53:13','2009-01-09 01:53:41','my-belmark-home','My Belmark Home',NULL,'<p></p>','My Belmark Home',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,7),(23,'Page','2009-01-09 01:53:55','2009-01-09 01:57:17','belmark-cares','Belmark Cares',NULL,'<p></p>','Belmark Cares',NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,7),(24,'Page','2009-01-09 01:54:12','2009-01-09 01:57:25','agents','Agents',NULL,'<p></p>','Agents',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,0,9),(25,'Page','2009-01-09 01:54:35','2009-01-09 01:57:30','why-belmark','Why Belmark',NULL,'<p></p>','Why Belmark',NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Published',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,0,7),(26,'Page','2009-01-09 01:55:05','2009-01-09 01:56:25','our-friends','Our Friends',NULL,'<p></p>','Our Friends',NULL,NULL,NULL,1,1,NULL,0,8,NULL,0,0,'Published',NULL,0.7,'Anyone','LoggedInUsers',1,1,NULL,0,9),(27,'Page','2009-01-09 02:01:23','2009-01-09 02:01:39','charity-information','Charity Information',NULL,'<p></p>','Charity Information',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,23,3),(28,'Page','2009-01-09 02:01:49','2009-01-09 02:02:21','news-comments','News & Comments',NULL,'<p></p>','News and Comments',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,23,5),(29,'Page','2009-01-09 02:17:05','2009-01-09 02:17:22','we-make-it-easy','We Make It Easy',NULL,'<p></p>','We Make It Easy',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,24,3),(30,'Page','2009-01-09 02:17:40','2009-01-09 02:18:20','purchase-and-sale-agreements','Purchase and Sale Agreements',NULL,'<p></p>','Purchase and Sales Agreements',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,24,5),(31,'Page','2009-01-09 02:18:43','2009-01-09 02:18:59','agent-protocol-pdf','Agent Protocol (PDF)',NULL,'<p></p>','Agent Protocol (PDF)',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,24,3),(32,'Page','2009-01-09 02:19:19','2009-01-09 02:19:36','about-us-2','About Us',NULL,'<p></p>','About Us',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,25,3),(33,'Page','2009-01-09 02:19:47','2009-01-09 02:20:01','land','Land',NULL,'<p></p>','Land',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,25,3),(34,'Page','2009-01-09 02:20:25','2009-01-09 02:20:39','testimonial-page','Testimonial Page',NULL,'<p></p>','Testimonial Page',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,26,3);
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
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SiteTree_LinkTracking`
--

LOCK TABLES `SiteTree_LinkTracking` WRITE;
/*!40000 ALTER TABLE `SiteTree_LinkTracking` DISABLE KEYS */;
INSERT INTO `SiteTree_LinkTracking` VALUES (19,9,13,'Content'),(18,9,12,'Content'),(17,9,11,'Content'),(16,9,10,'Content');
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
  `ClassName` enum('SiteTree','Page','GhostPage','UserDefinedForm','HomePage','NewsHolder','NewsPage','ErrorPage','RedirectorPage','VirtualPage','SubscribeForm') character set utf8 default 'SiteTree',
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
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SiteTree_Live`
--

LOCK TABLES `SiteTree_Live` WRITE;
/*!40000 ALTER TABLE `SiteTree_Live` DISABLE KEYS */;
INSERT INTO `SiteTree_Live` VALUES (1,'HomePage','2009-01-07 12:41:02','2009-01-09 00:15:00','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,15),(2,'Page','2009-01-07 12:41:02','2009-01-07 12:41:02','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,9,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0,1),(3,'Page','2009-01-07 12:41:02','2009-01-07 12:41:02','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,10,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0,1),(4,'ErrorPage','2009-01-07 12:41:03','2009-01-07 12:41:07','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,NULL,0,1,NULL,0,11,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0,1),(5,'NewsHolder','2009-01-08 16:16:32','2009-01-08 16:16:57','news','News',NULL,'<p>This is the News Container</p>','News',NULL,NULL,NULL,0,1,NULL,0,12,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,3),(6,'NewsPage','2009-01-08 16:17:13','2009-01-08 16:49:36','headline-today','Headline Today',NULL,'<p></p>','This is a test',NULL,NULL,NULL,0,1,NULL,0,3,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,5,9),(7,'NewsPage','2009-01-08 16:45:23','2009-01-08 16:49:01','breaking-news','Breaking News',NULL,'<p></p>','Breaking News',NULL,NULL,NULL,0,1,NULL,0,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,5,8),(8,'NewsPage','2009-01-08 20:54:06','2009-01-08 20:55:01','news-break','News Break',NULL,'<p></p>','News Break',NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,5,7),(9,'Page','2009-01-08 21:06:28','2009-01-09 04:18:34','find-a-home','Find a Home',NULL,'<table border=\"0\" height=\"466\" width=\"563\"><tbody><tr valign=\"top\"><td><h1>Our Communities</h1><p><span class=\"emphasized\">ABBEY ROAD</span> Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"abbey-road/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15517-view-homes-abbeyroad.gif\" hspace=\"null\" vspace=\"null\" width=\"155\" height=\"17\" align=\"null\"  alt=\"\" /></a><br /> </p><p><span class=\"emphasized\">BEAUMONT</span> Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"beaumont/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15117-view-homes-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"151\" height=\"17\" align=\"null\"  alt=\"\" /></a></p><p><span class=\"emphasized\">THE RIDGE AT BEAUMONT</span> Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"the-ridge-at-beaumont/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage14714-view-homes-ridge-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"147\" height=\"14\" align=\"null\"  alt=\"\" /></a></p><p><span class=\"emphasized\">COMING SOON!</span><br /><a href=\"coming-soon/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage28317-learn-coming-soon.gif\" hspace=\"null\" vspace=\"null\" width=\"283\" height=\"17\" align=\"null\"  alt=\"\" /></a><br /> </p></td><td><p><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage264470-find-a-home-community.gif\" hspace=\"null\" vspace=\"null\" width=\"264\" height=\"470\" align=\"null\"  alt=\"\" /> </p></td></tr></tbody></table>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,42),(10,'Page','2009-01-08 22:35:43','2009-01-09 02:37:46','abbey-road','Abbey Road',NULL,'<p>This is the content</p>','Abbey Road',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9,11),(11,'Page','2009-01-09 00:21:55','2009-01-09 01:52:19','beaumont','Beaumont',NULL,'<p></p>','Beaumont',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9,5),(12,'Page','2009-01-09 00:22:14','2009-01-09 01:52:27','the-ridge-at-beaumont','The Ridge at Beaumont',NULL,'<p></p>','The Ridge at Beaumont',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9,5),(13,'Page','2009-01-09 00:22:35','2009-01-09 01:52:35','coming-soon','Coming Soon',NULL,'<p></p>','Coming Soon',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9,5),(14,'Page','2009-01-09 00:28:05','2009-01-09 02:46:08','about-abbey-road','About Abbey Road',NULL,'<p></p>','About Abbey Road',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,10,8),(15,'Page','2009-01-09 00:39:11','2009-01-09 02:41:02','sitemap','Sitemap',NULL,'<p></p>','sitemap',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,10,10),(16,'Page','2009-01-09 00:39:39','2009-01-09 02:46:53','homes','Homes',NULL,'<p></p>','Homes',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,10,8),(17,'Page','2009-01-09 01:48:27','2009-01-09 01:48:54','now-renting','Now Renting',NULL,'<p></p>','Now Renting',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,7),(18,'Page','2009-01-09 01:49:22','2009-01-09 01:49:38','gallery','Gallery',NULL,'<p></p>','Gallery',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,17,3),(19,'Page','2009-01-09 01:50:09','2009-01-09 01:50:28','available-properties','Available Properties',NULL,'<p></p>','Available Properties',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,17,3),(20,'Page','2009-01-09 01:50:39','2009-01-09 01:50:53','rental-guidelines','Rental Guidelines',NULL,'<p></p>','Rental Guidelines',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,17,3),(21,'Page','2009-01-09 01:51:08','2009-01-09 01:51:36','application-pdf','Application (PDF)',NULL,'<p></p>','Application(PDF)',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,17,3),(22,'Page','2009-01-09 01:53:13','2009-01-09 01:53:41','my-belmark-home','My Belmark Home',NULL,'<p></p>','My Belmark Home',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,7),(23,'Page','2009-01-09 01:53:55','2009-01-09 01:57:17','belmark-cares','Belmark Cares',NULL,'<p></p>','Belmark Cares',NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,7),(24,'Page','2009-01-09 01:54:12','2009-01-09 01:57:25','agents','Agents',NULL,'<p></p>','Agents',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,0,9),(25,'Page','2009-01-09 01:54:35','2009-01-09 01:57:30','why-belmark','Why Belmark',NULL,'<p></p>','Why Belmark',NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Published',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,0,7),(26,'Page','2009-01-09 01:55:05','2009-01-09 01:56:25','our-friends','Our Friends',NULL,'<p></p>','Our Friends',NULL,NULL,NULL,1,1,NULL,0,8,NULL,0,0,'Published',NULL,0.7,'Anyone','LoggedInUsers',1,1,NULL,0,9),(27,'Page','2009-01-09 02:01:23','2009-01-09 02:01:39','charity-information','Charity Information',NULL,'<p></p>','Charity Information',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,23,3),(28,'Page','2009-01-09 02:01:49','2009-01-09 02:02:21','news-comments','News & Comments',NULL,'<p></p>','News and Comments',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,23,5),(29,'Page','2009-01-09 02:17:05','2009-01-09 02:17:22','we-make-it-easy','We Make It Easy',NULL,'<p></p>','We Make It Easy',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,24,3),(30,'Page','2009-01-09 02:17:40','2009-01-09 02:18:20','purchase-and-sale-agreements','Purchase and Sale Agreements',NULL,'<p></p>','Purchase and Sales Agreements',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,24,5),(31,'Page','2009-01-09 02:18:43','2009-01-09 02:18:59','agent-protocol-pdf','Agent Protocol (PDF)',NULL,'<p></p>','Agent Protocol (PDF)',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,24,3),(32,'Page','2009-01-09 02:19:19','2009-01-09 02:19:36','about-us-2','About Us',NULL,'<p></p>','About Us',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,25,3),(33,'Page','2009-01-09 02:19:47','2009-01-09 02:20:01','land','Land',NULL,'<p></p>','Land',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,25,3),(34,'Page','2009-01-09 02:20:25','2009-01-09 02:20:39','testimonial-page','Testimonial Page',NULL,'<p></p>','Testimonial Page',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,26,3);
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
  `ClassName` enum('SiteTree','Page','GhostPage','UserDefinedForm','HomePage','NewsHolder','NewsPage','ErrorPage','RedirectorPage','VirtualPage','SubscribeForm') character set utf8 default 'SiteTree',
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
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SiteTree_versions`
--

LOCK TABLES `SiteTree_versions` WRITE;
/*!40000 ALTER TABLE `SiteTree_versions` DISABLE KEYS */;
INSERT INTO `SiteTree_versions` VALUES (1,1,1,1,0,0,'Page','2009-01-07 12:41:02','2009-01-07 12:41:02','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(2,2,1,1,0,0,'Page','2009-01-07 12:41:02','2009-01-07 12:41:02','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(3,3,1,1,0,0,'Page','2009-01-07 12:41:02','2009-01-07 12:41:02','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(4,4,1,1,0,0,'ErrorPage','2009-01-07 12:41:03','2009-01-07 12:41:03','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,NULL,0,1,NULL,0,0,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(5,4,2,0,0,0,'ErrorPage','2009-01-07 12:41:03','2009-01-07 12:41:06','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,NULL,0,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(6,1,2,1,1,1,'HomePage','2009-01-07 12:41:02','2009-01-08 00:58:24','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,1,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(7,1,3,0,1,0,'HomePage','2009-01-07 12:41:02','2009-01-08 02:56:38','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(8,1,4,1,1,1,'HomePage','2009-01-07 12:41:02','2009-01-08 02:56:38','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(9,1,5,0,1,0,'HomePage','2009-01-07 12:41:02','2009-01-08 03:01:22','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(10,1,6,1,1,1,'HomePage','2009-01-07 12:41:02','2009-01-08 03:01:22','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(11,1,7,0,1,0,'HomePage','2009-01-07 12:41:02','2009-01-08 03:03:06','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(12,1,8,1,1,1,'HomePage','2009-01-07 12:41:02','2009-01-08 03:03:06','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(13,1,9,0,1,0,'HomePage','2009-01-07 12:41:02','2009-01-08 03:04:45','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(14,1,10,1,1,1,'HomePage','2009-01-07 12:41:02','2009-01-08 03:04:45','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(15,1,11,0,1,0,'HomePage','2009-01-07 12:41:02','2009-01-08 04:03:41','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(16,1,12,1,1,1,'HomePage','2009-01-07 12:41:02','2009-01-08 04:03:41','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(17,5,1,0,1,0,'NewsHolder','2009-01-08 16:16:32','2009-01-08 16:16:32','new-newsholder','New NewsHolder',NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(18,5,2,0,1,0,'NewsHolder','2009-01-08 16:16:32','2009-01-08 16:16:57','news','News',NULL,'<p>This is the News Container</p>','News',NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Saved (new)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(19,5,3,1,1,1,'NewsHolder','2009-01-08 16:16:32','2009-01-08 16:16:57','news','News',NULL,'<p>This is the News Container</p>','News',NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(20,6,1,0,1,0,'NewsPage','2009-01-08 16:17:13','2009-01-08 16:17:13','new-newspage','New NewsPage',NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,5),(21,6,2,0,1,0,'NewsPage','2009-01-08 16:17:13','2009-01-08 16:18:04','this-is-a-test','This is a test',NULL,NULL,'This is a test',NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,5),(22,6,3,1,1,1,'NewsPage','2009-01-08 16:17:13','2009-01-08 16:18:04','this-is-a-test','This is a test',NULL,NULL,'This is a test',NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,5),(23,6,4,0,1,0,'NewsPage','2009-01-08 16:17:13','2009-01-08 16:18:21','this-is-a-test','well well well','This is a test',NULL,'This is a test',NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,5),(24,6,5,1,1,1,'NewsPage','2009-01-08 16:17:13','2009-01-08 16:18:21','this-is-a-test','well well well','This is a test',NULL,'This is a test',NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,5),(25,6,6,0,1,0,'NewsPage','2009-01-08 16:17:13','2009-01-08 16:45:13','this-is-a-test','well well well','This is a test','<p></p>','This is a test',NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,5),(26,6,7,1,1,1,'NewsPage','2009-01-08 16:17:13','2009-01-08 16:45:13','this-is-a-test','well well well','This is a test','<p></p>','This is a test',NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,5),(27,7,1,0,1,0,'NewsPage','2009-01-08 16:45:23','2009-01-08 16:45:23','new-newspage','New NewsPage',NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,0,2,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,5),(28,7,2,0,1,0,'NewsPage','2009-01-08 16:45:23','2009-01-08 16:45:46','breaking-news','Breaking News',NULL,'<p></p>','Breaking News',NULL,NULL,NULL,0,1,NULL,0,2,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,5),(29,7,3,1,1,1,'NewsPage','2009-01-08 16:45:23','2009-01-08 16:45:46','breaking-news','Breaking News',NULL,'<p></p>','Breaking News',NULL,NULL,NULL,0,1,NULL,0,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,5),(30,7,4,0,1,0,'NewsPage','2009-01-08 16:45:23','2009-01-08 16:46:15','breaking-news','Breaking News',NULL,'<p></p>','Breaking News',NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,5),(31,7,5,0,1,0,'NewsPage','2009-01-08 16:45:23','2009-01-08 16:46:21','breaking-news','Breaking News',NULL,'<p></p>','Breaking News',NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,5),(32,7,6,1,1,1,'NewsPage','2009-01-08 16:45:23','2009-01-08 16:46:21','breaking-news','Breaking News',NULL,'<p></p>','Breaking News',NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,5),(33,7,7,0,1,0,'NewsPage','2009-01-08 16:45:23','2009-01-08 16:49:00','breaking-news','Breaking News',NULL,'<p></p>','Breaking News',NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,5),(34,7,8,1,1,1,'NewsPage','2009-01-08 16:45:23','2009-01-08 16:49:00','breaking-news','Breaking News',NULL,'<p></p>','Breaking News',NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,5),(35,6,8,0,1,0,'NewsPage','2009-01-08 16:17:13','2009-01-08 16:49:36','headline-today','Headline Today',NULL,'<p></p>','This is a test',NULL,NULL,NULL,0,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,5),(36,6,9,1,1,1,'NewsPage','2009-01-08 16:17:13','2009-01-08 16:49:36','headline-today','Headline Today',NULL,'<p></p>','This is a test',NULL,NULL,NULL,0,1,NULL,0,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,5),(37,8,1,0,1,0,'NewsPage','2009-01-08 20:54:06','2009-01-08 20:54:06','new-newspage','New NewsPage',NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,0,3,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,5),(38,8,2,0,1,0,'NewsPage','2009-01-08 20:54:06','2009-01-08 20:54:38','news-break','News Break',NULL,'<p></p>','News Break',NULL,NULL,NULL,0,1,NULL,0,3,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,5),(39,8,3,1,1,1,'NewsPage','2009-01-08 20:54:06','2009-01-08 20:54:38','news-break','News Break',NULL,'<p></p>','News Break',NULL,NULL,NULL,0,1,NULL,0,3,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,5),(40,8,4,0,1,0,'NewsPage','2009-01-08 20:54:06','2009-01-08 20:54:55','news-break','News Break',NULL,'<p></p>','News Break',NULL,NULL,NULL,0,1,NULL,0,3,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,5),(41,8,5,0,1,0,'NewsPage','2009-01-08 20:54:06','2009-01-08 20:54:56','news-break','News Break',NULL,'<p></p>','News Break',NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,5),(42,8,6,0,1,0,'NewsPage','2009-01-08 20:54:06','2009-01-08 20:55:01','news-break','News Break',NULL,'<p></p>','News Break',NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,5),(43,8,7,1,1,1,'NewsPage','2009-01-08 20:54:06','2009-01-08 20:55:01','news-break','News Break',NULL,'<p></p>','News Break',NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,5),(44,9,1,0,1,0,'Page','2009-01-08 21:06:28','2009-01-08 21:06:28','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(45,9,2,0,1,0,'Page','2009-01-08 21:06:28','2009-01-08 21:06:42','find-a-home','Find a Home',NULL,'<p>This is the content of find a home</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (new)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(46,9,3,1,1,1,'Page','2009-01-08 21:06:28','2009-01-08 21:06:42','find-a-home','Find a Home',NULL,'<p>This is the content of find a home</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(47,9,4,0,1,0,'Page','2009-01-08 21:06:28','2009-01-08 21:06:46','find-a-home','Find a Home',NULL,'<p>This is the content of find a home</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(48,9,5,0,1,0,'Page','2009-01-08 21:06:28','2009-01-08 21:06:50','find-a-home','Find a Home',NULL,'<p>This is the content of find a home</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(49,9,6,1,1,1,'Page','2009-01-08 21:06:28','2009-01-08 21:06:50','find-a-home','Find a Home',NULL,'<p>This is the content of find a home</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(50,10,1,0,1,0,'Page','2009-01-08 22:35:43','2009-01-08 22:35:43','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,9),(51,10,2,0,1,0,'Page','2009-01-08 22:35:43','2009-01-08 22:35:58','abbey-road','Abbey Road',NULL,'<p>This is the content</p>','Abbey Road',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9),(52,10,3,1,1,1,'Page','2009-01-08 22:35:43','2009-01-08 22:35:58','abbey-road','Abbey Road',NULL,'<p>This is the content</p>','Abbey Road',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9),(53,1,13,0,1,0,'HomePage','2009-01-07 12:41:02','2009-01-09 00:08:36','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(54,1,14,0,1,0,'HomePage','2009-01-07 12:41:02','2009-01-09 00:15:00','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(55,1,15,1,1,1,'HomePage','2009-01-07 12:41:02','2009-01-09 00:15:00','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(56,9,7,0,1,0,'Page','2009-01-08 21:06:28','2009-01-09 00:15:10','find-a-home','Find a Home',NULL,'<p>This is the content of find a home</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(57,9,8,1,1,1,'Page','2009-01-08 21:06:28','2009-01-09 00:15:10','find-a-home','Find a Home',NULL,'<p>This is the content of find a home</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(58,11,1,0,1,0,'Page','2009-01-09 00:21:55','2009-01-09 00:21:55','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,9),(59,11,2,0,1,0,'Page','2009-01-09 00:21:55','2009-01-09 00:22:03','beaumont','Beaumont',NULL,'<p></p>','Beaumont',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9),(60,11,3,1,1,1,'Page','2009-01-09 00:21:55','2009-01-09 00:22:03','beaumont','Beaumont',NULL,'<p></p>','Beaumont',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9),(61,12,1,0,1,0,'Page','2009-01-09 00:22:14','2009-01-09 00:22:14','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,9),(62,12,2,0,1,0,'Page','2009-01-09 00:22:14','2009-01-09 00:22:24','the-ridge-at-beaumont','The Ridge at Beaumont',NULL,'<p></p>','The Ridge at Beaumont',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9),(63,12,3,1,1,1,'Page','2009-01-09 00:22:14','2009-01-09 00:22:24','the-ridge-at-beaumont','The Ridge at Beaumont',NULL,'<p></p>','The Ridge at Beaumont',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9),(64,13,1,0,1,0,'Page','2009-01-09 00:22:35','2009-01-09 00:22:35','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,9),(65,13,2,0,1,0,'Page','2009-01-09 00:22:35','2009-01-09 00:22:47','coming-soon','Coming Soon',NULL,'<p></p>','Coming Soon',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9),(66,13,3,1,1,1,'Page','2009-01-09 00:22:35','2009-01-09 00:22:47','coming-soon','Coming Soon',NULL,'<p></p>','Coming Soon',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9),(67,14,1,0,1,0,'Page','2009-01-09 00:28:05','2009-01-09 00:28:05','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,10),(68,14,2,0,1,0,'Page','2009-01-09 00:28:05','2009-01-09 00:28:14','about-abbey-road','About Abbey Road',NULL,'<p></p>','About Abbey Road',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (new)',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,10),(69,14,3,1,1,1,'Page','2009-01-09 00:28:05','2009-01-09 00:28:14','about-abbey-road','About Abbey Road',NULL,'<p></p>','About Abbey Road',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,10),(70,15,1,0,1,0,'Page','2009-01-09 00:39:11','2009-01-09 00:39:11','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,10),(71,15,2,0,1,0,'Page','2009-01-09 00:39:11','2009-01-09 00:39:34','sitemap','Sitemap',NULL,'<p></p>','sitemap',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (new)',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,10),(72,15,3,1,1,1,'Page','2009-01-09 00:39:11','2009-01-09 00:39:34','sitemap','Sitemap',NULL,'<p></p>','sitemap',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,10),(73,16,1,0,1,0,'Page','2009-01-09 00:39:39','2009-01-09 00:39:39','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,10),(74,16,2,0,1,0,'Page','2009-01-09 00:39:39','2009-01-09 00:39:53','homes','Homes',NULL,'<p></p>','Homes',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Saved (new)',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,10),(75,16,3,1,1,1,'Page','2009-01-09 00:39:39','2009-01-09 00:39:53','homes','Homes',NULL,'<p></p>','Homes',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,10),(76,17,1,0,1,0,'Page','2009-01-09 01:48:27','2009-01-09 01:48:27','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(77,17,2,0,1,0,'Page','2009-01-09 01:48:27','2009-01-09 01:48:42','now-renting','Now Renting',NULL,'<p></p>','Now Renting',NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Saved (new)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(78,17,3,1,1,1,'Page','2009-01-09 01:48:27','2009-01-09 01:48:42','now-renting','Now Renting',NULL,'<p></p>','Now Renting',NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(79,17,4,0,1,0,'Page','2009-01-09 01:48:27','2009-01-09 01:48:49','now-renting','Now Renting',NULL,'<p></p>','Now Renting',NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(80,17,5,0,1,0,'Page','2009-01-09 01:48:27','2009-01-09 01:48:49','now-renting','Now Renting',NULL,'<p></p>','Now Renting',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(81,17,6,0,1,0,'Page','2009-01-09 01:48:27','2009-01-09 01:48:54','now-renting','Now Renting',NULL,'<p></p>','Now Renting',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(82,17,7,1,1,1,'Page','2009-01-09 01:48:27','2009-01-09 01:48:54','now-renting','Now Renting',NULL,'<p></p>','Now Renting',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(83,18,1,0,1,0,'Page','2009-01-09 01:49:22','2009-01-09 01:49:22','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,17),(84,18,2,0,1,0,'Page','2009-01-09 01:49:22','2009-01-09 01:49:38','gallery','Gallery',NULL,'<p></p>','Gallery',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,17),(85,18,3,1,1,1,'Page','2009-01-09 01:49:22','2009-01-09 01:49:38','gallery','Gallery',NULL,'<p></p>','Gallery',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,17),(86,19,1,0,1,0,'Page','2009-01-09 01:50:09','2009-01-09 01:50:09','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,17),(87,19,2,0,1,0,'Page','2009-01-09 01:50:09','2009-01-09 01:50:28','available-properties','Available Properties',NULL,'<p></p>','Available Properties',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,17),(88,19,3,1,1,1,'Page','2009-01-09 01:50:09','2009-01-09 01:50:28','available-properties','Available Properties',NULL,'<p></p>','Available Properties',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,17),(89,20,1,0,1,0,'Page','2009-01-09 01:50:39','2009-01-09 01:50:39','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,17),(90,20,2,0,1,0,'Page','2009-01-09 01:50:39','2009-01-09 01:50:53','rental-guidelines','Rental Guidelines',NULL,'<p></p>','Rental Guidelines',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,17),(91,20,3,1,1,1,'Page','2009-01-09 01:50:39','2009-01-09 01:50:53','rental-guidelines','Rental Guidelines',NULL,'<p></p>','Rental Guidelines',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,17),(92,21,1,0,1,0,'Page','2009-01-09 01:51:08','2009-01-09 01:51:08','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,17),(93,21,2,0,1,0,'Page','2009-01-09 01:51:08','2009-01-09 01:51:36','application-pdf','Application (PDF)',NULL,'<p></p>','Application(PDF)',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,17),(94,21,3,1,1,1,'Page','2009-01-09 01:51:08','2009-01-09 01:51:36','application-pdf','Application (PDF)',NULL,'<p></p>','Application(PDF)',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,17),(95,10,4,0,1,0,'Page','2009-01-08 22:35:43','2009-01-09 01:51:53','abbey-road','Abbey Road',NULL,'<p>This is the content</p>','Abbey Road',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9),(96,10,5,1,1,1,'Page','2009-01-08 22:35:43','2009-01-09 01:51:53','abbey-road','Abbey Road',NULL,'<p>This is the content</p>','Abbey Road',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9),(97,14,4,0,1,0,'Page','2009-01-09 00:28:05','2009-01-09 01:52:01','about-abbey-road','About Abbey Road',NULL,'<p></p>','About Abbey Road',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,10),(98,14,5,1,1,1,'Page','2009-01-09 00:28:05','2009-01-09 01:52:01','about-abbey-road','About Abbey Road',NULL,'<p></p>','About Abbey Road',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,10),(99,15,4,0,1,0,'Page','2009-01-09 00:39:11','2009-01-09 01:52:08','sitemap','Sitemap',NULL,'<p></p>','sitemap',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,10),(100,15,5,1,1,1,'Page','2009-01-09 00:39:11','2009-01-09 01:52:09','sitemap','Sitemap',NULL,'<p></p>','sitemap',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,10),(101,11,4,0,1,0,'Page','2009-01-09 00:21:55','2009-01-09 01:52:19','beaumont','Beaumont',NULL,'<p></p>','Beaumont',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9),(102,11,5,1,1,1,'Page','2009-01-09 00:21:55','2009-01-09 01:52:19','beaumont','Beaumont',NULL,'<p></p>','Beaumont',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9),(103,12,4,0,1,0,'Page','2009-01-09 00:22:14','2009-01-09 01:52:27','the-ridge-at-beaumont','The Ridge at Beaumont',NULL,'<p></p>','The Ridge at Beaumont',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9),(104,12,5,1,1,1,'Page','2009-01-09 00:22:14','2009-01-09 01:52:27','the-ridge-at-beaumont','The Ridge at Beaumont',NULL,'<p></p>','The Ridge at Beaumont',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9),(105,13,4,0,1,0,'Page','2009-01-09 00:22:35','2009-01-09 01:52:35','coming-soon','Coming Soon',NULL,'<p></p>','Coming Soon',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9),(106,13,5,1,1,1,'Page','2009-01-09 00:22:35','2009-01-09 01:52:35','coming-soon','Coming Soon',NULL,'<p></p>','Coming Soon',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9),(107,22,1,0,1,0,'Page','2009-01-09 01:53:13','2009-01-09 01:53:13','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,8,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(108,22,2,0,1,0,'Page','2009-01-09 01:53:13','2009-01-09 01:53:29','my-belmark-home','My Belmark Home',NULL,'<p></p>','My Belmark Home',NULL,NULL,NULL,1,1,NULL,0,8,NULL,0,0,'Saved (new)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(109,22,3,1,1,1,'Page','2009-01-09 01:53:13','2009-01-09 01:53:29','my-belmark-home','My Belmark Home',NULL,'<p></p>','My Belmark Home',NULL,NULL,NULL,1,1,NULL,0,8,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(110,22,4,0,1,0,'Page','2009-01-09 01:53:13','2009-01-09 01:53:36','my-belmark-home','My Belmark Home',NULL,'<p></p>','My Belmark Home',NULL,NULL,NULL,1,1,NULL,0,8,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(111,22,5,0,1,0,'Page','2009-01-09 01:53:13','2009-01-09 01:53:37','my-belmark-home','My Belmark Home',NULL,'<p></p>','My Belmark Home',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(112,22,6,0,1,0,'Page','2009-01-09 01:53:13','2009-01-09 01:53:41','my-belmark-home','My Belmark Home',NULL,'<p></p>','My Belmark Home',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(113,22,7,1,1,1,'Page','2009-01-09 01:53:13','2009-01-09 01:53:41','my-belmark-home','My Belmark Home',NULL,'<p></p>','My Belmark Home',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(114,23,1,0,1,0,'Page','2009-01-09 01:53:55','2009-01-09 01:53:55','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,9,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(115,23,2,0,1,0,'Page','2009-01-09 01:53:55','2009-01-09 01:54:10','belmark-cares','Belmark Cares',NULL,'<p></p>','Belmark Cares',NULL,NULL,NULL,1,1,NULL,0,9,NULL,0,0,'Saved (new)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(116,23,3,1,1,1,'Page','2009-01-09 01:53:55','2009-01-09 01:54:10','belmark-cares','Belmark Cares',NULL,'<p></p>','Belmark Cares',NULL,NULL,NULL,1,1,NULL,0,9,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(117,24,1,0,1,0,'Page','2009-01-09 01:54:12','2009-01-09 01:54:12','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,23),(118,24,2,0,1,0,'Page','2009-01-09 01:54:12','2009-01-09 01:54:29','agents','Agents',NULL,'<p></p>','Agents',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,23),(119,24,3,1,1,1,'Page','2009-01-09 01:54:12','2009-01-09 01:54:29','agents','Agents',NULL,'<p></p>','Agents',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,23),(120,25,1,0,1,0,'Page','2009-01-09 01:54:35','2009-01-09 01:54:35','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,24),(121,25,2,0,1,0,'Page','2009-01-09 01:54:35','2009-01-09 01:54:54','why-belmark','Why Belmark',NULL,'<p></p>','Why Belmark',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (new)',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,24),(122,25,3,1,1,1,'Page','2009-01-09 01:54:35','2009-01-09 01:54:55','why-belmark','Why Belmark',NULL,'<p></p>','Why Belmark',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,24),(123,26,1,0,1,0,'Page','2009-01-09 01:55:05','2009-01-09 01:55:05','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,25),(124,26,2,0,1,0,'Page','2009-01-09 01:55:05','2009-01-09 01:55:17','our-friends','Our Friends',NULL,'<p></p>','Our Friends',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (new)',NULL,0.7,'Anyone','LoggedInUsers',1,1,NULL,25),(125,26,3,1,1,1,'Page','2009-01-09 01:55:05','2009-01-09 01:55:17','our-friends','Our Friends',NULL,'<p></p>','Our Friends',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.7,'Anyone','LoggedInUsers',1,1,NULL,25),(126,23,4,0,1,0,'Page','2009-01-09 01:53:55','2009-01-09 01:55:27','belmark-cares','Belmark Cares',NULL,'<p></p>','Belmark Cares',NULL,NULL,NULL,1,1,NULL,0,9,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(127,23,5,0,1,0,'Page','2009-01-09 01:53:55','2009-01-09 01:55:27','belmark-cares','Belmark Cares',NULL,'<p></p>','Belmark Cares',NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(128,26,4,0,1,0,'Page','2009-01-09 01:55:05','2009-01-09 01:55:33','our-friends','Our Friends',NULL,'<p></p>','Our Friends',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,0.7,'Anyone','LoggedInUsers',1,1,NULL,25),(129,26,5,1,1,1,'Page','2009-01-09 01:55:05','2009-01-09 01:55:33','our-friends','Our Friends',NULL,'<p></p>','Our Friends',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.7,'Anyone','LoggedInUsers',1,1,NULL,25),(130,24,4,0,1,0,'Page','2009-01-09 01:54:12','2009-01-09 01:55:45','agents','Agents',NULL,'<p></p>','Agents',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,23),(131,24,5,0,1,0,'Page','2009-01-09 01:54:12','2009-01-09 01:55:46','agents','Agents',NULL,'<p></p>','Agents',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,23),(132,24,6,0,1,0,'Page','2009-01-09 01:54:12','2009-01-09 01:55:56','agents','Agents',NULL,'<p></p>','Agents',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,0),(133,24,7,0,1,0,'Page','2009-01-09 01:54:12','2009-01-09 01:55:56','agents','Agents',NULL,'<p></p>','Agents',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,0),(134,25,4,0,1,0,'Page','2009-01-09 01:54:35','2009-01-09 01:56:08','why-belmark','Why Belmark',NULL,'<p></p>','Why Belmark',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,0),(135,25,5,0,1,0,'Page','2009-01-09 01:54:35','2009-01-09 01:56:08','why-belmark','Why Belmark',NULL,'<p></p>','Why Belmark',NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Saved (update)',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,0),(136,26,6,0,1,0,'Page','2009-01-09 01:55:05','2009-01-09 01:56:16','our-friends','Our Friends',NULL,'<p></p>','Our Friends',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,0.7,'Anyone','LoggedInUsers',1,1,NULL,0),(137,26,7,0,1,0,'Page','2009-01-09 01:55:05','2009-01-09 01:56:17','our-friends','Our Friends',NULL,'<p></p>','Our Friends',NULL,NULL,NULL,1,1,NULL,0,8,NULL,0,0,'Saved (update)',NULL,0.7,'Anyone','LoggedInUsers',1,1,NULL,0),(138,26,8,0,1,0,'Page','2009-01-09 01:55:05','2009-01-09 01:56:25','our-friends','Our Friends',NULL,'<p></p>','Our Friends',NULL,NULL,NULL,1,1,NULL,0,8,NULL,0,0,'Saved (update)',NULL,0.7,'Anyone','LoggedInUsers',1,1,NULL,0),(139,26,9,1,1,1,'Page','2009-01-09 01:55:05','2009-01-09 01:56:25','our-friends','Our Friends',NULL,'<p></p>','Our Friends',NULL,NULL,NULL,1,1,NULL,0,8,NULL,0,0,'Published',NULL,0.7,'Anyone','LoggedInUsers',1,1,NULL,0),(140,23,6,0,1,0,'Page','2009-01-09 01:53:55','2009-01-09 01:57:17','belmark-cares','Belmark Cares',NULL,'<p></p>','Belmark Cares',NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(141,23,7,1,1,1,'Page','2009-01-09 01:53:55','2009-01-09 01:57:17','belmark-cares','Belmark Cares',NULL,'<p></p>','Belmark Cares',NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(142,24,8,0,1,0,'Page','2009-01-09 01:54:12','2009-01-09 01:57:25','agents','Agents',NULL,'<p></p>','Agents',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,0),(143,24,9,1,1,1,'Page','2009-01-09 01:54:12','2009-01-09 01:57:25','agents','Agents',NULL,'<p></p>','Agents',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,0),(144,25,6,0,1,0,'Page','2009-01-09 01:54:35','2009-01-09 01:57:30','why-belmark','Why Belmark',NULL,'<p></p>','Why Belmark',NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Saved (update)',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,0),(145,25,7,1,1,1,'Page','2009-01-09 01:54:35','2009-01-09 01:57:30','why-belmark','Why Belmark',NULL,'<p></p>','Why Belmark',NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Published',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,0),(146,27,1,0,1,0,'Page','2009-01-09 02:01:23','2009-01-09 02:01:23','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,23),(147,27,2,0,1,0,'Page','2009-01-09 02:01:23','2009-01-09 02:01:39','charity-information','Charity Information',NULL,'<p></p>','Charity Information',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,23),(148,27,3,1,1,1,'Page','2009-01-09 02:01:23','2009-01-09 02:01:39','charity-information','Charity Information',NULL,'<p></p>','Charity Information',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,23),(149,28,1,0,1,0,'Page','2009-01-09 02:01:49','2009-01-09 02:01:49','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,23),(150,28,2,0,1,0,'Page','2009-01-09 02:01:49','2009-01-09 02:02:04','news-and-comments','News and Comments',NULL,'<p></p>','News and Comments',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,23),(151,28,3,1,1,1,'Page','2009-01-09 02:01:49','2009-01-09 02:02:04','news-and-comments','News and Comments',NULL,'<p></p>','News and Comments',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,23),(152,28,4,0,1,0,'Page','2009-01-09 02:01:49','2009-01-09 02:02:21','news-comments','News & Comments',NULL,'<p></p>','News and Comments',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,23),(153,28,5,1,1,1,'Page','2009-01-09 02:01:49','2009-01-09 02:02:21','news-comments','News & Comments',NULL,'<p></p>','News and Comments',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,23),(154,29,1,0,1,0,'Page','2009-01-09 02:17:05','2009-01-09 02:17:05','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,24),(155,29,2,0,1,0,'Page','2009-01-09 02:17:05','2009-01-09 02:17:22','we-make-it-easy','We Make It Easy',NULL,'<p></p>','We Make It Easy',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,24),(156,29,3,1,1,1,'Page','2009-01-09 02:17:05','2009-01-09 02:17:22','we-make-it-easy','We Make It Easy',NULL,'<p></p>','We Make It Easy',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,24),(157,30,1,0,1,0,'Page','2009-01-09 02:17:40','2009-01-09 02:17:40','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,24),(158,30,2,0,1,0,'Page','2009-01-09 02:17:40','2009-01-09 02:18:09','purchase-and-sale-agreement','Purchase and Sale Agreement','Purchase and Sale Agreements','<p></p>','Purchase and Sales Agreements',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,24),(159,30,3,1,1,1,'Page','2009-01-09 02:17:40','2009-01-09 02:18:09','purchase-and-sale-agreement','Purchase and Sale Agreement','Purchase and Sale Agreements','<p></p>','Purchase and Sales Agreements',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,24),(160,30,4,0,1,0,'Page','2009-01-09 02:17:40','2009-01-09 02:18:20','purchase-and-sale-agreements','Purchase and Sale Agreements',NULL,'<p></p>','Purchase and Sales Agreements',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,24),(161,30,5,1,1,1,'Page','2009-01-09 02:17:40','2009-01-09 02:18:20','purchase-and-sale-agreements','Purchase and Sale Agreements',NULL,'<p></p>','Purchase and Sales Agreements',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,24),(162,31,1,0,1,0,'Page','2009-01-09 02:18:43','2009-01-09 02:18:43','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,24),(163,31,2,0,1,0,'Page','2009-01-09 02:18:43','2009-01-09 02:18:59','agent-protocol-pdf','Agent Protocol (PDF)',NULL,'<p></p>','Agent Protocol (PDF)',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,24),(164,31,3,1,1,1,'Page','2009-01-09 02:18:43','2009-01-09 02:18:59','agent-protocol-pdf','Agent Protocol (PDF)',NULL,'<p></p>','Agent Protocol (PDF)',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,24),(165,32,1,0,1,0,'Page','2009-01-09 02:19:19','2009-01-09 02:19:19','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,25),(166,32,2,0,1,0,'Page','2009-01-09 02:19:19','2009-01-09 02:19:36','about-us-2','About Us',NULL,'<p></p>','About Us',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,25),(167,32,3,1,1,1,'Page','2009-01-09 02:19:19','2009-01-09 02:19:36','about-us-2','About Us',NULL,'<p></p>','About Us',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,25),(168,33,1,0,1,0,'Page','2009-01-09 02:19:47','2009-01-09 02:19:47','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,25),(169,33,2,0,1,0,'Page','2009-01-09 02:19:47','2009-01-09 02:20:01','land','Land',NULL,'<p></p>','Land',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,25),(170,33,3,1,1,1,'Page','2009-01-09 02:19:47','2009-01-09 02:20:01','land','Land',NULL,'<p></p>','Land',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,25),(171,34,1,0,1,0,'Page','2009-01-09 02:20:25','2009-01-09 02:20:25','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,26),(172,34,2,0,1,0,'Page','2009-01-09 02:20:25','2009-01-09 02:20:39','testimonial-page','Testimonial Page',NULL,'<p></p>','Testimonial Page',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,26),(173,34,3,1,1,1,'Page','2009-01-09 02:20:25','2009-01-09 02:20:39','testimonial-page','Testimonial Page',NULL,'<p></p>','Testimonial Page',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,26),(174,10,6,0,1,0,'Page','2009-01-08 22:35:43','2009-01-09 02:26:00','abbey-road','Abbey Road',NULL,'<p>This is the content</p>','Abbey Road',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9),(175,10,7,0,1,0,'Page','2009-01-08 22:35:43','2009-01-09 02:30:18','abbey-road','Abbey Road',NULL,'<p>This is the content</p>','Abbey Road',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9),(176,10,8,1,1,1,'Page','2009-01-08 22:35:43','2009-01-09 02:30:18','abbey-road','Abbey Road',NULL,'<p>This is the content</p>','Abbey Road',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9),(177,10,9,0,1,0,'Page','2009-01-08 22:35:43','2009-01-09 02:37:40','abbey-road','Abbey Road',NULL,'<p>This is the content</p>','Abbey Road',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9),(178,10,10,0,1,0,'Page','2009-01-08 22:35:43','2009-01-09 02:37:46','abbey-road','Abbey Road',NULL,'<p>This is the content</p>','Abbey Road',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9),(179,10,11,1,1,1,'Page','2009-01-08 22:35:43','2009-01-09 02:37:46','abbey-road','Abbey Road',NULL,'<p>This is the content</p>','Abbey Road',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9),(180,14,6,0,1,0,'Page','2009-01-09 00:28:05','2009-01-09 02:40:35','about-abbey-road','About Abbey Road',NULL,'<p></p>','About Abbey Road',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,10),(181,15,6,0,1,0,'Page','2009-01-09 00:39:11','2009-01-09 02:40:52','sitemap','Sitemap',NULL,'<p></p>','sitemap',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,10),(182,15,7,1,1,1,'Page','2009-01-09 00:39:11','2009-01-09 02:40:52','sitemap','Sitemap',NULL,'<p></p>','sitemap',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,10),(183,15,8,0,1,0,'Page','2009-01-09 00:39:11','2009-01-09 02:40:57','sitemap','Sitemap',NULL,'<p></p>','sitemap',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,10),(184,15,9,0,1,0,'Page','2009-01-09 00:39:11','2009-01-09 02:41:02','sitemap','Sitemap',NULL,'<p></p>','sitemap',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,10),(185,15,10,1,1,1,'Page','2009-01-09 00:39:11','2009-01-09 02:41:02','sitemap','Sitemap',NULL,'<p></p>','sitemap',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,10),(186,14,7,0,1,0,'Page','2009-01-09 00:28:05','2009-01-09 02:46:08','about-abbey-road','About Abbey Road',NULL,'<p></p>','About Abbey Road',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,10),(187,14,8,1,1,1,'Page','2009-01-09 00:28:05','2009-01-09 02:46:08','about-abbey-road','About Abbey Road',NULL,'<p></p>','About Abbey Road',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,10),(188,16,4,0,1,0,'Page','2009-01-09 00:39:39','2009-01-09 02:46:40','homes','Homes',NULL,'<p></p>','Homes',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,10),(189,16,5,0,1,0,'Page','2009-01-09 00:39:39','2009-01-09 02:46:44','homes','Homes',NULL,'<p></p>','Homes',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Saved (update)',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,10),(190,16,6,1,1,1,'Page','2009-01-09 00:39:39','2009-01-09 02:46:44','homes','Homes',NULL,'<p></p>','Homes',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,10),(191,16,7,0,1,0,'Page','2009-01-09 00:39:39','2009-01-09 02:46:53','homes','Homes',NULL,'<p></p>','Homes',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Saved (update)',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,10),(192,16,8,1,1,1,'Page','2009-01-09 00:39:39','2009-01-09 02:46:53','homes','Homes',NULL,'<p></p>','Homes',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,0.8,'Anyone','LoggedInUsers',1,1,NULL,10),(193,9,9,0,1,0,'Page','2009-01-08 21:06:28','2009-01-09 02:48:05','find-a-home','Find a Home',NULL,'<h1>Find A Home</h1><p>lorem ipsum</p><p>&nbsp;</p><p>&nbsp;</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(194,9,10,1,1,1,'Page','2009-01-08 21:06:28','2009-01-09 02:48:05','find-a-home','Find a Home',NULL,'<h1>Find A Home</h1><p>lorem ipsum</p><p>&nbsp;</p><p>&nbsp;</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(195,9,11,0,1,0,'Page','2009-01-08 21:06:28','2009-01-09 02:51:33','find-a-home','Find a Home',NULL,'<h1>Find A Home</h1><p>Lorem Ipsum Lorem Ipsum? <br />Lorem ipsum</p><p>&nbsp;</p><p>&nbsp;</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(196,9,12,1,1,1,'Page','2009-01-08 21:06:28','2009-01-09 02:51:33','find-a-home','Find a Home',NULL,'<h1>Find A Home</h1><p>Lorem Ipsum Lorem Ipsum? <br />Lorem ipsum</p><p>&nbsp;</p><p>&nbsp;</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(197,9,13,0,1,0,'Page','2009-01-08 21:06:28','2009-01-09 03:01:46','find-a-home','Find a Home',NULL,'<h1>Find A Home</h1><p class=\"header\">Lorem Ipsum Lorem Ipsum?</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(198,9,14,1,1,1,'Page','2009-01-08 21:06:28','2009-01-09 03:01:46','find-a-home','Find a Home',NULL,'<h1>Find A Home</h1><p class=\"header\">Lorem Ipsum Lorem Ipsum?</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(199,9,15,0,1,0,'Page','2009-01-08 21:06:28','2009-01-09 03:04:16','find-a-home','Find a Home',NULL,'<h1>Find A Home</h1><p><span class=\"header\">Lorem ipsum lorem ipsum?</span><br />These are hard times that needs to be addressed.</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(200,9,16,1,1,1,'Page','2009-01-08 21:06:28','2009-01-09 03:04:16','find-a-home','Find a Home',NULL,'<h1>Find A Home</h1><p><span class=\"header\">Lorem ipsum lorem ipsum?</span><br />These are hard times that needs to be addressed.</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(201,9,17,0,1,0,'Page','2009-01-08 21:06:28','2009-01-09 03:12:40','find-a-home','Find a Home',NULL,'<h1>Find A Home</h1><p><span class=\"header\">Lorem ipsum lorem ipsum?</span><br />These are hard times that needs to be addressed.</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(202,9,18,0,1,0,'Page','2009-01-08 21:06:28','2009-01-09 03:13:03','find-a-home','Find a Home',NULL,'<h1>Find A Home</h1><p><span class=\"header\">Lorem ipsum lorem ipsum?</span><br />These are hard times that needs to be addressed.</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(203,9,19,1,1,1,'Page','2009-01-08 21:06:28','2009-01-09 03:13:03','find-a-home','Find a Home',NULL,'<h1>Find A Home</h1><p><span class=\"header\">Lorem ipsum lorem ipsum?</span><br />These are hard times that needs to be addressed.</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(204,9,20,0,1,0,'Page','2009-01-08 21:06:28','2009-01-09 03:24:20','find-a-home','Find a Home',NULL,'<table border=\"0\" height=\"481\" width=\"640\"><tbody><tr valign=\"top\"><td><h1>Our Communities</h1><p>ABBEY ROAD Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /> </p><p>BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in</p><p>THE RIDGE AT BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in</p><p>COMING SOON! </p></td><td><p><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage278471-find-a-home-community.gif\" hspace=\"null\" vspace=\"null\" width=\"278\" height=\"471\" align=\"null\"    alt=\"\" /> </p></td></tr></tbody></table><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(205,9,21,1,1,1,'Page','2009-01-08 21:06:28','2009-01-09 03:24:20','find-a-home','Find a Home',NULL,'<table border=\"0\" height=\"481\" width=\"640\"><tbody><tr valign=\"top\"><td><h1>Our Communities</h1><p>ABBEY ROAD Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /> </p><p>BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in</p><p>THE RIDGE AT BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in</p><p>COMING SOON! </p></td><td><p><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage278471-find-a-home-community.gif\" hspace=\"null\" vspace=\"null\" width=\"278\" height=\"471\" align=\"null\"    alt=\"\" /> </p></td></tr></tbody></table><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(206,9,22,0,1,0,'Page','2009-01-08 21:06:28','2009-01-09 03:26:27','find-a-home','Find a Home',NULL,'<table border=\"0\" height=\"481\" width=\"640\"><tbody><tr valign=\"top\"><td><h1>Our Communities</h1><p>ABBEY ROAD Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"abbey-road/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15517-view-homes-abbeyroad.gif\" hspace=\"null\" vspace=\"null\" width=\"155\" height=\"17\" align=\"null\"    alt=\"\" /></a><br /> </p><p>BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in</p><p>THE RIDGE AT BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in</p><p>COMING SOON! </p></td><td><p><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage278471-find-a-home-community.gif\" hspace=\"null\" vspace=\"null\" width=\"278\" height=\"471\" align=\"null\"  alt=\"\" /> </p></td></tr></tbody></table><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(207,9,23,1,1,1,'Page','2009-01-08 21:06:28','2009-01-09 03:26:27','find-a-home','Find a Home',NULL,'<table border=\"0\" height=\"481\" width=\"640\"><tbody><tr valign=\"top\"><td><h1>Our Communities</h1><p>ABBEY ROAD Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"abbey-road/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15517-view-homes-abbeyroad.gif\" hspace=\"null\" vspace=\"null\" width=\"155\" height=\"17\" align=\"null\"    alt=\"\" /></a><br /> </p><p>BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in</p><p>THE RIDGE AT BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in</p><p>COMING SOON! </p></td><td><p><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage278471-find-a-home-community.gif\" hspace=\"null\" vspace=\"null\" width=\"278\" height=\"471\" align=\"null\"  alt=\"\" /> </p></td></tr></tbody></table><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(208,9,24,0,1,0,'Page','2009-01-08 21:06:28','2009-01-09 03:27:56','find-a-home','Find a Home',NULL,'<table border=\"0\" height=\"574\" width=\"520\"><tbody><tr valign=\"top\"><td><h1>Our Communities</h1><p>ABBEY ROAD Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"abbey-road/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15517-view-homes-abbeyroad.gif\" hspace=\"null\" vspace=\"null\" width=\"155\" height=\"17\" align=\"null\"    alt=\"\" /></a><br /> </p><p>BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in</p><p>THE RIDGE AT BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in</p><p>COMING SOON! </p></td><td><p><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage278471-find-a-home-community.gif\" hspace=\"null\" vspace=\"null\" width=\"278\" height=\"471\" align=\"null\"  alt=\"\" /> </p></td></tr></tbody></table><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(209,9,25,1,1,1,'Page','2009-01-08 21:06:28','2009-01-09 03:27:56','find-a-home','Find a Home',NULL,'<table border=\"0\" height=\"574\" width=\"520\"><tbody><tr valign=\"top\"><td><h1>Our Communities</h1><p>ABBEY ROAD Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"abbey-road/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15517-view-homes-abbeyroad.gif\" hspace=\"null\" vspace=\"null\" width=\"155\" height=\"17\" align=\"null\"    alt=\"\" /></a><br /> </p><p>BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in</p><p>THE RIDGE AT BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in</p><p>COMING SOON! </p></td><td><p><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage278471-find-a-home-community.gif\" hspace=\"null\" vspace=\"null\" width=\"278\" height=\"471\" align=\"null\"  alt=\"\" /> </p></td></tr></tbody></table><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(210,9,26,0,1,0,'Page','2009-01-08 21:06:28','2009-01-09 03:36:26','find-a-home','Find a Home',NULL,'<table border=\"0\" height=\"574\" width=\"520\"><tbody><tr valign=\"top\"><td><h1>Our Communities</h1><p>ABBEY ROAD Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"abbey-road/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15517-view-homes-abbeyroad.gif\" hspace=\"null\" vspace=\"null\" width=\"155\" height=\"17\" align=\"null\"    alt=\"\" /></a><br /> </p><p>BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15117-view-homes-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"151\" height=\"17\" align=\"null\"    alt=\"\" /></p><p>THE RIDGE AT BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage14714-view-homes-ridge-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"147\" height=\"14\" align=\"null\"    alt=\"\" /></p><p>COMING SOON!<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage28317-learn-coming-soon.gif\" hspace=\"null\" vspace=\"null\" width=\"283\" height=\"17\" align=\"null\"    alt=\"\" /><br /> </p></td><td><p><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage278471-find-a-home-community.gif\" hspace=\"null\" vspace=\"null\" width=\"278\" height=\"471\" align=\"null\"  alt=\"\" /> </p></td></tr></tbody></table><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(211,9,27,1,1,1,'Page','2009-01-08 21:06:28','2009-01-09 03:36:26','find-a-home','Find a Home',NULL,'<table border=\"0\" height=\"574\" width=\"520\"><tbody><tr valign=\"top\"><td><h1>Our Communities</h1><p>ABBEY ROAD Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"abbey-road/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15517-view-homes-abbeyroad.gif\" hspace=\"null\" vspace=\"null\" width=\"155\" height=\"17\" align=\"null\"    alt=\"\" /></a><br /> </p><p>BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15117-view-homes-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"151\" height=\"17\" align=\"null\"    alt=\"\" /></p><p>THE RIDGE AT BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage14714-view-homes-ridge-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"147\" height=\"14\" align=\"null\"    alt=\"\" /></p><p>COMING SOON!<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage28317-learn-coming-soon.gif\" hspace=\"null\" vspace=\"null\" width=\"283\" height=\"17\" align=\"null\"    alt=\"\" /><br /> </p></td><td><p><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage278471-find-a-home-community.gif\" hspace=\"null\" vspace=\"null\" width=\"278\" height=\"471\" align=\"null\"  alt=\"\" /> </p></td></tr></tbody></table><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(212,9,28,0,1,0,'Page','2009-01-08 21:06:28','2009-01-09 03:39:35','find-a-home','Find a Home',NULL,'<table border=\"0\" height=\"574\" width=\"520\"><tbody><tr valign=\"top\"><td><h1>Our Communities</h1><p>ABBEY ROAD Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"abbey-road/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15517-view-homes-abbeyroad.gif\" hspace=\"null\" vspace=\"null\" width=\"155\" height=\"17\" align=\"null\"    alt=\"\" /></a><br /> </p><p>BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15117-view-homes-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"151\" height=\"17\" align=\"null\"    alt=\"\" /></p><p>THE RIDGE AT BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage14714-view-homes-ridge-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"147\" height=\"14\" align=\"null\"    alt=\"\" /></p><p>COMING SOON!<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage28317-learn-coming-soon.gif\" hspace=\"null\" vspace=\"null\" width=\"283\" height=\"17\" align=\"null\"    alt=\"\" /><br /> </p></td><td><p><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage264470-find-a-home-community.gif\" hspace=\"null\" vspace=\"null\" width=\"264\" height=\"470\" align=\"null\"    alt=\"\" /> </p></td></tr></tbody></table><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(213,9,29,1,1,1,'Page','2009-01-08 21:06:28','2009-01-09 03:39:35','find-a-home','Find a Home',NULL,'<table border=\"0\" height=\"574\" width=\"520\"><tbody><tr valign=\"top\"><td><h1>Our Communities</h1><p>ABBEY ROAD Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"abbey-road/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15517-view-homes-abbeyroad.gif\" hspace=\"null\" vspace=\"null\" width=\"155\" height=\"17\" align=\"null\"    alt=\"\" /></a><br /> </p><p>BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15117-view-homes-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"151\" height=\"17\" align=\"null\"    alt=\"\" /></p><p>THE RIDGE AT BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage14714-view-homes-ridge-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"147\" height=\"14\" align=\"null\"    alt=\"\" /></p><p>COMING SOON!<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage28317-learn-coming-soon.gif\" hspace=\"null\" vspace=\"null\" width=\"283\" height=\"17\" align=\"null\"    alt=\"\" /><br /> </p></td><td><p><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage264470-find-a-home-community.gif\" hspace=\"null\" vspace=\"null\" width=\"264\" height=\"470\" align=\"null\"    alt=\"\" /> </p></td></tr></tbody></table><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(214,9,30,0,1,0,'Page','2009-01-08 21:06:28','2009-01-09 03:40:06','find-a-home','Find a Home',NULL,'<table border=\"0\" height=\"574\" width=\"450\"><tbody><tr valign=\"top\"><td><h1>Our Communities</h1><p>ABBEY ROAD Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"abbey-road/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15517-view-homes-abbeyroad.gif\" hspace=\"null\" vspace=\"null\" width=\"155\" height=\"17\" align=\"null\"    alt=\"\" /></a><br /> </p><p>BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15117-view-homes-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"151\" height=\"17\" align=\"null\"    alt=\"\" /></p><p>THE RIDGE AT BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage14714-view-homes-ridge-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"147\" height=\"14\" align=\"null\"    alt=\"\" /></p><p>COMING SOON!<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage28317-learn-coming-soon.gif\" hspace=\"null\" vspace=\"null\" width=\"283\" height=\"17\" align=\"null\"    alt=\"\" /><br /> </p></td><td><p><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage264470-find-a-home-community.gif\" hspace=\"null\" vspace=\"null\" width=\"264\" height=\"470\" align=\"null\"    alt=\"\" /> </p></td></tr></tbody></table><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(215,9,31,1,1,1,'Page','2009-01-08 21:06:28','2009-01-09 03:40:06','find-a-home','Find a Home',NULL,'<table border=\"0\" height=\"574\" width=\"450\"><tbody><tr valign=\"top\"><td><h1>Our Communities</h1><p>ABBEY ROAD Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"abbey-road/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15517-view-homes-abbeyroad.gif\" hspace=\"null\" vspace=\"null\" width=\"155\" height=\"17\" align=\"null\"    alt=\"\" /></a><br /> </p><p>BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15117-view-homes-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"151\" height=\"17\" align=\"null\"    alt=\"\" /></p><p>THE RIDGE AT BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage14714-view-homes-ridge-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"147\" height=\"14\" align=\"null\"    alt=\"\" /></p><p>COMING SOON!<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage28317-learn-coming-soon.gif\" hspace=\"null\" vspace=\"null\" width=\"283\" height=\"17\" align=\"null\"    alt=\"\" /><br /> </p></td><td><p><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage264470-find-a-home-community.gif\" hspace=\"null\" vspace=\"null\" width=\"264\" height=\"470\" align=\"null\"    alt=\"\" /> </p></td></tr></tbody></table><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(216,9,32,0,1,0,'Page','2009-01-08 21:06:28','2009-01-09 03:50:32','find-a-home','Find a Home',NULL,'<table border=\"0\" height=\"466\" width=\"563\"><tbody><tr valign=\"top\"><td><h1>Our Communities</h1><p>ABBEY ROAD Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"abbey-road/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15517-view-homes-abbeyroad.gif\" hspace=\"null\" vspace=\"null\" width=\"155\" height=\"17\" align=\"null\"    alt=\"\" /></a><br /> </p><p>BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15117-view-homes-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"151\" height=\"17\" align=\"null\"    alt=\"\" /></p><p>THE RIDGE AT BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage14714-view-homes-ridge-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"147\" height=\"14\" align=\"null\"    alt=\"\" /></p><p>COMING SOON!<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage28317-learn-coming-soon.gif\" hspace=\"null\" vspace=\"null\" width=\"283\" height=\"17\" align=\"null\"    alt=\"\" /><br /> </p></td><td><p><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage264470-find-a-home-community.gif\" hspace=\"null\" vspace=\"null\" width=\"264\" height=\"470\" align=\"null\"    alt=\"\" /> </p></td></tr></tbody></table><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(217,9,33,1,1,1,'Page','2009-01-08 21:06:28','2009-01-09 03:50:32','find-a-home','Find a Home',NULL,'<table border=\"0\" height=\"466\" width=\"563\"><tbody><tr valign=\"top\"><td><h1>Our Communities</h1><p>ABBEY ROAD Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"abbey-road/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15517-view-homes-abbeyroad.gif\" hspace=\"null\" vspace=\"null\" width=\"155\" height=\"17\" align=\"null\"    alt=\"\" /></a><br /> </p><p>BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15117-view-homes-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"151\" height=\"17\" align=\"null\"    alt=\"\" /></p><p>THE RIDGE AT BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage14714-view-homes-ridge-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"147\" height=\"14\" align=\"null\"    alt=\"\" /></p><p>COMING SOON!<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage28317-learn-coming-soon.gif\" hspace=\"null\" vspace=\"null\" width=\"283\" height=\"17\" align=\"null\"    alt=\"\" /><br /> </p></td><td><p><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage264470-find-a-home-community.gif\" hspace=\"null\" vspace=\"null\" width=\"264\" height=\"470\" align=\"null\"    alt=\"\" /> </p></td></tr></tbody></table><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(218,9,34,0,1,0,'Page','2009-01-08 21:06:28','2009-01-09 04:07:12','find-a-home','Find a Home',NULL,'<table border=\"0\" height=\"466\" width=\"563\"><tbody><tr valign=\"top\"><td><h1>Our Communities</h1><p>ABBEY ROAD Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"abbey-road/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15517-view-homes-abbeyroad.gif\" hspace=\"null\" vspace=\"null\" width=\"155\" height=\"17\" align=\"null\"    alt=\"\" /></a><br /> </p><p>BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15117-view-homes-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"151\" height=\"17\" align=\"null\"    alt=\"\" /></p><p>THE RIDGE AT BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage14714-view-homes-ridge-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"147\" height=\"14\" align=\"null\"    alt=\"\" /></p><p>COMING SOON!<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage28317-learn-coming-soon.gif\" hspace=\"null\" vspace=\"null\" width=\"283\" height=\"17\" align=\"null\"    alt=\"\" /><br /> </p></td><td><p><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage264470-find-a-home-community.gif\" hspace=\"null\" vspace=\"null\" width=\"264\" height=\"470\" align=\"null\"    alt=\"\" /> </p></td></tr></tbody></table>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(219,9,35,1,1,1,'Page','2009-01-08 21:06:28','2009-01-09 04:07:12','find-a-home','Find a Home',NULL,'<table border=\"0\" height=\"466\" width=\"563\"><tbody><tr valign=\"top\"><td><h1>Our Communities</h1><p>ABBEY ROAD Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"abbey-road/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15517-view-homes-abbeyroad.gif\" hspace=\"null\" vspace=\"null\" width=\"155\" height=\"17\" align=\"null\"    alt=\"\" /></a><br /> </p><p>BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15117-view-homes-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"151\" height=\"17\" align=\"null\"    alt=\"\" /></p><p>THE RIDGE AT BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage14714-view-homes-ridge-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"147\" height=\"14\" align=\"null\"    alt=\"\" /></p><p>COMING SOON!<br /><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage28317-learn-coming-soon.gif\" hspace=\"null\" vspace=\"null\" width=\"283\" height=\"17\" align=\"null\"    alt=\"\" /><br /> </p></td><td><p><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage264470-find-a-home-community.gif\" hspace=\"null\" vspace=\"null\" width=\"264\" height=\"470\" align=\"null\"    alt=\"\" /> </p></td></tr></tbody></table>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(220,9,36,0,1,0,'Page','2009-01-08 21:06:28','2009-01-09 04:07:57','find-a-home','Find a Home',NULL,'<table border=\"0\" height=\"466\" width=\"563\"><tbody><tr valign=\"top\"><td><h1>Our Communities</h1><p>ABBEY ROAD Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"abbey-road/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15517-view-homes-abbeyroad.gif\" hspace=\"null\" vspace=\"null\" width=\"155\" height=\"17\" align=\"null\"    alt=\"\" /></a><br /> </p><p>BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"beaumont/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15117-view-homes-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"151\" height=\"17\" align=\"null\"    alt=\"\" /></a></p><p>THE RIDGE AT BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"the-ridge-at-beaumont/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage14714-view-homes-ridge-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"147\" height=\"14\" align=\"null\"    alt=\"\" /></a></p><p>COMING SOON!<br /><a href=\"coming-soon/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage28317-learn-coming-soon.gif\" hspace=\"null\" vspace=\"null\" width=\"283\" height=\"17\" align=\"null\"    alt=\"\" /></a><br /> </p></td><td><p><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage264470-find-a-home-community.gif\" hspace=\"null\" vspace=\"null\" width=\"264\" height=\"470\" align=\"null\"    alt=\"\" /> </p></td></tr></tbody></table>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(221,9,37,1,1,1,'Page','2009-01-08 21:06:28','2009-01-09 04:07:57','find-a-home','Find a Home',NULL,'<table border=\"0\" height=\"466\" width=\"563\"><tbody><tr valign=\"top\"><td><h1>Our Communities</h1><p>ABBEY ROAD Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"abbey-road/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15517-view-homes-abbeyroad.gif\" hspace=\"null\" vspace=\"null\" width=\"155\" height=\"17\" align=\"null\"    alt=\"\" /></a><br /> </p><p>BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"beaumont/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15117-view-homes-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"151\" height=\"17\" align=\"null\"    alt=\"\" /></a></p><p>THE RIDGE AT BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"the-ridge-at-beaumont/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage14714-view-homes-ridge-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"147\" height=\"14\" align=\"null\"    alt=\"\" /></a></p><p>COMING SOON!<br /><a href=\"coming-soon/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage28317-learn-coming-soon.gif\" hspace=\"null\" vspace=\"null\" width=\"283\" height=\"17\" align=\"null\"    alt=\"\" /></a><br /> </p></td><td><p><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage264470-find-a-home-community.gif\" hspace=\"null\" vspace=\"null\" width=\"264\" height=\"470\" align=\"null\"    alt=\"\" /> </p></td></tr></tbody></table>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(222,9,38,0,1,0,'Page','2009-01-08 21:06:28','2009-01-09 04:15:00','find-a-home','Find a Home',NULL,'<table border=\"0\" height=\"466\" width=\"563\"><tbody><tr valign=\"top\"><td><h1>Our Communities</h1><p>ABBEY ROAD Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"abbey-road/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15517-view-homes-abbeyroad.gif\" hspace=\"null\" vspace=\"null\" width=\"155\" height=\"17\" align=\"null\"    alt=\"\" /></a><br /> </p><p>BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"beaumont/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15117-view-homes-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"151\" height=\"17\" align=\"null\"    alt=\"\" /></a></p><p>THE RIDGE AT BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"the-ridge-at-beaumont/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage14714-view-homes-ridge-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"147\" height=\"14\" align=\"null\"    alt=\"\" /></a></p><p>COMING SOON!<br /><a href=\"coming-soon/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage28317-learn-coming-soon.gif\" hspace=\"null\" vspace=\"null\" width=\"283\" height=\"17\" align=\"null\"    alt=\"\" /></a><br /> </p></td><td><p><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage264470-find-a-home-community.gif\" hspace=\"null\" vspace=\"null\" width=\"264\" height=\"470\" align=\"null\"    alt=\"\" /> </p></td></tr></tbody></table>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(223,9,39,0,1,0,'Page','2009-01-08 21:06:28','2009-01-09 04:15:06','find-a-home','Find a Home',NULL,'<table border=\"0\" height=\"466\" width=\"563\"><tbody><tr valign=\"top\"><td><h1>Our Communities</h1><p>ABBEY ROAD Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"abbey-road/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15517-view-homes-abbeyroad.gif\" hspace=\"null\" vspace=\"null\" width=\"155\" height=\"17\" align=\"null\"  alt=\"\" /></a><br /> </p><p>BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"beaumont/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15117-view-homes-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"151\" height=\"17\" align=\"null\"  alt=\"\" /></a></p><p>THE RIDGE AT BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"the-ridge-at-beaumont/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage14714-view-homes-ridge-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"147\" height=\"14\" align=\"null\"  alt=\"\" /></a></p><p>COMING SOON!<br /><a href=\"coming-soon/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage28317-learn-coming-soon.gif\" hspace=\"null\" vspace=\"null\" width=\"283\" height=\"17\" align=\"null\"  alt=\"\" /></a><br /> </p></td><td><p><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage264470-find-a-home-community.gif\" hspace=\"null\" vspace=\"null\" width=\"264\" height=\"470\" align=\"null\"  alt=\"\" /> </p></td></tr></tbody></table>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(224,9,40,1,1,1,'Page','2009-01-08 21:06:28','2009-01-09 04:15:06','find-a-home','Find a Home',NULL,'<table border=\"0\" height=\"466\" width=\"563\"><tbody><tr valign=\"top\"><td><h1>Our Communities</h1><p>ABBEY ROAD Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"abbey-road/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15517-view-homes-abbeyroad.gif\" hspace=\"null\" vspace=\"null\" width=\"155\" height=\"17\" align=\"null\"  alt=\"\" /></a><br /> </p><p>BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"beaumont/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15117-view-homes-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"151\" height=\"17\" align=\"null\"  alt=\"\" /></a></p><p>THE RIDGE AT BEAUMONT Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"the-ridge-at-beaumont/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage14714-view-homes-ridge-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"147\" height=\"14\" align=\"null\"  alt=\"\" /></a></p><p>COMING SOON!<br /><a href=\"coming-soon/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage28317-learn-coming-soon.gif\" hspace=\"null\" vspace=\"null\" width=\"283\" height=\"17\" align=\"null\"  alt=\"\" /></a><br /> </p></td><td><p><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage264470-find-a-home-community.gif\" hspace=\"null\" vspace=\"null\" width=\"264\" height=\"470\" align=\"null\"  alt=\"\" /> </p></td></tr></tbody></table>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(225,9,41,0,1,0,'Page','2009-01-08 21:06:28','2009-01-09 04:18:34','find-a-home','Find a Home',NULL,'<table border=\"0\" height=\"466\" width=\"563\"><tbody><tr valign=\"top\"><td><h1>Our Communities</h1><p><span class=\"emphasized\">ABBEY ROAD</span> Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"abbey-road/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15517-view-homes-abbeyroad.gif\" hspace=\"null\" vspace=\"null\" width=\"155\" height=\"17\" align=\"null\"  alt=\"\" /></a><br /> </p><p><span class=\"emphasized\">BEAUMONT</span> Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"beaumont/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15117-view-homes-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"151\" height=\"17\" align=\"null\"  alt=\"\" /></a></p><p><span class=\"emphasized\">THE RIDGE AT BEAUMONT</span> Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"the-ridge-at-beaumont/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage14714-view-homes-ridge-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"147\" height=\"14\" align=\"null\"  alt=\"\" /></a></p><p><span class=\"emphasized\">COMING SOON!</span><br /><a href=\"coming-soon/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage28317-learn-coming-soon.gif\" hspace=\"null\" vspace=\"null\" width=\"283\" height=\"17\" align=\"null\"  alt=\"\" /></a><br /> </p></td><td><p><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage264470-find-a-home-community.gif\" hspace=\"null\" vspace=\"null\" width=\"264\" height=\"470\" align=\"null\"  alt=\"\" /> </p></td></tr></tbody></table>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(226,9,42,1,1,1,'Page','2009-01-08 21:06:28','2009-01-09 04:18:34','find-a-home','Find a Home',NULL,'<table border=\"0\" height=\"466\" width=\"563\"><tbody><tr valign=\"top\"><td><h1>Our Communities</h1><p><span class=\"emphasized\">ABBEY ROAD</span> Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"abbey-road/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15517-view-homes-abbeyroad.gif\" hspace=\"null\" vspace=\"null\" width=\"155\" height=\"17\" align=\"null\"  alt=\"\" /></a><br /> </p><p><span class=\"emphasized\">BEAUMONT</span> Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"beaumont/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage15117-view-homes-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"151\" height=\"17\" align=\"null\"  alt=\"\" /></a></p><p><span class=\"emphasized\">THE RIDGE AT BEAUMONT</span> Homes where wisciliquis nibh er sim ent luptat ad tet vercip exero erit praesectem ipis nibh eliquisl utpat velesequam il essim in eu facipit ad ea consenit lor incilla feuguerosto odo essi te facing eum nis er acilit in<br /><a href=\"the-ridge-at-beaumont/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage14714-view-homes-ridge-beaumont.gif\" hspace=\"null\" vspace=\"null\" width=\"147\" height=\"14\" align=\"null\"  alt=\"\" /></a></p><p><span class=\"emphasized\">COMING SOON!</span><br /><a href=\"coming-soon/\"><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage28317-learn-coming-soon.gif\" hspace=\"null\" vspace=\"null\" width=\"283\" height=\"17\" align=\"null\"  alt=\"\" /></a><br /> </p></td><td><p><img class=\"left\" src=\"assets/pages/_resampled/ResizedImage264470-find-a-home-community.gif\" hspace=\"null\" vspace=\"null\" width=\"264\" height=\"470\" align=\"null\"  alt=\"\" /> </p></td></tr></tbody></table>','Find a Home',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0);
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

-- Dump completed on 2009-01-08 20:22:24

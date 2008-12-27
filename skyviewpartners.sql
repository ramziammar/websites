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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `File`
--

LOCK TABLES `File` WRITE;
/*!40000 ALTER TABLE `File` DISABLE KEYS */;
INSERT INTO `File` VALUES (2,'Folder','2008-12-18 21:30:51','2008-12-18 21:30:51','Uploads','Uploads','assets/Uploads/',NULL,0,0,1),(3,'Image','2008-12-18 21:30:51','2008-12-18 21:30:51','SilverStripeLogo.png','SilverStripeLogo.png','assets/Uploads/SilverStripeLogo.png',NULL,0,2,1),(4,'File','2008-12-18 21:30:51','2008-12-18 21:30:51','error-404.html','error-404.html','assets/error-404.html',NULL,0,0,1),(6,'Image','2008-12-20 13:58:45','2008-12-20 13:58:45','icon-pm.png','icon pm','assets/Uploads/icon-pm.png',NULL,0,2,1),(9,'Image','2008-12-28 02:59:03','2008-12-28 02:59:03','ra.gif','ra.gif','assets/Uploads/ra.gif',NULL,0,2,1),(10,'Image','2008-12-28 02:59:13','2008-12-28 02:59:13','rt.gif','rt.gif','assets/Uploads/rt.gif',NULL,0,2,1),(11,'Image','2008-12-28 02:59:23','2008-12-28 02:59:23','pm.gif','pm.gif','assets/Uploads/pm.gif',NULL,0,2,1),(12,'Image','2008-12-28 03:17:04','2008-12-28 03:17:04','policy-minder.gif','policy-minder.gif','assets/Uploads/policy-minder.gif',NULL,0,2,1);
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
-- Table structure for table `HomePage`
--

DROP TABLE IF EXISTS `HomePage`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `HomePage` (
  `ID` int(11) NOT NULL auto_increment,
  `Message` mediumtext character set utf8,
  `IconImageID` int(11) NOT NULL default '0',
  `Header` mediumtext character set utf8,
  PRIMARY KEY  (`ID`),
  KEY `IconImageID` (`IconImageID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `HomePage`
--

LOCK TABLES `HomePage` WRITE;
/*!40000 ALTER TABLE `HomePage` DISABLE KEYS */;
INSERT INTO `HomePage` VALUES (1,'<p>When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved. <a href=\"products-policy-minder/\">READ MORE&gt;&gt;</a></p>',6,'Policy Minder\nSaves Time Resulting in\na Measurable ROI');
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
  `Message` mediumtext character set utf8,
  `IconImageID` int(11) NOT NULL default '0',
  `Header` mediumtext character set utf8,
  PRIMARY KEY  (`ID`),
  KEY `IconImageID` (`IconImageID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `HomePage_Live`
--

LOCK TABLES `HomePage_Live` WRITE;
/*!40000 ALTER TABLE `HomePage_Live` DISABLE KEYS */;
INSERT INTO `HomePage_Live` VALUES (1,'<p>When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved. <a href=\"products-policy-minder/\">READ MORE&gt;&gt;</a></p>',6,'Policy Minder\nSaves Time Resulting in\na Measurable ROI');
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
  `Message` mediumtext character set utf8,
  `IconImageID` int(11) NOT NULL default '0',
  `Header` mediumtext character set utf8,
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `IconImageID` (`IconImageID`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `HomePage_versions`
--

LOCK TABLES `HomePage_versions` WRITE;
/*!40000 ALTER TABLE `HomePage_versions` DISABLE KEYS */;
INSERT INTO `HomePage_versions` VALUES (1,1,1,0,1,0,'When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved.',0,NULL),(2,1,2,0,1,0,'When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved.',0,NULL),(3,1,3,0,1,0,'When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved. This is another line to it.',0,NULL),(4,1,4,0,1,0,'When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved. This is another line to it.',0,NULL),(5,1,5,0,1,0,'When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved. This is another line to it.',6,NULL),(6,1,6,0,1,0,'When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved. This is another line to it.',6,NULL),(7,1,7,0,1,0,'When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved. This is another line to it.',6,NULL),(8,1,8,0,1,0,'When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved.',6,NULL),(9,1,9,0,1,0,'When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved.',6,NULL),(10,1,10,0,1,0,'When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved.',6,'Policy Minder\nSaves Time Resulting in\na Measurable ROI'),(11,1,11,0,1,0,'When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved.',6,'Policy Minder\nSaves Time Resulting in\na Measurable ROI'),(12,1,12,0,1,0,'When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved.',6,'Policy Minder\nSaves Time Resulting in\na Measurable ROI'),(13,1,13,0,1,0,'When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved.',6,'Policy Minder\nSaves Time Resulting in\na Measurable ROI'),(14,1,14,0,1,0,'When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved.',6,'Policy Minder (test)\nSaves Time Resulting in\na Measurable ROI'),(15,1,15,0,1,0,'When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved.',6,'Policy Minder (test)\nSaves Time Resulting in\na Measurable ROI'),(16,1,16,0,1,0,'When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved.',6,'Policy Minder\nSaves Time Resulting in\na Measurable ROI'),(17,1,17,0,1,0,'When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved.',6,'Policy Minder\nSaves Time Resulting in\na Measurable ROI'),(18,1,18,0,1,0,'<p>When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved. <a href=\"products-policy-minder/\">READ MORE&gt;&gt;</a></p>',6,'Policy Minder\nSaves Time Resulting in\na Measurable ROI'),(19,1,19,0,1,0,'<p>When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved. <a href=\"products-policy-minder/\">READ MORE&gt;&gt;</a></p>',6,'Policy Minder\nSaves Time Resulting in\na Measurable ROI'),(20,1,20,0,1,0,'<p>When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved. <a href=\"products-policy-minder/\">READ MORE&gt;&gt;</a></p>',6,'Policy Minder\nSaves Time Resulting in\na Measurable ROI'),(21,1,21,0,1,0,'<p>When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved. <a href=\"products-policy-minder/\">READ MORE&gt;&gt;</a></p>',6,'Policy Minder\nSaves Time Resulting in\na Measurable ROI'),(22,1,22,0,1,0,'<p>When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved. <a href=\"products-policy-minder/\">READ MORE&gt;&gt;</a></p>',6,'Policy Minder\nSaves Time Resulting in\na Measurable ROI'),(23,1,23,0,1,0,'<p>When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved. <a href=\"products-policy-minder/\">READ MORE&gt;&gt;</a></p>',6,'Policy Minder\nSaves Time Resulting in\na Measurable ROI'),(24,1,24,0,1,0,'<p>When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved. <a href=\"products-policy-minder/\">READ MORE&gt;&gt;</a></p>',6,'Policy Minder\nSaves Time Resulting in\na Measurable ROI'),(25,1,25,0,1,0,'When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved.',6,'Policy Minder\nSaves Time Resulting in\na Measurable ROI'),(26,1,26,0,1,0,'When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved.',6,'Policy Minder\nSaves Time Resulting in\na Measurable ROI'),(27,1,27,0,1,0,'<p>When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved. <a href=\"products-policy-minder/\">READ MORE&gt;&gt;</a></p>',6,'Policy Minder\nSaves Time Resulting in\na Measurable ROI'),(28,1,28,0,1,0,'<p>When you factor the complicated and costly task of maintaining and providing compliance, SkyView Policy Minder for i5/os and IBM i is the only security policy compliance management tool that equates to a measurable ROI in actual time saved. <a href=\"products-policy-minder/\">READ MORE&gt;&gt;</a></p>',6,'Policy Minder\nSaves Time Resulting in\na Measurable ROI');
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
INSERT INTO `Member` VALUES (1,'Member','2008-12-18 21:21:24','2008-12-28 02:05:15','Junrey','Beduya','jbeduya@gmail.com','8bd8l081phs8g4wcgc0cwc8k8wwgwco','a457f0d1624f7f7d6640d701b62c1a02',10,'2008-12-28 03:20:50',0,NULL,NULL,0,'sha1','97v4zw00f50kg048cs0kkowsc8gk8okg0s84kos','en_US',NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=399 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `PageView`
--

LOCK TABLES `PageView` WRITE;
/*!40000 ALTER TABLE `PageView` DISABLE KEYS */;
INSERT INTO `PageView` VALUES (1,'PageView','2008-12-18 21:21:26','2008-12-18 21:21:26','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/install.php',0,NULL,NULL,1,-1),(2,'PageView','2008-12-18 21:21:26','2008-12-18 21:21:26','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/install.php',0,NULL,NULL,1,-1),(3,'PageView','2008-12-18 21:21:49','2008-12-18 21:21:49','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(4,'PageView','2008-12-18 21:21:49','2008-12-18 21:21:49','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(5,'PageView','2008-12-18 21:24:52','2008-12-18 21:24:52','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(6,'PageView','2008-12-18 21:24:52','2008-12-18 21:24:52','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(7,'PageView','2008-12-18 21:25:05','2008-12-18 21:25:05','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(8,'PageView','2008-12-18 21:25:05','2008-12-18 21:25:05','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(9,'PageView','2008-12-18 21:25:10','2008-12-18 21:25:10','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/home/successfullyinstalled?flush=1',0,NULL,NULL,2,-1),(10,'PageView','2008-12-18 21:25:11','2008-12-18 21:25:11','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/about-us/',0,NULL,NULL,3,-1),(11,'PageView','2008-12-18 21:25:12','2008-12-18 21:25:12','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/contact-us/',0,NULL,NULL,1,-1),(12,'PageView','2008-12-18 21:28:55','2008-12-18 21:28:55','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(13,'PageView','2008-12-18 21:28:58','2008-12-18 21:28:58','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/mysite',0,NULL,NULL,1,-1),(14,'PageView','2008-12-18 21:29:08','2008-12-18 21:29:08','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(15,'PageView','2008-12-18 21:29:20','2008-12-18 21:29:20','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(16,'PageView','2008-12-18 21:30:38','2008-12-18 21:30:38','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(17,'PageView','2008-12-18 21:30:43','2008-12-18 21:30:43','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(18,'PageView','2008-12-18 21:31:24','2008-12-18 21:31:24','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/admin/',0,NULL,NULL,4,-1),(19,'PageView','2008-12-18 21:31:27','2008-12-18 21:31:27','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/admin/',0,NULL,NULL,4,1),(20,'PageView','2008-12-18 21:31:38','2008-12-18 21:31:38','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(21,'PageView','2008-12-18 21:32:11','2008-12-18 21:32:11','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(22,'PageView','2008-12-18 21:32:16','2008-12-18 21:32:16','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(23,'PageView','2008-12-18 21:32:16','2008-12-18 21:32:16','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(24,'PageView','2008-12-18 21:32:26','2008-12-18 21:32:26','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/admin/',0,NULL,NULL,3,1),(25,'PageView','2008-12-18 21:32:31','2008-12-18 21:32:31','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/contact-us/?stage=Live',0,NULL,NULL,2,1),(26,'PageView','2008-12-18 21:32:33','2008-12-18 21:32:33','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/about-us/',0,NULL,NULL,1,1),(27,'PageView','2008-12-18 21:32:38','2008-12-18 21:32:38','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(28,'PageView','2008-12-18 21:32:38','2008-12-18 21:32:38','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(29,'PageView','2008-12-18 21:32:46','2008-12-18 21:32:46','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(30,'PageView','2008-12-18 21:32:53','2008-12-18 21:32:53','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(31,'PageView','2008-12-18 21:32:58','2008-12-18 21:32:58','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(32,'PageView','2008-12-18 21:32:58','2008-12-18 21:32:58','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(33,'PageView','2008-12-18 21:33:03','2008-12-18 21:33:03','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/home/successfullyinstalled?flush=1',0,NULL,NULL,1,1),(34,'PageView','2008-12-18 21:33:33','2008-12-18 21:33:33','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(35,'PageView','2008-12-18 21:34:22','2008-12-18 21:34:22','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/admin/',0,NULL,NULL,1,1),(36,'PageView','2008-12-18 21:34:22','2008-12-18 21:34:22','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/admin/',0,NULL,NULL,1,1),(37,'PageView','2008-12-18 21:34:41','2008-12-18 21:34:41','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(38,'PageView','2008-12-18 21:34:43','2008-12-18 21:34:43','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/?stage=Live',0,NULL,NULL,2,1),(39,'PageView','2008-12-18 21:34:50','2008-12-18 21:34:50','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/about-us/',0,NULL,NULL,1,1),(40,'PageView','2008-12-18 21:34:56','2008-12-18 21:34:56','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(41,'PageView','2008-12-18 21:34:56','2008-12-18 21:34:56','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(42,'PageView','2008-12-18 21:35:00','2008-12-18 21:35:00','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(43,'PageView','2008-12-18 21:35:01','2008-12-18 21:35:01','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(44,'PageView','2008-12-18 21:35:02','2008-12-18 21:35:02','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,2,1),(45,'PageView','2008-12-18 21:35:04','2008-12-18 21:35:04','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/about-us/',0,NULL,NULL,1,1),(46,'PageView','2008-12-18 21:35:21','2008-12-18 21:35:21','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(47,'PageView','2008-12-18 21:35:23','2008-12-18 21:35:23','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,2,-1),(48,'PageView','2008-12-18 21:35:24','2008-12-18 21:35:24','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/about-us/',0,NULL,NULL,1,-1),(49,'PageView','2008-12-18 21:35:24','2008-12-18 21:35:24','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/about-us/',0,NULL,NULL,1,-1),(50,'PageView','2008-12-18 21:35:26','2008-12-18 21:35:26','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,2,-1),(51,'PageView','2008-12-18 21:35:27','2008-12-18 21:35:27','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/about-us/',0,NULL,NULL,3,-1),(52,'PageView','2008-12-18 21:35:28','2008-12-18 21:35:28','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/contact-us/',0,NULL,NULL,2,-1),(53,'PageView','2008-12-18 21:35:30','2008-12-18 21:35:30','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/about-us/',0,NULL,NULL,1,-1),(54,'PageView','2008-12-18 21:35:30','2008-12-18 21:35:30','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/about-us/',0,NULL,NULL,1,-1),(55,'PageView','2008-12-18 21:35:32','2008-12-18 21:35:32','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,2,-1),(56,'PageView','2008-12-18 21:35:33','2008-12-18 21:35:33','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/about-us/',0,NULL,NULL,3,-1),(57,'PageView','2008-12-18 21:35:34','2008-12-18 21:35:34','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/contact-us/',0,NULL,NULL,2,-1),(58,'PageView','2008-12-18 21:35:35','2008-12-18 21:35:35','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/about-us/',0,NULL,NULL,1,-1),(59,'PageView','2008-12-18 21:35:35','2008-12-18 21:35:35','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/about-us/',0,NULL,NULL,1,-1),(60,'PageView','2008-12-18 21:40:46','2008-12-18 21:40:46','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(61,'PageView','2008-12-18 21:40:49','2008-12-18 21:40:49','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(62,'PageView','2008-12-18 21:46:14','2008-12-18 21:46:14','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(63,'PageView','2008-12-18 21:46:25','2008-12-18 21:46:25','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(64,'PageView','2008-12-18 21:46:34','2008-12-18 21:46:34','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(65,'PageView','2008-12-18 21:48:08','2008-12-18 21:48:08','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(66,'PageView','2008-12-18 21:48:13','2008-12-18 21:48:13','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(67,'PageView','2008-12-18 21:48:35','2008-12-18 21:48:35','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(68,'PageView','2008-12-18 21:51:24','2008-12-18 21:51:24','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(69,'PageView','2008-12-18 21:51:28','2008-12-18 21:51:28','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(70,'PageView','2008-12-18 21:52:17','2008-12-18 21:52:17','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(71,'PageView','2008-12-18 21:55:40','2008-12-18 21:55:40','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(72,'PageView','2008-12-18 21:56:00','2008-12-18 21:56:00','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(73,'PageView','2008-12-18 21:57:23','2008-12-18 21:57:23','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(74,'PageView','2008-12-18 21:57:31','2008-12-18 21:57:31','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(75,'PageView','2008-12-18 21:57:37','2008-12-18 21:57:37','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(76,'PageView','2008-12-18 21:57:42','2008-12-18 21:57:42','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(77,'PageView','2008-12-18 21:57:47','2008-12-18 21:57:47','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(78,'PageView','2008-12-18 22:02:49','2008-12-18 22:02:49','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(79,'PageView','2008-12-18 22:02:52','2008-12-18 22:02:52','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(80,'PageView','2008-12-18 22:08:39','2008-12-18 22:08:39','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(81,'PageView','2008-12-18 22:08:44','2008-12-18 22:08:44','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(82,'PageView','2008-12-18 22:09:08','2008-12-18 22:09:08','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(83,'PageView','2008-12-18 22:13:24','2008-12-18 22:13:24','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(84,'PageView','2008-12-18 22:14:43','2008-12-18 22:14:43','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(85,'PageView','2008-12-18 22:15:46','2008-12-18 22:15:46','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(86,'PageView','2008-12-18 22:17:25','2008-12-18 22:17:25','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(87,'PageView','2008-12-18 22:17:34','2008-12-18 22:17:34','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(88,'PageView','2008-12-18 22:17:44','2008-12-18 22:17:44','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/?flush=1',0,NULL,NULL,6,-1),(89,'PageView','2008-12-18 22:17:46','2008-12-18 22:17:46','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,6,-1),(90,'PageView','2008-12-18 22:18:05','2008-12-18 22:18:05','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,6,-1),(91,'PageView','2008-12-18 22:18:07','2008-12-18 22:18:07','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,7,-1),(92,'PageView','2008-12-18 22:18:08','2008-12-18 22:18:08','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,6,-1),(93,'PageView','2008-12-18 22:18:47','2008-12-18 22:18:47','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,6,-1),(94,'PageView','2008-12-18 22:18:58','2008-12-18 22:18:58','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(95,'PageView','2008-12-18 22:24:40','2008-12-18 22:24:40','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(96,'PageView','2008-12-18 22:25:05','2008-12-18 22:25:05','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(97,'PageView','2008-12-18 22:25:14','2008-12-18 22:25:14','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/?flush=1',0,NULL,NULL,11,-1),(98,'PageView','2008-12-18 22:25:17','2008-12-18 22:25:17','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/information/',0,NULL,NULL,7,-1),(99,'PageView','2008-12-18 22:25:19','2008-12-18 22:25:19','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,6,-1),(100,'PageView','2008-12-18 22:25:22','2008-12-18 22:25:22','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,10,-1),(101,'PageView','2008-12-18 22:25:24','2008-12-18 22:25:24','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/support/',0,NULL,NULL,11,-1),(102,'PageView','2008-12-18 22:25:39','2008-12-18 22:25:39','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/information/',0,NULL,NULL,6,-1),(103,'PageView','2008-12-18 22:25:50','2008-12-18 22:25:50','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,7,-1),(104,'PageView','2008-12-18 22:25:51','2008-12-18 22:25:51','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,9,-1),(105,'PageView','2008-12-18 22:25:52','2008-12-18 22:25:52','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/downloads/',0,NULL,NULL,10,-1),(106,'PageView','2008-12-18 22:25:53','2008-12-18 22:25:53','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/support/',0,NULL,NULL,11,-1),(107,'PageView','2008-12-18 22:25:55','2008-12-18 22:25:55','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/information/',0,NULL,NULL,2,-1),(108,'PageView','2008-12-18 22:25:56','2008-12-18 22:25:56','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/about-us/',0,NULL,NULL,3,-1),(109,'PageView','2008-12-18 22:25:58','2008-12-18 22:25:58','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/contact-us/',0,NULL,NULL,6,-1),(110,'PageView','2008-12-18 22:26:01','2008-12-18 22:26:01','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,7,-1),(111,'PageView','2008-12-18 22:26:02','2008-12-18 22:26:02','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,6,-1),(112,'PageView','2008-12-18 22:26:43','2008-12-18 22:26:43','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(113,'PageView','2008-12-18 22:26:47','2008-12-18 22:26:47','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(114,'PageView','2008-12-18 22:27:11','2008-12-18 22:27:11','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(115,'PageView','2008-12-18 22:27:15','2008-12-18 22:27:15','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(116,'PageView','2008-12-18 22:27:17','2008-12-18 22:27:17','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(117,'PageView','2008-12-18 22:27:19','2008-12-18 22:27:19','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(118,'PageView','2008-12-18 22:27:21','2008-12-18 22:27:21','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(119,'PageView','2008-12-18 22:27:26','2008-12-18 22:27:26','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/admin/show/9',0,NULL,NULL,11,1),(120,'PageView','2008-12-18 22:27:30','2008-12-18 22:27:30','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/admin/show/9',0,NULL,NULL,11,1),(121,'PageView','2008-12-18 22:27:32','2008-12-18 22:27:32','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/admin/show/9',0,NULL,NULL,11,1),(122,'PageView','2008-12-18 22:29:30','2008-12-18 22:29:30','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/?flush=1',0,NULL,NULL,6,-1),(123,'PageView','2008-12-18 22:31:18','2008-12-18 22:31:18','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(124,'PageView','2008-12-18 22:31:21','2008-12-18 22:31:21','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/?flush=1',0,NULL,NULL,6,-1),(125,'PageView','2008-12-18 22:31:26','2008-12-18 22:31:26','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/admin/show/9',0,NULL,NULL,11,1),(126,'PageView','2008-12-18 22:31:29','2008-12-18 22:31:29','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/information/?stage=Live',0,NULL,NULL,6,1),(127,'PageView','2008-12-18 22:31:32','2008-12-18 22:31:32','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,7,1),(128,'PageView','2008-12-18 22:32:16','2008-12-18 22:32:16','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,6,1),(129,'PageView','2008-12-18 22:32:52','2008-12-18 22:32:52','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,6,1),(130,'PageView','2008-12-18 22:33:42','2008-12-18 22:33:42','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,1),(131,'PageView','2008-12-18 22:33:48','2008-12-18 22:33:48','::1',NULL,NULL,0,NULL,0,NULL,NULL,12,1),(132,'PageView','2008-12-18 22:34:13','2008-12-18 22:34:13','::1',NULL,NULL,0,NULL,0,NULL,NULL,12,1),(133,'PageView','2008-12-18 22:35:41','2008-12-18 22:35:41','::1',NULL,NULL,0,NULL,0,NULL,NULL,12,1),(134,'PageView','2008-12-18 22:35:46','2008-12-18 22:35:46','::1',NULL,NULL,0,NULL,0,NULL,NULL,12,1),(135,'PageView','2008-12-18 22:36:51','2008-12-18 22:36:51','::1',NULL,NULL,0,NULL,0,NULL,NULL,12,1),(136,'PageView','2008-12-18 22:36:54','2008-12-18 22:36:54','::1',NULL,NULL,0,NULL,0,NULL,NULL,12,1),(137,'PageView','2008-12-18 22:36:58','2008-12-18 22:36:58','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder?flush=1',0,NULL,NULL,12,1),(138,'PageView','2008-12-18 22:37:00','2008-12-18 22:37:00','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,6,1),(139,'PageView','2008-12-18 22:37:03','2008-12-18 22:37:03','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,1),(140,'PageView','2008-12-18 22:37:06','2008-12-18 22:37:06','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,7,1),(141,'PageView','2008-12-18 22:37:09','2008-12-18 22:37:09','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,12,1),(142,'PageView','2008-12-18 22:37:26','2008-12-18 22:37:26','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,6,1),(143,'PageView','2008-12-18 22:37:49','2008-12-18 22:37:49','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(144,'PageView','2008-12-18 22:38:00','2008-12-18 22:38:00','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(145,'PageView','2008-12-18 22:38:07','2008-12-18 22:38:07','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,12,-1),(146,'PageView','2008-12-18 22:38:13','2008-12-18 22:38:13','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(147,'PageView','2008-12-18 22:38:20','2008-12-18 22:38:20','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,12,-1),(148,'PageView','2008-12-18 22:38:22','2008-12-18 22:38:22','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,6,-1),(149,'PageView','2008-12-18 22:38:24','2008-12-18 22:38:24','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,7,-1),(150,'PageView','2008-12-18 22:38:25','2008-12-18 22:38:25','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,6,-1),(151,'PageView','2008-12-18 22:38:58','2008-12-18 22:38:58','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,6,1),(152,'PageView','2008-12-18 22:39:06','2008-12-18 22:39:06','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,1),(153,'PageView','2008-12-18 22:39:13','2008-12-18 22:39:13','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/?flush=1',0,NULL,NULL,7,1),(154,'PageView','2008-12-18 22:39:16','2008-12-18 22:39:16','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,7,1),(155,'PageView','2008-12-18 22:39:19','2008-12-18 22:39:19','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,11,1),(156,'PageView','2008-12-18 22:39:26','2008-12-18 22:39:26','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/information/',0,NULL,NULL,9,1),(157,'PageView','2008-12-18 22:39:30','2008-12-18 22:39:30','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/downloads/',0,NULL,NULL,12,1),(158,'PageView','2008-12-18 22:39:33','2008-12-18 22:39:33','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/downloads/',0,NULL,NULL,12,1),(159,'PageView','2008-12-18 22:39:36','2008-12-18 22:39:36','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/downloads/',0,NULL,NULL,12,1),(160,'PageView','2008-12-18 22:41:24','2008-12-18 22:41:24','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,12,1),(161,'PageView','2008-12-18 22:41:28','2008-12-18 22:41:28','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,12,1),(162,'PageView','2008-12-18 22:41:48','2008-12-18 22:41:48','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,7,1),(163,'PageView','2008-12-18 22:41:50','2008-12-18 22:41:50','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,6,1),(164,'PageView','2008-12-18 22:42:06','2008-12-18 22:42:06','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,6,1),(165,'PageView','2008-12-18 22:42:08','2008-12-18 22:42:08','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,7,1),(166,'PageView','2008-12-18 22:42:11','2008-12-18 22:42:11','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,9,1),(167,'PageView','2008-12-18 22:42:17','2008-12-18 22:42:17','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/downloads/',0,NULL,NULL,6,1),(168,'PageView','2008-12-18 22:42:32','2008-12-18 22:42:32','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,1),(169,'PageView','2008-12-18 22:43:06','2008-12-18 22:43:06','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(170,'PageView','2008-12-18 22:50:29','2008-12-18 22:50:29','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,1),(171,'PageView','2008-12-18 22:50:33','2008-12-18 22:50:33','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/?flush=1',0,NULL,NULL,12,1),(172,'PageView','2008-12-18 22:54:01','2008-12-18 22:54:01','::1',NULL,NULL,0,NULL,0,NULL,NULL,12,1),(173,'PageView','2008-12-18 22:56:19','2008-12-18 22:56:19','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,1),(174,'PageView','2008-12-18 22:56:24','2008-12-18 22:56:24','::1',NULL,NULL,0,NULL,0,NULL,NULL,12,1),(175,'PageView','2008-12-18 22:56:35','2008-12-18 22:56:35','::1',NULL,NULL,0,NULL,0,NULL,NULL,12,1),(176,'PageView','2008-12-18 22:57:01','2008-12-18 22:57:01','::1',NULL,NULL,0,NULL,0,NULL,NULL,12,1),(177,'PageView','2008-12-19 05:05:49','2008-12-19 05:05:49','::1',NULL,NULL,0,NULL,0,NULL,NULL,12,1),(178,'PageView','2008-12-19 05:05:52','2008-12-19 05:05:52','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder?flush=1',0,NULL,NULL,12,1),(179,'PageView','2008-12-19 05:30:40','2008-12-19 05:30:40','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/admin/',0,NULL,NULL,0,-1),(180,'PageView','2008-12-19 06:03:57','2008-12-19 06:03:57','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(181,'PageView','2008-12-19 06:04:30','2008-12-19 06:04:30','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(182,'PageView','2008-12-19 06:05:29','2008-12-19 06:05:29','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(183,'PageView','2008-12-19 06:05:39','2008-12-19 06:05:39','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(184,'PageView','2008-12-19 06:07:38','2008-12-19 06:07:38','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(185,'PageView','2008-12-19 06:08:25','2008-12-19 06:08:25','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(186,'PageView','2008-12-19 06:08:47','2008-12-19 06:08:47','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/?flush=1',0,NULL,NULL,12,1),(187,'PageView','2008-12-19 06:09:45','2008-12-19 06:09:45','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/?flush=1',0,NULL,NULL,12,1),(188,'PageView','2008-12-19 06:09:52','2008-12-19 06:09:52','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(189,'PageView','2008-12-19 06:09:56','2008-12-19 06:09:56','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/?flush=1',0,NULL,NULL,1,1),(190,'PageView','2008-12-19 06:09:57','2008-12-19 06:09:57','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/?flush=1',0,NULL,NULL,1,1),(191,'PageView','2008-12-19 06:09:59','2008-12-19 06:09:59','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,1,1),(192,'PageView','2008-12-19 06:09:59','2008-12-19 06:09:59','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,1,1),(193,'PageView','2008-12-19 06:10:24','2008-12-19 06:10:24','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,1,1),(194,'PageView','2008-12-19 06:11:13','2008-12-19 06:11:13','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(195,'PageView','2008-12-19 06:11:17','2008-12-19 06:11:17','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(196,'PageView','2008-12-19 06:11:27','2008-12-19 06:11:27','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/?flush=1',0,NULL,NULL,12,1),(197,'PageView','2008-12-19 06:11:31','2008-12-19 06:11:31','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,6,1),(198,'PageView','2008-12-19 06:11:33','2008-12-19 06:11:33','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,1,1),(199,'PageView','2008-12-19 06:11:33','2008-12-19 06:11:33','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,1,1),(200,'PageView','2008-12-19 06:12:21','2008-12-19 06:12:21','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,12,1),(201,'PageView','2008-12-19 06:12:28','2008-12-19 06:12:28','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,12,1),(202,'PageView','2008-12-19 06:12:32','2008-12-19 06:12:32','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,1,1),(203,'PageView','2008-12-19 06:12:32','2008-12-19 06:12:32','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,1,1),(204,'PageView','2008-12-20 13:32:34','2008-12-20 13:32:34','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(205,'PageView','2008-12-20 13:32:49','2008-12-20 13:32:49','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(206,'PageView','2008-12-20 13:32:53','2008-12-20 13:32:53','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(207,'PageView','2008-12-20 13:37:48','2008-12-20 13:37:48','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(208,'PageView','2008-12-20 13:37:51','2008-12-20 13:37:51','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/test',0,NULL,NULL,1,-1),(209,'PageView','2008-12-20 13:37:52','2008-12-20 13:37:52','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/test',0,NULL,NULL,1,-1),(210,'PageView','2008-12-20 13:37:55','2008-12-20 13:37:55','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/test',0,NULL,NULL,1,-1),(211,'PageView','2008-12-20 13:37:56','2008-12-20 13:37:56','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/test',0,NULL,NULL,1,-1),(212,'PageView','2008-12-20 13:37:59','2008-12-20 13:37:59','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/test',0,NULL,NULL,1,-1),(213,'PageView','2008-12-20 13:37:59','2008-12-20 13:37:59','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/test',0,NULL,NULL,1,-1),(214,'PageView','2008-12-20 13:38:54','2008-12-20 13:38:54','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(215,'PageView','2008-12-20 13:39:02','2008-12-20 13:39:02','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/test',0,NULL,NULL,1,-1),(216,'PageView','2008-12-20 13:39:02','2008-12-20 13:39:02','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/test',0,NULL,NULL,1,-1),(217,'PageView','2008-12-20 13:39:06','2008-12-20 13:39:06','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/test',0,NULL,NULL,1,-1),(218,'PageView','2008-12-20 13:39:07','2008-12-20 13:39:07','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/test',0,NULL,NULL,1,-1),(219,'PageView','2008-12-20 13:39:10','2008-12-20 13:39:10','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/test',0,NULL,NULL,1,-1),(220,'PageView','2008-12-20 13:39:11','2008-12-20 13:39:11','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/test',0,NULL,NULL,1,-1),(221,'PageView','2008-12-20 13:39:34','2008-12-20 13:39:34','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(222,'PageView','2008-12-20 13:39:39','2008-12-20 13:39:39','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/test',0,NULL,NULL,1,-1),(223,'PageView','2008-12-20 13:39:39','2008-12-20 13:39:39','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/test',0,NULL,NULL,1,-1),(224,'PageView','2008-12-20 13:39:46','2008-12-20 13:39:46','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,6,-1),(225,'PageView','2008-12-20 13:39:59','2008-12-20 13:39:59','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,6,-1),(226,'PageView','2008-12-20 13:40:02','2008-12-20 13:40:02','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/test',0,NULL,NULL,6,-1),(227,'PageView','2008-12-20 13:40:09','2008-12-20 13:40:09','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/test',0,NULL,NULL,6,-1),(228,'PageView','2008-12-20 13:40:24','2008-12-20 13:40:24','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/test',0,NULL,NULL,6,-1),(229,'PageView','2008-12-20 13:50:53','2008-12-20 13:50:53','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(230,'PageView','2008-12-20 13:50:59','2008-12-20 13:50:59','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(231,'PageView','2008-12-20 13:51:24','2008-12-20 13:51:24','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(232,'PageView','2008-12-20 13:59:08','2008-12-20 13:59:08','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(233,'PageView','2008-12-20 13:59:08','2008-12-20 13:59:08','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,0,-1),(234,'PageView','2008-12-20 14:00:55','2008-12-20 14:00:55','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(235,'PageView','2008-12-20 14:00:56','2008-12-20 14:00:56','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,0,-1),(236,'PageView','2008-12-20 14:04:53','2008-12-20 14:04:53','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(237,'PageView','2008-12-20 14:05:28','2008-12-20 14:05:28','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(238,'PageView','2008-12-20 14:12:30','2008-12-20 14:12:30','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(239,'PageView','2008-12-20 14:12:47','2008-12-20 14:12:47','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(240,'PageView','2008-12-20 14:13:37','2008-12-20 14:13:37','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(241,'PageView','2008-12-20 14:31:28','2008-12-20 14:31:28','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(242,'PageView','2008-12-20 14:35:49','2008-12-20 14:35:49','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(243,'PageView','2008-12-20 14:39:15','2008-12-20 14:39:15','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(244,'PageView','2008-12-20 14:44:32','2008-12-20 14:44:32','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(245,'PageView','2008-12-20 14:45:20','2008-12-20 14:45:20','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(246,'PageView','2008-12-20 14:47:26','2008-12-20 14:47:26','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(247,'PageView','2008-12-20 14:47:31','2008-12-20 14:47:31','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,12,-1),(248,'PageView','2008-12-20 14:47:35','2008-12-20 14:47:35','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder/',0,NULL,NULL,1,-1),(249,'PageView','2008-12-20 14:47:36','2008-12-20 14:47:36','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder/',0,NULL,NULL,1,-1),(250,'PageView','2008-12-20 14:47:46','2008-12-20 14:47:46','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,12,-1),(251,'PageView','2008-12-20 14:47:50','2008-12-20 14:47:50','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder/',0,NULL,NULL,6,-1),(252,'PageView','2008-12-20 14:47:53','2008-12-20 14:47:53','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,-1),(253,'PageView','2008-12-20 14:47:56','2008-12-20 14:47:56','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,6,-1),(254,'PageView','2008-12-20 14:48:00','2008-12-20 14:48:00','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,-1),(255,'PageView','2008-12-20 14:48:04','2008-12-20 14:48:04','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,12,-1),(256,'PageView','2008-12-20 14:48:12','2008-12-20 14:48:12','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,1,-1),(257,'PageView','2008-12-20 14:48:13','2008-12-20 14:48:13','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,1,-1),(258,'PageView','2008-12-20 14:48:45','2008-12-20 14:48:45','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,6,-1),(259,'PageView','2008-12-20 14:48:48','2008-12-20 14:48:48','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,7,-1),(260,'PageView','2008-12-20 14:48:50','2008-12-20 14:48:50','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,6,-1),(261,'PageView','2008-12-20 14:48:54','2008-12-20 14:48:54','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,7,-1),(262,'PageView','2008-12-20 14:48:56','2008-12-20 14:48:56','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,6,-1),(263,'PageView','2008-12-20 14:48:59','2008-12-20 14:48:59','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,1,-1),(264,'PageView','2008-12-20 14:48:59','2008-12-20 14:48:59','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,1,-1),(265,'PageView','2008-12-20 15:02:03','2008-12-20 15:02:03','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,1,-1),(266,'PageView','2008-12-20 15:20:12','2008-12-20 15:20:12','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(267,'PageView','2008-12-20 15:28:51','2008-12-20 15:28:51','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(268,'PageView','2008-12-20 15:29:31','2008-12-20 15:29:31','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(269,'PageView','2008-12-20 15:49:13','2008-12-20 15:49:13','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(270,'PageView','2008-12-20 15:50:09','2008-12-20 15:50:09','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(271,'PageView','2008-12-20 15:50:49','2008-12-20 15:50:49','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(272,'PageView','2008-12-20 15:51:26','2008-12-20 15:51:26','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(273,'PageView','2008-12-20 16:14:16','2008-12-20 16:14:16','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(274,'PageView','2008-12-20 16:38:28','2008-12-20 16:38:28','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(275,'PageView','2008-12-20 16:40:18','2008-12-20 16:40:18','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(276,'PageView','2008-12-20 16:41:01','2008-12-20 16:41:01','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(277,'PageView','2008-12-20 16:42:06','2008-12-20 16:42:06','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(278,'PageView','2008-12-20 16:43:49','2008-12-20 16:43:49','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(279,'PageView','2008-12-20 16:44:50','2008-12-20 16:44:50','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(280,'PageView','2008-12-20 16:47:03','2008-12-20 16:47:03','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(281,'PageView','2008-12-20 16:47:17','2008-12-20 16:47:17','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(282,'PageView','2008-12-20 16:48:03','2008-12-20 16:48:03','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(283,'PageView','2008-12-20 16:51:41','2008-12-20 16:51:41','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(284,'PageView','2008-12-20 17:02:06','2008-12-20 17:02:06','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,12,1),(285,'PageView','2008-12-20 17:02:09','2008-12-20 17:02:09','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder/',0,NULL,NULL,12,1),(286,'PageView','2008-12-20 17:02:13','2008-12-20 17:02:13','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,6,1),(287,'PageView','2008-12-20 17:02:15','2008-12-20 17:02:15','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,7,1),(288,'PageView','2008-12-20 17:02:18','2008-12-20 17:02:18','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,6,1),(289,'PageView','2008-12-20 17:02:24','2008-12-20 17:02:24','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,7,1),(290,'PageView','2008-12-20 17:02:29','2008-12-20 17:02:29','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,6,1),(291,'PageView','2008-12-20 17:03:10','2008-12-20 17:03:10','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(292,'PageView','2008-12-20 17:03:14','2008-12-20 17:03:14','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,6,-1),(293,'PageView','2008-12-20 17:03:17','2008-12-20 17:03:17','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,-1),(294,'PageView','2008-12-20 17:03:19','2008-12-20 17:03:19','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,1,-1),(295,'PageView','2008-12-20 17:03:20','2008-12-20 17:03:20','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,1,-1),(296,'PageView','2008-12-20 17:03:25','2008-12-20 17:03:25','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,6,-1),(297,'PageView','2008-12-20 17:04:43','2008-12-20 17:04:43','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,6,1),(298,'PageView','2008-12-20 17:07:48','2008-12-20 17:07:48','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,6,1),(299,'PageView','2008-12-20 17:08:32','2008-12-20 17:08:32','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,6,1),(300,'PageView','2008-12-20 17:08:38','2008-12-20 17:08:38','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,6,1),(301,'PageView','2008-12-20 17:09:27','2008-12-20 17:09:27','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,6,1),(302,'PageView','2008-12-20 17:11:00','2008-12-20 17:11:00','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,6,1),(303,'PageView','2008-12-20 17:11:04','2008-12-20 17:11:04','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,6,1),(304,'PageView','2008-12-20 17:11:07','2008-12-20 17:11:07','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,1),(305,'PageView','2008-12-20 17:11:25','2008-12-20 17:11:25','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,-1),(306,'PageView','2008-12-20 17:11:27','2008-12-20 17:11:27','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,-1),(307,'PageView','2008-12-20 17:11:31','2008-12-20 17:11:31','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,-1),(308,'PageView','2008-12-20 17:11:33','2008-12-20 17:11:33','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,-1),(309,'PageView','2008-12-20 17:11:44','2008-12-20 17:11:44','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,1),(310,'PageView','2008-12-20 17:12:27','2008-12-20 17:12:27','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,1),(311,'PageView','2008-12-20 17:13:02','2008-12-20 17:13:02','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,-1),(312,'PageView','2008-12-20 17:13:09','2008-12-20 17:13:09','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,1),(313,'PageView','2008-12-20 17:13:25','2008-12-20 17:13:25','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,1),(314,'PageView','2008-12-20 17:23:06','2008-12-20 17:23:06','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,1),(315,'PageView','2008-12-20 17:23:10','2008-12-20 17:23:10','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,6,1),(316,'PageView','2008-12-20 17:25:42','2008-12-20 17:25:42','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,6,1),(317,'PageView','2008-12-20 17:46:36','2008-12-20 17:46:36','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(318,'PageView','2008-12-27 17:06:44','2008-12-27 17:06:44','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(319,'PageView','2008-12-27 17:06:48','2008-12-27 17:06:48','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(320,'PageView','2008-12-27 17:07:17','2008-12-27 17:07:17','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/?flush=1',0,NULL,NULL,12,-1),(321,'PageView','2008-12-27 17:07:20','2008-12-27 17:07:20','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/?flush=1',0,NULL,NULL,12,-1),(322,'PageView','2008-12-27 17:07:29','2008-12-27 17:07:29','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(323,'PageView','2008-12-27 17:22:29','2008-12-27 17:22:29','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(324,'PageView','2008-12-28 02:05:01','2008-12-28 02:05:01','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,-1),(325,'PageView','2008-12-28 02:05:07','2008-12-28 02:05:07','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,-1),(326,'PageView','2008-12-28 02:16:57','2008-12-28 02:16:57','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,1),(327,'PageView','2008-12-28 02:18:36','2008-12-28 02:18:36','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,1),(328,'PageView','2008-12-28 02:19:59','2008-12-28 02:19:59','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,1),(329,'PageView','2008-12-28 02:31:27','2008-12-28 02:31:27','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(330,'PageView','2008-12-28 02:31:32','2008-12-28 02:31:32','::1',NULL,NULL,0,NULL,0,NULL,NULL,1,1),(331,'PageView','2008-12-28 02:32:12','2008-12-28 02:32:12','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,6,1),(332,'PageView','2008-12-28 02:42:31','2008-12-28 02:42:31','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,6,1),(333,'PageView','2008-12-28 02:42:54','2008-12-28 02:42:54','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,6,1),(334,'PageView','2008-12-28 02:42:57','2008-12-28 02:42:57','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,6,1),(335,'PageView','2008-12-28 02:44:00','2008-12-28 02:44:00','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,6,1),(336,'PageView','2008-12-28 02:44:04','2008-12-28 02:44:04','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,6,1),(337,'PageView','2008-12-28 02:44:24','2008-12-28 02:44:24','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,6,1),(338,'PageView','2008-12-28 02:44:27','2008-12-28 02:44:27','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,6,1),(339,'PageView','2008-12-28 02:44:55','2008-12-28 02:44:55','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,6,1),(340,'PageView','2008-12-28 02:45:06','2008-12-28 02:45:06','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(341,'PageView','2008-12-28 02:45:09','2008-12-28 02:45:09','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(342,'PageView','2008-12-28 02:45:21','2008-12-28 02:45:21','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(343,'PageView','2008-12-28 02:45:24','2008-12-28 02:45:24','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(344,'PageView','2008-12-28 02:46:27','2008-12-28 02:46:27','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(345,'PageView','2008-12-28 02:47:04','2008-12-28 02:47:04','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,6,1),(346,'PageView','2008-12-28 02:47:07','2008-12-28 02:47:07','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,6,1),(347,'PageView','2008-12-28 02:48:07','2008-12-28 02:48:07','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(348,'PageView','2008-12-28 02:48:18','2008-12-28 02:48:18','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,6,1),(349,'PageView','2008-12-28 02:49:09','2008-12-28 02:49:09','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(350,'PageView','2008-12-28 02:49:32','2008-12-28 02:49:32','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(351,'PageView','2008-12-28 02:49:42','2008-12-28 02:49:42','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(352,'PageView','2008-12-28 02:50:01','2008-12-28 02:50:01','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,6,1),(353,'PageView','2008-12-28 02:50:05','2008-12-28 02:50:05','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,6,1),(354,'PageView','2008-12-28 02:50:10','2008-12-28 02:50:10','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(355,'PageView','2008-12-28 02:50:12','2008-12-28 02:50:12','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(356,'PageView','2008-12-28 02:50:30','2008-12-28 02:50:30','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(357,'PageView','2008-12-28 02:50:33','2008-12-28 02:50:33','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(358,'PageView','2008-12-28 02:50:35','2008-12-28 02:50:35','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(359,'PageView','2008-12-28 02:50:38','2008-12-28 02:50:38','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,6,1),(360,'PageView','2008-12-28 02:50:59','2008-12-28 02:50:59','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(361,'PageView','2008-12-28 02:51:20','2008-12-28 02:51:20','::1',NULL,NULL,0,NULL,0,NULL,NULL,0,1),(362,'PageView','2008-12-28 02:53:40','2008-12-28 02:53:40','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(363,'PageView','2008-12-28 02:54:07','2008-12-28 02:54:07','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,1,-1),(364,'PageView','2008-12-28 02:54:07','2008-12-28 02:54:07','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,1,-1),(365,'PageView','2008-12-28 02:54:39','2008-12-28 02:54:39','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,6,-1),(366,'PageView','2008-12-28 02:55:12','2008-12-28 02:55:12','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,6,-1),(367,'PageView','2008-12-28 02:55:31','2008-12-28 02:55:31','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,6,-1),(368,'PageView','2008-12-28 03:03:43','2008-12-28 03:03:43','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,6,1),(369,'PageView','2008-12-28 03:04:37','2008-12-28 03:04:37','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,6,-1),(370,'PageView','2008-12-28 03:05:19','2008-12-28 03:05:19','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,6,-1),(371,'PageView','2008-12-28 03:06:30','2008-12-28 03:06:30','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,1),(372,'PageView','2008-12-28 03:07:51','2008-12-28 03:07:51','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,1),(373,'PageView','2008-12-28 03:07:54','2008-12-28 03:07:54','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,1),(374,'PageView','2008-12-28 03:08:08','2008-12-28 03:08:08','::1',NULL,NULL,0,NULL,0,NULL,NULL,12,1),(375,'PageView','2008-12-28 03:08:18','2008-12-28 03:08:18','::1',NULL,NULL,0,NULL,0,NULL,NULL,12,1),(376,'PageView','2008-12-28 03:08:26','2008-12-28 03:08:26','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/',0,NULL,NULL,6,-1),(377,'PageView','2008-12-28 03:08:29','2008-12-28 03:08:29','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,-1),(378,'PageView','2008-12-28 03:08:42','2008-12-28 03:08:42','::1',NULL,NULL,0,NULL,0,NULL,NULL,12,1),(379,'PageView','2008-12-28 03:09:09','2008-12-28 03:09:09','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,-1),(380,'PageView','2008-12-28 03:09:48','2008-12-28 03:09:48','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,-1),(381,'PageView','2008-12-28 03:09:51','2008-12-28 03:09:51','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder/',0,NULL,NULL,6,-1),(382,'PageView','2008-12-28 03:09:53','2008-12-28 03:09:53','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder/',0,NULL,NULL,6,-1),(383,'PageView','2008-12-28 03:10:18','2008-12-28 03:10:18','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder/',0,NULL,NULL,6,-1),(384,'PageView','2008-12-28 03:10:29','2008-12-28 03:10:29','::1',NULL,NULL,0,NULL,0,NULL,NULL,6,-1),(385,'PageView','2008-12-28 03:10:33','2008-12-28 03:10:33','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/?flush=1',0,NULL,NULL,7,-1),(386,'PageView','2008-12-28 03:10:34','2008-12-28 03:10:34','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/services/',0,NULL,NULL,6,-1),(387,'PageView','2008-12-28 03:10:37','2008-12-28 03:10:37','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,-1),(388,'PageView','2008-12-28 03:10:44','2008-12-28 03:10:44','::1',NULL,NULL,0,NULL,0,NULL,NULL,12,-1),(389,'PageView','2008-12-28 03:10:49','2008-12-28 03:10:49','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder?flush=1',0,NULL,NULL,12,-1),(390,'PageView','2008-12-28 03:10:55','2008-12-28 03:10:55','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,6,-1),(391,'PageView','2008-12-28 03:20:58','2008-12-28 03:20:58','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,6,-1),(392,'PageView','2008-12-28 03:21:01','2008-12-28 03:21:01','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,-1),(393,'PageView','2008-12-28 03:21:49','2008-12-28 03:21:49','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder/',0,NULL,NULL,6,-1),(394,'PageView','2008-12-28 03:21:53','2008-12-28 03:21:53','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,-1),(395,'PageView','2008-12-28 03:22:49','2008-12-28 03:22:49','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder/',0,NULL,NULL,6,-1),(396,'PageView','2008-12-28 03:22:57','2008-12-28 03:22:57','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,-1),(397,'PageView','2008-12-28 03:23:14','2008-12-28 03:23:14','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products/',0,NULL,NULL,12,-1),(398,'PageView','2008-12-28 03:23:18','2008-12-28 03:23:18','::1',NULL,NULL,0,'http://localhost/websites/skyviewpartners.com/products-policy-minder',0,NULL,NULL,12,-1);
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
  `ClassName` enum('SiteTree','Page','GhostPage','UserDefinedForm','HomePage','TestimonyHolder','TestimonyPage','ErrorPage','RedirectorPage','VirtualPage','SubscribeForm') character set utf8 default 'SiteTree',
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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SiteTree`
--

LOCK TABLES `SiteTree` WRITE;
/*!40000 ALTER TABLE `SiteTree` DISABLE KEYS */;
INSERT INTO `SiteTree` VALUES (1,'HomePage','2008-12-18 21:21:23','2008-12-20 14:45:07','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,39),(2,'Page','2008-12-18 21:21:23','2008-12-18 21:31:57','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,3),(3,'Page','2008-12-18 21:21:23','2008-12-18 21:32:00','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,8,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,3),(4,'ErrorPage','2008-12-18 21:21:24','2008-12-18 21:31:24','page-not-found','Page not found',NULL,'<p>It looks like the page you are looking for does not exists.</p>',NULL,NULL,NULL,NULL,0,1,NULL,0,10,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,7),(7,'Page','2008-12-18 21:55:03','2008-12-18 21:55:33','services','Services',NULL,'<p>This is the services page</p>','Services',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,5),(6,'Page','2008-12-18 21:54:00','2008-12-28 03:13:28','products','Products',NULL,'<p class=\"content-header\">&nbsp;SKYVIEW\'S PRODUCTS </p><p><table border=\"0\" height=\"151\" width=\"466\"><tbody><tr style=\"height: 100px\"><td style=\"width: 200px\"><img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17998-pm.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"98\" align=\"null\"    alt=\"\" /></td><td><p class=\"align-justify\">Find out whether your system\'s security configuration is in compliance with your security policies with <span class=\"color-blue\">SkyView Policy Minder</span> </p><p class=\"align-right\"><a href=\"http://localhost/websites/skyviewpartners.com/products-policy-minder/#Policy%20Minder\">READ MORE&gt;&gt; </a></p></td></tr><tr><td>&nbsp;<img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17998-ra.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"98\" align=\"null\"    alt=\"\" /></td><td class=\"align-justify\"><p>Security begins with an assessment. Find out your system\'s vulnerabilies lie, receive an explanation of the issues and suggestions on where to start with <span class=\"color-blue\">SkyView Risk Assessor</span></p><p class=\"align-right\"><a href=\"products-policy-minder/#Risk Assessor\">READ MORE&gt;&gt;</a> </p></td></tr><tr><td>&nbsp;<img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage179100-rt.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"100\" align=\"null\"    alt=\"\" /></td><td><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p><p class=\"align-right\"><a href=\"products-policy-minder/#Real Time AddOn\">READ MORE&gt;&gt; </a></p></td></tr></tbody></table></p><p>&nbsp;</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,33),(10,'Page','2008-12-18 22:11:21','2008-12-18 22:12:12','support','Support',NULL,'<p>Support Page</p>','Support',NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,0,10),(9,'Page','2008-12-18 22:10:34','2008-12-18 22:12:17','downloads','Downloads',NULL,'<p>This is the downloads page</p>','Downloads',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,6),(11,'Page','2008-12-18 22:12:43','2008-12-18 22:13:10','information','Information',NULL,'<p>This is the information page</p>','Information',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,6),(12,'Page','2008-12-18 22:32:30','2008-12-28 03:20:50','products-policy-minder','Policy Minder',NULL,'<p class=\"content-header\">SKYVIEW\'S PRODUCTS</p><table border=\"0\" height=\"26\" width=\"577\"><tbody><tr><td class=\"align-top\">&nbsp;<img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage15648-policy-minder.gif\" hspace=\"null\" vspace=\"null\" width=\"156\" height=\"48\" align=\"null\"    alt=\"\" /></td><td class=\"align-top\"><p>SkyView Policy Minder for OS/400 and i5/OS </p><p>SkyView Policy Minder for OS/400 and i5/OS reduces the cost and complexity of maintaining security compliance.</p><p>Our clients seem to have a consistent dilemma: How to keep their i5/OS security configuration in compliance without spending a significant portion of their budget as well as a lot of hours on labor-intensive analysis. That\'s why many have turned to SkyView Partners&rsquo; Policy Minder product. Policy Minder provides the automated processes that allow you to easily determine whether or not the system is in compliance, quickly identify any items out of compliance and fix the non-compliant user profile settings, object authority and ownership settings, system values and more.</p><p>If you would like more information on SkyView Policy Minder or wish to register for a 30-day free trial, look to your left and follow the links. </p></td></tr></tbody></table><p class=\"content-header\">&nbsp;</p>','Policy Minder',NULL,NULL,NULL,1,1,NULL,0,1,NULL,1,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,6,15),(13,'TestimonyHolder','2008-12-20 14:58:58','2008-12-20 15:01:54','testimonies','Testimonies',NULL,'<p>THIS IS JUST A PLACEHOLDER. DO NOT DO ANYTHING. </p>','Testimonies',NULL,NULL,NULL,0,1,NULL,0,9,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,8),(14,'TestimonyPage','2008-12-20 14:59:36','2008-12-20 16:42:55','les-schwab-tire-company','Les Schwab Tire Company',NULL,NULL,'IBM',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,13,5),(15,'TestimonyPage','2008-12-20 15:40:54','2008-12-20 16:43:09','microsoft','Microsoft',NULL,NULL,'Microsoft',NULL,NULL,NULL,0,1,NULL,0,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,13,5),(16,'TestimonyPage','2008-12-20 16:43:25','2008-12-20 16:43:43','ibm','IBM',NULL,NULL,'IBM',NULL,NULL,NULL,0,1,NULL,0,3,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,13,3);
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
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SiteTree_LinkTracking`
--

LOCK TABLES `SiteTree_LinkTracking` WRITE;
/*!40000 ALTER TABLE `SiteTree_LinkTracking` DISABLE KEYS */;
INSERT INTO `SiteTree_LinkTracking` VALUES (24,1,12,'Message'),(27,6,12,'Content');
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
  `ClassName` enum('SiteTree','Page','GhostPage','UserDefinedForm','HomePage','TestimonyHolder','TestimonyPage','ErrorPage','RedirectorPage','VirtualPage','SubscribeForm') character set utf8 default 'SiteTree',
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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SiteTree_Live`
--

LOCK TABLES `SiteTree_Live` WRITE;
/*!40000 ALTER TABLE `SiteTree_Live` DISABLE KEYS */;
INSERT INTO `SiteTree_Live` VALUES (1,'HomePage','2008-12-18 21:21:23','2008-12-20 14:45:07','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,39),(2,'Page','2008-12-18 21:21:23','2008-12-18 21:31:57','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,3),(3,'Page','2008-12-18 21:21:23','2008-12-18 21:32:00','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,8,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,3),(4,'ErrorPage','2008-12-18 21:21:24','2008-12-18 21:32:58','page-not-found','Page not found',NULL,'<p>It looks like the page you are looking for does not exists.</p>',NULL,NULL,NULL,NULL,0,1,NULL,0,10,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,7),(6,'Page','2008-12-18 21:54:00','2008-12-28 03:20:50','products','Products',NULL,'<p class=\"content-header\">&nbsp;SKYVIEW\'S PRODUCTS </p><p><table border=\"0\" height=\"151\" width=\"466\"><tbody><tr style=\"height: 100px\"><td style=\"width: 200px\"><img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17998-pm.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"98\" align=\"null\"    alt=\"\" /></td><td><p class=\"align-justify\">Find out whether your system\'s security configuration is in compliance with your security policies with <span class=\"color-blue\">SkyView Policy Minder</span> </p><p class=\"align-right\"><a href=\"products-policy-minder/#Policy%20Minder\">READ MORE&gt;&gt; </a></p></td></tr><tr><td>&nbsp;<img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17998-ra.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"98\" align=\"null\"    alt=\"\" /></td><td class=\"align-justify\"><p>Security begins with an assessment. Find out your system\'s vulnerabilies lie, receive an explanation of the issues and suggestions on where to start with <span class=\"color-blue\">SkyView Risk Assessor</span></p><p class=\"align-right\"><a href=\"products-policy-minder/#Risk Assessor\">READ MORE&gt;&gt;</a> </p></td></tr><tr><td>&nbsp;<img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage179100-rt.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"100\" align=\"null\"    alt=\"\" /></td><td><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p><p class=\"align-right\"><a href=\"products-policy-minder/#Real Time AddOn\">READ MORE&gt;&gt; </a></p></td></tr></tbody></table></p><p>&nbsp;</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,35),(7,'Page','2008-12-18 21:55:03','2008-12-18 21:55:33','services','Services',NULL,'<p>This is the services page</p>','Services',NULL,NULL,NULL,1,1,NULL,0,3,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,5),(9,'Page','2008-12-18 22:10:34','2008-12-18 22:12:17','downloads','Downloads',NULL,'<p>This is the downloads page</p>','Downloads',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,6),(10,'Page','2008-12-18 22:11:21','2008-12-18 22:12:12','support','Support',NULL,'<p>Support Page</p>','Support',NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,0,10),(11,'Page','2008-12-18 22:12:43','2008-12-18 22:13:10','information','Information',NULL,'<p>This is the information page</p>','Information',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,6),(12,'Page','2008-12-18 22:32:30','2008-12-28 03:20:50','products-policy-minder','Policy Minder',NULL,'<p class=\"content-header\">SKYVIEW\'S PRODUCTS</p><table border=\"0\" height=\"26\" width=\"577\"><tbody><tr><td class=\"align-top\">&nbsp;<img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage15648-policy-minder.gif\" hspace=\"null\" vspace=\"null\" width=\"156\" height=\"48\" align=\"null\"    alt=\"\" /></td><td class=\"align-top\"><p>SkyView Policy Minder for OS/400 and i5/OS </p><p>SkyView Policy Minder for OS/400 and i5/OS reduces the cost and complexity of maintaining security compliance.</p><p>Our clients seem to have a consistent dilemma: How to keep their i5/OS security configuration in compliance without spending a significant portion of their budget as well as a lot of hours on labor-intensive analysis. That\'s why many have turned to SkyView Partners&rsquo; Policy Minder product. Policy Minder provides the automated processes that allow you to easily determine whether or not the system is in compliance, quickly identify any items out of compliance and fix the non-compliant user profile settings, object authority and ownership settings, system values and more.</p><p>If you would like more information on SkyView Policy Minder or wish to register for a 30-day free trial, look to your left and follow the links. </p></td></tr></tbody></table><p class=\"content-header\">&nbsp;</p>','Policy Minder',NULL,NULL,NULL,1,1,NULL,0,1,NULL,1,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,6,15),(13,'TestimonyHolder','2008-12-20 14:58:58','2008-12-20 15:01:54','testimonies','Testimonies',NULL,'<p>THIS IS JUST A PLACEHOLDER. DO NOT DO ANYTHING. </p>','Testimonies',NULL,NULL,NULL,0,1,NULL,0,9,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0,8),(14,'TestimonyPage','2008-12-20 14:59:36','2008-12-20 16:42:55','les-schwab-tire-company','Les Schwab Tire Company',NULL,NULL,'IBM',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,13,5),(15,'TestimonyPage','2008-12-20 15:40:54','2008-12-20 16:43:09','microsoft','Microsoft',NULL,NULL,'Microsoft',NULL,NULL,NULL,0,1,NULL,0,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,13,5),(16,'TestimonyPage','2008-12-20 16:43:25','2008-12-20 16:43:43','ibm','IBM',NULL,NULL,'IBM',NULL,NULL,NULL,0,1,NULL,0,3,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,13,3);
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
  `ClassName` enum('SiteTree','Page','GhostPage','UserDefinedForm','HomePage','TestimonyHolder','TestimonyPage','ErrorPage','RedirectorPage','VirtualPage','SubscribeForm') character set utf8 default 'SiteTree',
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
) ENGINE=MyISAM AUTO_INCREMENT=157 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `SiteTree_versions`
--

LOCK TABLES `SiteTree_versions` WRITE;
/*!40000 ALTER TABLE `SiteTree_versions` DISABLE KEYS */;
INSERT INTO `SiteTree_versions` VALUES (1,1,1,1,0,0,'Page','2008-12-18 21:21:23','2008-12-18 21:21:23','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(2,2,1,1,0,0,'Page','2008-12-18 21:21:23','2008-12-18 21:21:23','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(3,3,1,1,0,0,'Page','2008-12-18 21:21:23','2008-12-18 21:21:23','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(4,4,1,1,0,0,'ErrorPage','2008-12-18 21:21:24','2008-12-18 21:21:24','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,NULL,0,1,NULL,0,0,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(5,4,2,0,0,0,'ErrorPage','2008-12-18 21:21:24','2008-12-18 21:21:26','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,NULL,0,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(6,4,3,0,0,0,'ErrorPage','2008-12-18 21:21:24','2008-12-18 21:21:49','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,NULL,0,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(7,4,4,0,0,0,'ErrorPage','2008-12-18 21:21:24','2008-12-18 21:24:52','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,NULL,0,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(8,4,5,0,0,0,'ErrorPage','2008-12-18 21:21:24','2008-12-18 21:25:05','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,NULL,NULL,0,1,NULL,0,0,NULL,0,0,'Published',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(9,4,6,0,1,0,'ErrorPage','2008-12-18 21:21:24','2008-12-18 21:31:24','page-not-found','Page not found',NULL,'<p>It looks like the page you are looking for does not exists.</p>',NULL,NULL,NULL,NULL,0,1,NULL,0,0,NULL,0,0,'Saved (new)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(10,4,7,1,1,1,'ErrorPage','2008-12-18 21:21:24','2008-12-18 21:31:24','page-not-found','Page not found',NULL,'<p>It looks like the page you are looking for does not exists.</p>',NULL,NULL,NULL,NULL,0,1,NULL,0,0,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(11,1,2,0,1,0,'Page','2008-12-18 21:21:23','2008-12-18 21:31:51','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,1,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(12,1,3,1,1,1,'Page','2008-12-18 21:21:23','2008-12-18 21:31:51','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,1,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(13,2,2,0,1,0,'Page','2008-12-18 21:21:23','2008-12-18 21:31:57','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(14,2,3,1,1,1,'Page','2008-12-18 21:21:23','2008-12-18 21:31:57','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(15,3,2,0,1,0,'Page','2008-12-18 21:21:23','2008-12-18 21:32:00','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(16,3,3,1,1,1,'Page','2008-12-18 21:21:23','2008-12-18 21:32:00','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.</p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(17,1,4,0,1,0,'Page','2008-12-18 21:21:23','2008-12-18 21:34:13','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken \">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,1,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(18,1,5,1,1,1,'Page','2008-12-18 21:21:23','2008-12-18 21:34:13','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken \">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,1,1,NULL,0,0,NULL,0,1,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(19,5,1,0,1,0,'Page','2008-12-18 21:53:15','2008-12-18 21:53:15','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,2),(20,5,2,0,1,0,'Page','2008-12-18 21:53:15','2008-12-18 21:53:31','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(21,5,3,0,1,0,'Page','2008-12-18 21:53:15','2008-12-18 21:53:31','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(22,6,1,0,1,0,'Page','2008-12-18 21:54:00','2008-12-18 21:54:00','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(23,6,2,0,1,0,'Page','2008-12-18 21:54:00','2008-12-18 21:54:23','products','Products',NULL,'<p>This is the products Page</p>','Products',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Saved (new)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(24,6,3,1,1,1,'Page','2008-12-18 21:54:00','2008-12-18 21:54:23','products','Products',NULL,'<p>This is the products Page</p>','Products',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(25,1,6,0,1,0,'Page','2008-12-18 21:21:23','2008-12-18 21:54:31','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken \">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,2,NULL,0,1,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(26,6,4,0,1,0,'Page','2008-12-18 21:54:00','2008-12-18 21:54:40','products','Products',NULL,'<p>This is the products Page</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(27,6,5,0,1,0,'Page','2008-12-18 21:54:00','2008-12-18 21:54:51','products','Products',NULL,'<p>This is the products Page</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(28,6,6,1,1,1,'Page','2008-12-18 21:54:00','2008-12-18 21:54:51','products','Products',NULL,'<p>This is the products Page</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(29,6,7,0,1,0,'Page','2008-12-18 21:54:00','2008-12-18 21:54:55','products','Products',NULL,'<p>This is the products Page</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(30,6,8,1,1,1,'Page','2008-12-18 21:54:00','2008-12-18 21:54:55','products','Products',NULL,'<p>This is the products Page</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(31,1,7,0,1,0,'Page','2008-12-18 21:21:23','2008-12-18 21:54:59','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken \">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,1,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(32,1,8,1,1,1,'Page','2008-12-18 21:21:23','2008-12-18 21:54:59','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken \">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,1,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(33,7,1,0,1,0,'Page','2008-12-18 21:55:03','2008-12-18 21:55:03','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,1),(34,7,2,0,1,0,'Page','2008-12-18 21:55:03','2008-12-18 21:55:19','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(35,7,3,0,1,0,'Page','2008-12-18 21:55:03','2008-12-18 21:55:20','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(36,7,4,0,1,0,'Page','2008-12-18 21:55:03','2008-12-18 21:55:33','services','Services',NULL,'<p>This is the services page</p>','Services',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(37,7,5,1,1,1,'Page','2008-12-18 21:55:03','2008-12-18 21:55:33','services','Services',NULL,'<p>This is the services page</p>','Services',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(38,6,9,0,1,0,'Page','2008-12-18 21:54:00','2008-12-18 21:55:49','products','Products',NULL,'<p>This is the products Page</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(39,6,10,0,1,0,'Page','2008-12-18 21:54:00','2008-12-18 21:55:56','products','Products',NULL,'<p>This is the products Page</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(40,6,11,1,1,1,'Page','2008-12-18 21:54:00','2008-12-18 21:55:56','products','Products',NULL,'<p>This is the products Page</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(41,8,1,0,1,0,'Page','2008-12-18 22:10:00','2008-12-18 22:10:00','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(42,8,2,0,1,0,'Page','2008-12-18 22:10:00','2008-12-18 22:10:11','services-2','Services',NULL,'<p>This is the services page</p>','Services',NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Saved (new)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(43,8,3,1,1,1,'Page','2008-12-18 22:10:00','2008-12-18 22:10:11','services-2','Services',NULL,'<p>This is the services page</p>','Services',NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(44,9,1,0,1,0,'Page','2008-12-18 22:10:34','2008-12-18 22:10:34','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(45,9,2,0,1,0,'Page','2008-12-18 22:10:34','2008-12-18 22:11:11','downloads','Downloads',NULL,'<p>This is the downloads page</p>','Downloads',NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Saved (new)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(46,9,3,1,1,1,'Page','2008-12-18 22:10:34','2008-12-18 22:11:11','downloads','Downloads',NULL,'<p>This is the downloads page</p>','Downloads',NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(47,10,1,0,1,0,'Page','2008-12-18 22:11:21','2008-12-18 22:11:21','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,9),(48,10,2,0,1,0,'Page','2008-12-18 22:11:21','2008-12-18 22:11:43','support','Support',NULL,'<p>Support Page</p>','Support',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9),(49,10,3,1,1,1,'Page','2008-12-18 22:11:21','2008-12-18 22:11:43','support','Support',NULL,'<p>Support Page</p>','Support',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,9),(50,10,4,0,1,0,'Page','2008-12-18 22:11:21','2008-12-18 22:11:53','support','Support',NULL,'<p>Support Page</p>','Support',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,0),(51,10,5,0,1,0,'Page','2008-12-18 22:11:21','2008-12-18 22:11:53','support','Support',NULL,'<p>Support Page</p>','Support',NULL,NULL,NULL,1,1,NULL,0,7,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,0),(52,9,4,0,1,0,'Page','2008-12-18 22:10:34','2008-12-18 22:11:58','downloads','Downloads',NULL,'<p>This is the downloads page</p>','Downloads',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(53,10,6,0,1,0,'Page','2008-12-18 22:11:21','2008-12-18 22:12:02','support','Support',NULL,'<p>Support Page</p>','Support',NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,0),(54,10,7,0,1,0,'Page','2008-12-18 22:11:21','2008-12-18 22:12:05','support','Support',NULL,'<p>Support Page</p>','Support',NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,0),(55,10,8,1,1,1,'Page','2008-12-18 22:11:21','2008-12-18 22:12:05','support','Support',NULL,'<p>Support Page</p>','Support',NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,0),(56,10,9,0,1,0,'Page','2008-12-18 22:11:21','2008-12-18 22:12:12','support','Support',NULL,'<p>Support Page</p>','Support',NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,0),(57,10,10,1,1,1,'Page','2008-12-18 22:11:21','2008-12-18 22:12:12','support','Support',NULL,'<p>Support Page</p>','Support',NULL,NULL,NULL,1,1,NULL,0,5,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,0),(58,9,5,0,1,0,'Page','2008-12-18 22:10:34','2008-12-18 22:12:17','downloads','Downloads',NULL,'<p>This is the downloads page</p>','Downloads',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(59,9,6,1,1,1,'Page','2008-12-18 22:10:34','2008-12-18 22:12:17','downloads','Downloads',NULL,'<p>This is the downloads page</p>','Downloads',NULL,NULL,NULL,1,1,NULL,0,4,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(60,11,1,0,1,0,'Page','2008-12-18 22:12:43','2008-12-18 22:12:43','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,9,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(61,11,2,0,1,0,'Page','2008-12-18 22:12:43','2008-12-18 22:12:58','information','Information',NULL,'<p>This is the information page</p>','Information',NULL,NULL,NULL,1,1,NULL,0,9,NULL,0,0,'Saved (new)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(62,11,3,1,1,1,'Page','2008-12-18 22:12:43','2008-12-18 22:12:58','information','Information',NULL,'<p>This is the information page</p>','Information',NULL,NULL,NULL,1,1,NULL,0,9,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(63,11,4,0,1,0,'Page','2008-12-18 22:12:43','2008-12-18 22:13:06','information','Information',NULL,'<p>This is the information page</p>','Information',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(64,11,5,0,1,0,'Page','2008-12-18 22:12:43','2008-12-18 22:13:10','information','Information',NULL,'<p>This is the information page</p>','Information',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(65,11,6,1,1,1,'Page','2008-12-18 22:12:43','2008-12-18 22:13:10','information','Information',NULL,'<p>This is the information page</p>','Information',NULL,NULL,NULL,1,1,NULL,0,6,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(66,12,1,0,1,0,'Page','2008-12-18 22:32:30','2008-12-18 22:32:30','new-page','New Page',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,6),(67,12,2,0,1,0,'Page','2008-12-18 22:32:30','2008-12-18 22:32:45','policy-minder','Policy Minder',NULL,'<p>This is the policy minder page</p>','Policy Minder',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,6),(68,12,3,1,1,1,'Page','2008-12-18 22:32:30','2008-12-18 22:32:45','policy-minder','Policy Minder',NULL,'<p>This is the policy minder page</p>','Policy Minder',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,6),(69,12,4,0,1,0,'Page','2008-12-18 22:32:30','2008-12-18 22:33:35','products-policy-minder','Policy Minder',NULL,'<p>This is the policy minder page</p>','Policy Minder',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,6),(70,12,5,1,1,1,'Page','2008-12-18 22:32:30','2008-12-18 22:33:35','products-policy-minder','Policy Minder',NULL,'<p>This is the policy minder page</p>','Policy Minder',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,6),(71,12,6,0,1,0,'Page','2008-12-18 22:32:30','2008-12-18 22:33:37','products-policy-minder','Policy Minder',NULL,'<p>This is the policy minder page</p>','Policy Minder',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,6),(72,12,7,1,1,1,'Page','2008-12-18 22:32:30','2008-12-18 22:33:37','products-policy-minder','Policy Minder',NULL,'<p>This is the policy minder page</p>','Policy Minder',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,6),(73,12,8,0,1,0,'Page','2008-12-18 22:32:30','2008-12-18 22:50:13','products-policy-minder','Policy Minder',NULL,'<table border=\"0\"><tbody><tr valign=\"top\"><td><img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage120340-right.gif\" hspace=\"null\" vspace=\"null\" width=\"120\" height=\"340\" align=\"null\"    alt=\"\" /> <br /></td><td><p>I have to update the content since the current minority reader and the published item int he past is not that well sowe</p><p>We can have several updates later on. </p></td></tr></tbody></table>','Policy Minder',NULL,NULL,NULL,1,1,NULL,0,1,NULL,1,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,6),(74,12,9,1,1,1,'Page','2008-12-18 22:32:30','2008-12-18 22:50:13','products-policy-minder','Policy Minder',NULL,'<table border=\"0\"><tbody><tr valign=\"top\"><td><img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage120340-right.gif\" hspace=\"null\" vspace=\"null\" width=\"120\" height=\"340\" align=\"null\"    alt=\"\" /> <br /></td><td><p>I have to update the content since the current minority reader and the published item int he past is not that well sowe</p><p>We can have several updates later on. </p></td></tr></tbody></table>','Policy Minder',NULL,NULL,NULL,1,1,NULL,0,1,NULL,1,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,6),(75,12,10,0,1,0,'Page','2008-12-18 22:32:30','2008-12-18 22:53:48','products-policy-minder','Policy Minder',NULL,'<table border=\"0\"><tbody><tr valign=\"top\"><td style=\"width: 200px\">No content any more <br /></td><td><p>I have to update the content since the current minority reader and the published item int he past is not that well sowe</p><p>We can have several updates later on. </p></td></tr></tbody></table>','Policy Minder',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,6),(76,12,11,1,1,1,'Page','2008-12-18 22:32:30','2008-12-18 22:53:48','products-policy-minder','Policy Minder',NULL,'<table border=\"0\"><tbody><tr valign=\"top\"><td style=\"width: 200px\">No content any more <br /></td><td><p>I have to update the content since the current minority reader and the published item int he past is not that well sowe</p><p>We can have several updates later on. </p></td></tr></tbody></table>','Policy Minder',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,6),(77,1,9,1,1,1,'HomePage','2008-12-18 21:21:23','2008-12-19 06:03:13','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,1,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(78,1,10,0,1,0,'HomePage','2008-12-18 21:21:23','2008-12-19 06:03:28','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,1,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(79,1,11,1,1,1,'HomePage','2008-12-18 21:21:23','2008-12-19 06:03:28','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,1,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(80,1,12,0,1,0,'HomePage','2008-12-18 21:21:23','2008-12-20 13:50:38','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(81,1,13,1,1,1,'HomePage','2008-12-18 21:21:23','2008-12-20 13:50:38','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(82,1,14,0,1,0,'HomePage','2008-12-18 21:21:23','2008-12-20 13:51:12','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(83,1,15,1,1,1,'HomePage','2008-12-18 21:21:23','2008-12-20 13:51:12','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(84,1,16,0,1,0,'HomePage','2008-12-18 21:21:23','2008-12-20 13:58:45','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(85,1,17,0,1,0,'HomePage','2008-12-18 21:21:23','2008-12-20 14:01:17','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(86,1,18,1,1,1,'HomePage','2008-12-18 21:21:23','2008-12-20 14:01:17','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(87,1,19,0,1,0,'HomePage','2008-12-18 21:21:23','2008-12-20 14:03:34','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(88,1,20,1,1,1,'HomePage','2008-12-18 21:21:23','2008-12-20 14:03:34','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(89,1,21,0,1,0,'HomePage','2008-12-18 21:21:23','2008-12-20 14:12:15','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(90,1,22,1,1,1,'HomePage','2008-12-18 21:21:23','2008-12-20 14:12:15','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(91,1,23,0,1,0,'HomePage','2008-12-18 21:21:23','2008-12-20 14:12:18','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(92,1,24,1,1,1,'HomePage','2008-12-18 21:21:23','2008-12-20 14:12:18','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(93,1,25,0,1,0,'HomePage','2008-12-18 21:21:23','2008-12-20 14:12:43','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(94,1,26,1,1,1,'HomePage','2008-12-18 21:21:23','2008-12-20 14:12:43','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(95,1,27,0,1,0,'HomePage','2008-12-18 21:21:23','2008-12-20 14:13:05','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(96,1,28,1,1,1,'HomePage','2008-12-18 21:21:23','2008-12-20 14:13:05','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(97,1,29,0,1,0,'HomePage','2008-12-18 21:21:23','2008-12-20 14:30:38','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(98,1,30,1,1,1,'HomePage','2008-12-18 21:21:23','2008-12-20 14:30:38','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(99,1,31,0,1,0,'HomePage','2008-12-18 21:21:23','2008-12-20 14:30:48','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(100,1,32,1,1,1,'HomePage','2008-12-18 21:21:23','2008-12-20 14:30:48','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(101,1,33,0,1,0,'HomePage','2008-12-18 21:21:23','2008-12-20 14:30:50','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(102,1,34,0,1,0,'HomePage','2008-12-18 21:21:23','2008-12-20 14:31:08','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(103,1,35,1,1,1,'HomePage','2008-12-18 21:21:23','2008-12-20 14:31:08','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(104,1,36,0,1,0,'HomePage','2008-12-18 21:21:23','2008-12-20 14:36:20','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(105,1,37,1,1,1,'HomePage','2008-12-18 21:21:23','2008-12-20 14:36:20','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(106,1,38,0,1,0,'HomePage','2008-12-18 21:21:23','2008-12-20 14:45:07','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(107,1,39,1,1,1,'HomePage','2008-12-18 21:21:23','2008-12-20 14:45:07','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\" class=\"broken\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.com\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.com/doku.php?id=tutorials\">the tutorials.</a></p>',NULL,NULL,NULL,NULL,0,1,NULL,0,1,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(108,13,1,0,1,0,'TestimonyHolder','2008-12-20 14:58:58','2008-12-20 14:58:58','new-testimonyholder','New TestimonyHolder',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,1),(109,13,2,0,1,0,'TestimonyHolder','2008-12-20 14:58:58','2008-12-20 14:59:09','new-testimonyholder','New TestimonyHolder',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(110,13,3,0,1,0,'TestimonyHolder','2008-12-20 14:58:58','2008-12-20 14:59:09','new-testimonyholder','New TestimonyHolder',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(111,13,4,0,1,0,'TestimonyHolder','2008-12-20 14:58:58','2008-12-20 14:59:15','new-testimonyholder','New TestimonyHolder',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,9,NULL,0,0,'Saved (update)',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,0),(112,13,5,0,1,0,'TestimonyHolder','2008-12-20 14:58:58','2008-12-20 14:59:26','testimonies','Testimonies',NULL,'<p></p>','Testimonies',NULL,NULL,NULL,0,1,NULL,0,9,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(113,13,6,1,1,1,'TestimonyHolder','2008-12-20 14:58:58','2008-12-20 14:59:26','testimonies','Testimonies',NULL,'<p></p>','Testimonies',NULL,NULL,NULL,0,1,NULL,0,9,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(114,14,1,0,1,0,'TestimonyPage','2008-12-20 14:59:36','2008-12-20 14:59:36','new-testimonypage','New TestimonyPage',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,13),(115,14,2,0,1,0,'TestimonyPage','2008-12-20 14:59:36','2008-12-20 15:00:49','ibm','IBM',NULL,NULL,'IBM',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,13),(116,14,3,1,1,1,'TestimonyPage','2008-12-20 14:59:36','2008-12-20 15:00:49','ibm','IBM',NULL,NULL,'IBM',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,13),(117,13,7,0,1,0,'TestimonyHolder','2008-12-20 14:58:58','2008-12-20 15:01:54','testimonies','Testimonies',NULL,'<p>THIS IS JUST A PLACEHOLDER. DO NOT DO ANYTHING. </p>','Testimonies',NULL,NULL,NULL,0,1,NULL,0,9,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(118,13,8,1,1,1,'TestimonyHolder','2008-12-20 14:58:58','2008-12-20 15:01:54','testimonies','Testimonies',NULL,'<p>THIS IS JUST A PLACEHOLDER. DO NOT DO ANYTHING. </p>','Testimonies',NULL,NULL,NULL,0,1,NULL,0,9,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(119,15,1,0,1,0,'TestimonyPage','2008-12-20 15:40:54','2008-12-20 15:40:54','new-testimonypage','New TestimonyPage',NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,0,2,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,13),(120,15,2,0,1,0,'TestimonyPage','2008-12-20 15:40:54','2008-12-20 15:50:45','microsoft','Microsoft',NULL,NULL,'Microsoft',NULL,NULL,NULL,0,1,NULL,0,2,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,13),(121,15,3,1,1,1,'TestimonyPage','2008-12-20 15:40:54','2008-12-20 15:50:45','microsoft','Microsoft',NULL,NULL,'Microsoft',NULL,NULL,NULL,0,1,NULL,0,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,13),(122,14,4,0,1,0,'TestimonyPage','2008-12-20 14:59:36','2008-12-20 16:42:55','les-schwab-tire-company','Les Schwab Tire Company',NULL,NULL,'IBM',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,13),(123,14,5,1,1,1,'TestimonyPage','2008-12-20 14:59:36','2008-12-20 16:42:55','les-schwab-tire-company','Les Schwab Tire Company',NULL,NULL,'IBM',NULL,NULL,NULL,1,1,NULL,0,1,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,13),(124,15,4,0,1,0,'TestimonyPage','2008-12-20 15:40:54','2008-12-20 16:43:09','microsoft','Microsoft',NULL,NULL,'Microsoft',NULL,NULL,NULL,0,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,13),(125,15,5,1,1,1,'TestimonyPage','2008-12-20 15:40:54','2008-12-20 16:43:09','microsoft','Microsoft',NULL,NULL,'Microsoft',NULL,NULL,NULL,0,1,NULL,0,2,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,13),(126,16,1,0,1,0,'TestimonyPage','2008-12-20 16:43:25','2008-12-20 16:43:25','new-testimonypage','New TestimonyPage',NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,0,3,NULL,0,0,'New page',NULL,NULL,'Anyone','LoggedInUsers',0,0,NULL,13),(127,16,2,0,1,0,'TestimonyPage','2008-12-20 16:43:25','2008-12-20 16:43:43','ibm','IBM',NULL,NULL,'IBM',NULL,NULL,NULL,0,1,NULL,0,3,NULL,0,0,'Saved (new)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,13),(128,16,3,1,1,1,'TestimonyPage','2008-12-20 16:43:25','2008-12-20 16:43:43','ibm','IBM',NULL,NULL,'IBM',NULL,NULL,NULL,0,1,NULL,0,3,NULL,0,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,13),(129,6,12,0,1,0,'Page','2008-12-18 21:54:00','2008-12-20 17:07:46','products','Products',NULL,'<h2>SKYVIEW\'S PRODUCTS<br /></h2>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(130,6,13,1,1,1,'Page','2008-12-18 21:54:00','2008-12-20 17:07:46','products','Products',NULL,'<h2>SKYVIEW\'S PRODUCTS<br /></h2>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,0,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(131,6,14,0,1,0,'Page','2008-12-18 21:54:00','2008-12-20 17:22:59','products','Products',NULL,'<h2>SKYVIEW\'S PRODUCTS</h2><table border=\"0\"><tbody><tr style=\"height: 100px\"><td style=\"width: 200px\"><img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17497-pm.gif\" hspace=\"null\" vspace=\"null\" width=\"174\" height=\"97\" align=\"null\"    alt=\"\" /><br /></td><td><p>&nbsp;<span class=\"Apple-style-span\">Find out whether your system\'s security configuration is in compliance with your security policies with SkyView Policy Minder.</span></p><pre><span class=\"Apple-style-span\">&nbsp;sdfsa asdfsdf</span><br /></pre></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table><p>&nbsp;</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(132,6,15,1,1,1,'Page','2008-12-18 21:54:00','2008-12-20 17:22:59','products','Products',NULL,'<h2>SKYVIEW\'S PRODUCTS</h2><table border=\"0\"><tbody><tr style=\"height: 100px\"><td style=\"width: 200px\"><img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17497-pm.gif\" hspace=\"null\" vspace=\"null\" width=\"174\" height=\"97\" align=\"null\"    alt=\"\" /><br /></td><td><p>&nbsp;<span class=\"Apple-style-span\">Find out whether your system\'s security configuration is in compliance with your security policies with SkyView Policy Minder.</span></p><pre><span class=\"Apple-style-span\">&nbsp;sdfsa asdfsdf</span><br /></pre></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table><p>&nbsp;</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(133,6,16,0,1,0,'Page','2008-12-18 21:54:00','2008-12-20 17:25:39','products','Products',NULL,'<h2>SKYVIEW\'S PRODUCTS</h2><table border=\"0\"><tbody><tr style=\"height: 100px\"><td style=\"width: 200px\"><img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17497-pm.gif\" hspace=\"null\" vspace=\"null\" width=\"174\" height=\"97\" align=\"null\"    alt=\"\" /><br /></td><td><p>&nbsp;<span class=\"Apple-style-span\">Find out whether your system\'s security configuration is in compliance with your security policies with SkyView Policy Minder.</span></p><p><a href=\"products-policy-minder/\">READ MORE&gt;&gt;</a></p></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table><p>&nbsp;</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(134,6,17,1,1,1,'Page','2008-12-18 21:54:00','2008-12-20 17:25:39','products','Products',NULL,'<h2>SKYVIEW\'S PRODUCTS</h2><table border=\"0\"><tbody><tr style=\"height: 100px\"><td style=\"width: 200px\"><img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17497-pm.gif\" hspace=\"null\" vspace=\"null\" width=\"174\" height=\"97\" align=\"null\"    alt=\"\" /><br /></td><td><p>&nbsp;<span class=\"Apple-style-span\">Find out whether your system\'s security configuration is in compliance with your security policies with SkyView Policy Minder.</span></p><p><a href=\"products-policy-minder/\">READ MORE&gt;&gt;</a></p></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table><p>&nbsp;</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(135,6,18,0,1,0,'Page','2008-12-18 21:54:00','2008-12-28 02:41:01','products','Products',NULL,'<h2>SKYVIEW\'S PRODUCTS</h2><table border=\"0\" height=\"151\" width=\"491\"><tbody><tr style=\"height: 100px\"><td style=\"width: 200px\"><img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17497-pm.gif\" hspace=\"null\" vspace=\"null\" width=\"174\" height=\"97\" align=\"null\"  alt=\"\" /><br /></td><td><p class=\"align-justify\">Find out whether your system\'s security configuration is in compliance with your security policies with SkyView Policy Minder</p><p class=\"align-right\">READ MORE&gt;&gt; </p></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table><p>&nbsp;</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(136,6,19,1,1,1,'Page','2008-12-18 21:54:00','2008-12-28 02:41:01','products','Products',NULL,'<h2>SKYVIEW\'S PRODUCTS</h2><table border=\"0\" height=\"151\" width=\"491\"><tbody><tr style=\"height: 100px\"><td style=\"width: 200px\"><img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17497-pm.gif\" hspace=\"null\" vspace=\"null\" width=\"174\" height=\"97\" align=\"null\"  alt=\"\" /><br /></td><td><p class=\"align-justify\">Find out whether your system\'s security configuration is in compliance with your security policies with SkyView Policy Minder</p><p class=\"align-right\">READ MORE&gt;&gt; </p></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table><p>&nbsp;</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(137,6,20,0,1,0,'Page','2008-12-18 21:54:00','2008-12-28 02:42:28','products','Products',NULL,'<h2>SKYVIEW\'S PRODUCTS</h2><table border=\"0\" height=\"151\" width=\"522\"><tbody><tr style=\"height: 100px\"><td style=\"width: 200px\"><img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17497-pm.gif\" hspace=\"null\" vspace=\"null\" width=\"174\" height=\"97\" align=\"null\"  alt=\"\" /><br /></td><td><p class=\"align-justify\"><b class=\"align-left\">Find out whether your system\'s security configuration is in compliance with your security policies with <span class=\"color-blue\">SkyView Policy Minder</span></b></p><p class=\"align-right\"><a href=\"products-policy-minder/#Policy Minder\">READ MORE&gt;&gt; </a></p></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table><p>&nbsp;</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(138,6,21,1,1,1,'Page','2008-12-18 21:54:00','2008-12-28 02:42:28','products','Products',NULL,'<h2>SKYVIEW\'S PRODUCTS</h2><table border=\"0\" height=\"151\" width=\"522\"><tbody><tr style=\"height: 100px\"><td style=\"width: 200px\"><img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17497-pm.gif\" hspace=\"null\" vspace=\"null\" width=\"174\" height=\"97\" align=\"null\"  alt=\"\" /><br /></td><td><p class=\"align-justify\"><b class=\"align-left\">Find out whether your system\'s security configuration is in compliance with your security policies with <span class=\"color-blue\">SkyView Policy Minder</span></b></p><p class=\"align-right\"><a href=\"products-policy-minder/#Policy Minder\">READ MORE&gt;&gt; </a></p></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table><p>&nbsp;</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(139,6,22,0,1,0,'Page','2008-12-18 21:54:00','2008-12-28 02:46:21','products','Products',NULL,'<p class=\"content-header\">&nbsp;SKYVIEW\'S PRODUCTS </p><p><table border=\"0\" height=\"151\" width=\"522\"><tbody><tr style=\"height: 100px\"><td style=\"width: 200px\"><img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17497-pm.gif\" hspace=\"null\" vspace=\"null\" width=\"174\" height=\"97\" align=\"null\"  alt=\"\" /><br /></td><td><p class=\"align-justify\"><b class=\"align-left\">Find out whether your system\'s security configuration is in compliance with your security policies with <span class=\"color-blue\">SkyView Policy Minder</span></b></p><p class=\"align-right\"><a href=\"products-policy-minder/#Policy Minder\">READ MORE&gt;&gt; </a></p></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table></p><p>&nbsp;</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(140,6,23,1,1,1,'Page','2008-12-18 21:54:00','2008-12-28 02:46:21','products','Products',NULL,'<p class=\"content-header\">&nbsp;SKYVIEW\'S PRODUCTS </p><p><table border=\"0\" height=\"151\" width=\"522\"><tbody><tr style=\"height: 100px\"><td style=\"width: 200px\"><img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17497-pm.gif\" hspace=\"null\" vspace=\"null\" width=\"174\" height=\"97\" align=\"null\"  alt=\"\" /><br /></td><td><p class=\"align-justify\"><b class=\"align-left\">Find out whether your system\'s security configuration is in compliance with your security policies with <span class=\"color-blue\">SkyView Policy Minder</span></b></p><p class=\"align-right\"><a href=\"products-policy-minder/#Policy Minder\">READ MORE&gt;&gt; </a></p></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table></p><p>&nbsp;</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(141,6,24,0,1,0,'Page','2008-12-18 21:54:00','2008-12-28 02:52:08','products','Products',NULL,'<p class=\"content-header\">&nbsp;SKYVIEW\'S PRODUCTS </p><p><table border=\"0\" height=\"151\" width=\"522\"><tbody><tr style=\"height: 100px\"><td style=\"width: 200px\"><img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17497-pm.gif\" hspace=\"null\" vspace=\"null\" width=\"174\" height=\"97\" align=\"null\"  alt=\"\" /><br /></td><td><p class=\"none\">Find out whether your system\'s security configuration is in compliance with your security policies with SkyView Policy Minder </p><p class=\"align-right\"><a href=\"http://localhost/websites/skyviewpartners.com/products-policy-minder/#Policy%20Minder\">READ MORE&gt;&gt; </a></p></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table></p><p>&nbsp;</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(142,6,25,1,1,1,'Page','2008-12-18 21:54:00','2008-12-28 02:52:08','products','Products',NULL,'<p class=\"content-header\">&nbsp;SKYVIEW\'S PRODUCTS </p><p><table border=\"0\" height=\"151\" width=\"522\"><tbody><tr style=\"height: 100px\"><td style=\"width: 200px\"><img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17497-pm.gif\" hspace=\"null\" vspace=\"null\" width=\"174\" height=\"97\" align=\"null\"  alt=\"\" /><br /></td><td><p class=\"none\">Find out whether your system\'s security configuration is in compliance with your security policies with SkyView Policy Minder </p><p class=\"align-right\"><a href=\"http://localhost/websites/skyviewpartners.com/products-policy-minder/#Policy%20Minder\">READ MORE&gt;&gt; </a></p></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table></p><p>&nbsp;</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(143,6,26,0,1,0,'Page','2008-12-18 21:54:00','2008-12-28 02:53:34','products','Products',NULL,'<p class=\"content-header\">&nbsp;SKYVIEW\'S PRODUCTS </p><p><table border=\"0\" height=\"151\" width=\"466\"><tbody><tr style=\"height: 100px\"><td style=\"width: 200px\"><img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17497-pm.gif\" hspace=\"null\" vspace=\"null\" width=\"174\" height=\"97\" align=\"null\"  alt=\"\" /><br /></td><td><p class=\"none\">Find out whether your system\'s security configuration is in compliance with your security policies with <span class=\"color-blue\">SkyView Policy Minder</span> </p><p class=\"align-right\"><a href=\"http://localhost/websites/skyviewpartners.com/products-policy-minder/#Policy%20Minder\">READ MORE&gt;&gt; </a></p></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table></p><p>&nbsp;</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(144,6,27,1,1,1,'Page','2008-12-18 21:54:00','2008-12-28 02:53:34','products','Products',NULL,'<p class=\"content-header\">&nbsp;SKYVIEW\'S PRODUCTS </p><p><table border=\"0\" height=\"151\" width=\"466\"><tbody><tr style=\"height: 100px\"><td style=\"width: 200px\"><img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17497-pm.gif\" hspace=\"null\" vspace=\"null\" width=\"174\" height=\"97\" align=\"null\"  alt=\"\" /><br /></td><td><p class=\"none\">Find out whether your system\'s security configuration is in compliance with your security policies with <span class=\"color-blue\">SkyView Policy Minder</span> </p><p class=\"align-right\"><a href=\"http://localhost/websites/skyviewpartners.com/products-policy-minder/#Policy%20Minder\">READ MORE&gt;&gt; </a></p></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table></p><p>&nbsp;</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(145,6,28,0,1,0,'Page','2008-12-18 21:54:00','2008-12-28 03:03:36','products','Products',NULL,'<p class=\"content-header\">&nbsp;SKYVIEW\'S PRODUCTS </p><p><table border=\"0\" height=\"151\" width=\"466\"><tbody><tr style=\"height: 100px\"><td style=\"width: 200px\"><img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17998-pm.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"98\" align=\"null\"    alt=\"\" /></td><td><p class=\"align-justify\">Find out whether your system\'s security configuration is in compliance with your security policies with SkyView Policy Minder </p><p class=\"align-right\"><a href=\"http://localhost/websites/skyviewpartners.com/products-policy-minder/#Policy%20Minder\">READ MORE&gt;&gt; </a></p></td></tr><tr><td>&nbsp;<img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17998-ra.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"98\" align=\"null\"    alt=\"\" /></td><td class=\"align-justify\"><p>Security begins with an assessment. Find out your system\'s vulnerabilies lie, receive an explanation of the issues and suggestions on where to start with SkyView Risk Assessor</p><p class=\"align-right\"><a href=\"products-policy-minder/#Risk Assessor\">READ MORE&gt;&gt;</a> </p></td></tr><tr><td>&nbsp;<img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage179100-rt.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"100\" align=\"null\"    alt=\"\" /></td><td><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p><p class=\"align-right\"><a href=\"products-policy-minder/#Real Time AddOn\">READ MORE&gt;&gt; </a></p></td></tr></tbody></table></p><p>&nbsp;</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(146,6,29,1,1,1,'Page','2008-12-18 21:54:00','2008-12-28 03:03:36','products','Products',NULL,'<p class=\"content-header\">&nbsp;SKYVIEW\'S PRODUCTS </p><p><table border=\"0\" height=\"151\" width=\"466\"><tbody><tr style=\"height: 100px\"><td style=\"width: 200px\"><img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17998-pm.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"98\" align=\"null\"    alt=\"\" /></td><td><p class=\"align-justify\">Find out whether your system\'s security configuration is in compliance with your security policies with SkyView Policy Minder </p><p class=\"align-right\"><a href=\"http://localhost/websites/skyviewpartners.com/products-policy-minder/#Policy%20Minder\">READ MORE&gt;&gt; </a></p></td></tr><tr><td>&nbsp;<img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17998-ra.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"98\" align=\"null\"    alt=\"\" /></td><td class=\"align-justify\"><p>Security begins with an assessment. Find out your system\'s vulnerabilies lie, receive an explanation of the issues and suggestions on where to start with SkyView Risk Assessor</p><p class=\"align-right\"><a href=\"products-policy-minder/#Risk Assessor\">READ MORE&gt;&gt;</a> </p></td></tr><tr><td>&nbsp;<img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage179100-rt.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"100\" align=\"null\"    alt=\"\" /></td><td><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p><p class=\"align-right\"><a href=\"products-policy-minder/#Real Time AddOn\">READ MORE&gt;&gt; </a></p></td></tr></tbody></table></p><p>&nbsp;</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(147,6,30,0,1,0,'Page','2008-12-18 21:54:00','2008-12-28 03:05:15','products','Products',NULL,'<p class=\"content-header\">&nbsp;SKYVIEW\'S PRODUCTS </p><p><table border=\"0\" height=\"151\" width=\"466\"><tbody><tr style=\"height: 100px\"><td style=\"width: 200px\"><img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17998-pm.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"98\" align=\"null\"    alt=\"\" /></td><td><p class=\"align-justify\">Find out whether your system\'s security configuration is in compliance with your security policies with <span class=\"color-blue\">SkyView Policy Minder</span> </p><p class=\"align-right\"><a href=\"http://localhost/websites/skyviewpartners.com/products-policy-minder/#Policy%20Minder\">READ MORE&gt;&gt; </a></p></td></tr><tr><td>&nbsp;<img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17998-ra.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"98\" align=\"null\"    alt=\"\" /></td><td class=\"align-justify\"><p>Security begins with an assessment. Find out your system\'s vulnerabilies lie, receive an explanation of the issues and suggestions on where to start with <span class=\"color-blue\">SkyView Risk Assessor</span></p><p class=\"align-right\"><a href=\"products-policy-minder/#Risk Assessor\">READ MORE&gt;&gt;</a> </p></td></tr><tr><td>&nbsp;<img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage179100-rt.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"100\" align=\"null\"    alt=\"\" /></td><td><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p><p class=\"align-right\"><a href=\"products-policy-minder/#Real Time AddOn\">READ MORE&gt;&gt; </a></p></td></tr></tbody></table></p><p>&nbsp;</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(148,6,31,1,1,1,'Page','2008-12-18 21:54:00','2008-12-28 03:05:15','products','Products',NULL,'<p class=\"content-header\">&nbsp;SKYVIEW\'S PRODUCTS </p><p><table border=\"0\" height=\"151\" width=\"466\"><tbody><tr style=\"height: 100px\"><td style=\"width: 200px\"><img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17998-pm.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"98\" align=\"null\"    alt=\"\" /></td><td><p class=\"align-justify\">Find out whether your system\'s security configuration is in compliance with your security policies with <span class=\"color-blue\">SkyView Policy Minder</span> </p><p class=\"align-right\"><a href=\"http://localhost/websites/skyviewpartners.com/products-policy-minder/#Policy%20Minder\">READ MORE&gt;&gt; </a></p></td></tr><tr><td>&nbsp;<img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17998-ra.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"98\" align=\"null\"    alt=\"\" /></td><td class=\"align-justify\"><p>Security begins with an assessment. Find out your system\'s vulnerabilies lie, receive an explanation of the issues and suggestions on where to start with <span class=\"color-blue\">SkyView Risk Assessor</span></p><p class=\"align-right\"><a href=\"products-policy-minder/#Risk Assessor\">READ MORE&gt;&gt;</a> </p></td></tr><tr><td>&nbsp;<img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage179100-rt.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"100\" align=\"null\"    alt=\"\" /></td><td><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p><p class=\"align-right\"><a href=\"products-policy-minder/#Real Time AddOn\">READ MORE&gt;&gt; </a></p></td></tr></tbody></table></p><p>&nbsp;</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(149,6,32,0,1,0,'Page','2008-12-18 21:54:00','2008-12-28 03:13:28','products','Products',NULL,'<p class=\"content-header\">&nbsp;SKYVIEW\'S PRODUCTS </p><p><table border=\"0\" height=\"151\" width=\"466\"><tbody><tr style=\"height: 100px\"><td style=\"width: 200px\"><img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17998-pm.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"98\" align=\"null\"    alt=\"\" /></td><td><p class=\"align-justify\">Find out whether your system\'s security configuration is in compliance with your security policies with <span class=\"color-blue\">SkyView Policy Minder</span> </p><p class=\"align-right\"><a href=\"http://localhost/websites/skyviewpartners.com/products-policy-minder/#Policy%20Minder\">READ MORE&gt;&gt; </a></p></td></tr><tr><td>&nbsp;<img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17998-ra.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"98\" align=\"null\"    alt=\"\" /></td><td class=\"align-justify\"><p>Security begins with an assessment. Find out your system\'s vulnerabilies lie, receive an explanation of the issues and suggestions on where to start with <span class=\"color-blue\">SkyView Risk Assessor</span></p><p class=\"align-right\"><a href=\"products-policy-minder/#Risk Assessor\">READ MORE&gt;&gt;</a> </p></td></tr><tr><td>&nbsp;<img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage179100-rt.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"100\" align=\"null\"    alt=\"\" /></td><td><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p><p class=\"align-right\"><a href=\"products-policy-minder/#Real Time AddOn\">READ MORE&gt;&gt; </a></p></td></tr></tbody></table></p><p>&nbsp;</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Saved (update)',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(150,6,33,1,1,1,'Page','2008-12-18 21:54:00','2008-12-28 03:13:28','products','Products',NULL,'<p class=\"content-header\">&nbsp;SKYVIEW\'S PRODUCTS </p><p><table border=\"0\" height=\"151\" width=\"466\"><tbody><tr style=\"height: 100px\"><td style=\"width: 200px\"><img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17998-pm.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"98\" align=\"null\"    alt=\"\" /></td><td><p class=\"align-justify\">Find out whether your system\'s security configuration is in compliance with your security policies with <span class=\"color-blue\">SkyView Policy Minder</span> </p><p class=\"align-right\"><a href=\"http://localhost/websites/skyviewpartners.com/products-policy-minder/#Policy%20Minder\">READ MORE&gt;&gt; </a></p></td></tr><tr><td>&nbsp;<img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17998-ra.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"98\" align=\"null\"    alt=\"\" /></td><td class=\"align-justify\"><p>Security begins with an assessment. Find out your system\'s vulnerabilies lie, receive an explanation of the issues and suggestions on where to start with <span class=\"color-blue\">SkyView Risk Assessor</span></p><p class=\"align-right\"><a href=\"products-policy-minder/#Risk Assessor\">READ MORE&gt;&gt;</a> </p></td></tr><tr><td>&nbsp;<img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage179100-rt.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"100\" align=\"null\"    alt=\"\" /></td><td><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p><p class=\"align-right\"><a href=\"products-policy-minder/#Real Time AddOn\">READ MORE&gt;&gt; </a></p></td></tr></tbody></table></p><p>&nbsp;</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(151,12,12,0,1,0,'Page','2008-12-18 22:32:30','2008-12-28 03:20:39','products-policy-minder','Policy Minder',NULL,'<p>SKYVIEW\'S PRODUCTS</p><table border=\"0\" height=\"26\" width=\"577\"><tbody><tr><td class=\"align-top\">&nbsp;<img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage15648-policy-minder.gif\" hspace=\"null\" vspace=\"null\" width=\"156\" height=\"48\" align=\"null\"    alt=\"\" /></td><td class=\"align-top\"><p>SkyView Policy Minder for OS/400 and i5/OS </p><p>SkyView Policy Minder for OS/400 and i5/OS reduces the cost and complexity of maintaining security compliance.</p><p>Our clients seem to have a consistent dilemma: How to keep their i5/OS security configuration in compliance without spending a significant portion of their budget as well as a lot of hours on labor-intensive analysis. That\'s why many have turned to SkyView Partners&rsquo; Policy Minder product. Policy Minder provides the automated processes that allow you to easily determine whether or not the system is in compliance, quickly identify any items out of compliance and fix the non-compliant user profile settings, object authority and ownership settings, system values and more.</p><p>If you would like more information on SkyView Policy Minder or wish to register for a 30-day free trial, look to your left and follow the links. </p></td></tr></tbody></table><p class=\"content-header\">&nbsp;</p>','Policy Minder',NULL,NULL,NULL,1,1,NULL,0,1,NULL,1,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,6),(152,12,13,1,1,1,'Page','2008-12-18 22:32:30','2008-12-28 03:20:39','products-policy-minder','Policy Minder',NULL,'<p>SKYVIEW\'S PRODUCTS</p><table border=\"0\" height=\"26\" width=\"577\"><tbody><tr><td class=\"align-top\">&nbsp;<img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage15648-policy-minder.gif\" hspace=\"null\" vspace=\"null\" width=\"156\" height=\"48\" align=\"null\"    alt=\"\" /></td><td class=\"align-top\"><p>SkyView Policy Minder for OS/400 and i5/OS </p><p>SkyView Policy Minder for OS/400 and i5/OS reduces the cost and complexity of maintaining security compliance.</p><p>Our clients seem to have a consistent dilemma: How to keep their i5/OS security configuration in compliance without spending a significant portion of their budget as well as a lot of hours on labor-intensive analysis. That\'s why many have turned to SkyView Partners&rsquo; Policy Minder product. Policy Minder provides the automated processes that allow you to easily determine whether or not the system is in compliance, quickly identify any items out of compliance and fix the non-compliant user profile settings, object authority and ownership settings, system values and more.</p><p>If you would like more information on SkyView Policy Minder or wish to register for a 30-day free trial, look to your left and follow the links. </p></td></tr></tbody></table><p class=\"content-header\">&nbsp;</p>','Policy Minder',NULL,NULL,NULL,1,1,NULL,0,1,NULL,1,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,6),(153,6,34,0,1,0,'Page','2008-12-18 21:54:00','2008-12-28 03:20:39','products','Products',NULL,'<p class=\"content-header\">&nbsp;SKYVIEW\'S PRODUCTS </p><p><table border=\"0\" height=\"151\" width=\"466\"><tbody><tr style=\"height: 100px\"><td style=\"width: 200px\"><img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17998-pm.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"98\" align=\"null\"    alt=\"\" /></td><td><p class=\"align-justify\">Find out whether your system\'s security configuration is in compliance with your security policies with <span class=\"color-blue\">SkyView Policy Minder</span> </p><p class=\"align-right\"><a href=\"products-policy-minder/#Policy%20Minder\">READ MORE&gt;&gt; </a></p></td></tr><tr><td>&nbsp;<img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17998-ra.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"98\" align=\"null\"    alt=\"\" /></td><td class=\"align-justify\"><p>Security begins with an assessment. Find out your system\'s vulnerabilies lie, receive an explanation of the issues and suggestions on where to start with <span class=\"color-blue\">SkyView Risk Assessor</span></p><p class=\"align-right\"><a href=\"products-policy-minder/#Risk Assessor\">READ MORE&gt;&gt;</a> </p></td></tr><tr><td>&nbsp;<img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage179100-rt.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"100\" align=\"null\"    alt=\"\" /></td><td><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p><p class=\"align-right\"><a href=\"products-policy-minder/#Real Time AddOn\">READ MORE&gt;&gt; </a></p></td></tr></tbody></table></p><p>&nbsp;</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0),(154,12,14,0,1,0,'Page','2008-12-18 22:32:30','2008-12-28 03:20:50','products-policy-minder','Policy Minder',NULL,'<p class=\"content-header\">SKYVIEW\'S PRODUCTS</p><table border=\"0\" height=\"26\" width=\"577\"><tbody><tr><td class=\"align-top\">&nbsp;<img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage15648-policy-minder.gif\" hspace=\"null\" vspace=\"null\" width=\"156\" height=\"48\" align=\"null\"    alt=\"\" /></td><td class=\"align-top\"><p>SkyView Policy Minder for OS/400 and i5/OS </p><p>SkyView Policy Minder for OS/400 and i5/OS reduces the cost and complexity of maintaining security compliance.</p><p>Our clients seem to have a consistent dilemma: How to keep their i5/OS security configuration in compliance without spending a significant portion of their budget as well as a lot of hours on labor-intensive analysis. That\'s why many have turned to SkyView Partners&rsquo; Policy Minder product. Policy Minder provides the automated processes that allow you to easily determine whether or not the system is in compliance, quickly identify any items out of compliance and fix the non-compliant user profile settings, object authority and ownership settings, system values and more.</p><p>If you would like more information on SkyView Policy Minder or wish to register for a 30-day free trial, look to your left and follow the links. </p></td></tr></tbody></table><p class=\"content-header\">&nbsp;</p>','Policy Minder',NULL,NULL,NULL,1,1,NULL,0,1,NULL,1,0,'Saved (update)',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,6),(155,12,15,1,1,1,'Page','2008-12-18 22:32:30','2008-12-28 03:20:50','products-policy-minder','Policy Minder',NULL,'<p class=\"content-header\">SKYVIEW\'S PRODUCTS</p><table border=\"0\" height=\"26\" width=\"577\"><tbody><tr><td class=\"align-top\">&nbsp;<img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage15648-policy-minder.gif\" hspace=\"null\" vspace=\"null\" width=\"156\" height=\"48\" align=\"null\"    alt=\"\" /></td><td class=\"align-top\"><p>SkyView Policy Minder for OS/400 and i5/OS </p><p>SkyView Policy Minder for OS/400 and i5/OS reduces the cost and complexity of maintaining security compliance.</p><p>Our clients seem to have a consistent dilemma: How to keep their i5/OS security configuration in compliance without spending a significant portion of their budget as well as a lot of hours on labor-intensive analysis. That\'s why many have turned to SkyView Partners&rsquo; Policy Minder product. Policy Minder provides the automated processes that allow you to easily determine whether or not the system is in compliance, quickly identify any items out of compliance and fix the non-compliant user profile settings, object authority and ownership settings, system values and more.</p><p>If you would like more information on SkyView Policy Minder or wish to register for a 30-day free trial, look to your left and follow the links. </p></td></tr></tbody></table><p class=\"content-header\">&nbsp;</p>','Policy Minder',NULL,NULL,NULL,1,1,NULL,0,1,NULL,1,0,'Published',NULL,0.9,'Anyone','LoggedInUsers',1,1,NULL,6),(156,6,35,0,1,0,'Page','2008-12-18 21:54:00','2008-12-28 03:20:50','products','Products',NULL,'<p class=\"content-header\">&nbsp;SKYVIEW\'S PRODUCTS </p><p><table border=\"0\" height=\"151\" width=\"466\"><tbody><tr style=\"height: 100px\"><td style=\"width: 200px\"><img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17998-pm.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"98\" align=\"null\"    alt=\"\" /></td><td><p class=\"align-justify\">Find out whether your system\'s security configuration is in compliance with your security policies with <span class=\"color-blue\">SkyView Policy Minder</span> </p><p class=\"align-right\"><a href=\"http://localhost/websites/skyviewpartners.com/products-policy-minder/#Policy%20Minder\">READ MORE&gt;&gt; </a></p></td></tr><tr><td>&nbsp;<img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage17998-ra.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"98\" align=\"null\"    alt=\"\" /></td><td class=\"align-justify\"><p>Security begins with an assessment. Find out your system\'s vulnerabilies lie, receive an explanation of the issues and suggestions on where to start with <span class=\"color-blue\">SkyView Risk Assessor</span></p><p class=\"align-right\"><a href=\"products-policy-minder/#Risk Assessor\">READ MORE&gt;&gt;</a> </p></td></tr><tr><td>&nbsp;<img class=\"left\" src=\"assets/Uploads/_resampled/ResizedImage179100-rt.gif\" hspace=\"null\" vspace=\"null\" width=\"179\" height=\"100\" align=\"null\"    alt=\"\" /></td><td><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p><p class=\"align-right\"><a href=\"products-policy-minder/#Real Time AddOn\">READ MORE&gt;&gt; </a></p></td></tr></tbody></table></p><p>&nbsp;</p>','Products',NULL,NULL,NULL,1,1,NULL,0,2,NULL,1,0,'Published',NULL,1,'Anyone','LoggedInUsers',1,1,NULL,0);
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
-- Table structure for table `TestimonyPage`
--

DROP TABLE IF EXISTS `TestimonyPage`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `TestimonyPage` (
  `ID` int(11) NOT NULL auto_increment,
  `Message` mediumtext character set utf8,
  `Author` mediumtext character set utf8,
  `Company` mediumtext character set utf8,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `TestimonyPage`
--

LOCK TABLES `TestimonyPage` WRITE;
/*!40000 ALTER TABLE `TestimonyPage` DISABLE KEYS */;
INSERT INTO `TestimonyPage` VALUES (14,'The level of detail covered by Policy Minder is impressive. The ability to check compliance is great, but the fact that you can, for example, create a template for user profile settings and see who has more authority than they should, or create a library and file policy template and see whether these files are secured appropriately, or discover newly created profiles, libraries and files, makes this a tool that you quickly begin to rely on from a systems management point of view.','Brian Hole Manager, iSeries Technology','Les Schwab Tire Company'),(15,'FROM MICROSOFT. The level of detail covered by Policy Minder is impressive. The ability to check compliance is great, but the fact that you can, for example, create a template for user profile settings and see who has more authority than they should, or create a library and file policy template and see whether these files are secured appropriately, or discover newly created profiles, libraries and files, makes this a tool that you quickly begin to rely on from a systems management point of view.','Bill Gates','Microsoft'),(16,'FROM IBM. The level of detail covered by Policy Minder is impressive. The ability to check compliance is great, but the fact that you can, for example, create a template for user profile settings and see who has more authority than they should, or create a library and file policy template and see whether these files are secured appropriately, or discover newly created profiles, libraries and files, makes this a tool that you quickly begin to rely on from a systems management point of view.','Junrey Beduya','IBM');
/*!40000 ALTER TABLE `TestimonyPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TestimonyPage_Live`
--

DROP TABLE IF EXISTS `TestimonyPage_Live`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `TestimonyPage_Live` (
  `ID` int(11) NOT NULL auto_increment,
  `Message` mediumtext character set utf8,
  `Author` mediumtext character set utf8,
  `Company` mediumtext character set utf8,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `TestimonyPage_Live`
--

LOCK TABLES `TestimonyPage_Live` WRITE;
/*!40000 ALTER TABLE `TestimonyPage_Live` DISABLE KEYS */;
INSERT INTO `TestimonyPage_Live` VALUES (14,'The level of detail covered by Policy Minder is impressive. The ability to check compliance is great, but the fact that you can, for example, create a template for user profile settings and see who has more authority than they should, or create a library and file policy template and see whether these files are secured appropriately, or discover newly created profiles, libraries and files, makes this a tool that you quickly begin to rely on from a systems management point of view.','Brian Hole Manager, iSeries Technology','Les Schwab Tire Company'),(15,'FROM MICROSOFT. The level of detail covered by Policy Minder is impressive. The ability to check compliance is great, but the fact that you can, for example, create a template for user profile settings and see who has more authority than they should, or create a library and file policy template and see whether these files are secured appropriately, or discover newly created profiles, libraries and files, makes this a tool that you quickly begin to rely on from a systems management point of view.','Bill Gates','Microsoft'),(16,'FROM IBM. The level of detail covered by Policy Minder is impressive. The ability to check compliance is great, but the fact that you can, for example, create a template for user profile settings and see who has more authority than they should, or create a library and file policy template and see whether these files are secured appropriately, or discover newly created profiles, libraries and files, makes this a tool that you quickly begin to rely on from a systems management point of view.','Junrey Beduya','IBM');
/*!40000 ALTER TABLE `TestimonyPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TestimonyPage_versions`
--

DROP TABLE IF EXISTS `TestimonyPage_versions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `TestimonyPage_versions` (
  `ID` int(11) NOT NULL auto_increment,
  `RecordID` int(11) NOT NULL default '0',
  `Version` int(11) NOT NULL default '0',
  `WasPublished` tinyint(1) unsigned NOT NULL default '0',
  `AuthorID` int(11) NOT NULL default '0',
  `PublisherID` int(11) NOT NULL default '0',
  `Message` mediumtext character set utf8,
  `Author` mediumtext character set utf8,
  `Company` mediumtext character set utf8,
  PRIMARY KEY  (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `TestimonyPage_versions`
--

LOCK TABLES `TestimonyPage_versions` WRITE;
/*!40000 ALTER TABLE `TestimonyPage_versions` DISABLE KEYS */;
INSERT INTO `TestimonyPage_versions` VALUES (1,14,1,0,1,0,NULL,NULL,NULL),(2,14,2,0,1,0,'The level of detail covered by Policy Minder is impressive. The ability to check compliance is great, but the fact that you can, for example, create a template for user profile settings and see who has more authority than they should, or create a library and file policy template and see whether these files are secured appropriately, or discover newly created profiles, libraries and files, makes this a tool that you quickly begin to rely on from a systems management point of view.','Brian Hole Manager, iSeries Technology','Les Schwab Tire Company'),(3,14,3,0,1,0,'The level of detail covered by Policy Minder is impressive. The ability to check compliance is great, but the fact that you can, for example, create a template for user profile settings and see who has more authority than they should, or create a library and file policy template and see whether these files are secured appropriately, or discover newly created profiles, libraries and files, makes this a tool that you quickly begin to rely on from a systems management point of view.','Brian Hole Manager, iSeries Technology','Les Schwab Tire Company'),(4,15,1,0,1,0,NULL,NULL,NULL),(5,15,2,0,1,0,'These guys are good!','Bill Gates','Microsoft'),(6,15,3,0,1,0,'These guys are good!','Bill Gates','Microsoft'),(7,14,4,0,1,0,'The level of detail covered by Policy Minder is impressive. The ability to check compliance is great, but the fact that you can, for example, create a template for user profile settings and see who has more authority than they should, or create a library and file policy template and see whether these files are secured appropriately, or discover newly created profiles, libraries and files, makes this a tool that you quickly begin to rely on from a systems management point of view.','Brian Hole Manager, iSeries Technology','Les Schwab Tire Company'),(8,14,5,0,1,0,'The level of detail covered by Policy Minder is impressive. The ability to check compliance is great, but the fact that you can, for example, create a template for user profile settings and see who has more authority than they should, or create a library and file policy template and see whether these files are secured appropriately, or discover newly created profiles, libraries and files, makes this a tool that you quickly begin to rely on from a systems management point of view.','Brian Hole Manager, iSeries Technology','Les Schwab Tire Company'),(9,15,4,0,1,0,'FROM MICROSOFT. The level of detail covered by Policy Minder is impressive. The ability to check compliance is great, but the fact that you can, for example, create a template for user profile settings and see who has more authority than they should, or create a library and file policy template and see whether these files are secured appropriately, or discover newly created profiles, libraries and files, makes this a tool that you quickly begin to rely on from a systems management point of view.','Bill Gates','Microsoft'),(10,15,5,0,1,0,'FROM MICROSOFT. The level of detail covered by Policy Minder is impressive. The ability to check compliance is great, but the fact that you can, for example, create a template for user profile settings and see who has more authority than they should, or create a library and file policy template and see whether these files are secured appropriately, or discover newly created profiles, libraries and files, makes this a tool that you quickly begin to rely on from a systems management point of view.','Bill Gates','Microsoft'),(11,16,1,0,1,0,NULL,NULL,NULL),(12,16,2,0,1,0,'FROM IBM. The level of detail covered by Policy Minder is impressive. The ability to check compliance is great, but the fact that you can, for example, create a template for user profile settings and see who has more authority than they should, or create a library and file policy template and see whether these files are secured appropriately, or discover newly created profiles, libraries and files, makes this a tool that you quickly begin to rely on from a systems management point of view.','Junrey Beduya','IBM'),(13,16,3,0,1,0,'FROM IBM. The level of detail covered by Policy Minder is impressive. The ability to check compliance is great, but the fact that you can, for example, create a template for user profile settings and see who has more authority than they should, or create a library and file policy template and see whether these files are secured appropriately, or discover newly created profiles, libraries and files, makes this a tool that you quickly begin to rely on from a systems management point of view.','Junrey Beduya','IBM');
/*!40000 ALTER TABLE `TestimonyPage_versions` ENABLE KEYS */;
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

-- Dump completed on 2008-12-27 19:26:53

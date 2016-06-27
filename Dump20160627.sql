-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: 192.168.1.6    Database: forex_trade_copier
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1

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
-- Table structure for table `change_password_log`
--

DROP TABLE IF EXISTS `change_password_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `change_password_log` (
  `UserId` int(11) NOT NULL,
  `LogCode` varchar(100) NOT NULL,
  PRIMARY KEY (`UserId`,`LogCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `change_password_log`
--

LOCK TABLES `change_password_log` WRITE;
/*!40000 ALTER TABLE `change_password_log` DISABLE KEYS */;
INSERT INTO `change_password_log` VALUES (14572,'1bbe2424429a546ad6831996ef9bad49'),(14572,'2809232710388cf1fbb68c1eff055cf1'),(14572,'309da53056c68a9058867136dd0dba18'),(14572,'361d9986a5320a3e0f1f84f84b4bf1ba'),(14572,'3894e4aa697b242632c3868f269f84b0'),(14572,'477ba0d786705708364a9594fb03b542'),(14572,'661581cada8663803a1ccb25b15b4cb9'),(14572,'79e411d74a9aaa99e47b23a8b4bcb7ac'),(14572,'917afe5db84fcfb87ad01d9d0242c34d'),(14572,'941ba0856fb43d0bf2a53355f9974135'),(14572,'a65d2d6d988e4fbe5190d0633ff824f0'),(14572,'abcf0131ddc68a10bab16bc83c45cf67'),(14572,'b209b97b1296d394a1133024c716a91f'),(14572,'b9bde4ed1bbb96f70f4b5e573bdc1077'),(14572,'c83dd94e5b1043e547253f3ea4fe14c4');
/*!40000 ALTER TABLE `change_password_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_settings`
--

DROP TABLE IF EXISTS `email_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_settings` (
  `emailsettingid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `smtpserver` varchar(100) NOT NULL,
  `smtpport` varchar(50) NOT NULL,
  `smtpuser` varchar(50) NOT NULL,
  `smtppassword` varchar(50) NOT NULL,
  PRIMARY KEY (`emailsettingid`),
  KEY `userid` (`userid`),
  CONSTRAINT `email_settings_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_settings`
--

LOCK TABLES `email_settings` WRITE;
/*!40000 ALTER TABLE `email_settings` DISABLE KEYS */;
INSERT INTO `email_settings` VALUES (10,14554,'smtp.gmail.com','995','dovertrading.net@gmail.com','11');
/*!40000 ALTER TABLE `email_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fb_settings`
--

DROP TABLE IF EXISTS `fb_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `appid` varchar(200) NOT NULL,
  `secret` varchar(200) NOT NULL,
  `accesstoken` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  CONSTRAINT `fb_settings_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fb_settings`
--

LOCK TABLES `fb_settings` WRITE;
/*!40000 ALTER TABLE `fb_settings` DISABLE KEYS */;
INSERT INTO `fb_settings` VALUES (6,14555,'1.62348E+15','578aeba1797bbfbc1c340d79475894b9','CAAXEi4z0Lk8BAElZCKnrFJkK0f5OeIeTLIuvjQM0m8l4lDOHYBhg1NlRwVlAMNjBrCy6FZA3TmlBESq9S4m1YkXcMdKquFpk1qGlfyd9ft6m73icYZC9hAIjsgjP8oP0jWaMeZBZBNtbfkoQ8ZCAAweq1KOiZCPfQ0de4YzZBaKgBx1bEBEfHsIs');
/*!40000 ALTER TABLE `fb_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forgot_password_email_template`
--

DROP TABLE IF EXISTS `forgot_password_email_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forgot_password_email_template` (
  `id` int(11) DEFAULT NULL,
  `email_template` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forgot_password_email_template`
--

LOCK TABLES `forgot_password_email_template` WRITE;
/*!40000 ALTER TABLE `forgot_password_email_template` DISABLE KEYS */;
INSERT INTO `forgot_password_email_template` VALUES (1,'\nPlease find your new password as requested below:\n  \n  <span style=\"color: #008000;\"><b>Log-In Access to FTC Control Panel:</b></span><b></b>\n  <ul>\n  <ul>\n  	<li>URL Link: <a href=\"http://180.240.233.24:8080/\" target=\"_blank\">http://180.240.233.24:8080/</a></li>\n  	<li>Username: {user_name}</li>\n  	<li>Password: {user_password}</li>\n  </ul>\n  </ul>\n  </b>\n  We recommend you change this new password to something suitable that you can remember by logging into the control panel with the above credentials and then going into \"My Profile\" under Profile menu and type in a new password and click on \"Save\". \n  If you have any queries please send us an email at: <a href=\"mailto:support@forextradecopiersolutions.com\">support@forextradecopiersolutions.com</a>\n  <br><br>\n  Best Regards,\n  <br><br>\n  FTC Signal Services\n  &nbsp;\n'),(2,'\nPlease confirm your password reset request by clicking on the link  below:\n   <ul>\n  	<li><a href=\"{reset_link}\" target=\"_blank\">{reset_link}</a></li>\n  </ul>\n  </b>\n  If you have not made this request please ignore this email.\n  <br><br>\n  Best Regards,\n  <br><br>\n  FTC Signal Services\n  &nbsp;\n');
/*!40000 ALTER TABLE `forgot_password_email_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `groupname` char(16) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL DEFAULT '',
  `description` char(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  PRIMARY KEY (`groupid`),
  UNIQUE KEY `groupname` (`groupname`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'owner','Owner group'),(2,'admin','Admin group'),(3,'user','User group');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `headings`
--

DROP TABLE IF EXISTS `headings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `headings` (
  `HeadingId` int(11) NOT NULL,
  `HeadingTitle` varchar(45) DEFAULT NULL,
  `HeadingText` varchar(45) DEFAULT NULL,
  `PageId` int(11) DEFAULT NULL,
  `Position` int(11) DEFAULT NULL,
  `Active` int(11) DEFAULT NULL,
  PRIMARY KEY (`HeadingId`),
  KEY `FkPageHeadingPageId_idx` (`PageId`),
  CONSTRAINT `FkPageHeadingPageId` FOREIGN KEY (`PageId`) REFERENCES `page` (`PageId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `headings`
--

LOCK TABLES `headings` WRITE;
/*!40000 ALTER TABLE `headings` DISABLE KEYS */;
/*!40000 ALTER TABLE `headings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `ImageId` int(11) NOT NULL,
  `ImageTitle` varchar(45) DEFAULT NULL,
  `ImageUrl` varchar(45) DEFAULT NULL,
  `PageId` int(11) DEFAULT NULL,
  `Position` int(11) DEFAULT NULL,
  `Active` int(1) DEFAULT NULL,
  PRIMARY KEY (`ImageId`),
  KEY `FkPageImagePageId_idx` (`PageId`),
  CONSTRAINT `FkPageImagePageId` FOREIGN KEY (`PageId`) REFERENCES `page` (`PageId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licenses`
--

DROP TABLE IF EXISTS `licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licenses` (
  `license_id` int(11) NOT NULL AUTO_INCREMENT,
  `licensekey` varchar(30) DEFAULT NULL,
  `date_expired` datetime DEFAULT NULL,
  `isactive` int(1) NOT NULL DEFAULT '1' COMMENT '0 = Inactive; 1 = Active',
  `auth_type` tinyint(4) NOT NULL DEFAULT '1',
  `last_action` datetime DEFAULT NULL,
  `systemid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `emailsignalflag` int(1) NOT NULL DEFAULT '1' COMMENT '0 = Disabled; 1 = Enabled',
  `phonesignalflag` int(1) NOT NULL DEFAULT '1' COMMENT '0 = Disabled; 1 = Enabled',
  PRIMARY KEY (`license_id`),
  UNIQUE KEY `key` (`licensekey`),
  KEY `userid` (`userid`),
  KEY `systemid` (`systemid`),
  CONSTRAINT `licenses_ibfk_4` FOREIGN KEY (`systemid`) REFERENCES `systems` (`systemid`),
  CONSTRAINT `licenses_ibfk_5` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licenses`
--

LOCK TABLES `licenses` WRITE;
/*!40000 ALTER TABLE `licenses` DISABLE KEYS */;
INSERT INTO `licenses` VALUES (21,'o84n1gz','2016-07-24 12:00:00',0,1,'0000-00-00 00:00:00',27,14571,1,1),(22,'ovburbp','2014-09-09 12:00:00',0,1,'0000-00-00 00:00:00',28,14555,1,1),(23,'glhb8e7','2014-09-03 15:47:00',0,1,'0000-00-00 00:00:00',29,14567,1,1),(24,'6y81wyi','2014-09-04 14:28:00',0,1,'0000-00-00 00:00:00',27,14554,1,1),(25,'apxa1qc','2015-04-30 12:00:00',0,1,'0000-00-00 00:00:00',29,14555,1,1),(26,'7vj65o7','2016-01-15 12:00:00',0,1,'0000-00-00 00:00:00',29,14567,1,1),(27,'r7z143m','2015-11-04 12:00:00',0,1,'0000-00-00 00:00:00',27,14554,1,1),(28,'lk60jci','2016-01-15 12:00:00',0,1,'0000-00-00 00:00:00',28,14555,1,1),(29,'jz3tonv','2015-10-12 12:00:00',0,1,'0000-00-00 00:00:00',29,14567,1,1),(30,'5an61pj','2015-10-05 13:32:00',0,1,'0000-00-00 00:00:00',27,14554,1,1),(31,'4a74z22','2016-01-04 12:00:00',0,1,'0000-00-00 00:00:00',28,14555,1,1),(32,'w36t6pf','2015-12-08 12:00:00',0,1,'0000-00-00 00:00:00',29,14567,1,1),(33,'7vqbpaw','0000-00-00 00:00:00',1,1,'0000-00-00 00:00:00',27,14554,1,1),(121,'97vlnyu','0000-00-00 00:00:00',1,1,'0000-00-00 00:00:00',28,14555,1,1),(122,'r0bmwis','0000-00-00 00:00:00',1,1,'0000-00-00 00:00:00',29,14567,1,1),(123,'eijsii4','0000-00-00 00:00:00',1,1,'0000-00-00 00:00:00',27,14554,1,1);
/*!40000 ALTER TABLE `licenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masteraccounts`
--

DROP TABLE IF EXISTS `masteraccounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `masteraccounts` (
  `accountid` int(11) NOT NULL DEFAULT '0',
  `signalsourceid` int(11) NOT NULL,
  `balance` double(17,10) DEFAULT NULL,
  `broker` varchar(100) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`accountid`),
  KEY `signalsourceid` (`signalsourceid`),
  CONSTRAINT `masteraccounts_ibfk_1` FOREIGN KEY (`signalsourceid`) REFERENCES `signalsources` (`signalsourceid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masteraccounts`
--

LOCK TABLES `masteraccounts` WRITE;
/*!40000 ALTER TABLE `masteraccounts` DISABLE KEYS */;
INSERT INTO `masteraccounts` VALUES (24495,36,2145.0000000000,'Triple A Investment Services S.A.',NULL),(70765764,35,50876.0000000000,'Forex Capital Markets, LLC',NULL);
/*!40000 ALTER TABLE `masteraccounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modules` (
  `moduleid` int(11) NOT NULL AUTO_INCREMENT,
  `modulename` varchar(50) NOT NULL,
  PRIMARY KEY (`moduleid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES (1,'Email'),(2,'Facebook'),(3,'Twitter'),(4,'SMS'),(5,'SlaveEA');
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page` (
  `PageId` int(11) NOT NULL,
  `PageTitle` varchar(45) DEFAULT NULL,
  `PageAuthor` varchar(45) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`PageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page`
--

LOCK TABLES `page` WRITE;
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
/*!40000 ALTER TABLE `page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plans` (
  `plan_id` int(11) NOT NULL,
  `display_name` varchar(50) NOT NULL,
  `plan_duration` int(11) NOT NULL COMMENT 'Duration in days. 0 = unlimited days',
  `plan_type` varchar(10) NOT NULL,
  `email_template` text NOT NULL,
  PRIMARY KEY (`plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans`
--

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
INSERT INTO `plans` VALUES (1,'FTC Trial',30,'trial','<p>Congratulations!</p><p>You have successfully subscribed to FTC Trial Offer from \'<strong>Forex Trade Copier Solutions</strong>\'.</p><p>Please read carefully and follow instructions below:</p><p><span style=\"\"color: #008000;\"\"><strong>Log-In Access to FTC Control Panel</strong></span></p><ul><ul><li>URL Link: <a href=\"\"http://panel.forextradecopiersolutions.com:8080/\"\" target=\"\"_blank\"\">http://panel.forextradecopiersolutions.com:8080/</a></li><li>Username: {user_name}</li><li>Password: {user_password}</li></ul></ul><p><span style=\"\"color: #008000;\"\"><strong>Download a copy of your Remote Trade Copier:<br /></strong></span></p><p><strong><a href=\"\"http://panel.forextradecopiersolutions.com:8080/uploads/Master FTC Trial.zip\"\" target=\"\"_blank\"\">Master FTC</a></strong></p><p><span style=\"\"color: #008000;\"\"><strong>Installation Guide for Expert Advisor:<br /></strong></span></p><p><strong><a href=\"\"http://panel.forextradecopiersolutions.com:8080/uploads/Remote Trade Copier - Installation Guide.zip\"\" target=\"\"_blank\"\">Remote Trade Copier - Installation Guide</a></strong></p>'),(2,'FTC Monthly Option',30,'pro','Congratulations!</p><p>You have successfully subscribed to FTC Monthly Offer from \'<strong>Forex Trade Copier Solutions</strong>\'. Please read carefully and follow instructions below:</p><p><span style=\"\"color: #008000;\"\"><strong>Log-In Access to FTC Control Panel</strong></span></p><ul><ul><li>URL Link: <a href=\"\"http://panel.forextradecopiersolutions.com:8080/\"\" target=\"\"_blank\"\">http://panel.forextradecopiersolutions.com:8080/</a></li><li>Username: {user_name}</li><li>Password: {user_password}</li><li>Expiry Date: Your subscription will be automatically renewed every month</li></ul></ul><p><span style=\"\"color: #008000;\"\"><strong>Download a copy of your Master and Slave EA: </strong></span></p><p><strong><a href=\"\"http://panel.forextradecopiersolutions.com:8080/uploads/ExpertAdvisor-Master&amp;Slave.zip\"\" target=\"\"_blank\"\">FTC Remote Copier</a></strong></p><p><span style=\"\"color: #008000;\"\"><strong>Installation Guide for Expert Advisor: </strong></span></p><p><strong><a href=\"\"http://panel.forextradecopiersolutions.com:8080/uploads/Master&amp;SlaveInstallationGuide.zip\"\" target=\"\"_blank\"\">Exert Advisor Installation Guide</a></strong></p><p>Please follow the user guide and video tutorials in FTC Control Panel to install your system and get started quickly.</p><p>Thank you for subscribing to FTC Monthly Offer<strong>. </strong></p><p>If you have any queries please send us an email at: <a href=\"\"mailto:forextradecopiersolutions@gmail.com\"\">forextradecopiersolutions@gmail.com </a></p><p>Best Regards,</p>'),(3,'FTC Full License',0,'premium','<p>Congratulations!<br /><br /> You have successfully purchased FTC Full License from \'Forex Trade Copier Solutions\'.<br /><br /> Please read carefully and follow instructions below:<br /><br /> <span style=\"\"color: #008000;\"\"><strong>Download a copy of your Admin Control Panel:<br /><br /> </strong></span> <strong><a href=\"\"http://panel.forextradecopiersolutions.com:8080/uploads/FTC-ControlPanel.zip\"\" target=\"\"_blank\"\">FTC Control Panel</a></strong> <br /><br /> <span style=\"\"color: #008000;\"\"><strong>Installation Guide for Admin Control Panel: </strong></span><br /><br /> <strong><a href=\"\"http://panel.forextradecopiersolutions.com:8080/uploads/FTC Control Panel - Installation Guide.zip\"\" target=\"\"_blank\"\">FTC cPanel Installation Guide</a></strong> <br /><br /> <strong><a href=\"\"http://panel.forextradecopiersolutions.com:8080/uploads/Full License Installation.mp4\"\" target=\"\"_blank\"\">FTC cPanel Video Tutorial</a></strong> <br /><br /> <strong>Once you set up your control panel the Log-In Access to FTC Control Panel is:</strong></p><ul><li>Username: admin</li><li>Password: admin</li></ul>'),(4,'FTC Individual License',30,'pro/4','<p>Congratulations!</p><p>You have successfully subscribed to FTC Monthly Offer from \'<strong>Forex Trade Copier Solutions</strong>\'.</p><p>Please read carefully and follow instructions below:</p><p><span style=\"\"color: #008000;\"\"><strong>Log-In Access to FTC Control Panel</strong></span></p><ul><ul><li>URL Link: <a href=\"\"http://panel.forextradecopiersolutions.com:8080/\"\" target=\"\"_blank\"\">http://panel.forextradecopiersolutions.com:8080/</a></li><li>Username: {user_name}</li><li>Password: {user_password}</li></ul><p><span style=\"\"color: #008000;\"\"><strong>Download a copy of your Master and Slave EA:<br /></strong></span></p><p><strong><a href=\"\"http://panel.forextradecopiersolutions.com:8080/uploads/ExpertAdvisor-Master&amp;Slave.zip\"\" target=\"\"_blank\"\">FTC Remote Copier</a></strong></p><p><span style=\"\"color: #008000;\"\"><strong>Installation Guide for Expert Advisor:<br /></strong></span></p><p><strong><a href=\"\"http://panel.forextradecopiersolutions.com:8080/uploads/Master &amp; Slave Installation Guide.zip\"\" target=\"\"_blank\"\">Expert Advisor Installation Guide</a></strong></p><p>Please follow the user guide o tutorial in FTC Control Panel to install your system and get started quickly.</p><p>Thank you for subscribing to FTC Monthly Offer<strong>.<br /></strong><br />If you have any queries please send us an email at: <a href=\"\"mailto:support@forextradecopiersolutions.com\"\">support@forextradecopiersolutions.com</a></p><p>Best Regards,</p><p>FTC Solutions Team</p>'),(5,'FTC Annual',360,'pro/5','Congratulations!<br /><br />You have successfully subscribed to FTC Annual Option from \'Forex Trade Copier Solutions\'.<br />Please read carefully and follow instructions below:<br /><br /><span style=\"\"color: #008000;\"\"><b>Log-In Access to FTC Control Panel</b></span><b></b><ul><li>URL Link: <a href=\"\"http://panel.forextradecopiersolutions.com/\"\" target=\"\"_blank\"\">http://panel.forextradecopiersolutions.com/</a></li><li>Username: {user_name} </li><li>Password: {user_password} </li><li>Expiry Date: {expiry_date} </li> </ul> Download a copy of your Master EA: http://panel.forextradecopiersolutions.com/uploads/FTCMaster.msi</ul> Please follow the user guide and video tutorial in FTC Control Panel to install your system and get started quickly. </ul>Thank you for subscribing to FTC Monthly option from <b>Forex Trade Copier Solutions</b>.<br />If you have any queries please refer to our <a href=\"\"http://forextradecopiersolutions.com/faqs/\"\" target=\"\"_blank\"\">FAQ</a> section or send us an email at: <a href=\"\"mailto:support@forextradecopiersolutions.com\"\">support@forextradecopiersolutions.com</a><br />Best Regards,<br />FTC Solutions Team'),(11,'FTC Additional License',30,'pro/11','<p>Congratulations!</p><p>You have successfully subscribed to additional licenses for your Forex Remote Copier.</strong>.</p><p>Please log back to your control panel below using the same credentials to create your new license codes::</p><ul><ul><li>URL Link: <a href=\"\"{app_context}\"\" target=\"\"_blank\"\">{app_context}</a></li></ul></ul>');
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signal`
--

DROP TABLE IF EXISTS `signal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `signal` (
  `Ticket` int(10) unsigned NOT NULL,
  `Symbol` varchar(45) DEFAULT NULL,
  `sType` int(10) unsigned DEFAULT NULL,
  `lot` double(17,10) DEFAULT NULL,
  `price` double(17,10) DEFAULT NULL,
  `sl` double(17,10) DEFAULT NULL,
  `tp` double(17,10) DEFAULT NULL,
  `close_price` double(17,10) DEFAULT NULL,
  `swap` double(17,10) DEFAULT NULL,
  `profit` double(17,10) DEFAULT NULL,
  `open_time` datetime DEFAULT NULL,
  `close_time` datetime DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `copy` int(10) unsigned DEFAULT NULL,
  `exp_time` datetime DEFAULT NULL,
  PRIMARY KEY (`Ticket`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signal`
--

LOCK TABLES `signal` WRITE;
/*!40000 ALTER TABLE `signal` DISABLE KEYS */;
INSERT INTO `signal` VALUES (28988057,'AUDNZD',1,0.0100000000,1.0725700000,1.0800700000,1.0475700000,1.0690100000,0.0000000000,2.4800000000,'2016-06-02 15:16:00','0000-00-00 00:00:00','NULL',0,'2016-06-02 18:17:00'),(29029227,'NZDCAD',0,0.0100000000,0.8912400000,0.8837400000,0.9162400000,0.8922400000,0.0000000000,0.7800000000,'2016-06-02 15:17:00','0000-00-00 00:00:00','NULL',0,'2016-06-02 18:17:00'),(29135330,'EURUSD',0,0.0100000000,1.1345300000,1.1310300000,1.1545300000,1.1352100000,0.0000000000,0.6800000000,'2016-06-06 11:58:00','0000-00-00 00:00:00','NULL',0,'2016-06-06 14:58:00'),(29135981,'USDJPY',0,0.0100000000,107.0960000000,106.7450000000,109.0950000000,107.2060000000,0.0000000000,1.0300000000,'2016-06-06 12:30:00','0000-00-00 00:00:00','NULL',0,'2016-06-06 15:30:00'),(29172621,'EURNZD',0,0.0100000000,1.6273800000,1.6238300000,1.6473300000,1.6289300000,0.0000000000,1.0800000000,'2016-06-07 14:34:00','0000-00-00 00:00:00','NULL',0,'2016-06-07 17:34:00'),(29172728,'EURUSD',0,0.0100000000,1.1353700000,1.1318700000,1.1553700000,1.1352100000,0.0000000000,-0.1600000000,'2016-06-09 14:55:00','0000-00-00 00:00:00','NULL',0,'2016-06-07 17:55:00'),(29173141,'AUDCAD',0,0.0100000000,0.9540000000,0.9504800000,0.9739800000,0.9538000000,0.0000000000,-0.1500000000,'2016-06-07 14:54:00','0000-00-00 00:00:00','NULL',0,'2016-06-07 17:54:00'),(29173173,'EURUSD',0,0.0100000000,1.1353700000,1.1318700000,1.1553700000,1.1352100000,0.0000000000,-0.1600000000,'2016-06-08 14:55:00','0000-00-00 00:00:00','NULL',0,'2016-06-07 17:55:00'),(29173177,'EURUSD',0,0.0100000000,1.1353700000,1.1318700000,1.1553700000,1.1352100000,0.0000000000,-0.1600000000,'2016-06-07 14:55:00','0000-00-00 00:00:00','NULL',0,'2016-06-07 17:55:00'),(29176771,'EURUSD',0,0.0100000000,1.1353700000,1.1318700000,1.1553700000,1.1352100000,0.0000000000,-0.1600000000,'2016-06-08 14:55:00','0000-00-00 00:00:00','NULL',0,'2016-06-07 17:55:00'),(29178398,'EURUSD',0,0.0100000000,1.1353700000,1.1318700000,1.1553700000,1.1352100000,0.0000000000,-0.1600000000,'2016-06-08 14:55:00','0000-00-00 00:00:00','NULL',0,'2016-06-07 17:55:00');
/*!40000 ALTER TABLE `signal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signalsources`
--

DROP TABLE IF EXISTS `signalsources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `signalsources` (
  `signalsourceid` int(11) NOT NULL AUTO_INCREMENT,
  `ownerid` int(11) NOT NULL,
  `signalsourcename` varchar(50) NOT NULL,
  `licensekey` varchar(32) NOT NULL,
  `module` varchar(10) NOT NULL,
  `datecreated` date NOT NULL,
  `lastaction` timestamp NULL DEFAULT NULL,
  `deletestatus` int(1) NOT NULL DEFAULT '0' COMMENT '0 = Not deleted; 1 = Deleted',
  PRIMARY KEY (`signalsourceid`),
  KEY `ownerid` (`ownerid`),
  CONSTRAINT `signalsources_ibfk_1` FOREIGN KEY (`ownerid`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signalsources`
--

LOCK TABLES `signalsources` WRITE;
/*!40000 ALTER TABLE `signalsources` DISABLE KEYS */;
INSERT INTO `signalsources` VALUES (35,14555,'Forex Win32','jx3zfno','MasterEA','2014-07-25','0000-00-00 00:00:00',1),(36,14555,'Forex Win64','fhznc1h','MasterEA','2014-07-25','0000-00-00 00:00:00',1),(37,14554,'TestWin32','anvrl0b','MasterEA','2014-08-08','0000-00-00 00:00:00',1),(38,14554,'Storm','1arswe6','MasterEA','2014-09-16','0000-00-00 00:00:00',1),(39,14554,'XYZ Signal','ok7e01n','MasterEA','2014-09-23','0000-00-00 00:00:00',1),(40,14554,'Istvan Barabas Test MASTER','ste2xpf','MasterEA','2014-12-10','0000-00-00 00:00:00',1),(41,14555,'Test Sanjoy 151214','5ni29l1','MasterEA','2014-12-15','0000-00-00 00:00:00',0),(42,14554,'Test 181214','3cgo7og','MasterEA','2014-12-18','0000-00-00 00:00:00',1),(43,14554,'Hiren Test','tpr0kok','MasterEA','2015-04-15','0000-00-00 00:00:00',1),(44,14554,'FTC Signal Service','bv6jsjh','MasterEA','2015-05-10','0000-00-00 00:00:00',0);
/*!40000 ALTER TABLE `signalsources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slaveaccounts`
--

DROP TABLE IF EXISTS `slaveaccounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slaveaccounts` (
  `accountid` int(11) NOT NULL DEFAULT '0',
  `systemid` int(11) NOT NULL,
  `masteraccountid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `balance` double(17,10) DEFAULT NULL,
  `broker` varchar(100) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `licenseid` int(11) NOT NULL,
  PRIMARY KEY (`accountid`),
  KEY `systemid` (`systemid`),
  KEY `masteraccountid` (`masteraccountid`),
  KEY `userid` (`userid`),
  KEY `licenseid` (`licenseid`),
  CONSTRAINT `slaveaccounts_ibfk_1` FOREIGN KEY (`systemid`) REFERENCES `systems` (`systemid`),
  CONSTRAINT `slaveaccounts_ibfk_3` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`),
  CONSTRAINT `slaveaccounts_ibfk_4` FOREIGN KEY (`licenseid`) REFERENCES `licenses` (`license_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slaveaccounts`
--

LOCK TABLES `slaveaccounts` WRITE;
/*!40000 ALTER TABLE `slaveaccounts` DISABLE KEYS */;
INSERT INTO `slaveaccounts` VALUES (54001,29,0,14567,2328.0000000000,'IG','NULL',23),(600654,28,0,14555,56332.0000000000,'Swissquote Bank SA','NULL',25);
/*!40000 ALTER TABLE `slaveaccounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slavesignal`
--

DROP TABLE IF EXISTS `slavesignal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slavesignal` (
  `Ticket` int(10) unsigned NOT NULL,
  `Symbol` varchar(45) DEFAULT NULL,
  `sType` int(10) unsigned DEFAULT NULL,
  `lot` double(17,10) DEFAULT NULL,
  `price` double(17,10) DEFAULT NULL,
  `sl` double(17,10) DEFAULT NULL,
  `tp` double(17,10) DEFAULT NULL,
  `close_price` double(17,10) DEFAULT NULL,
  `swap` double(17,10) DEFAULT NULL,
  `profit` double(17,10) DEFAULT NULL,
  `open_time` datetime DEFAULT NULL,
  `close_time` datetime DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `pl_pips` int(11) DEFAULT NULL,
  PRIMARY KEY (`Ticket`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slavesignal`
--

LOCK TABLES `slavesignal` WRITE;
/*!40000 ALTER TABLE `slavesignal` DISABLE KEYS */;
INSERT INTO `slavesignal` VALUES (117261693,'USDCAD',0,0.1000000000,1.2470100000,0.0000000000,1.2475200000,1.2462700000,0.0000000000,-5.9400000000,'2015-02-13 20:31:00','2015-02-13 20:35:00','0',-7),(117261694,'AUDUSD',0,0.1000000000,0.7768800000,0.0000000000,0.7770500000,0.7768900000,0.0000000000,0.1000000000,'2015-02-13 20:31:00','2015-02-13 20:35:00','0',0),(117261695,'AUDUSD',0,0.1000000000,0.7768800000,0.0000000000,0.7770500000,0.7768900000,0.0000000000,0.1000000000,'2015-02-13 20:31:00','2015-02-13 20:35:00','0',0),(117261696,'EURGBP',0,0.1000000000,0.7400600000,0.0000000000,0.7403400000,0.7400600000,0.0000000000,0.0000000000,'2015-02-13 20:31:00','2015-02-13 20:36:00','0',0),(117261697,'EURGBP',0,0.1000000000,0.7400600000,0.0000000000,0.7403400000,0.7400900000,0.0000000000,0.4600000000,'2015-02-13 20:31:00','2015-02-13 20:36:00','0',0),(117261699,'EURCAD',0,0.1000000000,1.4212100000,0.0000000000,1.4215000000,1.4208200000,0.0000000000,-3.1300000000,'2015-02-13 20:31:00','2015-02-13 20:36:00','0',-3),(117261700,'EURCAD',0,0.1000000000,1.4212100000,0.0000000000,1.4215000000,1.4208200000,0.0000000000,-3.1300000000,'2015-02-13 20:31:00','2015-02-13 20:36:00','0',-3),(117261805,'USDJPY',0,0.1000000000,118.7620000000,0.0000000000,118.7940000000,118.7410000000,0.0000000000,-1.7700000000,'2015-02-13 20:36:00','2015-02-13 20:39:00','0',-22),(117261809,'USDJPY',0,0.1000000000,118.7520000000,0.0000000000,118.7940000000,118.7420000000,0.0000000000,-0.8400000000,'2015-02-13 20:36:00','2015-02-13 20:40:00','0',-12),(117261811,'NZDUSD',1,0.1000000000,0.7460500000,0.0000000000,0.7458600000,0.7460300000,0.0000000000,0.2000000000,'2015-02-13 20:36:00','2015-02-13 20:40:00','0',0);
/*!40000 ALTER TABLE `slavesignal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_settings`
--

DROP TABLE IF EXISTS `sms_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `api_id` varchar(50) NOT NULL,
  `api_username` varchar(50) NOT NULL,
  `api_password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  CONSTRAINT `sms_settings_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_settings`
--

LOCK TABLES `sms_settings` WRITE;
/*!40000 ALTER TABLE `sms_settings` DISABLE KEYS */;
INSERT INTO `sms_settings` VALUES (1,14554,'546sd484','test','test'),(2,14567,'3375432','BFSSprovider','0'),(3,14555,'3552002','brndr_kmr','WRfcfaUXQXIYXH');
/*!40000 ALTER TABLE `sms_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription` (
  `SubscriberId` int(11) NOT NULL,
  `Hostname` varchar(45) DEFAULT NULL,
  `Username` varchar(45) DEFAULT NULL,
  `Pwd` varchar(45) DEFAULT NULL,
  `DatabaseName` varchar(45) DEFAULT NULL,
  `Port` int(11) DEFAULT NULL,
  `OwnerId` int(11) NOT NULL,
  `Active` int(1) NOT NULL,
  `subscriptionType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`SubscriberId`),
  KEY `FkUserSubscriptionUserId_idx` (`OwnerId`),
  CONSTRAINT `FkUserSubscriptionUserId` FOREIGN KEY (`OwnerId`) REFERENCES `users` (`userid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
INSERT INTO `subscription` VALUES (1,'192.168.1.6','dev','dev','forex_client_1',3306,14567,1,'Full '),(2,'192.168.1.6','dev','dev','forex_trade_copier',3306,14555,1,'Monthly');
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_modules`
--

DROP TABLE IF EXISTS `system_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_modules` (
  `systemmoudleid` int(11) NOT NULL AUTO_INCREMENT,
  `systemid` int(11) NOT NULL,
  `moduleid` int(11) NOT NULL,
  PRIMARY KEY (`systemmoudleid`),
  KEY `systemid` (`systemid`),
  KEY `moduleid` (`moduleid`),
  CONSTRAINT `system_modules_ibfk_1` FOREIGN KEY (`systemid`) REFERENCES `systems` (`systemid`),
  CONSTRAINT `system_modules_ibfk_2` FOREIGN KEY (`moduleid`) REFERENCES `modules` (`moduleid`)
) ENGINE=InnoDB AUTO_INCREMENT=383 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_modules`
--

LOCK TABLES `system_modules` WRITE;
/*!40000 ALTER TABLE `system_modules` DISABLE KEYS */;
INSERT INTO `system_modules` VALUES (378,27,1),(379,27,2),(380,27,3),(381,27,4),(382,27,5);
/*!40000 ALTER TABLE `system_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_signalsources`
--

DROP TABLE IF EXISTS `system_signalsources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_signalsources` (
  `system_signalsourceid` int(11) NOT NULL AUTO_INCREMENT,
  `systemid` int(11) NOT NULL,
  `signalsourceid` int(11) NOT NULL,
  PRIMARY KEY (`system_signalsourceid`),
  KEY `systemid` (`systemid`),
  KEY `signalsourceid` (`signalsourceid`),
  CONSTRAINT `system_signalsources_ibfk_1` FOREIGN KEY (`systemid`) REFERENCES `systems` (`systemid`),
  CONSTRAINT `system_signalsources_ibfk_2` FOREIGN KEY (`signalsourceid`) REFERENCES `signalsources` (`signalsourceid`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_signalsources`
--

LOCK TABLES `system_signalsources` WRITE;
/*!40000 ALTER TABLE `system_signalsources` DISABLE KEYS */;
INSERT INTO `system_signalsources` VALUES (125,27,38),(126,27,37),(127,27,38),(128,27,39),(129,27,40),(132,29,40),(136,29,41),(137,29,42),(138,28,40),(140,28,43);
/*!40000 ALTER TABLE `system_signalsources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systems`
--

DROP TABLE IF EXISTS `systems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systems` (
  `systemid` int(11) NOT NULL AUTO_INCREMENT,
  `ownerid` int(11) NOT NULL,
  `title` varchar(512) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `file_master` varchar(100) DEFAULT NULL,
  `file_slave` varchar(100) DEFAULT NULL,
  `email_template` text NOT NULL,
  `deletestatus` int(1) NOT NULL DEFAULT '0' COMMENT '0 = Not deleted; 1 = Deleted',
  `file_installer` varchar(255) DEFAULT NULL,
  `subscriberscount` int(11) NOT NULL DEFAULT '0',
  `expiry_period` int(5) NOT NULL,
  PRIMARY KEY (`systemid`),
  KEY `ownerid` (`ownerid`),
  CONSTRAINT `systems_ibfk_1` FOREIGN KEY (`ownerid`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systems`
--

LOCK TABLES `systems` WRITE;
/*!40000 ALTER TABLE `systems` DISABLE KEYS */;
INSERT INTO `systems` VALUES (27,14554,'FX Scalper 32','0000-00-00 00:00:00','NULL','NULL','Congratulations!</br>You have successfully subscribed to ABC?Trial Offer from \'ABC Forex Signals Service\'.</br>Please read carefully and follow instructions below:<span style=\"\"color: #008000;\"\"><b>Log-In Access to Forex Trade Copier Control Panel</b></span><b></b><ul>	<li>URL Link: <a href=\"\"http://panel.forextradecopiersolutions.com/\"\" target=\"\"_blank\"\">http://panel.forextradecopiersolutions.com/</a></li>	<li>Username: {user_name}</li>	<li>Password: {user_password}</li>	<li>Expiry Date: {expiry_date}</li></ul><strong><span style=\"\"color: #008000;\"\">Download a copy of your Slave EA ---&gt;</span> <a title=\"\"Slave EA\"\" href=\"\"http://panel.forextradecopiersolutions.com/uploads/FTCSlave.msi\"\" target=\"\"_blank\"\">CLICK HERE</a></strong><span style=\"\"color: #008000;\"\"><strong>License Key ---&gt;</strong></span>?{license_key}Thank you for subscribing to ABC Trial Offer from <strong>ABC</strong><b>?Forex Signals Service</b>.If you have any queries please send us an email at: <a href=\"\"mailto:support@xyzforexsignalsservice.com\"\">support@abcforexsignalsservice.com</a>Best Regards,ABC?Forex Signals Service',1,'NULL',1,0),(28,14567,'FX Scalper 64','0000-00-00 00:00:00','NULL','NULL','Congratulations!You have successfully subscribed to ABC?Monthly Offer from \'ABC Forex Signals Service\'.Please read carefully and follow instructions below:<span style=\"\"color: #008000;\"\"><b>Log-In Access to Forex Trade Copier Control Panel</b></span><b></b><ul>	<li>URL Link: <a href=\"\"http://panel.forextradecopiersolutions.com/\"\" target=\"\"_blank\"\">http://panel.forextradecopiersolutions.com/</a></li>	<li>Username: {user_name}</li>	<li>Password: {user_password}</li>	<li>Expiry Date: {expiry_date}</li></ul><strong><span style=\"\"color: #008000;\"\">Download a copy of your Slave EA ---&gt;</span> <a title=\"\"Slave EA\"\" href=\"\"http://panel.forextradecopiersolutions.com/uploads/FTCSlave.msi\"\" target=\"\"_blank\"\">CLICK HERE</a></strong><span style=\"\"color: #008000;\"\"><strong>License Key ---&gt;</strong></span>?{license_key}Thank you for subscribing to ABC Monthly Offer from <strong>ABC</strong><b>?Forex Signals Service</b>.If you have any queries please send us an email at: <a href=\"\"mailto:support@xyzforexsignalsservice.com\"\">support@abcforexsignalsservice.com</a>Best Regards,ABC?Forex Signals Service',1,'NULL',0,0),(29,14555,'Storm','0000-00-00 00:00:00','NULL','NULL','Congratulations!You have successfully subscribed to Storm Trial Offer from \'ABC Forex Signals Service\'.Please read carefully and follow instructions below:<span style=\"\"color: #008000;\"\"><b>Log-In Access to Forex Trade Copier Control Panel</b></span><b></b><ul>	<li>URL Link: <a href=\"\"http://panel.forextradecopiersolutions.com/\"\" target=\"\"_blank\"\">http://panel.forextradecopiersolutions.com/</a></li>	<li>Username: {user_name}</li>	<li>Password: {user_password}</li>	<li>Expiry Date: {expiry_date}</li></ul><strong><span style=\"\"color: #008000;\"\">Download a copy of your Slave EA ---&gt;</span> <a title=\"\"Slave EA\"\" href=\"\"http://panel.forextradecopiersolutions.com/uploads/FTCSlave.msi\"\" target=\"\"_blank\"\">CLICK HERE</a></strong><span style=\"\"color: #008000;\"\"><strong>License Key ---&gt;</strong></span>?{license_key}Thank you for subscribing to Storm Trial Offer from<strong>ABC</strong><b>?Forex Signals Service</b>.If you have any queries please send us an email at: <a href=\"\"mailto:support@abcforexsignalsservice.com\"\">support@abcforexsignalsservice.com</a>Best Regards,ABC Forex Signals Service',1,'NULL',1,0);
/*!40000 ALTER TABLE `systems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trade_backup`
--

DROP TABLE IF EXISTS `trade_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trade_backup` (
  `masteraccountid` int(11) NOT NULL DEFAULT '0',
  `Ticket` int(10) unsigned DEFAULT NULL,
  `Symbol` varchar(45) DEFAULT NULL,
  `sType` int(10) unsigned DEFAULT NULL,
  `lot` double(17,10) DEFAULT NULL,
  `price` double(17,10) DEFAULT NULL,
  `sl` double(17,10) DEFAULT NULL,
  `tp` double(17,10) DEFAULT NULL,
  `close_price` double(17,10) DEFAULT NULL,
  `swap` double(17,10) DEFAULT NULL,
  `profit` double(17,10) DEFAULT NULL,
  `open_time` datetime DEFAULT NULL,
  `close_time` datetime DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `pl_pips` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trade_backup`
--

LOCK TABLES `trade_backup` WRITE;
/*!40000 ALTER TABLE `trade_backup` DISABLE KEYS */;
INSERT INTO `trade_backup` VALUES (334269,168993075,'AUDCHF',0,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,0.0000000000,38.0000000000,'0000-00-00 00:00:00','0000-00-00 00:00:00','0',34);
/*!40000 ALTER TABLE `trade_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `twitter_settings`
--

DROP TABLE IF EXISTS `twitter_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twitter_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `tokensecret` varchar(50) NOT NULL,
  `consumerkey` varchar(50) NOT NULL,
  `consumersecret` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  CONSTRAINT `twitter_settings_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `twitter_settings`
--

LOCK TABLES `twitter_settings` WRITE;
/*!40000 ALTER TABLE `twitter_settings` DISABLE KEYS */;
INSERT INTO `twitter_settings` VALUES (1,14554,'1938974970-sQt96PlQMjDeeEdFlgCfXPIy5zNNbKHtJsSipEQ','Y1yQLX7OcRyw2WnLFkkVUJiQYK3T7RUKjPnksR699M ','hSFzW7LOkC5r92NLIkxOJA','173S47sGKXk1iaFdPGlX4KM6oaYcV4RGuEhCdAyXvw'),(2,14555,'576990266-bL6l3LRnJKpNiRQDsy4N6OvfByaR9GtgjxShno9I','zJ0BdmVxSkPmltYYCmAeQvHZEkgkxuMaY81zPkEPYE','x7UkxrBsum1WxrFl2fu8Gw','9HKNRfYz48QkihiwZUDFGPKrO5zpDX4A6YNX8N2DF8M'),(3,14567,'1938974970-sQt96PlQMjDeeEdFlgCfXPIy5zNNbKHtJsSipEQ','Y1yQLX7OcRyw2WnLFkkVUJiQYK3T7RUKjPnksR699M','hSFzW7LOkC5r92NLIkxOJA','173S47sGKXk1iaFdPGlX4KM6oaYcV4RGuEhCdAyXvw');
/*!40000 ALTER TABLE `twitter_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_plan`
--

DROP TABLE IF EXISTS `user_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_plan` (
  `user_plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `planid` int(11) NOT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `isactive` int(11) NOT NULL DEFAULT '1' COMMENT '0 = Inactive; 1 = Active',
  PRIMARY KEY (`user_plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_plan`
--

LOCK TABLES `user_plan` WRITE;
/*!40000 ALTER TABLE `user_plan` DISABLE KEYS */;
INSERT INTO `user_plan` VALUES (77,14516,3,'0000-00-00 00:00:00',0),(78,14521,1,'0000-00-00 00:00:00',0),(185,14742,3,'0000-00-00 00:00:00',1),(186,14743,1,'0000-00-00 00:00:00',0),(187,14744,3,'0000-00-00 00:00:00',1),(188,14745,3,'0000-00-00 00:00:00',1),(189,14746,4,'0000-00-00 00:00:00',1),(190,14747,3,'0000-00-00 00:00:00',1),(191,14748,3,'0000-00-00 00:00:00',1),(192,14760,1,'0000-00-00 00:00:00',0),(193,14769,1,'0000-00-00 00:00:00',1),(194,14770,1,'0000-00-00 00:00:00',1),(195,14771,1,'0000-00-00 00:00:00',1),(196,14571,2,'0000-00-00 00:00:00',1);
/*!40000 ALTER TABLE `user_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_subscription`
--

DROP TABLE IF EXISTS `user_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_subscription` (
  `SubscriberId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  PRIMARY KEY (`SubscriberId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_subscription`
--

LOCK TABLES `user_subscription` WRITE;
/*!40000 ALTER TABLE `user_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `groupid` int(11) NOT NULL,
  `lastlogin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `creator_id` int(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `client_id` int(11) DEFAULT NULL,
  `phone` bigint(20) NOT NULL,
  `deletestatus` int(1) NOT NULL DEFAULT '0' COMMENT '0 = Not deleted; 1 = Deleted',
  `company_name` varchar(50) NOT NULL DEFAULT 'Forex Trade Copier',
  `isactive` int(11) NOT NULL DEFAULT '1' COMMENT '0 = Inactive; 1 = Active',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`),
  KEY `groupid` (`groupid`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`groupid`) REFERENCES `groups` (`groupid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14582 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (14554,'sray6815','sray68','sanjoy_ray@hotmail.com','c259139373700272d3835a40b70d5d8e',3,'0000-00-00 00:00:00',14516,'0000-00-00 00:00:00',0,0,1,'Forex Trade Copier',0),(14555,'testaccount','Test Account','biea.kua@gmail.com','25d55ad283aa400af464c76d713c07ad',2,'0000-00-00 00:00:00',14516,'0000-00-00 00:00:00',0,919887000000,1,'Forex Trade Copier',1),(14567,'bkumar','Birendra Kumar','brndr_kmr@yahoo.com','e10adc3949ba59abbe56e057f20f883e',2,'0000-00-00 00:00:00',3,'0000-00-00 00:00:00',0,9886975247,1,'Forex Trade Copier',1),(14571,'NSVeer','Poul Jakson','p.jakson@gmail.com','d3251d15b5aee80b504ac57e48a64685',3,'0000-00-00 00:00:00',14516,'2016-06-22 13:46:26',0,38821726,1,'Forex Trade Copier',1),(14574,'Pragnesh','Pragnesh Limbasiya','pragnesh@vibeosys.com','fd5f78030051d491b97373046f175dd6',3,'0000-00-00 00:00:00',14516,'2016-06-24 07:33:46',0,9922896532,1,'Forex Trade Copier',1),(14577,'vijaychavan','vijay','vijay@gmail.com','e2fc714c4727ee9395f324cd2e7f331f',3,'0000-00-00 00:00:00',14516,'2016-06-24 07:38:49',0,9970132577,1,'Forex Trade Copier',1),(14578,'jack','Jack reacher','akshay@vibeosys.com','93c8ab60498adb00cb5a01876d67fc91',3,'0000-00-00 00:00:00',14516,'2016-06-24 07:44:50',0,9087653627,1,'Forex Trade Copier',1),(14579,'abcd','aaabbb','sbhsgs@gmail.com','e2fc714c4727ee9395f324cd2e7f331f',3,'0000-00-00 00:00:00',14516,'2016-06-24 07:48:38',0,7896523468,1,'Forex Trade Copier',1),(14580,'rajesh','Rajesh Sing','aabb@gmail.com','250b69e5786a9934830c8c5c7350045c',3,'0000-00-00 00:00:00',14516,'2016-06-24 07:50:48',0,986236597,1,'Forex Trade Copier',1),(14581,'abcdefg','abcd','aaa@gmail.com','e2fc714c4727ee9395f324cd2e7f331f',3,'0000-00-00 00:00:00',14516,'2016-06-24 07:58:31',0,978564523,1,'Forex Trade Copier',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'forex_trade_copier'
--

--
-- Dumping routines for database 'forex_trade_copier'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-27 15:37:48

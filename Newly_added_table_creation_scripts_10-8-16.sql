
DROP TABLE IF EXISTS `app_notification`;

CREATE TABLE `app_notification` (
  `NoteId` int(11) NOT NULL AUTO_INCREMENT,
  `SendBy` int(11) DEFAULT NULL,
  `NoteTitle` varchar(100) DEFAULT NULL,
  `NoteText` text,
  `NoOfRecipients` int(11) DEFAULT NULL,
  `SendDate` datetime DEFAULT NULL,
  PRIMARY KEY (`NoteId`),
  KEY `UserAppNoteUserId_idx` (`SendBy`),
  CONSTRAINT `UserAppNoteUserId` FOREIGN KEY (`SendBy`) REFERENCES `users` (`userid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `change_password_log`;

CREATE TABLE `change_password_log` (
  `UserId` int(11) NOT NULL,
  `LogCode` varchar(100) NOT NULL,
  PRIMARY KEY (`UserId`,`LogCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `email_settings`;

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `email_templates`;

CREATE TABLE `email_templates` (
  `TemplateId` int(11) NOT NULL AUTO_INCREMENT,
  `TemplateName` varchar(45) DEFAULT NULL,
  `TemplateBody` text,
  `CreatedDate` datetime DEFAULT NULL,
  `Active` int(11) DEFAULT NULL,
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

LOCK TABLES `email_templates` WRITE;

INSERT INTO `email_templates` VALUES (11,'Customer registration success','<h2>FTC Admin</h2><p><span style=\"color: rgb(0, 0, 0);\">Thanks for register with us.</span></p><p><span style=\"color: rgb(250, 197, 28);\">sales Department</span></p><p><span style=\"color: rgb(0, 0, 0);\">Regards,</span></p><p><span style=\"color: rgb(0, 0, 0);\">admin,</span></p><p><span style=\"color: rgb(0, 0, 0);\">sales@ftc.com</span></p><p><br></p><p><br></p>','2016-07-16 10:41:07',1),(12,'Forgot password','<h2>FTC Admin</h2><h3><span style=\"color: rgb(184, 49, 47);\">Forgot password</span></h3><p><span style=\"color: rgb(0, 0, 0);\">Dear #user_name#,</span></p><p><span style=\"color: rgb(0, 0, 0);\">Please follow this link to change password.</span></p><p><span style=\"color: rgb(209, 72, 65);\"><sub class=\"\">*this link expired after one time use.</sub></span></p><p><span style=\"color: rgb(0, 0, 0);\"><sub class=\"\"><a href=\"#forgot_link#\" target=\"_blank\">#forgot_link#</a></sub></span></p><p><span style=\"color: rgb(0, 0, 0);\">Thanks &amp; Regards,</span></p><p><span style=\"color: rgb(0, 0, 0);\">FTC admin.</span></p><p><br></p>','2016-07-16 11:31:39',1),(13,'Reset Password','<h2>FTC Admin</h2><h3><span style=\"color: rgb(184, 49, 47);\">Reset Password</span></h3><p><span style=\"color: rgb(0, 0, 0);\">Please follow this link to reset your password.</span></p><p><span style=\"color: rgb(226, 80, 65);\">*<sub>this link will expired after one time use.</sub></span></p><p><a href=\"#reset_link#\" target=\"_blank\">#reset_link#</a></p><p><span style=\"color: rgb(0, 0, 0);\">Thanks &amp; Regards,</span></p><p><span style=\"color: rgb(0, 0, 0);\">FTC Admin.</span></p><p><br></p><h3><br></h3>','2016-07-16 11:31:49',1);

UNLOCK TABLES;


DROP TABLE IF EXISTS `gallery`;

CREATE TABLE `gallery` (
  `ItemId` int(11) NOT NULL AUTO_INCREMENT,
  `ItemUrl` text,
  `UploadedDate` datetime DEFAULT NULL,
  `ItemType` int(11) DEFAULT NULL,
  PRIMARY KEY (`ItemId`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 COMMENT='		';



DROP TABLE IF EXISTS `mobile_page_type`;

CREATE TABLE `mobile_page_type` (
  `PageTypeId` int(11) NOT NULL,
  `PageTypeDesc` varchar(45) DEFAULT NULL,
  `Active` int(1) DEFAULT NULL,
  PRIMARY KEY (`PageTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `mobile_page_type` WRITE;

INSERT INTO `mobile_page_type` VALUES (1,'Custom',1),(2,'Web View',1),(3,'Rss Feed',1);

UNLOCK TABLES;


DROP TABLE IF EXISTS `mobile_pages`;

CREATE TABLE `mobile_pages` (
  `PageId` int(11) NOT NULL AUTO_INCREMENT,
  `PageTitle` varchar(45) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `PageTypeId` int(11) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `Active` int(1) DEFAULT NULL,
  `Author` int(11) NOT NULL,
  `PageFor` int(11) DEFAULT NULL,
  PRIMARY KEY (`PageId`),
  UNIQUE KEY `PageTitle_UNIQUE` (`PageTitle`),
  KEY `FkUsersPagesUserId_idx` (`Author`),
  CONSTRAINT `FkUserPagesUserId` FOREIGN KEY (`Author`) REFERENCES `users` (`userid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `subscription`;

CREATE TABLE `subscription` (
  `SubscriberId` int(11) NOT NULL AUTO_INCREMENT,
  `Hostname` varchar(500) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=11335 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `sync`;

CREATE TABLE `sync` (
  `SyncId` bigint(20) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) DEFAULT NULL,
  `TableName` varchar(45) DEFAULT NULL,
  `TableOperation` varchar(45) DEFAULT NULL,
  `Json` text,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`SyncId`),
  KEY `FkUserSyncUserId_idx` (`UserId`),
  CONSTRAINT `FkUserSyncUserId` FOREIGN KEY (`UserId`) REFERENCES `users` (`userid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `sync_management`;

CREATE TABLE `sync_management` (
  `UserId` int(11) NOT NULL,
  `SyncReferenceId` varchar(100) NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`UserId`,`SyncReferenceId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


DROP TABLE IF EXISTS `user_app_notification`;

CREATE TABLE `user_app_notification` (
  `UserId` int(11) NOT NULL,
  `NoteId` int(11) DEFAULT NULL,
  `SendDate` datetime DEFAULT NULL,
  PRIMARY KEY (`UserId`),
  KEY `FkUserAppNotificationNoteId_idx` (`NoteId`),
  CONSTRAINT `FkUserAppNotificationUserId` FOREIGN KEY (`UserId`) REFERENCES `users` (`userid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FkUserAppNotificationNoteId` FOREIGN KEY (`NoteId`) REFERENCES `app_notification` (`NoteId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `user_notification`;

CREATE TABLE `user_notification` (
  `UserId` int(11) NOT NULL,
  `GcmId` text,
  `ApnId` text,
  PRIMARY KEY (`UserId`),
  CONSTRAINT `FkUserNotificationUserId` FOREIGN KEY (`UserId`) REFERENCES `users` (`userid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='	';



DROP TABLE IF EXISTS `user_subscription`;

CREATE TABLE `user_subscription` (
  `SubscriberId` int(11) DEFAULT NULL,
  `UserId` int(11) NOT NULL,
  `GcmId` text,
  `ApnId` text,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widget` (
  `WidgetId` int(11) NOT NULL AUTO_INCREMENT,
  `WidgetTitle` varchar(45) NOT NULL,
  `Position` int(11) DEFAULT NULL,
  `WidgetData` text,
  `PageId` varchar(50) NOT NULL,
  PRIMARY KEY (`WidgetId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

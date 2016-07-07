CREATE TABLE `mobile_pages` (
  `PageId` int(11) NOT NULL AUTO_INCREMENT,
  `PageTitle` varchar(45) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `PageTypeId` int(11) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `Active` int(1) DEFAULT NULL,
  `Author` int(11) NOT NULL,
  PRIMARY KEY (`PageId`),
  UNIQUE KEY `PageTitle_UNIQUE` (`PageTitle`),
  KEY `FkUsersPagesUserId_idx` (`Author`),
  CONSTRAINT `FkUserPagesUserId` FOREIGN KEY (`Author`) REFERENCES `users` (`userid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
SELECT * FROM forex_trade_copier.user_subscription;
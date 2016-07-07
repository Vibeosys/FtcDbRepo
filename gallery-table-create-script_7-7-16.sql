SELECT * FROM forex_trade_copier.mobile_pages;CREATE TABLE `gallery` (
  `ItemId` int(11) NOT NULL AUTO_INCREMENT,
  `ItemUrl` text,
  `UploadedDate` datetime DEFAULT NULL,
  `ItemType` int(11) DEFAULT NULL,
  PRIMARY KEY (`ItemId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COMMENT='		';

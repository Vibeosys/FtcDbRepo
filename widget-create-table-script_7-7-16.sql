CREATE TABLE `widget` (
  `WidgetId` int(11) NOT NULL AUTO_INCREMENT,
  `WidgetTitle` varchar(45) NOT NULL,
  `Position` int(11) DEFAULT NULL,
  `WidgetData` text,
  `PageId` varchar(50) NOT NULL,
  PRIMARY KEY (`WidgetId`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

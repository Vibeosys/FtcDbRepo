CREATE TABLE `user_notification` (
  `UserId` int(11) NOT NULL,
  `GcmId` text,
  `ApnId` text,
  PRIMARY KEY (`UserId`),
  CONSTRAINT `FkUserNotificationUserId` FOREIGN KEY (`UserId`) REFERENCES `users` (`userid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='	';

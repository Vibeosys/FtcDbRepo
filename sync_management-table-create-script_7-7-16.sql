CREATE TABLE `forex_trade_copier`.`sync_management` (
  `UserId` INT NOT NULL COMMENT '',
  `SyncReferenceId` VARCHAR(100) NOT NULL COMMENT '',
  `CreatedDate` DATETIME NULL COMMENT '',
  PRIMARY KEY (`UserId`, `SyncReferenceId`)  COMMENT '');

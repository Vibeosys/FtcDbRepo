CREATE TABLE `forex_trade_copier`.`sync` (
  `SyncId` BIGINT NOT NULL AUTO_INCREMENT COMMENT '',
  `UserId` INT NULL COMMENT '',
  `Table` VARCHAR(45) NULL COMMENT '',
  `Opertion` VARCHAR(45) NULL COMMENT '',
  `Json` TEXT NULL COMMENT '',
  `CreatedDate` DATETIME NULL COMMENT '',
  PRIMARY KEY (`SyncId`)  COMMENT '');

  
  ALTER TABLE `forex_trade_copier`.`sync` 
ADD INDEX `FkUserSyncUserId_idx` (`UserId` ASC)  COMMENT '';
ALTER TABLE `forex_trade_copier`.`sync` 
ADD CONSTRAINT `FkUserSyncUserId`
  FOREIGN KEY (`UserId`)
  REFERENCES `forex_trade_copier`.`users` (`userid`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

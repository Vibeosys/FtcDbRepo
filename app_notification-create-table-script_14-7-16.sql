CREATE TABLE `forex_trade_copier`.`app_notification` (
  `NoteId` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `SendBy` INT NOT NULL COMMENT '',
  `NoteTitle` VARCHAR(100) NULL COMMENT '',
  `NoteText` TEXT NULL COMMENT '',
  `NoOfRecipients` INT NULL COMMENT '',
  `SendDate` DATETIME NULL COMMENT '',
  PRIMARY KEY (`NoteId`)  COMMENT '');

ALTER TABLE `forex_trade_copier`.`app_notification` 
ADD INDEX `UserAppNoteUserId_idx` (`SendBy` ASC)  COMMENT '';
ALTER TABLE `forex_trade_copier`.`app_notification` 
ADD CONSTRAINT `UserAppNoteUserId`
  FOREIGN KEY (`SendBy`)
  REFERENCES `forex_trade_copier`.`users` (`userid`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

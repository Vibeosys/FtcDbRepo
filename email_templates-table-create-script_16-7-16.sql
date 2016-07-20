CREATE TABLE `forex_trade_copier`.`email_templates` (
  `TemplateId` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `TemplateName` VARCHAR(45) NULL COMMENT '',
  `TemplateBody` TEXT NULL COMMENT '',
  `CreatedDate` DATETIME NULL COMMENT '',
  `Active` INT NULL COMMENT '',
  PRIMARY KEY (`TemplateId`)  COMMENT '');

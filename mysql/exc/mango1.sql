use kbook;

desc infrcodegroup;
alter table kbmemberphone add kbmpNumberFull int after kbmpTelecomCd;

CREATE TABLE IF NOT EXISTS `infrAuthorCode` (
  `ifacSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifacSeqAnother` VARCHAR(50) NULL,
  `ifacName` VARCHAR(50) NOT NULL,
  `ifacNameEng` VARCHAR(50) NULL,
  `ifacNameLang1` VARCHAR(50) NULL COMMENT '다국어',
  `ifacNameLang2` VARCHAR(50) NULL,
  `ifacNameLang3` VARCHAR(50) NULL,
  `ifacNameLang4` VARCHAR(50) NULL,
  `ifacNameLang5` VARCHAR(50) NULL,
  `ifacUseNy` TINYINT NULL COMMENT '이 코드를 사용하는지 안하는지',
  `ifacOrder` TINYINT NULL,
  `ifacReferenceV1` VARCHAR(50) NULL,
  `ifacReferenceV2` VARCHAR(50) NULL,
  `ifacReferenceV3` VARCHAR(50) NULL,
  `ifacReferenceI1` INT NULL,
  `ifacReferenceI2` INT NULL,
  `ifacReferenceI3` INT NULL,
  `ifacDesc` VARCHAR(255) NULL,
  `ifacDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `ifcgSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifacSeq`, `ifcgSeq`),
  INDEX `fk_infrCode_infrCodeGroup_idx` (`ifcgSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrCode_infrCodeGroup0`
    FOREIGN KEY (`ifcgSeq`)
    REFERENCES `infrCodeGroup` (`ifcgSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

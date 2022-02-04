use world;

CREATE TABLE IF NOT EXISTS `world`.`infrMember` (
  `ifrmmSeq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `adminNy` TINYINT NULL COMMENT '1. 사용자\n2. 관리자',
  `sleepNy` TINYINT NULL,
  `name` VARCHAR(45) NULL,
  `id` VARCHAR(45) NULL,
  `password` VARCHAR(100) NULL,
  `pwdmoddate` DATETIME NULL,
  `dob` DATE NULL,
  `genderCd` TINYINT NULL,
  `emailmarketing` TINYINT NULL COMMENT '1.동의\n2.비동의',
  `smsmarketing` TINYINT NULL,
  `pushmarketing` TINYINT NULL,
  `period_personalinfoCd` TINYINT NULL,
  `pwdquestionCd` INT NULL,
  `pwdanswer` VARCHAR(45) NULL,
  `recommender` INT NULL,
  `jobCd` TINYINT NULL,
  `marriageCd` TINYINT NULL,
  `marriagedate` DATE NULL,
  `childrenCd` TINYINT NULL,
  `color` VARCHAR(45) NULL,
  `introduce` VARCHAR(255) NULL,
  `regIp` VARCHAR(45) NULL,
  `regDevice` VARCHAR(45) NULL,
  `regClientDateTime` DATETIME NULL,
  `regSvrDateTime` DATETIME NULL,
  `modIp` VARCHAR(45) NULL,
  `modDevice` VARCHAR(45) NULL,
  `modClientDateTime` DATETIME NULL,
  `modCSvrDateTime` DATETIME NULL,
  PRIMARY KEY (`ifrmmSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
COMMENT = '멤버';

CREATE TABLE IF NOT EXISTS `world`.`infrCodeGroup` (
  `ifrcgSeq` VARCHAR(50) NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`ifrcgSeq`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `world`.`infrCode` (
  `ifrcodeSeq` VARCHAR(50) NOT NULL,
  `name` VARCHAR(45) NULL,
  `ifrcgSeq` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`ifrcgSeq`, `ifrcodeSeq`),
  CONSTRAINT `fk_infrcode_infrCodeGroup1`
    FOREIGN KEY (`ifrcgSeq`)
    REFERENCES `world`.`infrCodeGroup` (`ifrcgSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


insert into infrCodeGroup(
	ifrcgSeq
    ,name
) values (
	'infra005'
    ,'번호용도'
);

insert into infrCode(
	ifrcodeSeq
    ,name
    ,ifrcgSeq
)values (
	'1'
    ,'개인용'
	,'infra005'
);

update infrcode  set name='회사' where ifrcgSeq='infra010' and name='사무실'; 
delete from infrcode where ifrcodeSeq='1' and ifrcgSeq='infra001';
select * from infrcode;
select * from infrCodeGroup;
desc infrmember;


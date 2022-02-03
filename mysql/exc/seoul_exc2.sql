use world;

CREATE TABLE IF NOT EXISTS `world`.`infrMemberEmail` (
  `ifrmeSeq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `defaultNy` INT NULL,
  `emailtypeCd` TINYINT NULL COMMENT '1. 개인용\n2. 사무용',
  `emailaccount` VARCHAR(100) NULL,
  `emaildomainCd` TINYINT NULL,
  `emaildomain` VARCHAR(100) NULL,
  `regIp` VARCHAR(45) NULL,
  `regDevice` VARCHAR(45) NULL,
  `regClientDateTime` DATETIME NULL,
  `regSvrTime` DATETIME NULL,
  `modIp` VARCHAR(45) NULL,
  `modDevice` VARCHAR(45) NULL,
  `modClientDateTime` DATETIME NULL,
  `modSvrDateTime` DATETIME NULL,
  `ifmmSeq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifrmeSeq`),
  INDEX `fk_infrEmail_infrMember1_idx` (`ifmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrEmail_infrMember1`
    FOREIGN KEY (`ifmmSeq`)
    REFERENCES `world`.`infrMember` (`ifrmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `world`.`infrMemberPhone` (
  `ifrmpSeq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `defaultNy` INT NULL COMMENT '대표번호',
  `phonetypeCd` TINYINT NULL COMMENT '1. 개인용\n2. 사무용',
  `devicetypeCd` TINYINT NULL COMMENT '1.모바일 2.집 3.팩스',
  `mcompanyCd` TINYINT NULL,
  `phoneNumber` INT NULL,
  `regIp` VARCHAR(45) NULL,
  `regDevice` VARCHAR(45) NULL,
  `regClientDateTime` DATETIME NULL,
  `regSvrDateTime` DATETIME NULL,
  `modIp` VARCHAR(45) NULL,
  `modDevice` VARCHAR(45) NULL,
  `modClientDateTime` DATETIME NULL,
  `modSvrDateTime` DATETIME NULL,
  `ifrmmSeq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifrmpSeq`),
  INDEX `fk_infrMemberPhone_infrMember1_idx` (`ifrmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberPhone_infrMember1`
    FOREIGN KEY (`ifrmmSeq`)
    REFERENCES `world`.`infrMember` (`ifrmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `world`.`infrMemberSns` (
  `ifrmsSeq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `defaultNy` INT NULL,
  `snstypeCd` TINYINT NULL COMMENT '1. sns\n2. site\n',
  `snsCd` TINYINT NULL COMMENT '1. insta\n2. face\n3.twitter\n4.kakao',
  `url` VARCHAR(100) NULL,
  `regIp` VARCHAR(45) NULL,
  `regDevice` VARCHAR(45) NULL,
  `regClientDateTime` DATETIME NULL,
  `regSvrDateTime` DATETIME NULL,
  `modIp` VARCHAR(45) NULL,
  `modDevice` VARCHAR(45) NULL,
  `modClientDateTime` DATETIME NULL,
  `modSvrDateTime` DATETIME NULL,
  `ifrmmSeq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifrmsSeq`),
  INDEX `fk_infrSnsHp_infrMember1_idx` (`ifrmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrSnsHp_infrMember1`
    FOREIGN KEY (`ifrmmSeq`)
    REFERENCES `world`.`infrMember` (`ifrmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `world`.`infrMemberHobby` (
  `ifrmhSeq` INT NOT NULL,
  `hobbyCd` TINYINT NULL,
  `hobby` VARCHAR(45) NULL,
  `ifrmmSeq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifrmhSeq`),
  INDEX `fk_hobby_infrMember1_idx` (`ifrmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_hobby_infrMember1`
    FOREIGN KEY (`ifrmmSeq`)
    REFERENCES `world`.`infrMember` (`ifrmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `world`.`infrMemberNationality` (
  `ifrmnSeq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `defaultNy` INT NULL,
  `nationalityCd` TINYINT NULL COMMENT '1. 대한민국\n2. 미국\n3. 일본\n4. 중국\n5. 영국\n6. 태국\n7. 브라질\n8. 독일\n9. 헝가리\n10. 그 외',
  `regIp` VARCHAR(45) NULL,
  `regDevice` VARCHAR(45) NULL,
  `regClientDateTime` DATETIME NULL,
  `regSvrDatetime` DATETIME NULL,
  `modIp` VARCHAR(45) NULL,
  `modDevice` VARCHAR(45) NULL,
  `modClientDateTime` DATETIME NULL,
  `modSvrDatetime` DATETIME NULL,
  `ifrmmSeq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifrmnSeq`),
  INDEX `fk_infrnationality_infrMember1_idx` (`ifrmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrnationality_infrMember1`
    FOREIGN KEY (`ifrmmSeq`)
    REFERENCES `world`.`infrMember` (`ifrmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `world`.`infrMemberAddress` (
  `ifrmaSeq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `defaultNy` INT NULL,
  `addresstypeCd` TINYINT NULL COMMENT '1. 집\n2. 사무실',
  `title` VARCHAR(45) NULL,
  `zipcode` TINYINT NULL,
  `address1` VARCHAR(100) NULL,
  `address2` VARCHAR(100) NULL COMMENT '상세주소',
  `regIp` VARCHAR(45) NULL,
  `regDevice` VARCHAR(45) NULL,
  `regClientDateTime` DATETIME NULL,
  `regSvrDateTime` DATETIME NULL,
  `modIp` VARCHAR(45) NULL,
  `modDevice` VARCHAR(45) NULL,
  `modClientDateTime` DATETIME NULL,
  `modSvrDateTime` DATETIME NULL,
  `ifrmmSeq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifrmaSeq`),
  INDEX `fk_infrMemberAddress_infrMember1_idx` (`ifrmmSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrMemberAddress_infrMember1`
    FOREIGN KEY (`ifrmmSeq`)
    REFERENCES `world`.`infrMember` (`ifrmmSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

select * from infrcode;
select * from infrcodeGroup;

insert into infrmember(
	adminNy
    ,sleepNy
    ,name
    ,id
    ,password
    ,dob
    ,genderCd
    ,emailmarketing
    ,smsmarketing
    ,pushmarketing
    ,period_personalinfoCd
    ,pwdquestionCd
    ,pwdanswer
    ,jobCd
    ,marriageCd
    ,childrenCd
    ,color
    ,introduce

) values(
	1
    ,1
    ,'윤수빈'
    ,'asd123'
    ,'1111'
    ,'2020-12-12'
    ,2
    ,1
    ,1
    ,1
    ,5
    ,1
    ,'집'
    ,1
    ,2
    ,2
    ,'#ffffff'
    ,'안녕하세요'
  
    
);

select 
	a.ifrmmSeq
    ,a.name
    ,a.id
   infrmember



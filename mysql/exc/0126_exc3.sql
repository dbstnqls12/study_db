use world;

CREATE TABLE IF NOT EXISTS `world`.`book5` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `world`.`review5` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment` VARCHAR(45) NULL,
  `book4_copy1_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`, `book4_copy1_no`),
  INDEX `fk_review2_book4_copy11_idx` (`book4_copy1_no` ASC) VISIBLE,
  CONSTRAINT `fk_review2_book4_copy11`
    FOREIGN KEY (`book4_copy1_no`)
    REFERENCES `world`.`book5` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

desc review5;

insert into review5(
	comment
    ,book4_copy1_no
) values (
	'와너무재밌다'
    ,3
);

-- 점선 : nonidentifing
-- 실선 : identifing

select * from book5;
select * from review5;

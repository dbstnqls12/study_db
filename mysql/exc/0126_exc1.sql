use world;

CREATE TABLE IF NOT EXISTS `book3` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `publisher_cd` INT NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `publisher` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;

insert into book3(
	name
    
) values (
	'프로그래밍'
);

insert into publisher(
	name
) values (
	'한빛미디어'
);

update book3
set publisher_cd=2
where seq=2;

select * from book3;
select * from publisher;

select
	a.seq
	,a.name
	,a.publisher_cd
	,b.seq
	,b.name
from book3 as a
left join publisher as b on b.seq = a.publisher_cd;    

select
	a.seq
	,a.name
	,a.publisher_cd
	,(select name from publisher where seq=a.publisher_cd)
from book3 as a;

select
	a.seq
	,a.name
	,a.publisher_cd
    ,(select name from publisher where seq = a.publisher_cd) as publisher_name;
    
select
	a.seq
	,a.name
	,a.publisher_cd
	,getPublisherName -- 함수
from book3 as a;  
   
   
select
	a.seq
	,a.name
	,a.publisher_cd
	,b.seq
	,b.name
from book3 as a  -- 마스터
-- left join publisher as b on b.seq = a.publisher_cd; 
inner join publisher as b on b.seq = a.publisher_cd;   

    
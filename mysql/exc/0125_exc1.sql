CREATE TABLE IF NOT EXISTS `test` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`)
  );

insert into test (
	seq
	,name
) values (
	5
    ,'mango'
);

select * from test;

-- unique, priamry kry, foreign key : 유일한 데이터
-- pk: primary key : 중복되는 데이토는 불허
-- nn: not null : null값을 허용하지 않는다. 데이터가 무조건 들어와야 한다
-- uq: unique : 중복되는 데이터는 불허
-- un: unsigned : 양수만
-- -128		0		127 : 0 ~255
-- -2146483648		0		2146483648
-- zf: zerofill : 5.7(5,2) -> 00005.7
-- ai: auto increment : 자동증가
-- g: auto increment의 다른 형태





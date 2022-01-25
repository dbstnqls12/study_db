CREATE TABLE `test2` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `seq2` INT NOT NULL,
  `seq3` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`seq`, `seq2`, `seq3`))
;

insert into test2 (
	seq2
    ,seq3
	,name
) values (
	1
    ,1
    ,'subin'
);

select * from test2;

insert into test2 (
	seq
	,seq2
    ,seq3
	,name
) values (
	1
	,1
    ,1
    ,'subin'
);

-- Error Code: 1062. Duplicate entry '1-1-1' for key 'test2.PRIMARY'


select * from test2;

-- 테이블 수정
-- 컬럼 추가
alter table test add tel varchar(50);

-- 컬럼 삭제
alter table test drop tel;

-- 컬럼 타입 변경
alter table test modify tel int;
-- alter table test modify tel varchar(20);
desc test;

-- 컬럼 이름 변경
alter table test change tel tele int;
-- alter table test change tele tel int;

desc test;

insert into test (
	name
	,tel
) values (
	'subin'
	,1111
);

select * from test;



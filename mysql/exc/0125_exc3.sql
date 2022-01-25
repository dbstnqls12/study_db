select * from test2;

-- 테이블 수정

-- 컬럼 추가
alter table test add tel varchar(50);
desc test;

-- 컬럼 삭제
alter table test drop tel;

-- 컬럼 타입 변경
alter table test modify tel int;
-- alter table test modify tel varchar(20);
desc test;

-- 컬럼 이름 변경
alter table test change tel tele int;
-- alter table test change tele tel int;

-- describe : 테이블 구조보기
desc test;

insert into test (
	name
	,tel
) values (
	'subin'
	,1111
);

select * from test;

-- DDL: db, table :관리자, 선임
-- DML: data : 후임들

-- 데이터 수정
update test set
	name = 'mango'
where
	seq = 3;

-- 데이터 삭제
delete from test
where    
	seq = 4;
    
-- 전체 데이터 삭제
truncate test;

insert into test (
	name
    ,tel
) values (
    'city'
    ,1123
);

insert into test (
	name
    ,tel
) values (
    'mango'
    ,2222
);

update test set
	name='mango'
where 1=1
	and seq=2;
    
delete from test
where 1=1
	and seq =1;

select * from test;    
    
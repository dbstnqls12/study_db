use world;

create table cafe (
	name varchar(100),
    tablecount int,
    chaircount int,
    address varchar(100),
    place varchar(100),
    ceo varchar(100)
);

drop table cafe;

create table cafe (
	seq int,
	name varchar(100),
    tablecount int,
    chaircount int,
    address varchar(100),
    location int,
    ceo varchar(45)
);

-- 데이터 입력
insert into cafe (
	seq
	,name
	,tablecount
	,chaircount
	,address
	,location
	,ceo
) values (
	1
    ,'별다방'
    ,1
    ,2
    ,'서울시어쩌구'
    ,1
    ,'장동건'
);

-- varchar는 ' 또는 "로 감싼다.
-- int는 그냥 써도됨
-- 컴마는 앞쪽을 선호

-- 데이터 조회
select * from cafe;

insert into cafe (
	seq
	,name
	,tablecount
	,chaircount
	,address
	,location
	,ceo
) values (
	1
    ,'별다방'
    ,1
    ,2
    ,'서울시어쩌구'
    ,1
    ,'장동건'
);

select * from cafe;

insert into cafe (
	seq
	,name
	,tablecount
	,chaircount
	,address
	,location
	,ceo
) values (
	1
    ,'별다방'
    ,1
    ,2
    ,'서울시어쩌구'
    ,1
    ,'장동건'
);

-- primary key : 유일한 데이터
drop table cafe;

select * from cafe;



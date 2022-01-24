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

-- primary key : 유일한 데이터, 같은 값을 가질 수 없다
insert into cafe (
	seq
	,name
	,tablecount
	,chaircount
	,address
	,location
	,ceo
) values (
	2
    ,'할리스'
    ,2
    ,4
    ,'경기도어쩌구'
    ,2
    ,'송중기'
);

insert into cafe (
	seq
	,name
	,tablecount
	,chaircount
	,address
	,location
	,ceo
) values (
	3
    ,'이디야'
    ,3
    ,3
    ,'강원도어쩌구'
    ,3
    ,'윤망고'
);

insert into cafe (
	seq
	,name
	,tablecount
	,chaircount
	,address
	,location
	,ceo
) values (
	4
    ,'동네카페'
    ,4
    ,4
    ,'충청도어쩌구'
    ,4
    ,'바나나'
);

insert into cafe (
	seq
	,name
	,tablecount
	,chaircount
	,address
	,location
	,ceo
) values (
	5
    ,'탐탐'
    ,5
    ,5
    ,'제주도어쩌구'
    ,5
    ,'김시티'
);

insert into cafe (
	seq
	,name
	,tablecount
	,chaircount
	,address
	,location
	,ceo
) values (
	6
    ,'투썸'
    ,6
    ,6
    ,'인천어쩌구'
    ,6
    ,'고소영'
);

insert into cafe (
	seq
	,name
	,tablecount
	,chaircount
	,address
	,location
	,ceo
) values (
	7
    ,'공차'
    ,7
    ,7
    ,'부산어쩌구'
    ,7
    ,'전지현'
);

insert into cafe (
	seq
	,name
	,tablecount
	,chaircount
	,address
	,location
	,ceo
) values (
	8
    ,'집앞카페'
    ,3
    ,4
    ,'서울시어쩌구'
    ,1
    ,'백종원'
);

insert into cafe (
	seq
	,name
	,tablecount
	,chaircount
	,address
	,location
	,ceo
) values (
	9
    ,'빽다방'
    ,5
    ,5
    ,'전라도어쩌구'
    ,8
    ,'이효리'
);

insert into cafe (
	seq
	,name
	,tablecount
	,chaircount
	,address
	,location
	,ceo
) values (
	10
    ,'블루보틀'
    ,4
    ,4
    ,'경기도어쩌구'
    ,2
    ,'김파랑'
);

select * from cafe;

select * from cafe where seq = 3;
select * from cafe where location = 5;
select * from cafe where name = '블루보틀';

select * from cafe where name = '블루보틀' and tablecount=1;
select * from cafe where name = '블루보틀' and tablecount = 1;
select * from cafe where name = '별다방' and chaircount=3;
select * from cafe where name = '별다방' or chaircount =3 ;
select * from cafe where chaircount = 2 or ceo = '윤망고';
select * from cafe where tablecount = 3 and name = '이디야';
select * from cafe where location = 1 or location =3;
select * from cafe where chaircount = 4 or tablecount =2;
select * from cafe where seq = 7;
select * from cafe where address = '전라도어쩌구' or ceo='송중기';

select * from cafe where location > 4;
select * from cafe where location < 4;
select * from cafe where location <= 4;
select * from cafe where location >= 4;
select * from cafe where location <> 4;

select * from cafe where name like '%네카%'; 
select * from cafe where name like '동%';
select * from cafe where name like '%페';
select * from cafe where name like '%페' and location <> 1;
select * from cafe where name like '%페' or location <> 1;
select * from cafe where name like '%방%';
select * from cafe where ceo like '%고%';


 



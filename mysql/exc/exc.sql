use world;

show tables;

 -- 테이블 생성
create table member2 (
	seq int,
    name varchar(100),
    id varchar(100),
    regdate datetime
);

create table member (
	seq int,
    name varchar(100),
    id varchar(100),
    regdate datetime
);

-- 테이블삭제

drop table member2;
drop table member;

-- 테이블생성
create table book (
	seq int,
	bookname varchar(100),
    publisher varchar(100),
    writer varchar(100),
    price int
);

drop table book;
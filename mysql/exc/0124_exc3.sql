create table book2 (
	seq int,
    title varchar(100),
    subtitle varchar(100),
    writer varchar(45),
    publisher varchar(45),
    publishing_date datetime,
    field int,
    edition int, 
    isbn int,
    price int,
    discount_rate int,
    ebook_price int,
    page int
);

drop table book2;

create table book2 (
	seq int,
    title varchar(100),
    subtitle varchar(100),
    writer varchar(45),
    publisher varchar(45),
    publishing_date datetime,
    field int,
    edition int, 
    isbn int,
    price int,
    discount_rate int,
    ebook_price int,
    page_num int
);

desc book2;

create table practice_room (
	seq int, 
    explanation varchar(400),
    space_type int,
    rental_time int,
    people_num int,
    price int,
    chaircount int,
    tablecount int,
    mirror int,
    innertoilet int,
    smoking int,
    public_lounge int,
    shower int,
    speaker int,
    wifi int
);

desc practice_room;

drop table book2;
drop table practice_room;

create table book2 (
	seq int,
    title varchar(100),
    subtitle varchar(100),
    image varchar(100),
    writer varchar(45),
    publisher varchar(45),
    publishing_date datetime,
    field int,
    edition int, 
    isbn int,
    price int,
    discount_rate int,
    ebook_price int,
    page_num int
);

create table practice_room (
	seq int, 
    image varchar(100),
    explanation varchar(400),
    space_type int,
    rental_time int,
    people_num int,
    price int,
    chaircount int,
    tablecount int,
    mirror int,
    innertoilet int,
    smoking int,
    public_lounge int,
    shower int,
    speaker int,
    wifi int
);







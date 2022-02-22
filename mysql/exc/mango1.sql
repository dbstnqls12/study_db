use kbook;

desc infrcodegroup;
alter table kbmemberphone add kbmpNumberFull int after kbmpTelecomCd;

INSERT INTO `kbook`.`infrcodegroup`
(
`ifcgName`,
`ifcgUseNy`,
`ifcgOrder`,
`ifcgDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
"회원전화.앞번호",
1,
11,
0,
now(),
now(),
now(),
now());

select * from infrcodegroup;
INSERT INTO `nct`.`infrcodegroup`
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
'회원보안질문.구분',
1,
14,
0,
now(),
now(),
now(),
now()
);

update infrcodegroup
set ifcgDelNy = 1
where ifcgSeq > 10;



INSERT INTO `nct`.`infrcode`
(
`ifcdName`,
`ifcdUseNy`,
`ifcdOrder`,
`ifcdDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifcgSeq`)
VALUES
(
'나의비밀',
1,
5,
0,
now(),
now(),
now(),
now(),
14);

select * from infrcode;
select * from infrcodeGroup;

select 
	a.ifcgSeq
	,a.ifcgName
	,b.ifcdSeq
	,b.ifcdName
	,b.ifcdOrder
from infrCodeGroup a 
left join infrCode b on b.ifcgSeq = a.ifcgSeq
order by a.ifcgSeq, b.ifcdOrder; 

update infrcode set ifcdName='나의가장친한친구' where ifcgSeq=14 and ifcdOrder=5; 



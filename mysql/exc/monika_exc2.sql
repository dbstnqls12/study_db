use nct;
select * from infrmember;

select 
	a.ifcgSeq
	,a.ifcgName
	,b.ifcdSeq
	,b.ifcdName
	,b.ifcdOrder
from infrCodeGroup a 
left join infrCode b on b.ifcgSeq = a.ifcgSeq
order by a.ifcgSeq, b.ifcdOrder; 

alter table infrmember modify ifmmMarriageCd tinyint;
desc infrmember;

INSERT INTO `nct`.`infrauth`
(
`ifatAdminNy`,
`ifatName`,
`ifatUseNy`,
`ifatOrder`,
`ifatDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
1,
'김관리',
1,
1,
0,
now(),
now(),
now(),
now());

INSERT INTO `nct`.`infrauthmember`
(
`ifamUseNy`,
`ifamOrder`,
`ifamDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifatSeq`,
`ifmmSeq`)
VALUES
(
0,
1,
0,
now(),
now(),
now(),
now(),
1,
3);
;

INSERT INTO `nct`.`infrmenu`
(
`ifmuAdminNy`,
`ifmuName`,
`ifmuDepth`,
`ifmuUseNy`,
`ifmuOrder`,
`ifmuDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
1,
'김관리',
1,
0,
1,
0,
now(),
now(),
now(),
now());

INSERT INTO `nct`.`infrauthmenu`
(
`ifauRoleCd`,
`ifauUseNy`,
`ifauOrder`,
`ifauDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifatSeq`,
`ifmuSeq`)
VALUES
(
1,
0,
1,
0,
now(),
now(),
now(),
now(),
1,
1);

select * from infrauth;



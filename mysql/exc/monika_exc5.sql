use nct;

INSERT INTO `nct`.`infrauth`
(`ifatSeq`,
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
(3,
1,
'회원관리자',
1,
3,
0,
now(),
now(),
now(),
now());

select * from infrauth;

INSERT INTO `nct`.`infrmenu`
(
`ifmuSeq`,
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
(11,
1,
'테스트관리',
1,
1,
11,
0,
now(),
now(),
now(),
now());

select * from infrmenu;

INSERT INTO `nct`.`infrauthmenu`
(`ifauSeq`,
`ifauRoleCd`,
`ifauUseNy`,
`ifauDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifatSeq`,
`ifmuSeq`)
VALUES
(15,
1,
1,
0,
now(),
now(),
now(),
now(),
3,
2);

select * from infrauthmenu;
select * from infrauthmember;

INSERT INTO `nct`.`infrauthmember`
(`ifamSeq`,
`ifamDefaultNy`,
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
(1,
1,
1,
1,
0,
now(),
now(),
now(),
now(),
1,
3);

select * from infrauth;
select * from infrmenu; 
select * from infrauthmenu;
select * from infrauthmember;

select 
	a.ifatSeq
    ,(select ifatName from infrauth where ifatSeq = a.ifatSeq) as ifatName
    ,a.ifmuSeq
    ,(select ifmuName from infrmenu where ifmuSeq = a.ifmuSeq) as ifmuName
    ,(select ifauRoleCd from infrauthmenu where ifauSeq = a.ifauSeq) as ifauRoleCd
    ,(select ifcdName from infrcode where ifcgSeq =1 and ifcdOrder = a.ifauRoleCd)  as ifauRoleName
from infrauthmenu a 
	where a.ifatSeq =2
;    

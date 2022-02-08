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

select * from infrnationality;

INSERT INTO `nct`.`infrnationality`
(
`ifnaName`,
`ifnaCode2Char`,
`ifnaCode3Char`,
`ifnaUseNy`,
`ifnaOrder`,
`ifnaDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
'미국',
'US',
'USA',
1,
2,
0,
now(),
now());

INSERT INTO `nct`.`infrmember`
(
`ifmmAdminNy`,
`ifmmDormancyNy`,
`ifmmName`,
`ifmmId`,
`ifmmPassword`,
`ifmmGenderCd`,
`ifmmDob`,
`ifmmSavedCd`,
`ifmmMarriageCd`,
`ifmmFavoriteColor`,
`ifmmEmailConsentNy`,
`ifmmSmsConsentNy`,
`ifmmPushConsentNy`,
`ifmmDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
1,
0,
'김관리',
'admin123',
'1111',
1,
'1999-12-12',
5,
1,
'#eeeeee',
0,
0,
0,
0,
now(),
now(),
now(),
now());

select * from infrmemberemail;

INSERT INTO `nct`.`infrmemberemail`
(
`ifmeDefaultNy`,
`ifmeTypeCd`,
`ifmeEmailFull`,
`ifmeEmailAccount`,
`ifmeEmailDomain`,
`ifmeEmailDomainCd`,
`ifmeDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmmSeq`)
VALUES
(
0,
2,
'asd123@daum.net',
'asd123',
'daum.net',
2,
0,
now(),
now(),
now(),
now(),
1);

select * from infrmemberemail; 

INSERT INTO `nct`.`infrmemberphone`
(
`ifmpDefaultNy`,
`ifmpTypeCd`,
`ifmpDeviceCd`,
`ifmpTelecomCd`,
`ifmpNumber`,
`ifmpDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmmSeq`)
VALUES
(
1,
2,
1,
1,
'023881231',
0,
now(),
now(),
now(),
now(),
1);

select * from infrmemberphone;

INSERT INTO `nct`.`infrmemberaddressonline`
(
`ifaoTypeCd`,
`ifaoDefaultNy`,
`ifaoSnsTypeCd`,
`ifaoUrl`,
`ifaoTitle`,
`ifaoDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmmSeq`)
VALUES
(
2,
1,
3,
'asd123',
'홍보용',
0,
now(),
now(),
now(),
now(),
1);

INSERT INTO `nct`.`infrmemberjoinqna`
(
`ifjqQuestionCd`,
`ifjqAnswer`,
`ifjqDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmmSeq`)
VALUES
(
3,
'연신내',
0,
now(),
now(),
now(),
now(),
1);

INSERT INTO `nct`.`infrmemberhobby`
(
`ifmhHobbyCd`,
`ifnhUseNy`,
`ifmhOrder`,
`ifmhDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmmSeq`)
VALUES
(
3,
1,
2,
0,
now(),
now(),
now(),
now(),
1);

INSERT INTO `nct`.`infrmemberaddress`
(
`ifmaDefaultNy`,
`ifmaTypeCd`,
`ifmaTitle`,
`ifmaAddress1`,
`ifmaAddress2`,
`ifmaZipcode`,
`ifmaDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmmSeq`)
VALUES
(
0,
2,
'회사',
'경기도',
'뭔빌딩 101호',
'03335',
0,
now(),
now(),
now(),
now(),
1);

select * from infrmemberaddress;

INSERT INTO `nct`.`infrmembernationality`
(
`ifmnDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifmmSeq`,
`ifnaSeq`)
VALUES
(
0,
now(),
now(),
now(),
now(),
1,
1);
















select * from infrmember;
select * from infrcode;

update infrcode set ifcdOrder=6 where ifcgSeq=3 and ifcdOrder=5;

use nct;
select 
	a.ifcgSeq
	,a.ifcgName
	,b.ifcdSeq
	,b.ifcdName
	,b.ifcdOrder
    ,b.ifcdUseNy
    ,b.ifcdDelNy
from infrCodeGroup a 
left join infrCode b on b.ifcgSeq = a.ifcgSeq
where 1=1
	and a.ifcgDelNy = 0
	and a.ifcgUseNy = 1
    and b.ifcdDelNy = 0
    and b.ifcdUseNy = 1
order by
	a.ifcgSeq asc
    -- a.ifcgSeq desc
    , b.ifcdOrder
    -- , b.ifcdOrder desc 
;
desc infrcodegroup;
select * from infrcodegroup;
select * from infrmember;
select * from infrmembernationality;
select * from infrnationality;


select
	a.ifmmSeq
    ,a.ifmmAdminNy
    ,a.ifmmDormancyNy
	,a.ifmmName
    ,a.ifmmId
    ,a.ifmmDob
    ,a.ifmmGenderCd
    ,(select b.ifcdName from infrcode as b where b.ifcdSeq = a.ifmmGenderCd) as ifmmGender
    ,i.ifnaSeq
	,(select h.ifnaName from infrnationality as h where h.ifnaSeq = i.ifnaSeq) as ifmmnationality 
    ,c.ifmpTelecomCd
    ,(select b.ifcdName from infrcode as b where b.ifcgSeq = 9 and b.ifcdOrder = c.ifmpTelecomCd) as ifmpTelecom
    ,c.ifmpNumber 
    ,concat(substring(c.ifmpNumber,1,3),"-",substring(c.ifmpNumber,4,4),"-",substring(c.ifmpNumber,7,4)) as ifmpNamewithDash
    ,d.ifmaTitle 
    ,d.ifmaAddress1 as ifmaAddress
    ,e.ifmeTypeCd
	,(select b.ifcdName from infrcode as b where b.ifcgSeq = 5 and b.ifcdOrder = e.ifmeTypeCd) as ifmeEmailType
	,e.ifmeEmailFull
    ,f.ifaoTypeCd
    ,(select b.ifcdName from infrcode as b where b.ifcgSeq = 10 and b.ifcdOrder = f.ifaoTypeCd) as ifaoType
    ,f.ifaoSnsTypeCd
    ,(select b.ifcdName from infrcode as b where b.ifcgSeq = 11 and b.ifcdOrder = f.ifaoSnsTypeCd) as ifaoSnsTypeCd 
    ,f.ifaoUrl 
	-- ,(select b.ifcdName from infrcode as b where b.ifcgSeq = 12 and b.ifcdOrder = g.ifmhHobbyCd) as 취미
    ,a.ifmmMarriageCd
    ,(select b.ifcdName from infrcode as b where b.ifcdSeq = a.ifmmMarriageCd) as ifmmMarriage
    ,a.ifmmChildrenNum
    ,a.ifmmSavedCd
	,(select b.ifcdName from infrcode as b where b.ifcdSeq = a.ifmmSavedCd) as ifmmSavedCd
    ,j.ifjqQuestionCd
	,(select b.ifcdName from infrcode as b where b.ifcgSeq = 14 and b.ifcdOrder = j.ifjqQuestionCd) as ifjqQuestion 
    ,j.ifjqAnswer
	-- ifnull(c.ifaoSnsTypeCd,"-") as ifaoSnsTypeCdNullCheck
    -- 
from infrmember a
	left join infrmemberphone c on c.ifmmSeq = a.ifmmSeq
	left join infrmemberaddress d on d.ifmmSeq = a.ifmmSeq 
	left join infrmemberemail e on e.ifmmSeq = a.ifmmSeq
	left join infrmemberaddressonline f on f.ifmmSeq = a.ifmmSeq
    -- left join infrmemberhobby g on g.ifmmSeq = a.ifmmSeq 
    left join infrmembernationality i on i.ifmmSeq = a.ifmmSeq 
    left join infrmemberjoinqna j on j.ifmmSeq = a.ifmmSeq
where
	c.ifmpDefaultNy =0
    and d.ifmaDefaultNy=0
	and e.ifmeDefaultNy=0
    and f.ifaoDefaultNy=1
    and j.ifjqDelNy=0
    
   -- and a.ifmmId like '%xd%' --속도가 오래걸림
;

select * from infrmember;

select * from infrmemberaddress;
select * from infrmember;
select * from infrmember;
select * from infrmember;
select * from infrmember;



select concat('a','-','b');
update infrmemberjoinqna set ifjqDelNy=1 where ifjqSeq=2;


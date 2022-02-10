select * from infrmember;
select * from infrcode;

update infrcode set ifcdOrder=6 where ifcgSeq=3 and ifcdOrder=5;


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
	,(select h.ifnaName from infrnationality as h where h.ifnaSeq = i.ifnaSeq) as ifmmnationality 
    ,(select b.ifcdName from infrcode as b where b.ifcgSeq = 9 and b.ifcdOrder = c.ifmpTelecomCd) as ifmpTelecom
    ,c.ifmpNumber 
    ,d.ifmaTitle 
    ,d.ifmaAddress1 as ifmaAddress
	,(select b.ifcdName from infrcode as b where b.ifcgSeq = 5 and b.ifcdOrder = e.ifmeTypeCd) as ifmeEmailType
	,e.ifmeEmailFull 
    ,(select b.ifcdName from infrcode as b where b.ifcgSeq = 10 and b.ifcdOrder = f.ifaoTypeCd) as ifaoType
    ,(select b.ifcdName from infrcode as b where b.ifcgSeq = 11 and b.ifcdOrder = f.ifaoSnsTypeCd) as ifaoSnsTypeCd 
    ,f.ifaoUrl 
    -- ,(select b.ifcdName from infrcode as b where b.ifcgSeq = 12 and b.ifcdOrder = g.ifmhHobbyCd) as 취미
    ,(select b.ifcdName from infrcode as b where b.ifcdSeq = a.ifmmMarriageCd) as ifmmMarriage
    ,a.ifmmChildrenNum
	,(select b.ifcdName from infrcode as b where b.ifcdSeq = a.ifmmSavedCd) as ifmmSavedCd
	,(select b.ifcdName from infrcode as b where b.ifcgSeq = 14 and b.ifcdOrder = j.ifjqQuestionCd) as ifjqQuestion 
    ,j.ifjqAnswer
	-- ifnull(c.ifaoSnsTypeCd,"-") as ifaoSnsTypeCdNullCheck
    
from infrmember a
	left join infrmemberphone c on c.ifmmSeq = a.ifmmSeq
	left join infrmemberaddress d on d.ifmmSeq = a.ifmmSeq 
	left join infrmemberemail e on e.ifmmSeq = a.ifmmSeq
	left join infrmemberaddressonline f on f.ifmmSeq = a.ifmmSeq
    -- left join infrmemberhobby g on g.ifmmSeq = a.ifmmSeq
    left join infrmembernationality i on i.ifmmSeq = a.ifmmSeq 
    left join infrmemberjoinqna j on j.ifmmSeq = a.ifmmSeq
where
	a.ifmmSeq=1
    and c.ifmpDefaultNy =0
    and d.ifmaDefaultNy=0
	and e.ifmeDefaultNy=0
    and f.ifaoDefaultNy=1
   -- and g.ifmhDelNy=0
   -- and a.ifmmId like '%xd%'
;
select * from infrmemberjoinqna;
delete from i



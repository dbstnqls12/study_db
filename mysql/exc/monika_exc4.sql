use nct;
select
	a.ifmmSeq
    ,a.ifmmAdminNy
    ,a.ifmmDormancyNy
    ,a.ifmmName
    ,a.ifmmId
    ,a.ifmmPassword
    ,a.ifmmGenderCd
    ,(select b.ifcdName from infrcode b where a.ifmmGenderCd = ifcdSeq) as ifmmGenderCd
	,a.ifmmDob
    ,(select b.ifcdName from infrcode b where b.ifcgSeq = 5 and b.ifcdOrder = c.ifmeTypeCd) as ifmeTypeCd  
    ,c.ifmeEmailFull
    ,(select b.ifcdName from infrcode b where b.ifcgSeq = 7 and b.ifcdOrder = d.ifmpTypeCd) as ifmpTypeCd
    ,(select b.ifcdName from infrcode b where b.ifcgSeq = 8 and b.ifcdOrder = d.ifmpDeviceCd) as ifmpDeviceCd
    ,(select b.ifcdName from infrcode b where b.ifcgSeq = 9 and b.ifcdOrder = d.ifmpTelecomCd) as ifmpTelecom
    ,d.ifmpNumber
    ,concat(substring(d.ifmpNumber,1,3),"-",substring(d.ifmpNumber,4,4),"-",substring(d.ifmpNumber,7,4)) as ifmpNamewithDash
    ,(select b.ifcdName from infrcode b where b.ifcgSeq = 13 and b.ifcdOrder = e.ifmaTypeCd) as ifmaTypeCd
    ,e.ifmaTitle
    ,e.ifmaAddress1
    ,e.ifmaAddress2
    ,(select b.ifcdName from infrcode b where b.ifcdSeq = a.ifmmSavedCd) as ifmmSavedCd
    ,(select b.ifcdName from infrcode b where b.ifcdSeq = a.ifmmMarriageCd) as ifmmMarriageCd
    ,a.ifmmChildrenNum
    ,f.ifaoTitle
    ,(select b.ifcdName from infrcode b where b.ifcgSeq = 10 and b.ifcdOrder = f.ifaoTypeCd) as ifaoTypeCd
    ,(select b.ifcdName from infrcode b where b.ifcgSeq = 11 and b.ifcdOrder = f.ifaoSnsTypeCd) as ifaoSnsTypeCd
    ,f.ifaoUrl
    ,(select b.ifcdName from infrcode b where b.ifcgSeq = 12 and b.ifcdOrder = g.ifmhHobbyCd) as ifmhHobbyCd
    ,(select b.ifcdName from infrcode b where b.ifcgSeq = 14 and b.ifcdOrder = h.ifjqQuestionCd) as ifjqQuestionCd
    ,h.ifjqAnswer
    ,(select j.ifnaName from infrnationality j where j.ifnaSeq = i.ifnaSeq) as infrNationality
    ,a.ifmmEmailConsentNy
    ,a.ifmmSmsConsentNy
    ,a.ifmmPushConsentNy 
from infrmember a
	left join infrmemberemail c on c.ifmmSeq = a.ifmmSeq
    left join infrmemberphone d on d.ifmmSeq = a.ifmmSeq
	left join infrmemberaddress e on e.ifmmSeq = a.ifmmSeq
    left join infrmemberaddressonline f on f.ifmmSeq = a.ifmmSeq
    left join infrmemberhobby g on g.ifmmSeq = a.ifmmSeq
    left join infrmemberjoinqna h on h.ifmmSeq = a.ifmmSeq
    left join infrmembernationality i on i.ifmmSeq = a.ifmmSeq
where
	c.ifmeDefaultNy = 0
	and d.ifmpDefaultNy = 0
	and e.ifmaDefaultNy = 0
    and f.ifaoDefaultNy = 0
    and h.ifjqDelNy = 0
    and i.ifmnDefaultNy = 0
;    

select * from infrmember;


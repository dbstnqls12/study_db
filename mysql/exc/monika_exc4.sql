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
    ,c.ifmeTypeCd
    ,(select b.ifcdName from infrcode b where b.ifcgSeq = 5 and b.ifcdOrder = c.ifmeTypeCd) as ifmeTypeCd  
    ,c.ifmeEmailFull
    ,d.ifmpTypeCd
    ,(select b.ifcdName from infrcode b where b.ifcgSeq = 7 and b.ifcdOrder = d.ifmpTypeCd) as ifmpTypeCd
    ,d.ifmpDeviceCd
    ,(select b.ifcdName from infrcode b where b.ifcgSeq = 8 and b.ifcdOrder = d.ifmpDeviceCd) as ifmpDeviceCd
    ,d.ifmpTelecomCd
    ,(select b.ifcdName from infrcode b where b.ifcgSeq = 9 and b.ifcdOrder = d.ifmpTelecomCd) as ifmpTelecom
    ,d.ifmpNumber
    ,concat(substring(d.ifmpNumber,1,3),"-",substring(d.ifmpNumber,4,4),"-",substring(d.ifmpNumber,7,4)) as ifmpNamewithDash
	,e.ifmaTypeCd
   ,(select b.ifcdName from infrcode b where b.ifcgSeq = 13 and b.ifcdOrder = e.ifmaTypeCd) as ifmaTypeCd
    ,e.ifmaTitle
    ,e.ifmaAddress1
    ,e.ifmaAddress2
    ,a.ifmmSavedCd
    ,(select b.ifcdName from infrcode b where b.ifcdSeq = a.ifmmSavedCd) as ifmmSavedCd
    ,a.ifmmMarriageCd
    ,(select b.ifcdName from infrcode b where b.ifcdSeq = a.ifmmMarriageCd) as ifmmMarriageCd
    ,a.ifmmChildrenNum
    ,f.ifaoTitle
    ,f.ifaoTypeCd
    ,(select b.ifcdName from infrcode b where b.ifcgSeq = 10 and b.ifcdOrder = f.ifaoTypeCd) as ifaoTypeCd
    ,f.ifaoSnsTypeCd
    ,(select b.ifcdName from infrcode b where b.ifcgSeq = 11 and b.ifcdOrder = f.ifaoSnsTypeCd) as ifaoSnsTypeCd
    ,f.ifaoUrl
    ,g.ifmhHobbyCd
    ,(select b.ifcdName from infrcode b where b.ifcgSeq = 12 and b.ifcdOrder = g.ifmhHobbyCd) as ifmhHobbyCd
    ,h.ifjqQuestionCd
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
where 1=1
 	and c.ifmeDefaultNy = 0
 	and d.ifmpDefaultNy = 0
	and e.ifmaDefaultNy = 0
    and f.ifaoDefaultNy = 0
    and h.ifjqDelNy = 0
    and i.ifmnDefaultNy = 0
;    

select * from infrauth;
select * from infrnationality;
use nct;
delete from infrauth where ifatSeq=1 ;

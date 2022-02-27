use kbook;


-- 책 정보 페이지 내용
select 
	a.tditTitle
	,a.tditSubTitle
	,avg((select b.ifcdReferenceI2 from infrcode b where b.ifcgSeq=26 and b.ifcdOrder = c.tditKcloverCd)) as Kclover
	,count(tdirSeq) as reviewcount
	,(select e.ifacName from infrauthorcode e where e.ifacSeq = d.tdatAuthorCd) as tditAuthor
	,(select f.ifpcName from infrpublishercode f where f.ifpcSeq = a.tditPublisherCd) as tditPublisher
    ,a.tditPublishingDate
	,a.tditPrice
    ,(select b.ifcdName from infrcode b where b.ifcgSeq=13 and b.ifcdOrder = a.tditDiscountCd) as tditDisCount
    ,a.tditPrice-(a.tditPrice*(select b.ifcdReferenceI2 from infrcode b where b.ifcgSeq=13 and b.ifcdOrder = a.tditDiscountCd)) as tdirDiscountPrice
	,truncate((a.tditPrice*0.05),-1) as SavintPoint
    ,if(a.tditPrice>=10000, 0, 2000) as DeliveryFee
    ,adddate(curdate(), +2) as DeliveryDate
    ,(select b.ifcdName from infrcode b where ifcgSeq=14 and b.ifcdOrder = a.tditStateCd) as tditStateCd
	,(select b.ifcdName from infrcode b where ifcgSeq=17 and b.ifcdOrder = g.tdriTypeCd) as tdriType
    ,k.tdkwKeyWord
	
    

from tradItem a
	left join traditemreview c on c.tditSeq = a.tditSeq
    left join tradauthor d on d.tditSeq = a.tditSeq
	left join tradrelateditem g on g.tditSeq = a.tditSeq
    left join traditemkeyword k on k.tditSeq = a.tditSeq
where 1=1
--  and g.tdriDelNy=0
;

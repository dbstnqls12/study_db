use kbook;

-- 책 정보 페이지 내용
select
	a.tditSeq
	,a.tditTitle
	,a.tditSubTitle
	,avg((select b.ifcdReferenceI2 from infrcode b where b.ifcgSeq=26 and b.ifcdOrder = c.tditKcloverCd)) -- 리뷰평균
--  ,count(c.tditSeq=1)  -- 리뷰개수
	,(select e.ifacName from infrauthorcode e where e.ifacSeq = d.tdatAuthorCd) as tditAuthor
	,(select f.ifpcName from infrpublishercode f where f.ifpcSeq = a.tditPublisherCd) as tditPublisher
    ,a.tditPublishingDate
	,a.tditPrice
    ,(select b.ifcdName from infrcode b where b.ifcgSeq=13 and b.ifcdOrder = a.tditDiscountCd) as tditDisCount
    ,a.tditPrice-(a.tditPrice*(select b.ifcdReferenceI2 from infrcode b where b.ifcgSeq=13 and b.ifcdOrder = a.tditDiscountCd)) as tdirDiscountPrice
	,truncate((a.tditPrice*0.05),-1) as SavingPoint		-- 기본적립은 첵 가격의 5%
    ,if(a.tditPrice>=10000, 0, 2000) as DeliveryFee		-- 10000원 이상이면 무료
    ,adddate(curdate(), +2) as DeliveryDate		-- 오늘날짜+2
    ,(select b.ifcdName from infrcode b where ifcgSeq=14 and b.ifcdOrder = a.tditStateCd) as tditStateCd
	,(select b.ifcdName from infrcode b where ifcgSeq=17 and b.ifcdOrder = g.tdriTypeCd) as tdriType
    ,k.tdkwKeyWord
	,a.tditBookDesc
    ,a.tditBookDesc2
    ,a.tditTableOfContents
from tradItem a
	left join traditemreview c on c.tditSeq = a.tditSeq
    left join tradauthor d on d.tditSeq = a.tditSeq
	left join tradrelateditem g on g.tditSeq = a.tditSeq
    left join traditemkeyword k on k.tditSeq = a.tditSeq
where 1=1
-- 	and a.tditSeq=1
    
;

select * from traditem;

select
	a.tditSeq
	,a.tditTitle
	,a.tditSubTitle
    ,(select b.ifcdReferenceI2 from infrcode b where b.ifcgSeq=26 and b.ifcdOrder = c.tditKcloverCd)
--  ,avg((select b.ifcdReferenceI2 from infrcode b where b.ifcgSeq=26 and b.ifcdOrder = c.tditKcloverCd))
-- 	,count(c.tdirSeq)
from traditem a
	left join traditemreview c on c.tditSeq = a.tditSeq
;

  

    

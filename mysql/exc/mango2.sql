use kbook;

-- 책 정보 페이지 내용 1
select 
tditSeq
, aa.tditTitle
, count(aa.tditSeq) as count
, avg(aa.tdirKcloverValue) as avg
from 
	(
		select
			a.tditSeq
			,a.tditTitle
			,a.tditSubTitle
			, c.tdirKcloverCd
			,(select b.ifcdReferenceI2 from infrcode b where b.ifcgSeq=26 and b.ifcdOrder = c.tdirKcloverCd) as tdirKcloverValue
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
	-- 	 	,(select b.ifcdName from infrcode b where ifcgSeq=17 and b.ifcdOrder = g.tdriTypeCd) as tdriType
	--      ,k.tdkwKeyWord
			,a.tditBookDesc
			,a.tditTableOfContents
			,a.tditIsbn
			,a.tditPage
			,a.tditSize
			,a.tditWeight
	-- 		,g.tdriTitle	-- 원서정보/저자명
	        ,(select e.ifacNameEng from infrauthorcode e where e.ifacSeq = d.tdatAuthorCd) as tditAuthorEng	-- 원서정보/제목
			,a.tditBookDesc2
	-- 	    ,(select a.tditTitle from traditem a where a.tditSeq = h.tdsiBookCd) as tradseries
		from tradItem a
			left join traditemreview c on c.tditSeq = a.tditSeq
		    left join tradauthor d on d.tditSeq = a.tditSeq
	--      left join tradrelateditem g on g.tditSeq = a.tditSeq
	--      left join traditemkeyword k on k.tditSeq = a.tditSeq
	--      left join tradseries h on h.tditSeq = a.tditSeq
		where 1=1
	) aa    
group by aa.tditSeq
;

-- 책 정보 페이지 내용 2
select 
	a.tditSeq
	,a.tditTitle
	,(select b.ifcdName from infrcode b where ifcgSeq=17 and b.ifcdOrder = c.tdriTypeCd) as tdriType
	,d.tdkwKeyWord
	,c.tdriTitle	-- 원서정보/저자명
	,(select a.tditTitle from traditem a where a.tditSeq = e.tdsiBookCd) as tradseries
from tradItem a 
	left join tradrelateditem c on c.tditSeq = a.tditSeq
	left join traditemkeyword d on d.tditSeq = a.tditSeq
	left join tradseries e on e.tditSeq = a.tditSeq
where 1=1
;





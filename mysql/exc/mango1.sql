use kbook;


-- 책 정보 페이지 내용
select 
	a.tditTitle
    ,a.tditSubTitle
   ,avg((select b.ifcdReferenceI2 from infrcode b where b.ifcgSeq=26 and b.ifcdOrder = c.tditKcloverCd)) as Kclover
   ,count(tdirSeq) as reviewcount
   
		
from tradItem a
	left join traditemreview c on c.tditSeq = a.tditSeq
where 1=1
	
;

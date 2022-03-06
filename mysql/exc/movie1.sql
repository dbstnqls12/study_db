use movie;

-- 영화정보 & 영화등록
select
	a.cjmvSeq
    ,a.cjmvTitle
    ,a.cjmvTitleEng
    ,(select b.ifcdName from infrcode b where b.ifcgSeq=12 and b.ifcdOrder=a.cjmvReleaseTypeCd) as cjmvReleaseTypeCd 
	,a.cjmvReleaseDate
    ,cjmvEndDate
    ,(select b.ifcdName from infrcode b where b.ifcgSeq=13 and b.ifcdOrder=a.cjmvAgeLevelCd) as cjmvAgeLevelCd
    ,(select b.ifcdName from infrcode b where b.ifcgSeq=18 and b.ifcdOrder=c.cjmgGenreCd) as cjmgGenreCd
    ,a.cjmvShowtimes
    ,(select b.ifcdName from infrcode b where b.ifcgSeq=14 and b.ifcdOrder=a.cjmvNationalityCd) as cjmvNationalityCd
    ,a.cjmvSubTitle
    ,a.cjmvDesc
    ,a.cjmvDirector
    ,d.cjmcName
from cjMovie a
left join cjMovieGenre c on c.cjmvSeq = a.cjmvSeq
left join cjMovieCharacter d on d.cjmvSeq = a.cjmvSeq 
where 1=1
	and c.cjmgDefaultNy=1
;    

-- 영화예메 : 극장정보? 불러오기
select 
	a.cjmvTitle
    ,(select c.cjtcName from cjTheaterCate c where c.cjtcSeq=b.cjmtTheaterPlace) as cjmtTheaterPlace
    ,(select c.cjtcName from cjTheaterCate c where c.cjtcSeq=b.cjmtTheaterCate) as cjmtTheaterCate
    ,b.cjmtDate
 	,d.cjtiTheaterFloor
    ,b.cjmtTheaterNumber
    ,(select e.ifcdName from infrcode e where e.ifcgSeq=15 and e.ifcdOrder=d.cjtiTheaterTypeCd) as cjtiTheaterTypeCd
    ,b.cjmtStartTime
    ,b.cjmtEndTime
    ,d.cjtiNumberOfSeats
from cjMovie a 
left join cjMovieTheater b on b.cjmvSeq= a.cjmvSeq 
left join cjTheaterinfo d on d.cjtiTheaterCate = b.cjmtTheaterCate
where 1=1
	and b.cjmtTheaterNumber = d.cjtiTheaterNumber
;

-- 영화예메 : 결제정보




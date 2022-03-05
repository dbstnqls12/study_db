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
-- 극장선택






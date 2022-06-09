use kbook;

-- view 

create view kbMemberView
AS
	SELECT
		a.kbmmSeq
		,a.kbmmId
		,a.kbmmName
		,a.kbmmDob
		,a.kbmmGenderCd
		,a.kbmmPassword
		,a.kbmmSavedCd
		,a.kbmmGradeCd
-- 		,a.kbmmKoreanNy 
		,a.kbmmDesc
		,a.kbmmEmailConsentNy
		,a.kbmmSmsConsentNy
		,a.kbmmUseConsentNy_c
		,a.kbmmPersonalinfoConsentNy_c
		,a.kbmmPersonalinfoConsentNy_s
		,a.kbmmOfferinfo1ConsentNy_s
		,a.kbmmOfferinfo2ConsentNy_s
		,a.kbmmdormancyNy
		,a.kbmmKoreanNy
		,a.modDateTime
		,a.modDateTimeSvr
		,a.regDateTime
		,a.regDateTimeSvr
		,c.kbmeEmailFull
		,d.kbmaZipcode
		,d.kbmaAddress1
		,d.kbmaAddress2
		,d.kbmaZipcode_abroad
		,d.kbmaAddress1_abroad
		,d.kbmaAddress2_abroad
		,d.kbmaLat
		,d.kbmaLng
		,d.kbmaDefaultNy
	FROM	
		kbMember a
		left join kbMemberEmail c on c.kbmmSeq = a.kbmmSeq
		left join kbMemberAddress d on d.kbmmSeq = a.kbmmSeq
	WHERE 1=1
;

select * from kbMemberView;

-- 수정
alter view kbMemberView
AS
	SELECT
		a.kbmmSeq
		,a.kbmmId
		,a.kbmmName
		,a.kbmmDob
		,a.kbmmGenderCd
		,a.kbmmPassword
		,a.kbmmSavedCd
		,a.kbmmGradeCd
		,a.kbmmKoreanNy
		,a.kbmmDesc
	FROM	
		kbMember a
		left join kbMemberEmail c on c.kbmmSeq = a.kbmmSeq
		left join kbMemberAddress d on d.kbmmSeq = a.kbmmSeq
	WHERE 1=1
;

-- 삭제
drop view kbMemberView;
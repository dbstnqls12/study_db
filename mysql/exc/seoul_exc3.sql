SELECT * FROM world.infrmemberphone;

insert into infrmemberphone(
	defaultNy
    ,phonetypeCd
    ,devicetypeCd
    ,mcompanyCd
    ,phoneNumber
	,ifrmmSeq
) values(
	1
    ,1
    ,2
    ,1
    ,'01012311231'
    ,1
);

select 
	a.ifrmmSeq
	,a.name
    ,(select name from infrcode as c where ifrcgSeq='infra005' and c.ifrcodeSeq = b.phonetypeCd) as '번호타입'
    ,(select name from infrcode as c where ifrcgSeq='infra007' and c.ifrcodeSeq = b.phonetypeCd) as '통신사'
    ,b.phoneNumber
from infrmember a  
left join infrmemberphone b on a.ifrmmSeq = b.ifrmmSeq 
left join infrcode c on b.phonetypeCd = c.ifrcodeSeq 
;

select 
	a.ifrmmSeq
	,a.name
    ,(select c.name from infrcode c where ifrcgSeq='infra001' and c.ifrcodeSeq = a.adminNY) as '회원구분'
	,(select c.name from infrcode c where ifrcgSeq='infra002' and c.ifrcodeSeq = a.sleepNy) as '회원상태'
    ,a.id
    ,(select c.name from infrcode c where ifrcgSeq='infra003' and c.ifrcodeSeq = a.genderCd) as '성별'
    ,(select c.name from infrcode c where ifrcgSeq='infra004' and c.ifrcodeSeq = d.nationalityCd) as '국적'
from infrmember a
left join infrcode c on c.ifrcodeSeq = a.adminNY
left join infrmembernationality d on d.ifrmmSeq = a.ifrmmSeq
;

select * from infrcodegroup;
select * from infrcode;
select * from infrmember;
select * from infrmembernationality;
    
    

SELECT * FROM world.infrmemberphone;

insert into infrmemberemail(
	defaultNy
    ,emailtypeCd
    ,emailaccount
    ,emaildomainCd
	,emailfull
    ,ifrmmSeq
) values(
	1
    ,1
    ,'asd123'
    ,1
    ,'asd123'
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
    ,a.id
    ,(select c.name from infrcode c where ifrcgSeq='infra001' and c.ifrcodeSeq = a.adminNY) as '회원구분'
	,(select c.name from infrcode c where ifrcgSeq='infra002' and c.ifrcodeSeq = a.sleepNy) as '회원상태'
    ,(select c.name from infrcode c where ifrcgSeq='infra003' and c.ifrcodeSeq = a.genderCd) as '성별'
    ,(select c.name from infrcode c where ifrcgSeq='infra004' and c.ifrcodeSeq = d.nationalityCd) as '국적'
    ,(select e.emailfull from infrmemberemail e where e.ifrmmSeq = a.ifrmmSeq) as '이메일'
from infrmember a
left join infrcode c on c.ifrcodeSeq = a.adminNY
left join infrmembernationality d on d.ifrmmSeq = a.ifrmmSeq

; 

select * from infrcodegroup;
select * from infrcode;
select * from infrmember;
select * from infrmembernationality;
select * from infrmemberemail;

    

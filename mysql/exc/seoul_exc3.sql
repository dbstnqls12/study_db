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
from infrmember  a  
left join infrmemberphone b on a.ifrmmSeq = b.ifrmmSeq 
left join infrcode c on b.phonetypeCd = c.ifrcodeSeq 
;

select * from infrmemberaddress;
select * from infrmembersns;
    
    

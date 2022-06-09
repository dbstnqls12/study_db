use kbook;

SELECT * FROM kbook.kbMember;

-- 확인
show index from kbMember;

-- 생성
create index kbMemberIndex on kbMember(kbmmName);
create index kbMemberIndex2 on kbMember(kbmmName, kbmmId);
create index kbMemberIndex3 on kbMember(kbmmName asc, kbmmId desc);

-- 삭제
alter table kbMember drop index kbMemberIndex;

-- 생성2
alter table kbMember add index kbMemberIndex(kbmmName asc);
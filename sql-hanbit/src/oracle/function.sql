--Q1. 오늘 날짜를 2015-10-21 로 출력



--A1. 
select to_char(sysdate,'YYYY-MM-DD')
from dual;

create table Member(
--다른 컬럼은 생략
 regdate date not null;
 );
 
select to_char(regdate,'YYYY-MM-DD') as regadet, name,
from member;
-- 15/10/21=> 201510-21

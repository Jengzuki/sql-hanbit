====CRUD =====
user ==== schema ==== project
C : create user Name identified by Pass
R : Show user
U : conn system/oracle
alter user hr identified  by  hr --  오라클에서 교육용으로 제공하는 스키마 hr을 사용할 수 있도록 변경함
account unlock;
D : drop user name cascade;


===CURD  table  ==== class
C : create table NAME();
R : desc NAME;
U : rename NAME to NAME2;
D : 테이블 자체를 삭제 (철거) : drop table NAME;
    테이블의 데이터만 삭제 (공실):truncate table NAME;  



column == property  [칼럼에서 추가]
C : alter table NAME add(TEST varchar2(20));
R : 없음
U : 타입 => alter table NAME modify(TEST number);
    이름 => alter table NAME rename column NAME1 to NAME2;
D : alter table NAME drop column TEST;

data == "hong"  12 ... [데이터 변경]
C : insert into NAME values('','','',.....);
R : select * from NAME;
U : update NAME set TEST = 'kang', .......;
     where USERID = 'hong';
D : delete from NAME where USERID = 'hong';

-- Q1.  직원과 부서전부 출력(크로스조인으로 두 테이블 전체를 출력하시오.)
-- Q2.	직원과 그 직원이 근무하는 부서명 출력(이너조인으로 출력)
-- Q3.	직원과 그 직원이 근무하는 부서명 출력(이너조인+ useing 으로 출력)
-- Q4.	직원과 그 직원이 근무하는 부서명 출력(크로스 소환으로 두 테이블 전체 출력(natural))
-- Q5.	각각의 직원이 근무하는 부서를 모두 출력하고, 직원이 없는 부서도 출력하시오.
-- Q6.	부서가 배치된 직원 리스트
-- Q7.  직원이 없는 부서
-- Q8.  부서가 없는 직원(프리랜서)sdf



-- A1. 
select * from employees cross join departments;
-- A2.
select * 
from employees e inner join departments d
on e.department_id = d.department_id
where e.last_name = 'Popp';

select * 
from Member m inner join Score s
on m.userid = s.userid
where m.userid = 'hong';

--A3.
select * 
from employees e inner join departments d
using (department_id)
where e.last_name = 'Popp';

--A4
select * 
from employees e natural join departments d
where e.last_name = 'Popp';

--A5
select * 
from departments d left outer join employees e
on d.department_id = e.department_id;

--A6
select * 
from departments d left outer join employees e
on d.department_id = e.department_id
where d.department_id is not null; -- 총직원수는 107명인데 결과값은 106명


--A7
select * 
from departments d left outer join employees e
on d.department_id = e.department_id
where e.department_id is null; 

--A8
select * 
from departments d right outer join employees e
on d.department_id = e.department_id
where e.department_id is null; 


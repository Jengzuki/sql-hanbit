--Q1. 사원번호, 패밀리네임, 연봉을 출력하시오.
--Q2. 연봉 3000이상 직원 출력.
--Q3. 부서번호가 100번인 직원 출력
--Q4. 패밀리 네임이 King 인 직원 출력
--Q5. 2003년 1월 1일 이후 입사한 직원 출력
--Q6. 100번 부서의 매니저는 누구?
--Q7. 100번 부서 직원 전부와 이 회사 매니저 전부?
--Q8. 100번 부서직원이 아닌 직원?
--Q9. 연봉 2000 ~ 3000 직원?
--Q10. 연봉 2000미만 3000초과 직원?
--Q11. 커미션이 0.2, 0.3, 0.4 인 직원 전부?
--Q12. 커미션이 0.2, 0.3, 0.4 가 아닌 직원?
--Q13. 패밀리네임이 k로 시작하는 직원? ... 한국식으로는 김씨 직원 전부?
--Q14. 패밀리네임 중에 a가 포함된 직원?  ... 한국식으로는 성은 모르겠고 가운데 이름이 성 뭐시긴가 하는 직원?
--Q15. 페밀리네임 중에 a가 세번째 글자에 포함된 직원(와일드카드를 사용)?
--Q16. 직원중에 구글계정을 사용하는 직원
--Q17. 커미션을 받지 않는 직원?
--Q18. 커미션을 받는 직원?
--Q19. 연봉을 적게 받는 순 직원 리스트? 
--Q20. 고액연봉 순 직원리스트
--Q21. 고액연봉 순 직원리스트(동일 연봉이면 이름 오름차순 정렬)?



-- A1.  
select employee_id, last_name, salary from employees;
-- A2.
select * from employees
where selary >= 3000;
-- A3.
select * from employees
where department_id = 10;
-- A4
select * from employees
where last_name = 'King';
-- A5
select * from employees
where hire_date >= '03/01/01'; -- 이후라면 크거나 같아야함.
-- A6
select * from employees 
where department_id = 100 and job_id ='FI_MGR';
-- A7
select * from employees 
where department_id = 100 or job_id ='FI_MGR';
-- A8
select * from employees
where department_id <> 100;

select * from employees
where department_id != 100;

-- A9
select * from employees
where salary >= 2000 and salary <=3000;

select * from employees
where salary between 2000 and 3000;

-- A10 
select * from employees
where salary not between 2000 and 3000;

-- A11
select * from employees 
where ccmmission_pct in(0.2,0.3,0.4);

-- A12
select * from employees 
where ccmmission_pct not in(0.2,0.3,0.4);

-- A13
select * from employees 
where last_name like 'K%';

-- A14
select * from employees 
where last_name like '%a%';

-- A15
select * from employees 
where last_name like '__a%';

-- A16
select * from employees
where email like '%\@gmail.com%'; -- hr 계정에서 테스트 안함

-- A17
select * from employees
where ccmmission_pct is null;

-- A18
select * from employees
where ccmmission_pct is not null;

-- A19
select * from employees
order by salary asc; -- 오름차순 , asc를 생략해도 동일함.

-- A20
select * from employees
order by salary desc; -- 내림차순

-- A21
select * from employees
order by salary desc, last_name asc;
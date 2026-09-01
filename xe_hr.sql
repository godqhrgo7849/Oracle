select * from hr.employees;

select * from user_tables;

select * from dba_data_files;

select * from hr.employees where employee_id = 100;


select *
FROM hr.employees
WHERE employee_id = 100;

select *
FROM hr.employees
WHERE employee_id = 200;

SELECT e.*, d.*
FROM hr.employees e, hr.departments d
WHERE employee_id = 100
AND e.department_id = d.department_id;

SELECT salary, salary * 12 FROM hr.employees;

SELECT employee_id, hire_date, hire_date + 100 FROM hr.employees;


SELECT 
    employee_id,
    salary,
    commission_pct,
    ((salary * 12) + (salary * 12 * commission_pct)),
    ((salary * 12) + (salary * 12 * nvl(commission_pct,0)))
FROM hr.employees;

SELECT 
    employee_id,
    salary,
    commission_pct,
    ((salary * 12) + (salary * 12 * commission_pct)) annual_salary_1,
    ((salary * 12) + (salary * 12 * nvl(commission_pct,0))) as annual_salary_2
FROM hr.employees;

SELECT
    employee_id 사번,
    hire_date "2000년 이후"
FROM hr.employees;

SELECT
    employee_id 
    , last_name
    , first_name
    , last_name || first_name name
FROM hr.employees;

SELECT
    '사번 :' || employee_id 
    , last_name
    , first_name
    , last_name ||' '|| first_name name
FROM hr.employees;

SELECT
    '사원 번호는 ' || employee_id||'입니다.'
FROM hr.employees;

SELECT
    'My name ''s' || last_name||' ' ||first_name "이름"
FROM hr.employees;

SELECT 
    distinct department_id
FROM hr.employees;

SELECT 
    unique department_id
FROM hr.employees;

-- 문제 1 employees 테이블에서 employee_id, last_name과 first_name은 연결해서 표시하고(공백으로 구분)
-- 열 별칭은 화면 예처럼 쿼리문을 작성해주세요.

SELECT 
    employee_id "Emp#"
    , last_name ||' '|| first_name "Employee Name"
FROM employees;

/* 문제 2 employees 테이블에서 컬럼중에 last_name, job_id를 연결해서 표시하고 (쉼표와 공백으로 구분)
         열 별칭은 화면 예처럼 쿼리문을 작성해주세요. */
         
SELECT
     last_name || ', ' || job_id "Employee and Title"
FROM employees;

-- 문제 3 departments 테이블에 있는 데이터에서 department_name, manager_id 컬럼을 가지고 화면 결과 출력
SELECT
    department_name || 'Department''s Manager ID :' || manager_id "Department and Manager"
FROM hr.departments;


SELECT *
FROM hr.employees
WHERE employee_id = 200; // 조건절

desc hr.employees

SELECT *
FROM hr.employees
WHERE hire_date  = '01/01/13'; -- '2001-01-13'도 가능하며 미국인 경우 '13-JAN-03' 이지만 오류 발생

SELECT *
FROM hr.employees
WHERE salary >= 20000
AND department_id = 90;

SELECT *
FROM hr.employees
WHERE salary >= 20000
OR department_id = 90;

-- 문제 4 employees 테이블에서 급여가 2500 ~ 3500인 사원들의 last_name, salary를 출력

SELECT last_name, salary
FROM hr.employees
WHERE 2500 <= salary AND salary <= 3500;

-- 문제 5 employees 테이블에서 급여가 2500 ~ 3500가 아닌 사원들의 last_name, salary를 출력

SELECT last_name, salary
FROM hr.employees
WHERE NOT(2500 <= salary AND salary <= 3500);

-- 문제 6 employees 테이블에서 hire_date(입사일) 2001(01) ~ 2002(02)년도 입사한 사원정보를 출력
SELECT *
FROM hr.employees
WHERE hire_date >= '2001-01-01'
  AND hire_date <= '2002-12-31';

SELECT *
FROM hr.employees
WHERE hire_date BETWEEN '2001-01-01' AND '2002-12-31';

SELECT *
FROM hr.employees
WHERE department_id = 30
or department_id = 50
or (department_id = 60 AND salary > 5000);

SELECT *
FROM hr.employees
WHERE department_id IN (30, 50, 60)
AND salary > 5000;

SELECT *
FROM hr.employees
WHERE commission_pct IS NOT NULL; -- 결측치를 확인하기 위해 '' 공백으로 검색하면 안된다.

SELECT *
FROM hr.employees
WHERE department_id IS NULL;

SELECT *
FROM hr.employees
WHERE last_name like 'K%';

SELECT *
FROM hr.employees
WHERE last_name like '%s';

SELECT *
FROM hr.employees
WHERE last_name like '_i%';

SELECT *
FROM hr.employees
WHERE last_name like '__i%';

desc hr.employees job_id;

-- 문제 7 employees 테이블에 있는 데이터 중에 job_id가 SA로 시작되고 salary 값은 10000이상
-- 받는 사원들의 정보를 출력

select *
from hr.employees
where job_id like 'SA%' and salary >= 10000;


/* 문제 8 last_name의 세번째 문자가 'a' 또는 'e' 글자가 포함된 사원들의 정보를 추력해라 */

SELECT *
FROM hr.employees
WHERE last_name LIKE '__a%'
   OR last_name LIKE '__e%';


/* 문제 9 employees 테이블에 있는 데이터 중에 job_id가 SA로 시작되고 salary 값은 10000이상 받고
2005년도에 입사한(hire_date) 사원들의 정보를 출력하라 */

SELECT *
FROM hr.employees
WHERE job_id like 'SA%' 
      AND salary >= 10000 
      AND  hire_date BETWEEN '2005-01-01' AND '2005-12-31';

/* 문제 10 employees 테이블에 있는 데이터 중에 job_id가 SA_REP 또는 AD_PRES 사원들 중
salary 값이 10000 초과한 사원들의 정보를 출력 */

SELECT *
FROM hr.employees
WHERE job_id IN ('SA_REP', 'AD_PRES')
      AND salary > 10000;
      
SELECT employee_id, salary
FROM hr.employees
ORDER BY salary asc; -- 오름차순 정렬

SELECT employee_id, salary
FROM hr.employees
ORDER BY salary desc; -- 내림차순 정렬

SELECT employee_id, salary * 12 annual_salary
FROM hr.employees
ORDER BY salary * 12 desc; -- 표현식 또한 그대로 사용 가능하다.

SELECT employee_id, salary * 12 as "annual_salary" // 회사에 맞춰 as 사용 
FROM hr.employees
ORDER BY "annual_salary" desc; -- 열별칭 사용가능 하지만 ORDER BY에도 열별칭을 꼭 써줘야 하며, 사용한 경우 큰따옴표 사용

SELECT employee_id, salary * 12 as "annual_salary"
FROM hr.employees
ORDER BY 2 desc; -- 위치표기법 또한 가능

/* 문제 11 2006년도 입사한 사원의 employee_id, last_name, hire_date를 출력해주세요
          단 last_name 이름을 기준으로 오름차순정렬해주세요. */
          
SELECT employee_id, last_name, hire_date
FROM hr.employees
WHERE hire_date BETWEEN '06-01-01' and '06-12-31'
ORDER BY 2 asc;

/* 문제 12 80번 department_id 사원중에 commission_pct 값이 0.2이고 job_id는 SA_MAN인 사원의
          employee_id, last_name, salary를 출력하라 */

SELECT employee_id, last_name, salary
FROM hr.employees
WHERE department_id = 80
      and commission_pct = 0.2
      and job_id = 'SA_MAN';
      
/* 문제 13 salary가 5000 ~ 12000 의 범위에 속하지 않는 모든 사원의 last_name 및 salary를 출력하세요
          단 salar을 기준으로 내림차순 정렬 */
          
SELECT last_name, salary
FROM hr.employees
where salary NOT BETWEEN 5000 and 12000
order by 2 desc;

SELECT *
FROM hr.employees
WHERE last_name = 'king';

SELECT *
FROM hr.employees
WHERE lower(last_name) = 'king'; -- 소문자로 검색시 안나왔던 것을 소문자로 변환하여 검색되게 변경

SELECT *
FROM hr.employees
WHERE upper(last_name) = 'king'; -- 대문자로 변환

SELECT *
FROM hr.employees
WHERE initcap(last_name) = 'king'; -- 첫 글짜는 대문자 나머지는 소문자로 변환

SELECT employee_id, upper(last_name), lower(last_name), initcap(last_name)
FROM hr.employees
WHERE department_id = 20;

SELECT employee_id, upper(last_name), lower(last_name), initcap(last_name)
FROM hr.employees
WHERE department_id = 50; -- WHERE 절에서 문자 함수 사용시 부담 >> SELECT 절에서는 괜찮

SELECT employee_id, last_name || first_name, concat(last_name,first_name)
FROM hr.employees
WHERE department_id = 50; -- concat 여러개의 문자열을 합턴

SELECT
    last_name,
    length(last_name) -- 문자의 길이 리침
FROM hr.employees
/*
SELECT
    length('oracle'),
    lengthb('oracle'),
    length('오라클'),
    lengthb('오라클')
FROM dual;*/
    
SELECT * FROM nls_database_parameters;
    
-- NLS_CHARACTERSET AL32UTF8 --데이터베이스에 설정된 문자 characterset, 유니코드(unicode) 전세계 출판되는 글자는 char, varchar2 타입의 컬럼에 입력
    
SELECT * FROM nls_session_parameters;
    
select
    last_name,
    instr(last_name,'a'), -- last_name에 a로 시작되는 글자의 위치 찾기
    instr(last_name,'a',1,1) -- 1,1 생략
from hr.employees;

-- instr 이용해서 세번째 문자가 'a' 또는 'e' 글자가 포함 된 정보 출력
select *
from hr.employees
where instr(last_name,'a',3,1) = 3
or instr(last_name,'e',3,1) = 3;


select 
    last_name,
    substr(last_name,1,2), -- last_name
    substr(last_name,-2,2)
from hr.employees;

select *
from hr.employees
where substr(last_name,3,1) in ('a','e');


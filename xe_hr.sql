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

// 문제 1 employees 테이블에서 employee_id, last_name과 first_name은 연결해서 표시하고(공백으로 구분)
// 열 별칭은 화면 예처럼 쿼리문을 작성해주세요.

SELECT 
    employee_id "Emp#"
    , last_name ||' '|| first_name "Employee Name"
FROM employees;

/* 문제 2 employees 테이블에서 컬럼중에 last_name, job_id를 연결해서 표시하고 (쉼표와 공백으로 구분)
         열 별칭은 화면 예처럼 쿼리문을 작성해주세요. */
         
SELECT
     last_name || ', ' || job_id "Employee and Title"
FROM employees;
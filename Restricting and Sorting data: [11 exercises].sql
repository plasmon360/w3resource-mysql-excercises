-- 1. Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000. 
select first_name, last_name, salary from employees
       where (salary <=10000 and salary >=15000) limit 10;
       
select first_name, last_name, salary from employees
       where salary NOT BETWEEN 10000 and 15000 limit 10;
       
-- 2. Write a query to display the name (first_name, last_name) and department ID of all employees in departments 30 or 100 in ascending order. 
select first_name, last_name, DEPARTMENT_ID from employees
       where (DEPARTMENT_ID =30 OR DEPARTMENT_ID = 100) ORDER BY DEPARTMENT_ID ASC;

select first_name, last_name, DEPARTMENT_ID from employees
       where DEPARTMENT_ID IN (30, 100) ORDER BY DEPARTMENT_ID ASC;

-- 3. Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000 and are in department 30 or 100. 
select first_name, last_name, salary, DEPARTMENT_ID from employees
	where salary NOT BETWEEN 10000 and 15000 and (DEPARTMENT_ID =30 OR DEPARTMENT_ID = 100);

-- 4. Write a query to display the name (first_name, last_name) and hire date for all employees who were hired in 1987. 
select first_name, last_name, hire_date	 from employees
where year(hire_date) in (1987);

-- 5. Write a query to display the first_name of all employees who have both "b" and "c" in their first name. 
 select first_name, last_name from employees
WHERE first_name like '%b%' AND first_name like '%c%';

-- 6. Write a query to display the last name, job, and salary for all employees whose job is that of a Programmer or a Shipping Clerk, and whose salary is not equal to $4,500, $10,000, or $15,000.
select last_name, job_id, salary from employees
Where job_id in ('IT_PROG', 'SH_CLERK') and salary not in ('4500', '10000', '15000');

-- 7. Write a query to display the last name of employees whose names have exactly 6 characters.
select last_name, first_name from employees
where length(last_name) = 6;

-- 8. Write a query to display the last name of employees having 'e' as the third character.
select last_name, first_name from employees
where substring(last_name,3,1) = 'e';

-- 9. Write a query to display the jobs/designations available in the employees table.
SELECT distinct JOB_ID FROM employees;

-- 10. Write a query to display the name (first_name, last_name), salary and PF (15% of salary) of all employees. 
select last_name, first_name, 0.15*salary as PF from employees limit 10;

-- 11. Write a query to select all record from employees where last name in 'BLAKE', 'SCOTT', 'KING' and 'FORD'. 
select * from employees
where last_name in ('BLAKE', 'SCOTT', 'KING' ,'FORD') ;

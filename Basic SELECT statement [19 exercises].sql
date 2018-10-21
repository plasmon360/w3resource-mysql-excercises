-- 1. Write a query to display the names (first_name, last_name) using alias name “First Name", "Last Name"

SELECT first_name as "First Name", last_name as "Last Name" FROM employees limit 10;


-- 2. Write a query to get unique department ID from employee table.
SELECT distinct DEPARTMENT_ID from employees ;


-- 3. Write a query to get all employee details from the employee table order by first name, descending.
SELECT * FROM employees ORDER BY first_name DESC limit 10;

-- 4. Write a query to get the names (first_name, last_name), salary, PF of all the employees (PF is calculated as 15% of salary).
SELECT first_name, last_name, salary, 0.15* salary as PF FROM employees  limit 10;

-- 5. Write a query to get the employee ID, names (first_name, last_name), salary in ascending order of salary.
SELECT employee_ID, first_name, last_name, salary  FROM employees  ORDER BY salary ASC limit 10;


-- 6. Write a query to get the total salaries payable to employees.
select sum(salary) from employees;

-- 7. Write a query to get the maximum and minimum salary from employees table.
select max(salary), min(salary) from employees;

-- 8. Write a query to get the average salary and number of employees in the employees table.
select avg(salary), count(*) from employees;


-- 9. Write a query to get the number of employees working with the company.
select count(*) from employees;


-- 10. Write a query to get the number of jobs available in the employees table. 
select sum(job_id_count) from (select count(*) as job_id_count from employees group by JOB_ID) as TEMP;

-- solution given by website is, which is much better
select count(DISTINCT JOB_ID) from employees group by JOB_ID; 

select count(JOB_ID) from employees group by JOB_ID; 

-- 11. Write a query get all first name from employees table in upper case. 
SELECT UPPER(first_name)  FROM employees  limit 10;


-- 12. Write a query to get the first 3 characters of first name from employees table. alter
SELECT left(first_name,3) as short_first_name from employees limit 10;


-- 13. Write a query to calculate 171*214+625. 
select 171*214+625 ;


-- 14. Write a query to get the names (for example Ellen Abel, Sundar Ande etc.) of all the employees from employees table. 

SELECT concat(first_name,' ', last_name) as complete_name from employees limit 10;

-- 15. Write a query to get first name from employees table after removing white spaces from both side. 
SELECT trim(BOTH FROM first_name) as complete_name from employees limit 10;

-- 16. Write a query to get the length of the employee names (first_name, last_name) from employees table. 
SELECT length(concat(first_name, last_name))  from employees limit 10;

-- 17. Write a query to check if the first_name fields of the employees table contains numbers. 
SELECT *  from employees where first_name regexp '[0-9]';

-- 18. Write a query to select first 10 records from a table.
SELECT *  from employees limit 10;

-- 19. Write a query to get monthly salary (round 2 decimal places) of each and every employee    Note : Assume the salary field provides the 'annual salary' information.
SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME, round(salary/12,2) as MONTHLY_SALARY from employees limit 10;



/**/

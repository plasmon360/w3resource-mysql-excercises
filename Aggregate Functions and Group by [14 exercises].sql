-- Write a query to list the number of jobs available in the employees table.
select count(distinct job_id) from employees;

-- Write a query to get the total salaries payable to employees.
select sum(salary) from employees;

-- Write a query to get the minimum salary from employees table.
select min(salary) from employees;

-- Write a query to get the maximum salary of an employee working as a Programmer.
select job_id, max(salary) from employees 
	where (job_id = 'IT_PROG');

-- Write a query to get the average salary and number of employees working the department 90
select avg(salary), count(*) from employees 
	where (department_id in (90));

-- Write a query to get the highest, lowest, sum, and average salary of all employees.
select max(salary), min(salary) ,sum(salary) ,avg(salary) from employees;

-- Write a query to get the number of employees with the same job.
select job_id, count(*) from employees group by job_id;

-- Write a query to get the difference between the highest and lowest salaries.
select max(salary) - min(salary) from employees;

-- Write a query to find the manager ID and the salary of the lowest-paid employee for that manager.
select MANAGER_ID, min(salary) from employees group by MANAGER_ID order by min(salary) desc;

-- Write a query to get the department ID and the total salary payable in each department. 
select DEPARTMENT_ID, sum(salary) from employees group by DEPARTMENT_ID order by sum(salary) desc;

-- Write a query to get the average salary for each job ID excluding programmer.
select job_id, avg(salary) from employees 
	where job_id not in ('IT_PROG') group by job_id;
    
-- Write a query to get the total salary, maximum, minimum, average salary of employees (job ID wise), for department ID 90 only.
select DEPARTMENT_ID,job_id, max(salary), min(salary) ,sum(salary) ,avg(salary) from employees where (DEPARTMENT_ID in ('90')) group by job_id;

-- write a query to get the job ID and maximum salary of the employees where maximum salary is greater than or equal to $4000.
select job_id, max(salary) from employees group by job_id having (max(SALARY) >='4000');

-- Write a query to get the average salary for all departments employing more than 10 employees.
select DEPARTMENT_ID,avg(salary), count(*) from employees group by department_id having (count(*) >= 10);



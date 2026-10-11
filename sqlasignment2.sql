-- DISTINCT VALUES
select distinct salary from employees;
-- ALIAS (AS)
select age as employee_age, salary as employee_salary from employees;
-- WHERE CLAUSE & OPERATORS
select salary,hire_date from employees where salary > 50000 and hire_date < "2016-01-01";
update employees set designation = "Data Scientist" where designation is null;
-- SORTING AND GROUPING DATA
-- ORDER BY
select * from employees order by department_id asc, salary desc;
-- LIMIT
select * from employees where year(hire_date) = "2018"  limit 0,5;
-- AGGREGATE FUNCTIONS
select sum(salary) as TotalSalary from employees where department_id = 7;
select min(age) as MinAge from employees;
-- GROUP BY
select max(salary) as MaxSalary from  employees group by location_id;
select designation,avg(salary) as AverageSalary from employees where designation like '%analyst' group by designation;
-- HAVING
select department_id,count(*) as NoofEmployee from employees group by department_id having count(*)>3;
select * from employees where gender = "f" group by employee_id having age < 30;
-- JOINS
-- INNER JOIN
select emp.employee_name,emp.designation,dept.department_name from employees emp inner join departments dept 
on emp.department_id = dept.department_id;
-- LEFT JOIN
select dept.department_name,count(emp.employee_id) as NoOfEmployees from departments dept  left join employees emp 
on dept.department_id = emp.department_id group by dept.department_name;
-- RIGHT JOIN
select loc.location,emp.employee_name from employees emp right join location loc
on emp.location_id = loc.location_id;
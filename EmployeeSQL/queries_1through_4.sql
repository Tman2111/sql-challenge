-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
  FROM "employees" as e
  JOIN "salaries" as s
	ON e.emp_no = s.emp_no;
	
-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name,last_name,hire_date from employees
WHERE hire_date between '1986-01-01' and '1986-12-31'
ORDER BY hire_date ASC

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from dept_manager as dm
inner join departments as d 
on dm.dept_no = d.dept_no
inner join employees as e
on dm.emp_no = e.emp_no

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_emp as de
on e.emp_no = de.emp_no
inner join departments as d
on de.dept_no = d.dept_no
order by e.emp_no;



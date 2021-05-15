-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees 
where 
    first_name='Hercules' and
    last_name like 'B%'
	
-- List all employees in the Sales department, including their employee number, last name, first name, and department name.	
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from departments
JOIN dept_emp on departments.dept_no=dept_emp.dept_no
JOIN employees on dept_emp.emp_no=employees.emp_no
where departments.dept_name= 'Sales'

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from departments
JOIN dept_emp on departments.dept_no=dept_emp.dept_no
JOIN employees on dept_emp.emp_no=employees.emp_no
where departments.dept_name in ('Sales','Development')

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name,count(*)
FROM employees
GROUP BY  last_name 
ORDER BY COUNT(*) DESC


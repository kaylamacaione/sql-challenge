-----List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
LEFT JOIN salaries s
	on e.emp_no = s.emp_no

-----List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
where DATE_PART('year', hire_date) = 1986

-----List the manager of each department with the following information: 
-----department number, department name, the manager's employee number, last name, first name.
SELECT D.dept_no, D.dept_name, E.emp_no, E.last_name, E.first_name
FROM dept_manager DM
LEFT JOIN departments D
	on DM.dept_no = D.dept_no
LEFT JOIN employees E
	on DM.emp_no = E.emp_no
	
-----List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT D.dept_name, E.emp_no, E.last_name, E.first_name
FROM employees E
INNER JOIN dept_emp DE
	on E.emp_no = DE.emp_no
INNER JOIN departments D
	on D.dept_no = DE.dept_no

-----List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name like 'B%'

-----List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT E.emp_no, E.last_name, E.first_name, D.dept_name
FROM employees E
LEFT JOIN dept_emp DE
	on E.emp_no = DE.emp_no
INNER JOIN departments D
	on D.dept_no = DE.dept_no
WHERE D.dept_name = 'Sales'

-----List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT E.emp_no, E.last_name, E.first_name, D.dept_name
FROM employees E
LEFT JOIN dept_emp DE
	on E.emp_no = DE.emp_no
INNER JOIN departments D
	on D.dept_no = DE.dept_no
WHERE D.dept_name in ('Sales', 'Development')

-----In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(*) as freq_count
FROM employees
GROUP BY last_name
ORDER BY freq_count desc;
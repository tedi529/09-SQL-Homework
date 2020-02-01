SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no;

SELECT emp_no, hire_date FROM employees
WHERE employees.hire_date >= '1986-01-01'
AND employees.hire_date <= '1986-12-31';

SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, 
	   employees.last_name, employees.first_name, dept_manager.from_date, dept_manager.to_date
FROM dept_manager 
JOIN departments ON dept_manager.dept_no = departments.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no;

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no;

SELECT employees.first_name, employees.last_name
FROM employees
WHERE employees.first_name = 'Hercules'
AND employees.last_name LIKE 'B%';

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' 
OR departments.dept_name =  'Development';

SELECT employees.last_name, COUNT(employees.last_name) AS frequency
FROM employees
GROUP BY employees.last_name
ORDER BY frequency DESC;
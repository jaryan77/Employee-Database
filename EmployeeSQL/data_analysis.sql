--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.gender,
	salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE DATE_PART('year', hire_date) = 1986
	ORDER BY hire_date;

--3. List the manager of each department including: department number, department name, mgr's employee number, last name, first name
SELECT dept_managers.emp_no,
	dept_managers.dept_no,
	departments.dept_name,
	employees.first_name,
	employees.last_name
FROM dept_managers
INNER JOIN departments ON
dept_managers.dept_no = departments.dept_no
INNER JOIN employees ON
dept_managers.emp_no = employees.emp_no;

--4. List the department of each employee including: employee number, last name, first name, and department name
SELECT dept_emp.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM dept_emp
INNER JOIN departments ON
departments.dept_no = dept_emp.dept_no
INNER JOIN employees ON
dept_emp.emp_no = employees.emp_no;

--5.List first name, last name, and gender for employees with first name "Hercules" and last name beginning with "B."
SELECT first_name, last_name, gender
FROM employees
WHERE 
	first_name = 'Hercules'
	AND last_name LIKE 'B%';
	
--6.List all employees in the Sales department, including employee number, last name, first name, and department name
SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM dept_emp
INNER JOIN departments ON
departments.dept_no = dept_emp.dept_no
INNER JOIN employees ON
dept_emp.emp_no = employees.emp_no
WHERE dept_name = 'Sales';

--7.List all employees in the Sales and Development departments, including employee number, last name, first name, and department name
SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM dept_emp
INNER JOIN departments ON
departments.dept_no = dept_emp.dept_no
INNER JOIN employees ON
dept_emp.emp_no = employees.emp_no
WHERE dept_name in ('Sales','Development');

--8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(*) AS freq_count
FROM employees
GROUP BY last_name
ORDER BY freq_count DESC;


 


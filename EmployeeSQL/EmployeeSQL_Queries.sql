--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no "Employee Number", e.last_name "Last Name",
e.first_name "First Name", e.sex "Sex", s.salary "Salary"
FROM employees e
JOIN salaries s ON (e.emp_no = s.emp_no);
--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT emp_no "Employee Number", first_name "First Name", 
last_name "Last Name", hire_date "Hire Date"
FROM employees
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986'
ORDER BY hire_date
--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT d.dept_no "Department number", d.dept_name "Department Name", 
e.emp_no "Employee Number", e.first_name "First Name", e.last_name "Last Name"
FROM employees e
JOIN dept_manager dm ON (e.emp_no = dm.emp_no)
JOIN dept_emp de ON (dm.emp_no = de.emp_no)
JOIN departments d ON (dm.dept_no = d.dept_no)
ORDER BY dm DESC
--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no "Employee Number", e.last_name "Last Name", e.first_name "First Name",
d.dept_name "Department Name"
FROM employees e
JOIN dept_emp de ON (e.emp_no = de.emp_no)
JOIN departments d ON (de.dept_no = d.dept_no)
--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name "First Name", last_name "Last Name"
FROM employees
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%'
--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no "Employee Number", e.last_name "Last Name",
e.first_name "First Name", d.dept_name "Department Name"
FROM employees e
JOIN dept_emp de ON (e.emp_no = de.emp_no)
JOIN departments d ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales'
--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no "Employee Number", e.last_name "Last Name",
e.first_name "First Name", d.dept_name "Department Name"
FROM employees e
JOIN dept_emp de ON (e.emp_no = de.emp_no)
JOIN departments d ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'
--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name "Last Name", COUNT(last_name) "Last Name Count"
FROM employees
GROUP BY last_name
ORDER BY "Last Name Count" DESC

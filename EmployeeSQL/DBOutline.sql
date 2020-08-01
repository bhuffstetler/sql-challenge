departments
-
dept_no VARCHAR PK
dept_name VARCHAR

dept_emp
-
emp_no INTEGER PK FK >- employees.emp_no
dept_no VARCHAR PK FK >- departments.dept_no


dept_manager
-
dept_no VARCHAR PK FK >- departments.dept_no
emp_no INTEGER PK FK >- employees.emp_no


employees
-
emp_no INTEGER PK FK - salaries.emp_no
birth_date DATE
first_name VARCHAR
last_name VARCHAR
gender VARCHAR
hire_date DATE

salaries
-
emp_no INTEGER PK
salary INTEGER


titles
-
title_id INTEGER PK FK >- employees.emp_no
title VARCHAR PK

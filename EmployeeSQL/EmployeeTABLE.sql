DROP TABLE IF EXISTS departments Cascade;
DROP TABLE IF EXISTS dept_emp Cascade;
DROP TABLE IF EXISTS dept_manager Cascade;
DROP TABLE IF EXISTS employees Cascade;
DROP TABLE IF EXISTS salaries Cascade;
DROP TABLE IF EXISTS titles Cascade;


CREATE TABLE "departments" (
    "dept_no" char(4)   NOT NULL PRIMARY KEY,
    "dept_name" VARCHAR   NOT NULL
);

CREATE TABLE "employees" (
    "emp_no" INTEGER   NOT NULL PRIMARY KEY,
	"emp_title_id" VARCHAR,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" DATE   NOT NULL
);

CREATE TABLE "salaries" (
    "emp_no" INTEGER   NOT NULL PRIMARY KEY,
    "salary" INTEGER   NOT NULL,
    FOREIGN KEY("emp_no") REFERENCES "employees" ("emp_no")
);
---*****
CREATE TABLE "titles" (
    "title_id" VARCHAR NOT NULL,
    "title" VARCHAR   NOT NULL,
    PRIMARY KEY ("title_id")
	);
	
CREATE TABLE "dept_emp" (
    "emp_no" INTEGER   NOT NULL,
    "dept_no" CHAR(4)   NOT NULL,
    PRIMARY KEY ("emp_no","dept_no"),
    FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);

CREATE TABLE "dept_manager" (
    "dept_no" CHAR(4)   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
    PRIMARY KEY ("dept_no","emp_no"),
    FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no"),
    FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);

SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;

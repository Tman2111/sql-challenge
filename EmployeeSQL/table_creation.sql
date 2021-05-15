--Create the necessary tables to import csv files
--create table for employees
CREATE TABLE "Employees" (
    emp_no       INTEGER      NOT NULL,
	emp_title_id VARCHAR(10), NOT NULL
    birth_date   DATE         NOT NULL,
    first_name   VARCHAR(30)  NOT NULL,
    last_name    VARCHAR(30)  NOT NULL,
    sex          VARCHAR      NOT NULL,
    hire_date    DATE         NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

--create table for departments
CREATE TABLE departments (
    dept_no     VARCHAR(4)         NOT NULL,
    dept_name   VARCHAR(40)     NOT NULL,
    PRIMARY KEY (dept_no),
    UNIQUE   	(dept_name)
);

--create table for department manager
CREATE TABLE dept_manager (
   dept_no      VARCHAR(10)      NOT NULL,
   emp_no       INT              NOT NULL,
   FOREIGN KEY (emp_no)  REFERENCES employees (emp_no),
   FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
   PRIMARY KEY (emp_no,dept_no)
);

--create table for department employees
CREATE TABLE dept_emp (
    emp_no      INT              NOT NULL,
    dept_no     VARCHAR(10)      NOT NULL,
    FOREIGN KEY (emp_no)  REFERENCES employees   (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no,dept_no)
);

--create table for titles
CREATE TABLE titles (
    title_id    VARCHAR(10)     NOT NULL,
    title       VARCHAR(50)     NOT NULL,
    PRIMARY KEY (title_id)
);

--create table for salaries
CREATE TABLE salaries (
    emp_no      INT             NOT NULL,
    salary      INT             NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    PRIMARY KEY (emp_no)
);



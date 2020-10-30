-- Title Table 
CREATE TABLE titles (
    title_id VARCHAR(5)  NOT NULL ,
    title VARCHAR(30)  NOT NULL ,
    PRIMARY KEY (title_id)
);

SELECT * FROM titles

-- Employees Table
CREATE TABLE employees (
    emp_no INT  NOT NULL ,
    emp_title_id VARCHAR(5) NOT NULL ,
    birth_date VARCHAR(11)  NOT NULL ,
    first_name VARCHAR(15)  NOT NULL ,
    last_name VARCHAR(20)  NOT NULL ,
    sex VARCHAR(1)  NOT NULL ,
    hire_date VARCHAR(11)  NOT NULL ,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees

-- Salary Table
CREATE TABLE salary (
    emp_no INT  NOT NULL ,
    salary INT  NOT NULL ,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salary

-- Department Table 
CREATE TABLE departments (
    dept_no VARCHAR(4)  NOT NULL ,
    dept_name VARCHAR(90)  NOT NULL ,
    PRIMARY KEY (dept_no)
);

SELECT * FROM departments

-- Employees by Department Table

CREATE TABLE employees_by_dep (
    emp_no INT NOT NULL ,
    dept_no VARCHAR(4)  NOT NULL ,
    PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM employees_by_dep

-- Managers Table 

CREATE TABLE managers (
    dept_no VARCHAR(4)  NOT NULL ,
    emp_no INT  NOT NULL ,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM managers


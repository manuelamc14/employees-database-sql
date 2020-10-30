-- Analysis --

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT employees.emp_no,
employees.last_name,
employees.first_name,
employees.sex, 
salary.salary
FROM employees
INNER JOIN salary ON
employees.emp_no = salary.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT employees.first_name,
employees.last_name,
employees.hire_date
FROM employees
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986'
ORDER BY hire_date DESC;

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT managers.dept_no,
departments.dept_name,
managers.emp_no,
employees.first_name,
employees.last_name
FROM managers
INNER JOIN departments ON
managers.dept_no = departments.dept_no
INNER JOIN employees ON
managers.emp_no = employees.emp_no
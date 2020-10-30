--ANALYSIS--

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT employees.emp_no,
employees.last_name,
employees.first_name,
employees.sex, 
salary.salary
FROM employees
INNER JOIN salary ON
employees.emp_no = salary.emp_no



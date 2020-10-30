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

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM employees
INNER JOIN employees_by_dep ON
employees.emp_no = employees_by_dep.emp_no
INNER JOIN departments ON
employees_by_dep.dept_no = departments.dept_no

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT employees.first_name,
employees.last_name,
employees.sex
FROM employees
WHERE first_name = 'Hercules'
and last_name LIKE 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employees_by_dep.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM employees_by_dep
INNER JOIN employees ON
employees_by_dep.emp_no = employees.emp_no
INNER JOIN departments ON
employees_by_dep.dept_no = departments.dept_no
WHERE employees_by_dep.dept_no = 'd007'

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT employees_by_dep.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM employees_by_dep
INNER JOIN employees ON
employees_by_dep.emp_no = employees.emp_no
INNER JOIN departments ON
employees_by_dep.dept_no = departments.dept_no
WHERE employees_by_dep.dept_no in ('d007','d005')
ORDER BY emp_no

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT employees.last_name AS "Last Name", 
COUNT(employees.last_name) AS "Last Name Count"
FROM employees
GROUP BY last_name
ORDER BY "Last Name Count" DESC





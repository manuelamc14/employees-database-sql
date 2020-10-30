-- ANALYSIS --

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT employees.emp_no AS "Employee No",
employees.last_name AS "Last Name",
employees.first_name AS "First Name",
employees.sex AS "Gender", 
salary.salary AS "Salary"
FROM employees
INNER JOIN salary ON
employees.emp_no = salary.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT employees.first_name AS "First_name",
employees.last_name AS "Last Name",
employees.hire_date AS "Hired Date"
FROM employees
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986'
ORDER BY hire_date DESC;

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT managers.dept_no AS "Dept No",
departments.dept_name AS "Dept Name",
managers.emp_no AS "Employee No",
employees.first_name AS "First_Name",
employees.last_name AS "Last_Name"
FROM managers
INNER JOIN departments ON
managers.dept_no = departments.dept_no
INNER JOIN employees ON
managers.emp_no = employees.emp_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employees.emp_no AS "Employee No",
employees.last_name AS "Last Name",
employees.first_name AS "First Name",
departments.dept_name AS "Dept Name"
FROM employees
INNER JOIN employees_by_dep ON
employees.emp_no = employees_by_dep.emp_no
INNER JOIN departments ON
employees_by_dep.dept_no = departments.dept_no
ORDER BY "Dept Name", "Employee No";

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT employees.first_name AS "First Name",
employees.last_name AS "Last Name",
employees.sex AS "Gender"
FROM employees
WHERE first_name = 'Hercules'
and last_name LIKE 'B%'
ORDER BY "Gender";

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employees_by_dep.emp_no AS "Employee No",
employees.last_name AS "Last Name",
employees.first_name AS "First Name",
departments.dept_name AS "Dept Name"
FROM employees_by_dep
INNER JOIN employees ON
employees_by_dep.emp_no = employees.emp_no
INNER JOIN departments ON
employees_by_dep.dept_no = departments.dept_no
WHERE employees_by_dep.dept_no = 'd007'
ORDER BY "Employee No"

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT employees_by_dep.emp_no AS "Employee No",
employees.last_name AS "Last Name",
employees.first_name AS "First Name",
departments.dept_name AS "Dept Name"
FROM employees_by_dep
INNER JOIN employees ON
employees_by_dep.emp_no = employees.emp_no
INNER JOIN departments ON
employees_by_dep.dept_no = departments.dept_no
WHERE employees_by_dep.dept_no in ('d007','d005')
ORDER BY "Dept Name", "Employee No"

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT employees.last_name AS "Last Name", 
COUNT(employees.last_name) AS "Last Name Count"
FROM employees
GROUP BY last_name
ORDER BY "Last Name Count" DESC





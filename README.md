# employees-database-sql

The project's aim is to create a database for the employees information of a company. The database is integrated by six tables.

1. Departments : It includes the name and the id departments.
2. Dept_emp: it includes the employee id and the id of the department that he/she belongs to.
3. Dept_manager: It includes the managers employee id and the department id.
4. Employees: It includes the personal information of the employees.
5. Salaries: It includes the employee id and the salary.
6. Titles: it includes the title name and the title id. 

Please see below the ERD used to establish the table schema:

![alt text](https://github.com/manuelamc14/employees-database-sql/blob/main/EmployeeSQL/employees_erd.png?raw=true)

After the database was created the following queries were run to test the database. 

1. List the following details of each employee: employee number, last name, first name, sex, and salary.
2. List first name, last name, and hire date for employees who were hired in 1986.
3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
4. List the department of each employee with the following information: employee number, last name, first name, and department name.
5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

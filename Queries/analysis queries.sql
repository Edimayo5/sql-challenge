--joining employee and salaries table to list out emplyee number, firts name, last name, sex and salary
SELECT e.emp_no, 
 e.last_name, 
 e.first_name, 
 e.sex,s.salary 
FROM employees AS e
INNER JOIN salaries AS s ON
e.emp_no = s.emp_no;


--listing first name, last name and hire date for employees hired in 1986
SELECT first_name,
 last_name,
 hire_date
FROM Employees
WHERE hire_date LIKE '%1986';

--listing the manager of each department, dept_no,department name, employee number, last name and first name.
SELECT dm.dept_no,
 d.dept_name,
 dm.emp_no,
 e.last_name,
 e.first_name
FROM dept_manager as dm
INNER JOIN department as d ON
dm.dept_no = d.dept_no
INNER JOIN employees as e ON
dm.emp_no = e.emp_no;

--listing employee's department number along with employee number, last name, first name and department name.
SELECT de.dept_no,
 de.emp_no,
 e.last_name,
 e.first_name,
 d.dept_name
FROM dept_emp as de
RIGHT JOIN employees as e ON
de.emp_no = e.emp_no
RIGHT JOIN department as d ON
de.dept_no = d.dept_no;

--listing first name, last name and sex for employees with first name, last name as Hercules B...
SELECT first_name,
 last_name,
 sex
FROM employees
WHERE 
  first_name = 'Hercules' 
  AND last_name LIKE 'B%';

--listing employees in sales department along with emp no, last name and first name
SELECT 
 e.emp_no,
 e.last_name,
 e.first_name
FROM employees as e
INNER JOIN dept_emp as de ON
e.emp_no = de.emp_no
INNER JOIN department as d ON
de.dept_no = d.dept_no
 WHERE dept_name = 'Sales';
 
--listing employees in sales or development department as well as emp no, last name and first name
SELECT 
 e.emp_no,
 e.last_name,
 e.first_name,
 d.dept_name
FROM employees as e
INNER JOIN dept_emp as de ON
e.emp_no = de.emp_no
INNER JOIN department as d ON
de.dept_no = d.dept_no
 WHERE dept_name = 'Sales'
 OR dept_name = 'Development';
 
--frequency count for each employee last name
SELECT employees.last_name, 
COUNT(employees.last_name) as "shared last name count"
FROM employees
GROUP BY employees.last_name
ORDER BY "shared last name count" DESC;

 

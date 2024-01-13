CREATE TABLE Title (
    title_id VARCHAR   NOT NULL,
    title VARCHAR   NOT NULL,
    PRIMARY KEY (title_id)
);

CREATE TABLE Employees (
    emp_no INT   NOT NULL,
    emp_title_id VARCHAR   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    sex CHAR   NOT NULL,
    hire_date DATE   NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY(emp_title_id) REFERENCES Title (title_id)
     );
	 
ALTER TABLE Title
ALTER COLUMN title_id TYPE VARCHAR(5);

ALTER TABLE Employees
ALTER COLUMN emp_title_id TYPE VARCHAR(5);

ALTER TABLE Employees
 ALTER COLUMN first_name TYPE VARCHAR(25),
 ALTER COLUMN last_name TYPE VARCHAR(25);
 
ALTER TABLE Title
ALTER COLUMN title TYPE VARCHAR(20)

SELECT * FROM Title
SELECT * FROM Employees

CREATE TABLE Salaries (
    salary_id INT   NOT NULL,
    emp_no INT   NOT NULL,
    salary INT   NOT NULL,
    PRIMARY KEY (salary_id),
    FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);

CREATE TABLE Department (
    dept_no VARCHAR   NOT NULL,
    dept_name VARCHAR   NOT NULL,
    PRIMARY KEY (dept_no)
);

CREATE TABLE Dept_emp (
    emp_no INT   NOT NULL,
    dept_no VARCHAR   NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES Department (dept_no)
);

CREATE TABLE Dept_manager (
    dept_no_emp_no VARCHAR   NOT NULL,
    dept_no VARCHAR   NOT NULL,
    emp_no INT   NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES Department (dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);

SELECT * FROM Salaries

ALTER TABLE Department
     ALTER COLUMN dept_no TYPE VARCHAR(4),
	 ALTER COLUMN dept_name TYPE VARCHAR(20);
	
ALTER TABLE Dept_manager DROP COLUMN dept_no_emp_no;

ALTER TABLE Dept_emp
  ALTER COLUMN dept_no TYPE VARCHAR(4);
  
ALTER TABLE Dept_manager
  ALTER COLUMN dept_no TYPE VARCHAR (4);
  
SELECT * FROM department
SELECT * FROM dept_emp
SELECT * FROM dept_manager

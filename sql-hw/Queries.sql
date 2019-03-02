CREATE TABLE "Data_Departments" (
    "ID" INTEGER   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Data_Departments" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "Data_Dept_Emp" (
    "ID" INTEGER   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    "from_date" VARCHAR   NOT NULL,
    "to_date" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Data_Dept_Emp" PRIMARY KEY (
        "ID"
     )
);
CREATE TABLE "Data_Dept_Manager" (
    "ID" INTEGER   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
    "from_date" VARCHAR   NOT NULL,
    "to_date" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Data_Dept_Manager" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "Data_Employees" (
    "ID" INTEGER   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
    "birthdate" VARCHAR   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "gender" VARCHAR   NOT NULL,
    "hire_date" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Data_Employees" PRIMARY KEY (
        "ID"
     )
);
CREATE TABLE "Data_Salaries" (
    "ID" INTEGER   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
    "salary" INTEGER   NOT NULL,
    "from_date" VARCHAR   NOT NULL,
    "to_date" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Data_Salaries" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "Data_Titles" (
    "ID" INTEGER   NOT NULL,
    "emp_no" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    "from_date" VARCHAR   NOT NULL,
    "to_date" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Data_Titles" PRIMARY KEY (
        "ID"
     )
);



-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM data_salaries AS s
INNER JOIN data_employees AS e ON
e.emp_no = s.emp_no;

-- 2. List employees who were hired in 1986.
SELECT * FROM data_employees
WHERE hire_date LIKE '1986%';

-- 3. List the manager of each department with the following information: department number, department name, 
--    the manager's employee number, last name, first name, and start and end employment dates.
SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
FROM data_departments AS d
INNER JOIN data_dept_manager AS m ON
m.dept_no = d.dept_no
JOIN data_employees AS e ON
e.emp_no = m.emp_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name
FROM data_employees AS e
INNER JOIN dept_emp AS d ON
e.emp_no = d.emp_no
INNER JOIN data_departments AS dp ON
dp.dept_no = d.dept_no;

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM data_employees
WHERE first_name LIKE 'Hercules'
AND last_name LIKE 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name
FROM data_employees AS e
INNER JOIN dept_emp AS d ON
e.emp_no = d.emp_no
INNER JOIN data_departments AS dp ON
dp.dept_no = d.dept_no
WHERE dp.dept_name LIKE 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name
FROM data_employees AS e
INNER JOIN dept_emp AS d ON
e.emp_no = d.emp_no
INNER JOIN data_departments AS dp ON
dp.dept_no = d.dept_no
WHERE dp.dept_name LIKE 'Development'
OR dp.dept_name LIKE 'Sales';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(*) AS frequency
FROM data_employees
GROUP BY last_name
ORDER BY frequency DESC;
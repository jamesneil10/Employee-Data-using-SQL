-- Exported from QuickDBD: https://www.quickdatatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Data_Departments" (
    "Data_Departments_ID" INTEGER   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Data_Departments" PRIMARY KEY (
        "Data_Departments_ID"
     )
);

CREATE TABLE "Data_Dept_Emp" (
    "Data_Dept_Emp_ID" INTEGER   NOT NULL,
    "Data_Departments_ID" INTEGER   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    "from_date" VARCHAR   NOT NULL,
    "to_date" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Data_Dept_Emp" PRIMARY KEY (
        "Data_Dept_Emp_ID"
     )
);

CREATE TABLE "Data_Dept_Manager" (
    "Data_Dept_Manager_ID" INTEGER   NOT NULL,
    "Data_Departments_ID" INTEGER   NOT NULL,
    "Data_Dept_Emp_ID" INTEGER   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
    "from_date" VARCHAR   NOT NULL,
    "to_date" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Data_Dept_Manager" PRIMARY KEY (
        "Data_Dept_Manager_ID"
     )
);

CREATE TABLE "Data_Employees" (
    "Data_Employees_ID" INTEGER   NOT NULL,
    "Data_Departments_ID" INTEGER   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
    "birthdate" VARCHAR   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "gender" VARCHAR   NOT NULL,
    "hire_date" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Data_Employees" PRIMARY KEY (
        "Data_Employees_ID"
     )
);

CREATE TABLE "Data_Salaries" (
    "Data_Salaries_ID" INTEGER   NOT NULL,
    "Data_Dept_Manager_ID" INTEGER   NOT NULL,
    "Data_Dept_Emp_ID" INTEGER   NOT NULL,
    "Data_Employees_ID" INTEGER   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
    "salary" INTEGER   NOT NULL,
    "from_date" VARCHAR   NOT NULL,
    "to_date" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Data_Salaries" PRIMARY KEY (
        "Data_Salaries_ID"
     )
);

CREATE TABLE "Data_Titles" (
    "Data_Titles_ID" INTEGER   NOT NULL,
    "Data_Dept_Manager_ID" INTEGER   NOT NULL,
    "Data_Employees_ID" INTEGER   NOT NULL,
    "Data_Dept_Emp_ID" INTEGER   NOT NULL,
    "emp_no" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    "from_date" VARCHAR   NOT NULL,
    "to_date" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Data_Titles" PRIMARY KEY (
        "Data_Titles_ID"
     )
);

ALTER TABLE "Data_Dept_Emp" ADD CONSTRAINT "fk_Data_Dept_Emp_Data_Departments_ID" FOREIGN KEY("Data_Departments_ID")
REFERENCES "Data_Departments" ("Data_Departments_ID");

ALTER TABLE "Data_Dept_Manager" ADD CONSTRAINT "fk_Data_Dept_Manager_Data_Departments_ID" FOREIGN KEY("Data_Departments_ID")
REFERENCES "Data_Departments" ("Data_Departments_ID");

ALTER TABLE "Data_Dept_Manager" ADD CONSTRAINT "fk_Data_Dept_Manager_Data_Dept_Emp_ID" FOREIGN KEY("Data_Dept_Emp_ID")
REFERENCES "Data_Dept_Emp" ("Data_Dept_Emp_ID");

ALTER TABLE "Data_Employees" ADD CONSTRAINT "fk_Data_Employees_Data_Departments_ID" FOREIGN KEY("Data_Departments_ID")
REFERENCES "Data_Departments" ("Data_Departments_ID");

ALTER TABLE "Data_Salaries" ADD CONSTRAINT "fk_Data_Salaries_Data_Dept_Manager_ID" FOREIGN KEY("Data_Dept_Manager_ID")
REFERENCES "Data_Dept_Manager" ("Data_Dept_Manager_ID");

ALTER TABLE "Data_Salaries" ADD CONSTRAINT "fk_Data_Salaries_Data_Dept_Emp_ID" FOREIGN KEY("Data_Dept_Emp_ID")
REFERENCES "Data_Dept_Emp" ("Data_Dept_Emp_ID");

ALTER TABLE "Data_Salaries" ADD CONSTRAINT "fk_Data_Salaries_Data_Employees_ID" FOREIGN KEY("Data_Employees_ID")
REFERENCES "Data_Employees" ("Data_Employees_ID");

ALTER TABLE "Data_Titles" ADD CONSTRAINT "fk_Data_Titles_Data_Dept_Manager_ID" FOREIGN KEY("Data_Dept_Manager_ID")
REFERENCES "Data_Dept_Manager" ("Data_Dept_Manager_ID");

ALTER TABLE "Data_Titles" ADD CONSTRAINT "fk_Data_Titles_Data_Employees_ID" FOREIGN KEY("Data_Employees_ID")
REFERENCES "Data_Employees" ("Data_Employees_ID");

ALTER TABLE "Data_Titles" ADD CONSTRAINT "fk_Data_Titles_Data_Dept_Emp_ID" FOREIGN KEY("Data_Dept_Emp_ID")
REFERENCES "Data_Dept_Emp" ("Data_Dept_Emp_ID");


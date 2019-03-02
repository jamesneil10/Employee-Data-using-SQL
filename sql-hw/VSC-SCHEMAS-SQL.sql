-- Exported from QuickDBD: https://www.quickdatatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


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


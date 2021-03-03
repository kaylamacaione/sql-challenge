-----Create Tables

-----Department Table
create table departments (
	dept_no varchar,
	dept_name varchar,
);

alter table departments add primary key (dept_no)


select * from departments


-----Employee Table
create table employees (
	emp_no int NOT NULL,
	emp_title_id varchar NOT NULL,
	birth_date date NOT NULL,
	first_name varchar NOT NULL,
	last_name varchar NOT NULL,
	sex varchar NOT NULL,
	hire_date date NOT NULL,
	PRIMARY KEY (emp_no)
);

select * from employees


-----Dept Employee Table
create table dept_emp (
	emp_no int,
	dept_no varchar,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from dept_emp


-----Dept Manager Table
create table dept_manager (
	dept_no varchar,
	emp_no int,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from dept_manager



-----Salaries Table
create table salaries (
	emp_no int,
	salary int,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from salaries


-----Titles Table
create table titles (
	title_id varchar,
	title varchar
);

select * from titles
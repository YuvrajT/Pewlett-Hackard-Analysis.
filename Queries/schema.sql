-- Create tables for PH-EmployeesDB

CREATE TABLE departments (
		dept_no VARCHAR(4) NOT NULL, 
		dept_name VARCHAR(40)NOT NULL,
		primary key (dept_no),
		unique (dept_name)
); 

CREATE TABLE employees (
	emp_no INT not null, 
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	gender varchar not null,
	hire_date date not null,
	PRIMARY KEY (emp_no)
);

CREATE TABLE dept_manager (
	dept_no varchar(4) not null,
	emp_no int not null,
	from_date date not null,
	to_date date not null,
	primary key (emp_no, dept_no),
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees (emp_no)
);

create table salaries (
	emp_no int not null,
	salary int not null,
	from_date date not null,
	to_date date not null,
primary key(emp_no),
foreign key(emp_no) references employees(emp_no)
);

create table dep_emp (
	emp_no int not null,
	dept_no varchar(4) not null,
	from_date date not null,
	to_date date not null,
primary key (emp_no,dept_no),
foreign key (emp_no) references salaries (emp_no),
foreign key (dept_no) references departments (dept_no)
);

create table titles(
	emp_no int not null,
	title varchar not null,
	from_date date not null,
	to_date date not null,
primary key(emp_no, title, from_date),
foreign key(emp_no) references salaries(emp_no)
);
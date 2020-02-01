CREATE TABLE employees (emp_no BIGINT PRIMARY KEY,
					   birth_date DATE,
					   first_name TEXT NOT NULL,
					   last_name TEXT NOT NULL,
					   gender TEXT,
					   hire_date DATE);

CREATE TABLE departments (dept_no VARCHAR PRIMARY KEY,
						 dept_name TEXT NOT NULL);
						 
CREATE TABLE dept_emp (emp_no BIGINT,
					  dept_no VARCHAR,
					  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
					  from_date DATE,
					  to_date DATE NOT NULL,
					  PRIMARY KEY (emp_no, dept_no, from_date));

CREATE TABLE dept_manager (dept_no VARCHAR NOT NULL,
						  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
						  emp_no BIGINT,
						  from_date DATE,
						  to_date DATE NOT NULL,
						  PRIMARY KEY (emp_no, from_date));

CREATE TABLE titles (emp_no BIGINT,
					FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
					title TEXT NOT NULL,
					from_date DATE,
					to_date DATE NOT NULL,
					PRIMARY KEY (emp_no, from_date));
					
CREATE TABLE salaries (emp_no BIGINT,
					  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
					  salary BIGINT NOT NULL,
					  from_date DATE,
					  to_date DATE NOT NULL,
					  PRIMARY KEY (emp_no, from_date));
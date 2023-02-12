DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS employee;

CREATE TABLE department (
    id        INTEGER PRIMARY KEY,
    dept_name TEXT    NOT NULL,
    dept_code TEXT    NOT NULL
);

CREATE TABLE employee (
    id            INTEGER PRIMARY KEY,
    first_name    TEXT    NOT NULL,
    last_name     TEXT    NOT NULL,
    hire_date     TEXT    NOT NULL,
    department_id INTEGER NOT NULL REFERENCES department (id)
);

INSERT INTO department (dept_name, dept_code)
VALUES ('Information Technology', 'IT'),
       ('Sales', 'SLS'),
       ('Human Resources', 'HR');	   
 
INSERT INTO employee (first_name, last_name, hire_date, department_id)
VALUES ('Tom', 'Cooper', '2020-01-10', 1),
       ('John', 'Smith', '2015-04-13', 3),
       ('Mike', 'Pond', '2013-04-01', 2),
       ('Alice', 'Cooper', '2016-01-22', 3);
	   
SELECT * FROM department;	   
SELECT * FROM employee;

INSERT INTO employee (first_name, last_name, hire_date, department_id)
VALUES ('Tom', 'Cooper', '2020-01-10', 10);

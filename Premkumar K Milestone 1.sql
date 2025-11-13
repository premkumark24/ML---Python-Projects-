-- 2 MARKS

-- 6 Differentiate between DDL and DML commands with examples.
DDL purpose is change the database table like objects.
example:  CREATE, ALTER, DROP, TRUNCATE

DML is working with data inside of the database objects.
example: SELECT, INSERT, UPDATE, DELETE

-- 7 Write a query to fetch the second highest salary from an employee table.

SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);

-- 8 Explain the difference between INNER JOIN and LEFT JOIN with an example.
INNER JOIN:
      Its give rows like where is value match in both side.
      also its show only matched records.
      Use INNER JOIN when you only want matching data.
LEFT JOIN:
      its Returns all rows from the left table. 
      also matching rows from the right.
         
-- 9 What is a Trigger in MySQL? Give a use case.
	A Trigger  special type of stored procedure that automatically executes. 
    if the comments like INSERT, UPDATE, DELETE in the table. It was automatically execute. 

-- 10 Why is Normalization important? Explain with an example.
      Normalization is important.
      because it reduces data redundancy and  improves the accuracy.


-- 5 MARKS

CREATE DATABASE Company;
USE Company;

-- a) Write a DDL command to create the departments table with dept_id as Primary Key and dept_name as NOT NULL.
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

-- b) Insert two sample records into the departments table (e.g., Sales, IT).
INSERT INTO departments (dept_id, dept_name) VALUES
(1, 'Sales'),
(2, 'IT');

-- c) Write a query to display the employee name and department name using a JOIN between employees and departments.
SELECT e.emp_name, d.dept_name
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id;

--  d) Write a query to find the highest salary using an aggregate function.
SELECT MAX(salary) AS highest_salary
FROM employees;

-- e) Write a subquery to fetch the employees who earn more than the average salary.
SELECT emp_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- f) Create a view named emp_salary_view to display emp_name, dept_name, salary.

CREATE VIEW emp_salary_view AS
SELECT e.emp_name, d.dept_name, e.salary
FROM employees

-- g) Write a stored procedure named GetDeptEmployees that accepts a dept_id and returns all employee names in that department.

CREATE PROCEDURE GetDeptEmployees(IN pro_dept_id INT)
BEGIN
    SELECT emp_name
    FROM employees
    WHERE dept_id = pro_dept_id;
END;

-- h) Write a user-defined function YearWorked(hire_date) that calculates the number of years an employee has worked in the company.

CREATE FUNCTION YearWorked(hire_date DATE)



-- i) Create a trigger that automatically inserts a record into attendance table with status = 'Present' whenever a new employee is added.
CREATE TRIGGER trg_new_employee_attendance
AFTER INSERT ON employees
FOR EACH ROW



-- j) Write a query using string function to display employee names in uppercase.
SELECT UPPER(emp_name) AS emp_name_upper
FROM employees;


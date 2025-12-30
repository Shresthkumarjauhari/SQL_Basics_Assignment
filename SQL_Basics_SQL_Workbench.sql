
-- SQL Basics Assignment
-- Tool: SQL Workbench / MySQL Workbench
-- Instructions followed: Create and execute in SQL Workbench

-- Question 1: Create Database and Employees Table
CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

CREATE TABLE IF NOT EXISTS employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    hire_date DATE
);

-- Question 2: Insert Data into Employees Table
INSERT INTO employees (employee_id, first_name, last_name, department, salary, hire_date) VALUES
(101, 'Amit', 'Sharma', 'HR', 50000, '2020-01-15'),
(102, 'Riya', 'Kapoor', 'Sales', 75000, '2019-03-22'),
(103, 'Raj', 'Mehta', 'IT', 90000, '2018-07-11'),
(104, 'Neha', 'Verma', 'IT', 85000, '2021-09-01'),
(105, 'Arjun', 'Singh', 'Finance', 60000, '2022-02-10');

-- Question 3: Display All Employees Sorted by Salary (Lowest to Highest)
SELECT * FROM employees ORDER BY salary ASC;

-- Question 4: Show Employees Sorted by Department (A–Z) and Salary (High to Low)
SELECT * FROM employees ORDER BY department ASC, salary DESC;

-- Question 5: List All Employees in IT Department Ordered by Hire Date (Newest First)
SELECT * FROM employees WHERE department = 'IT' ORDER BY hire_date DESC;

-- Question 6: Create and Populate Sales Table
CREATE TABLE IF NOT EXISTS sales (
    sale_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    amount INT,
    sale_date DATE
);

INSERT INTO sales (sale_id, customer_name, amount, sale_date) VALUES
(1, 'Aditi', 1500, '2024-08-01'),
(2, 'Rohan', 2200, '2024-08-03'),
(3, 'Aditi', 3500, '2024-09-05'),
(4, 'Meena', 2700, '2024-09-15'),
(5, 'Rohan', 4500, '2024-09-25');

-- Question 7: Display All Sales Sorted by Amount (Highest to Lowest)
SELECT * FROM sales ORDER BY amount DESC;

-- Question 8: Show All Sales Made by Customer 'Aditi'
SELECT * FROM sales WHERE customer_name = 'Aditi';

-- Question 9: Difference Between Primary Key and Foreign Key
-- Answer (Theory):
-- Primary Key uniquely identifies records in a table.
-- Foreign Key creates a relationship between two tables.

-- Question 10: What Are Constraints in SQL?
-- Answer (Theory):
-- Constraints are rules applied to table columns to maintain data integrity.

create database sqlhomework_15
go
use sqlhomework_15

1. Find Employees with Minimum Salary
Task: Retrieve employees who earn the minimum salary in the company. Tables: employees (columns: id, name, salary)
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10, 2)
);

INSERT INTO employees (id, name, salary) VALUES
(1, 'Alice', 50000),
(2, 'Bob', 60000),
(3, 'Charlie', 50000);

--Answer
select * from employees
where salary = (select min(salary) from employees)

2. Find Products Above Average Price
Task: Retrieve products priced above the average price. Tables: products (columns: id, product_name, price)

CREATE TABLE products (
    id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2)
);

INSERT INTO products (id, product_name, price) VALUES
(1, 'Laptop', 1200),
(2, 'Tablet', 400),
(3, 'Smartphone', 800),
(4, 'Monitor', 300);
-- Answer
select * from products
where price > (select avg(price) from products)

Level 2: Nested Subqueries with Conditions
3. Find Employees in Sales Department Task: Retrieve employees who work in the "Sales" department.
Tables: employees (columns: id, name, department_id), departments (columns: id, department_name)

CREATE TABLE departments (
    id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

INSERT INTO departments (id, department_name) VALUES
(1, 'Sales'),
(2, 'HR');

INSERT INTO employees (id, name, department_id) VALUES
(1, 'David', 1),
(2, 'Eve', 2),
(3, 'Frank', 1);


4. Find Customers with No Orders
Task: Retrieve customers who have not placed any orders. Tables: customers (columns: customer_id, name), 
orders (columns: order_id, customer_id
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers (customer_id, name) VALUES
(1, 'Grace'),
(2, 'Heidi'),
(3, 'Ivan');

INSERT INTO orders (order_id, customer_id) VALUES
(1, 1),
(2, 1);

-- Answer
select * from customers
left join orders 
on customers.customer_id=orders.customer_id
where order_id is null

select * from customers
where customer_id != (select customer_id from orders)

5. Find Products with Max Price in Each Category
Task: Retrieve products with the highest price in each category. Tables: 
products (columns: id, product_name, price, category_id)
--answer is
select max(price) from products
group by category_id

CREATE TABLE products (
    id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2),
    category_id INT
);

INSERT INTO products (id, product_name, price, category_id) VALUES
(1, 'Tablet', 400, 1),
(2, 'Laptop', 1500, 1),
(3, 'Headphones', 200, 2),
(4, 'Speakers', 300, 2);

6. Find Employees in Department with Highest Average Salary
where salary= (select max (e2.salary) from employees e2    where employees.id = departments.id

select salary from employees e1
join departments
ON e1.department_id=departments.id
where salary = (select max (e2.salary) from employees e2 )
group by department_id, salary

select e1.Salary from Employees e1
where salary = (select max (Salary) from Employees e2 where  e1.Salary=e2.Salary)
group by Department
select * from employees
select * from departments
CREATE TABLE departments (
    id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10, 2),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

INSERT INTO departments (id, department_name) VALUES
(1, 'IT'),
(2, 'Sales');

INSERT INTO employees (id, name, salary, department_id) VALUES
(1, 'Jack', 80000, 1),
(2, 'Karen', 70000, 1),
(3, 'Leo', 60000, 2);


7. Find Employees Earning Above Department Average
Task: Retrieve employees earning more than the average salary in their department.
drop table Employees
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10, 2),
    department_id INT
);

INSERT INTO employees (id, name, salary, department_id) VALUES
(1, 'Mike', 50000, 1),
(2, 'Nina', 75000, 1),
(3, 'Olivia', 40000, 2),
(4, 'Paul', 55000, 2);

select * from employees e1
where salary > (select avg(salary) from employees e2  where e1.salary=e2.salary group by department_id )

8. Find Students with Highest Grade per Course

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE grades (
    student_id INT,
    course_id INT,
    grade DECIMAL(4, 2),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

INSERT INTO students (student_id, name) VALUES
(1, 'Sarah'),
(2, 'Tom'),
(3, 'Uma');

INSERT INTO grades (student_id, course_id, grade) VALUES
(1, 101, 95),
(2, 101, 85),
(3, 102, 90),
(1, 102, 80);

select name, g.course_id, g.grade from students
join grades as g
on students.student_id=g.student_id
where g.grade = (select max(g2.grade) from grades as g2 where g.course_id=g2.course_id)


	9. Find Third-Highest Price per Category Task: Retrieve products with the third-highest price in each category. 
	Tables: products (	columns: id, product_name, price, category_id)
	drop table products
	CREATE TABLE products (
    id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2),
    category_id INT
);

INSERT INTO products (id, product_name, price, category_id) VALUES
(1, 'Phone', 800, 1),
(2, 'Laptop', 1500, 1),
(3, 'Tablet', 600, 1),
(4, 'Smartwatch', 300, 1),
(5, 'Headphones', 200, 2),
(6, 'Speakers', 300, 2),
(7, 'Earbuds', 100, 2);

select top 3 p.id, p.product_name, p1.price from products p
join products p1
on p.id=p1.id

select id, product_name, category_id,
(select top 3 price from products p2 where p.category_id>p2.category_id order by price desc)
from products p

select top 3  price  from products
order by price desc
group by category_id

select * from products
SELECT 
    p.id,
    p.product_name,
    p.category_id,
    p.price
FROM 
    products p
WHERE 
    2 = (
        SELECT COUNT(DISTINCT p2.price)
        FROM products p2
        WHERE p2.category_id = p.category_id
          AND p2.price > p.price
    );


	10. Find Employees whose Salary Between Company Average and Department Max Salary
	drop table employees
	CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10, 2),
    department_id INT
);

INSERT INTO employees (id, name, salary, department_id) VALUES
(1, 'Alex', 70000, 1),
(2, 'Blake', 90000, 1),
(3, 'Casey', 50000, 2),
(4, 'Dana', 60000, 2),
(5, 'Evan', 75000, 1);
select * from employees
select e.id, e.name, e.salary from employees e
where e.salary> (select avg(salary) from employees)
and e.salary < (select max(salary)from employees d where e.department_id=d.department_id)

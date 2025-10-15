create database homework7sql
go 
use homework7sql
1.Write a query to find the minimum (MIN) price of a product in the Products table.
select min(price) from products
2.Write a query to find the maximum (MAX) Salary from the Employees table.
select max(salary) as 'higest salary' from employees
3.Write a query to count the number of rows in the Customers table.
select count(*) from customers
4.Write a query to count the number of unique product categories from the Products table.
select count(distinct category) from products
select * from products
5.Write a query to find the total sales amount for the product with id 7 in the Sales table.
select * from sales
select productid, sum(saleamount) from sales
group by productid
having productid=7
6.Write a query to calculate the average age of employees in the Employees table.
select * from employees
select avg(age) from employees
7.Write a query to count the number of employees in each department.
select departmentname, count(employeeid) from employees
group by departmentname
8.Write a query to show the minimum and maximum Price of products grouped by Category. Use products table.
select * from products
select category, min(price), max(price) from products
group by category
9.Write a query to calculate the total sales per Customer in the Sales table.
select customerid, sum(saleamount) from sales 
group by customerid
10.Write a query to filter departments having more than 5 employees from the Employees table.(DeptID is enough, if you don't have DeptName').

 select departmentname, count(employeeid) from employees
 group by departmentname
 having count(employeeid)>5

 Medium-Level Tasks (9)
11. Write a query to calculate the total sales and average sales for each product category from the Sales table.
select productid, sum(saleamount), avg(saleamount) from sales
group by productid
select * from sales

12.Write a query to count the number of employees from the Department HR.
select  departmentname, count(employeeid) from employees
group by departmentname
having departmentname='HR'
13.Write a query that finds the highest and lowest Salary by department in the Employees table.(DeptID is enough, if you don't have DeptName').
select depARTMENTNAME, min(salary), max(salary) from employees
group by departmentname
14.Write a query to calculate the average salary per Department.(DeptID is enough, if you don't have DeptName').
select departmentname, avg(salary) from employees
group by departmentname
15.Write a query to show the AVG salary and COUNT(*) of employees working in each department.(DeptID is enough, 
if you don't have DeptName').
select depARTMENTname, count(employeeid), avg(salary) from employees
group by departmentname

16.Write a query to filter product categories with an average price greater than 400.
select * from products
select category, avg(price) from products
group by category
having avg(price)>400 
17.Write a query that calculates the total sales for each year in the Sales table.
select * from sales
select saledate, sum(saleamount) from sales
group by saledate
18.Write a query to show the list of customers who placed at least 3 orders.
select * from customers
select customerid, count(order) from customers
group by customerid
having count(order)>2
19.Write a query to filter out Departments with average salary expenses greater than 60000.
(DeptID is enough, if you don't have DeptName').
select departmentname, avg(salary) from employees
group by departmentname
having avg(salary)> 60000

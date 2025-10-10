--Homework 5
create database sql_class5homework
use sql_class5homework
--Easy-Level Tasks
1.Write a query that uses an alias to rename the ProductName column as Name in the Products table.
Select productname as name from Products 

2.Write a query that uses an alias to rename the Customers table as Client for easier reference.
select * from Customers as client 

3.Use UNION to combine results from two queries that select ProductName from Products and ProductName from Products_Discounted.
select productname from Products
union
select productname from Products_Discounted
4.Write a query to find the intersection of Products and Products_Discounted tables using INTERSECT.
select Category from Products
intersect
select Category from Products_Discounted
5.Write a query to select distinct customer names and their corresponding Country using SELECT DISTINCT.
select distinct firstname, lastname, country from Customers
6.Write a query that uses CASE to create a conditional column that displays 'High' if Price > 1000, and 'Low' if Price <= 1000 from Products table.
select * from Products
select productname, price, 
case 
    when price>1000 then 'high'
	else 'low'
	end as pricecategory 
	from products
     
7.Use IIF to create a column that shows 'Yes' if StockQuantity > 100, and 'No' otherwise (Products_Discounted table, StockQuantity column).
select * from Products_Discounted
select IIF(stockquantity > 100, 'Yes', IIF(stockquantity <= 100, 'No')) from Products_Discounted

--  Medium-Level Tasks
8. Use UNION to combine results from two queries that select ProductName from Products and ProductName from Products_Discounted tables.
select productname from Products
union
select productname from Products_Discounted
9. Write a query that returns the difference between the Products and Products_Discounted tables using EXCEPT.
select * from (
select category from Products
except
select category from Products_Discounted
) as temp1
union all
select * from (
select category from Products_Discounted
except
select category from Products) as temp2
10. Create a conditional column using IIF that shows 'Expensive' if the Price is greater than 1000, and 'Affordable' if less, from Products table.
select productname, price,
case 
when price>1000 then 'expensive'
else 'affordable'
end as [status]
from Products

11. Write a query to find employees in the Employees table who have either Age < 25 or Salary > 60000.
select * from Employees
where age<25 or Salary>60000
12. Update the salary of an employee based on their department, increase by 10% if they work in 'HR' or EmployeeID = 5

UPDATE Employees
SET Salary = Salary * 1.10
WHERE DepartmentName = 'HR' OR EmployeeID = 5;

--Hard-Level Tasks
13. Write a query that uses CASE to assign 'Top Tier' if SaleAmount > 500, 'Mid Tier' if SaleAmount BETWEEN 200 AND 500, and 'Low Tier' otherwise.
(From Sales table)
select * from sales
select  saleid, productid, saleamount,
case
when saleamount>500 then 'Mid Tier'
when saleamount between 500 and 200 then 'Low Tier'
end as [status]
from sales
14. Use EXCEPT to find customers ID who have placed orders but do not have a corresponding record in the Sales table.

select customerid from Customers
except
select customerid from Sales

15. Write a query that uses a CASE statement to determine the discount percentage based on the quantity purchased.
 Use orders table. Result set should show customerid, quantity and discount percentage.
The discount should be applied as follows: 1 item: 3% Between 1 and 3 items : 5% Otherwise: 7%
select * from Orders
select customerid, quantity,
case 
when quantity=1 then 3
when quantity between 1and 3 then 5
else 7
end as discountpercentage
from Orders

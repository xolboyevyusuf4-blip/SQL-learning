create database homework3
go
use homework3

Easy-Level Tasks (10)
1.Define and explain the purpose of BULK INSERT in SQL Server.
bulk insert used for importing data from txt and csv types of files to sql database system
2.List four file formats that can be imported into SQL Server.
txt,csv,xlsx 
3.Create a table Products with columns: ProductID (INT, PRIMARY KEY), ProductName (VARCHAR(50)), Price (DECIMAL(10,2)).
create table Products (ProductID INT PRIMARY KEY, ProductName VARCHAR (50), Price DECIMAL(10,2))
4.Insert three records into the Products table using INSERT INTO.
insert into Products values (1, 'printer', 26000)
insert into Products values (2, 'mouse', 300),
                            (3, 'screen', 9000)
5.Explain the difference between NULL and NOT NULL.
NOT NULL IS THE FUNCTION OF TABLE THAT DO NOT INSERT UNKNOWN VALUE TO THE TABLE.
WITH NULL WE CAN INSERT UNKNOWN VALUE TO THE TABLE.
6.Add a UNIQUE constraint to the ProductName column in the Products table.
SELECT * FROM Products
alter table Products 
add constraint productname  unique
ALTER TABLE Products
ADD CONSTRAINT UQ_ProductName UNIQUE (ProductName);


7.Write a comment in a SQL query explaining its purpose.
-- comment help us to understend the purpose of code or extra explanation
 /* it can be two form*/
8.Add CategoryID column to the Products table.
alter table Products
add CategoryID int
9.Create a table Categories with a CategoryID as PRIMARY KEY and a CategoryName as UNIQUE.
create table Categories (CategoryID int primary key, CategoryName varchar(50) unique )
10.Explain the purpose of the IDENTITY column in SQL Server.
 identity column does not allow insert identical data to column
🟠 Medium-Level Tasks (10)
11.Use BULK INSERT to import data from a text file into the Products table.
BULK Insert into Products
from "C:\Users\user\Desktop\test.csv"
with
(
firstrow=2
fieldterminator = ','
rowterminator = '/n'
)
12.Create a FOREIGN KEY in the Products table that references the Categories table.

select * from Products
select * from Categories
alter table products
add constraint FK_categoryid Foreign Key (categoryid) references Categories (categoryid)

13.Explain the differences between PRIMARY KEY and UNIQUE KEY.

primary key does not allow insert null and copies,
with unique key we can insert null to the column

14.Add a CHECK constraint to the Products table ensuring Price > 0.

alter table products
add constraint chk_price check (price>0)

15.Modify the Products table to add a column Stock (INT, NOT NULL).

alter table products
add stock int not null

16Use the ISNULL function to replace NULL values in Price column with a 0.

select isnull(price, 0) from Products 

17.Describe the purpose and usage of FOREIGN KEY constraints in SQL Server.
/*we use foreign key to connect table with other tables and to understand layout of the tables*/

🔴 Hard-Level Tasks (10)
18.Write a script to create a Customers table with a CHECK constraint ensuring Age >= 18.

create table customers (id int, name varchar (28), age int check (age>=18))

19.Create a table with an IDENTITY column starting at 100 and incrementing by 10.
create table num (id int identity(100, 10), name varchar (50))
insert into num values ('Bob'), ('Tom')
select * from num
20.Write a query to create a composite PRIMARY KEY in a new table OrderDetails.
CREATE TABLE OrderDetails (
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    Price DECIMAL(10,2),
    PRIMARY KEY (OrderID, ProductID)
);

21.Explain the use of COALESCE and ISNULL functions for handling NULL values.
isnull used for one column, we can use coalesce with more columns at the moment
22.Create a table Employees with both PRIMARY KEY on EmpID and UNIQUE KEY on Email.

create table employees (EMPID int primary key, email varchar(80) unique)

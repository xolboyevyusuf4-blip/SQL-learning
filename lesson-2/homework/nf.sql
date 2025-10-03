Homework lesson-2
### **Basic-Level Tasks (10)**  
1. Create a table `Employees` with columns: `EmpID` INT, `Name` (VARCHAR(50)), and `Salary` (DECIMAL(10,2)). 
create table Employees (EmpID int, name varchar (50), salary decimal (10,2))
2. Insert three records into the `Employees` table using different INSERT INTO approaches (single-row insert and multiple-row insert).
insert into Employees values (1, 'Bob', 139652.54)
insert into Employees values (2, 'John', 214563.21)
					,(3, 'Tom', 125698.36)
3. Update the `Salary` of an employee where `EmpID = 1`. 
update Employees set salary = 145326.36 where EmpID=1
3. Update the `Salary` of an employee to `7000` where `EmpID = 1`.
update Employees set salary = 7000 where EmpID=1
4. Delete a record from the `Employees` table where `EmpID = 2`.  
delete from Employees where EmpID = 2
5. Demonstrate the difference between `DELETE`, `TRUNCATE`, and `DROP` commands on a test table. 
select * from Employes
delete from Employes where ID=3
truncate table Employes
drop table Employes
5. Give a brief definition for difference between `DELETE`, `TRUNCATE`, and `DROP`.
delete used for deleting information in the table.
truncate used for deleting all information in the table, only stays table structure.
Drop deletes table from database.
6. Modify the `Name` column in the `Employees` table to `VARCHAR(100)`.
alter table Employees
alter column name varchar (100)
7. Add a new column `Department` (`VARCHAR(50)`) to the `Employees` table. 
alter table Employees add department varchar (50)
8. Change the data type of the `Salary` column to `FLOAT`.  
alter table Employees
alter column salary float
select * from Employees


### **Intermediate-Level Tasks (6)**  
11. Insert five records into the `Departments` table using `INSERT INTO SELECT` from an existing table.  
11. Insert five records into the `Departments` table using `INSERT INTO SELECT` method(you can write anything you want as data).
create table Departments ( departmnetID int, name varchar (50), salary decimal (12,2))
insert into Departments values ( 1, 'Bob', 456982.31)
insert into Departments values ( 2, 'Alex', 832982.31)
                              , (3, 'Tom', 625391.57)
							  , (4, 'Georg', 456321.96)
							  , (5, 'Bet', 652398.17)
13. Write a query that removes all employees but keeps the table structure intact.
truncate table departments
14. Drop the `Department` column from the `Employees` table.  
select * from departments
@@ -42,4 +42,4 @@
22. Use SELECT INTO to create a backup table called Products_Backup containing all Products data.
23. Rename the Products table to Inventory.
24. Alter the Inventory table to change the data type of Price from DECIMAL(10,2) to FLOAT.
25. Add an IDENTITY column named ProductCode that starts from 1000 and increments by 5.
25. Add an IDENTITY column named ProductCode that starts from 1000 and increments by 5 to `Inventory` table.

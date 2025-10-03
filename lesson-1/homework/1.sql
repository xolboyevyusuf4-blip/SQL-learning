## Easy level

1. Define the following terms: data, database, relational database, and table.
Data is information that collected, observed and generated for analyzing or decision-making.
Database is the place tahat where data collected for analysis.
Relational database is connected to another database which all date relies on the former.
table isthe form of holding all data in sql server.
2. List five key features of SQL Server.
  transforming data from other sources
  manipulating data
  collacting databases
  saving backup files
  working with relational database
3. What are the different authentication modes available when connecting to SQL Server? (Give at least 2)
  the first is windows authentication that connects server with device.
  the second is sql server authentication that connect to corporate server.

## medium

4. create database schoolDB
5. create table Students (ID int primary key, name varchar (50), age int ) 
6. sql server is holds databases, manages sql commands, stores and manages data in databases.
SSMS is interface that help us to manage and store the data in sql server.
sql is language that helps us manipulate data (to create database, insert data to database or etc.)


## Hard
7. Research and explain the different SQL commands: DQL, DML, DDL, DCL, TCL with examples.
DQL -> data query language used for retrieving data from database.
for example select * from Students
DML -> data manipulating language used for manipulating data.
for example 
insert into Students values (1, 'Yusuf', 89)
DDL -> data defination language used for defining and managing the structure of database.
create table school ( id int, name nvarchar (50))
DCL -> data controlling language used for controlling acces to database.
for example Grant
TCL -> Transaction control language used for managing transactions in database.
for example rollback
8. Write a query to insert three records into the Students table.
 insert into Students values (2, 'Bob', 97)
 9. Restore AdventureWorksDW2022.bak file to your server. (write its steps to submit)
 first upload the file and copy then go to the C disk from PC. then open the program files and open microsoft sql server then open msssql
 and open backup files finally paste the file.  then open the sql server go to object explorer from databases select restore database and 
 choose device from the source and select add and restore file from the backup files.

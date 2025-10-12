create database homework6
go 
use homework6

-- Homework 6
-- Puzzle 1. Explain at least two ways to find distinct values based on two columns.
CREATE TABLE InputTbl (
    col1 VARCHAR(10),
    col2 VARCHAR(10)
);
    INSERT INTO InputTbl (col1, col2) VALUES 
('a', 'b'),
('a', 'b'),
('b', 'a'),
('c', 'd'),
('c', 'd'),
('m', 'n'),
('n', 'm'); 
select distinct col1, col2 from InputTbl

-- Puzzle 2. Question: If all the columns have zero values, then don’t show that row. In this case, we have to remove 
--the 5th row while selecting data.

CREATE TABLE TestMultipleZero (
    A INT NULL,
    B INT NULL,
    C INT NULL,
    D INT NULL
);

INSERT INTO TestMultipleZero(A,B,C,D)
VALUES 
    (0,0,0,1),
    (0,0,1,0),
    (0,1,0,0),
    (1,0,0,0),
    (0,0,0,0),
    (1,1,1,0);

	select * from TestMultipleZero
	where A>0 OR B>0 OR C>0 OR D>0

	-- 3-Puzzle. Find those with odd ids
	create table section1(id int, name varchar(20))
insert into section1 values (1, 'Been'),
       (2, 'Roma'),
       (3, 'Steven'),
       (4, 'Paulo'),
       (5, 'Genryh'),
       (6, 'Bruno'),
       (7, 'Fred'),
       (8, 'Andro')
 select id, name from section1
 where id % 2= 1
 
-- Puzzle 4: Person with the smallest id (use the table in puzzle 3)
select min(id) from section1

-- Puzzle 5: Person with the highest id (use the table in puzzle 3)
select max(id) from section1
--Puzzle 6: People whose name starts with b (use the table in puzzle 3)
select * from section1
where name like 'b%'
--Puzle 7: Write a query to return only the rows where the code contains the literal underscore _ (not as a wildcard).
CREATE TABLE ProductCodes (
    Code VARCHAR(20)
);

INSERT INTO ProductCodes (Code) VALUES
('X-123'),
('X_456'),
('X#789'),
('X-001'),
('X%202'),
('X_ABC'),
('X#DEF'),
('X-999');

select code from ProductCodes
where code like '%/_%'
escape '/'


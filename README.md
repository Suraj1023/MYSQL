# MYSQL
  MYSQL:

Data Definition Language (DDL)
CREATE		DROP	TRUNCATE	ALTER	RENAME
Data Manipulation Language (DML)
INSERT		UPDATE		DELETE
Data Query Language (DQL)
SELECT
Data Control Language (DCL)
Transactional Control Language (TCL)
DDL: used to create a new schema as well as to modify an existing schema
CREATE => While creating a table need to mention
Column name 
Datatype (integer, floating point, string, etc.)
Constraints (), & default value if any
DATA_TYPES: -
Numeric: - TINYINT, SMALLINT, MIDUMINT, INT, BIGINT, & BIT.
Floating numbers: - DECIMAL, FLOAT, & DOUBLE
String: - CHAR, VARCHAR, BINARY, VARBINARY, BLOB, TEXT, ENUM, & SET
Date and time: - DATE, TIME, DATETIME, TIMESTAMP, & year

CONSTRAINTS () =>  It is specified when the table is created with the CREATE TABLE statement or after is made with the ALTER TABLE statement								 
NOT NULL
Column to NOT accept NULL values.
UNIQUE
All values in columns are different.
PRIMARY KEY
Uniquely identify each record in a table.
It must be contained UNIQUE values & cannot contain NULL values
FOREIGN KEY
Use to link two tables together.
Is a field or collection of fields in one table that refers to the PRIMARY KEY in another table
(Group of columns in a table referencing a column or group of columns in another table.)
CHECK
CHECK (age >= 18)
DEFAULT
Specifies a default value for a column
INDEX
A special type of index that is created automatically





DROP TABLE table_name;      # if you want to delete an existing table from the database  

TRUNCATE TABLE table_name;  # if you want to delete only rows from the database

ALTER   # Is used to make changes in databases
MODIFY 	ADD 		DROP 		CHANGE
ALTER TABLE  table_name CHANGE old_column_name new_column_name data_type;
ALTER TABLE  table_name MODIFY old_column_name data_type constraints (); #  to change data type only
ALTER TABLE table_name ADD COLUMN column_name data_type;
ALTER TABLE table_name ADD column_name data_type AFTER existing column;
ALTER TABLE table_name DROP column_name;

RENAME TABLE old_table_name TO new_table_name;   # to change the table name 

Data Manipulation Language (DML):
INSERT 		UPDATE 	DELETE
INSERT INFO table_name  (column1,column2,........)
		VALUES (value1,values2………) # insert the observations in database


UPDATE table_name SET column1=value1,column2=value2,.............
				WHERE condition ;



DELETE table_name column1=value1,column2=value2,................
		WHERE condition;
#WHEREclause is important in both UPDATE and DELETE statements, if you omit the WHERE clause then all the records in the table will be updated/deleted
Data Query Language (DQL)
SELECT 
SELECT * FROM table_name ;  # to select all records
SELECT * FROM table_name WHERE column_name =  ___ ;
SELECT column_name FROM table_name WHERE condition




WHERE CLAUSE
	Comparison 	PatternMatching 	LIKE 	BETWEEN 	IN 	IS NULL








USE ddl_dml_pratice;
SELECT NOW();
SELECT DATE(NOW());
SELECT CURDATE();
SELECT DATE_FORMAT(
	CURDATE(),'%m/%d/%Y' 
)TODAY;
SELECT DATE_FORMAT(
	DATE(NOW()),'%d/%m/%Y'
)TODAY;
-- Create table
CREATE TABLE Sales_Order(
	ID INTEGER,
    Customer_ID INTEGER,
    Order_DATE DATE,
    Financial_Code CHAR(2),
    Region CHAR(7),
    Sales_Representative INTEGER
);
INSERT INTO Sales_Order(
	ID,Customer_ID,Order_Date,Financial_Code,Region,Sales_Representative)
	VALUES 
    (2001,101,'2000-03-16','r1','Eastern',209),
    (2002,102,'2000-03-17','r2','Western',209),
    (2003,103,'2000-03-18','r3','Western',499),
    (2004,104,'2001-01-02','y1','Eastern',599),
    (2005,105,'2001-01-03','y2','Western',699),
    (2006,106,'2001-01-04','y3','Eastern',799)
;
SELECT * FROM Sales_Order;
-- Extract year from the date values
SELECT EXTRACT(YEAR FROM Order_Date) AS Order_year,
	EXTRACT(MONTH FROM Order_Date) AS Order_month,
        Extract(DAY FROM Order_Date) AS Order_day,
   	Customer_ID
	FROM Sales_Order 
    WHERE Customer_ID BETWEEN 100 AND 104
;    
SELECT * FROM Sales_Order
	WHERE YEAR(Order_date) = 2000
;
SELECT DATE_FORMAT(
	STR_TO_DATE(Order_Date, '%Y-%m-%d'),'%d/%m/%Y') AS New_foramt
	FROM Sales_Order
;

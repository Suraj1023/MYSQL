USE ddl_dml_PRATICE;
/*Q1). Write a SQL statement to create a simple table countries
including columns country_id,country_name and region_id.*/
CREATE TABLE countries (
    country_id INT NOT NULL,
    country_name VARCHAR(20),
    region_id INT NOT NULL
);
DROP TABLE jobs;
/* Write a SQL statement to create a simple table countries including columns 
country_id,country_name  and region_id which is already exists*/
CREATE TABLE IF NOT EXISTS countries (
    country_id INT NOT NULL,
    country_name VARCHAR(20),
    region_id INT NOT NULL
);

/*Write a SQL statement to create a table named jobs including columns job_id, job_title,
 min_salary, max_salary and check whether the max_salary amount exceeding the upper limit 25000.*/
 CREATE TABLE jobs(
	job_id INT UNIQUE,
    job_title VARCHAR(10) DEFAULT 'NULL',
    min_salary INT NOT NULL DEFAULT 8000,
    max_salary INT NOT NULL CHECK (max_salary >=25000),
    date_ DATE NOT NULL
 );
/*countries including columns country_id, country_name and region_id and make sure 
that no countries except Italy, India and China will be entered in the table.*/
CREATE TABLE countries_(
	country_id VARCHAR(3),
    country_name VARCHAR(10)
    CHECK (country_name IN('INDIA','CHINA','ITALY')),
    region_id INT NOT NULL 
);
/* departments table*/
CREATE TABLE departments(
	department_ID DECIMAL(4,0) NOT NULL DEFAULT 0 PRIMARY KEY,
    department_name VARCHAR(30) NOT NULL DEFAULT 'NULL',
    manager_ID DECIMAL(6,0) NOT NULL DEFAULT 0 ,
    location_ID DECIMAL(4,0)
);
DROP TABLE locations;

-- creating data
CREATE TABLE locations(
	location_ID DECIMAL(4,0),
    street_address VARCHAR(40),
    postal_code VARCHAR(12),
    city VARCHAR(30),
    state_province VARCHAR(25),
    country_ID VARCHAR(2)
);
INSERT INTO locations (location_ID, street_address, postal_code, city, state_province, country_ID)
VALUES
(1000, 'Via Cola di Rie', 989, 'Roma', ' ', 'IT'),
(1100, 'Calle della Te', 10934, 'Venice', ' ', 'IT'),
(1200, 'Shinjuku-ku', 689, 'Tokyo', 'Tokyo Prefecture', 'JP'),
(1300, 'Kamiya-cho', 6823, 'Hiroshima', ' ', 'JP'),
(1400, 'Jabberwocky Rd', 26192, 'Southlake', 'Texas', 'US'),
(1000,'1297 Via Cola di Rie' ,989,'Roma',' ','IT'),
(1100,'93091 Calle della Te',10934,'Venice',' ','IT'),
(1200,'2017 Shinjuku-ku',689,'Tokyo','Tokyo Prefectu','JP'),
(1300,'9450 Kamiya-cho',6823,'Hiroshima', ' ','JP'),
(1400,'2014 Jabberwocky Rd',26192,'Southlake','Texas','US')
;
SELECT * FROM locations WHERE city = "Tokyo";
SELECT location_ID FROM locations WHERE city = 'Roma';
















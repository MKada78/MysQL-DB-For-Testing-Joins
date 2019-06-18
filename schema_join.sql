DROP SCHEMA IF EXISTS testjoin;

CREATE DATABASE IF NOT EXISTS tesdb 
    CHARACTER SET utf8mb4 
    DEFAULT COLLATE utf8mb4_0900_ai_ci; 

CREATE SCHEMA testjoin 
    CHARACTER SET utf8mb4 
        DEFAULT COLLATE utf8mb4_0900_ai_ci; 
                                                   
USE testjoin ;

DROP TABLE IF EXISTS orders;
CREATE TABLE orders
(   OrderID INT UNSIGNED PRIMARY KEY,
    CustomerID TINYINT UNSIGNED,
    OrderDate DATE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci; 
SHOW WARNINGS;


DROP TABLE IF EXISTS customers;
CREATE TABLE customers
(   CustomerID TINYINT UNSIGNED PRIMARY KEY,
    CustomerName VARCHAR(15),
    ContactName VARCHAR(15),
    Country VARCHAR(10)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci; 
SHOW WARNINGS;

_____________________________________________________
-- END SCHEMA
_____________________________________________________
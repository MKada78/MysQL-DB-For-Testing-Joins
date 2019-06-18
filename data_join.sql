USE testjoin;

TRUNCATE TABLE orders;
LOAD DATA LOCAL INFILE "D:/@/Projet_SQL_3/orders.csv"
INTO TABLE orders
FIELDS TERMINATED BY ';' 
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(OrderID, CustomerID, @OrderDate)
SET OrderDate = str_to_date(@OrderDate,'%d/%m/%Y');
SHOW WARNINGS;


TRUNCATE TABLE customers;
LOAD DATA LOCAL INFILE "D:/@/Projet_SQL_3/customers.csv"
INTO TABLE customers
FIELDS TERMINATED BY ';' 
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
( );
SHOW WARNINGS;


-- INNER JOIN:
SELECT Orders.OrderID, Customers.CustomerName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
ORDER BY Customers.CustomerName;


-- LEFT JOIN:
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;

-- RIGHT JOIN:
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;

-- FULL JOIN:
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;

_____________________________________________________
-- END DATA
_____________________________________________________
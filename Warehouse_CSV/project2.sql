SHOW TABLES;

DESC products;
DESC inventory;
DESC salesorders;
DESC salesorderdetails;
DESC purchaseorders;
DESC purchaseorderdetails;
SHOW CREATE TABLE products;
SHOW CREATE TABLE inventory;
SHOW CREATE TABLE salesorders;
SHOW CREATE TABLE salesorderdetails;
SHOW CREATE TABLE purchaseorders;
SHOW CREATE TABLE purchaseorderdetails;
SELECT p.ProductID,
       p.ProductName,
       c.CategoryName,
       b.BrandName,
       p.UnitPrice
FROM Products p
JOIN Categories c
ON p.CategoryID = c.CategoryID
JOIN Brands b
ON p.BrandID = b.BrandID;

SELECT so.SOID,
       c.CustomerName,
       so.OrderDate
FROM SalesOrders so
JOIN Customers c
ON so.CustomerID = c.CustomerID;

SELECT p.ProductName,
       w.WarehouseName,
       i.StockQty
FROM Inventory i
JOIN Products p
ON i.ProductID = p.ProductID
JOIN Warehouses w
ON i.WarehouseID = w.WarehouseID;

SELECT po.POID,
       s.SupplierName,
       po.OrderDate
FROM PurchaseOrders po
JOIN Suppliers s
ON po.SupplierID = s.SupplierID;

SELECT so.SOID,
       p.ProductName,
       sod.Quantity
FROM SalesOrderDetails sod
JOIN SalesOrders so
ON sod.SOID = so.SOID
JOIN Products p
ON sod.ProductID = p.ProductID;

SELECT SUM(StockQty) AS TotalStock
FROM Inventory;

SELECT AVG(UnitPrice) AS AveragePrice
FROM Products;

SELECT MAX(UnitPrice) AS HighestPrice
FROM Products;

SELECT CategoryID,
       COUNT(*) AS ProductCount
FROM Products
GROUP BY CategoryID;

SELECT City,
       COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY City;

SELECT WarehouseID,
       SUM(StockQty) AS TotalStock
FROM Inventory
GROUP BY WarehouseID;

SELECT CategoryID,
       COUNT(*) AS ProductCount
FROM Products
GROUP BY CategoryID
HAVING COUNT(*) > 1;

SELECT DISTINCT City
FROM Customers;

SELECT *
FROM Products
WHERE UnitPrice BETWEEN 10000 AND 50000;

SELECT *
FROM Products
ORDER BY UnitPrice DESC
LIMIT 10;

SELECT *
FROM Products
LIMIT 10 OFFSET 10;

SELECT ProductName,
       UnitPrice
FROM Products
WHERE UnitPrice >
(
    SELECT AVG(UnitPrice)
    FROM Products
);

SELECT ProductName,
       UnitPrice,
       ROW_NUMBER() OVER(ORDER BY UnitPrice DESC) AS RowNum
FROM Products;

SELECT ProductName,
       UnitPrice,
       RANK() OVER(ORDER BY UnitPrice DESC) AS Ranking
FROM Products;

SELECT ProductName,
       UnitPrice,
       DENSE_RANK() OVER(ORDER BY UnitPrice DESC) AS DenseRanking
FROM Products;

CREATE VIEW InventoryReport AS
SELECT p.ProductName,
       w.WarehouseName,
       i.StockQty
FROM Inventory i
JOIN Products p
ON i.ProductID = p.ProductID
JOIN Warehouses w
ON i.WarehouseID = w.WarehouseID;

DELIMITER $$

CREATE TRIGGER trg_check_stock
BEFORE UPDATE ON Inventory
FOR EACH ROW
BEGIN
    IF NEW.StockQty < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Stock cannot be negative';
    END IF;
END $$

DELIMITER ;

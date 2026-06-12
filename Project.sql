CREATE DATABASE warehouse_management;
USE warehouse_management;

CREATE TABLE Categories (
    CategoryID VARCHAR(10) PRIMARY KEY,
    CategoryName VARCHAR(100)
);

CREATE TABLE Brands (
    BrandID VARCHAR(10) PRIMARY KEY,
    BrandName VARCHAR(100)
);

CREATE TABLE Suppliers (
    SupplierID VARCHAR(10) PRIMARY KEY,
    SupplierName VARCHAR(100),
    Phone VARCHAR(15),
    City VARCHAR(50)
);

CREATE TABLE Customers (
    CustomerID VARCHAR(10) PRIMARY KEY,
    CustomerName VARCHAR(100),
    Phone VARCHAR(15),
    City VARCHAR(50)
);

CREATE TABLE Warehouses (
    WarehouseID VARCHAR(10) PRIMARY KEY,
    WarehouseName VARCHAR(100),
    City VARCHAR(50)
);

CREATE TABLE Employees (
    EmployeeID VARCHAR(10) PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Role VARCHAR(50)
);

CREATE TABLE UserAccounts (
    UserID VARCHAR(10) PRIMARY KEY,
    Username VARCHAR(50),
    Password VARCHAR(50)
);

CREATE TABLE DeliveryStatus (
    StatusID VARCHAR(10) PRIMARY KEY,
    Status VARCHAR(50)
);

SHOW TABLES;
CREATE TABLE Products (
    ProductID VARCHAR(10) PRIMARY KEY,
    ProductName VARCHAR(100),
    CategoryID VARCHAR(10),
    BrandID VARCHAR(10),
    UnitPrice DECIMAL(10,2),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID),
    FOREIGN KEY (BrandID) REFERENCES Brands(BrandID)
);

CREATE TABLE Locations (
    LocationID VARCHAR(10) PRIMARY KEY,
    WarehouseID VARCHAR(10),
    RackNo VARCHAR(20),
    FOREIGN KEY (WarehouseID) REFERENCES Warehouses(WarehouseID)
);

CREATE TABLE PurchaseOrders (
    POID VARCHAR(10) PRIMARY KEY,
    SupplierID VARCHAR(10),
    OrderDate DATE,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

CREATE TABLE SalesOrders (
    SOID VARCHAR(10) PRIMARY KEY,
    CustomerID VARCHAR(10),
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
SHOW TABLES;
CREATE TABLE PurchaseOrderDetails (
    PODetailsID VARCHAR(10) PRIMARY KEY,
    POID VARCHAR(10),
    ProductID VARCHAR(10),
    Quantity INT,
    FOREIGN KEY (POID) REFERENCES PurchaseOrders(POID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE SalesOrderDetails (
    SODetailID VARCHAR(10) PRIMARY KEY,
    SOID VARCHAR(10),
    ProductID VARCHAR(10),
    Quantity INT,
    FOREIGN KEY (SOID) REFERENCES SalesOrders(SOID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE Inventory (
    InventoryID VARCHAR(10) PRIMARY KEY,
    ProductID VARCHAR(10),
    WarehouseID VARCHAR(10),
    StockQty INT,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (WarehouseID) REFERENCES Warehouses(WarehouseID)
);

CREATE TABLE StockIn (
    StockInID VARCHAR(10) PRIMARY KEY,
    ProductID VARCHAR(10),
    Qty INT,
    Date DATE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE StockOut (
    StockOutID VARCHAR(10) PRIMARY KEY,
    ProductID VARCHAR(10),
    Qty INT,
    Date DATE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE Payments (
    PaymentID VARCHAR(10) PRIMARY KEY,
    CustomerID VARCHAR(10),
    Amount DECIMAL(10,2),
    PaymentDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Deliveries (
    DeliveryID VARCHAR(10) PRIMARY KEY,
    SOID VARCHAR(10),
    DeliveryDate DATE,
    FOREIGN KEY (SOID) REFERENCES SalesOrders(SOID)
);

CREATE TABLE Returns (
    ReturnID VARCHAR(10) PRIMARY KEY,
    ProductID VARCHAR(10),
    Qty INT,
    ReturnDate DATE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
show tables;
SELECT COUNT(*) FROM Categories;
SELECT COUNT(*) FROM Brands;
SELECT COUNT(*) FROM Customers;
DESC Deliveries;
DESC PurchaseOrders;
select * from PurchaseOrders ;
select count(*) from PurchaseOrders;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: warehouse_management
-- ------------------------------------------------------
-- Server version	8.0.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `BrandID` varchar(10) NOT NULL,
  `BrandName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`BrandID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES ('B001','Dell'),('B002','HP'),('B003','Lenovo'),('B004','Samsung'),('B005','LG'),('B006','Sony'),('B007','Logitech'),('B008','Asus'),('B009','Acer'),('B010','Apple'),('B011','Nike'),('B012','Adidas'),('B013','Puma'),('B014','Reebok'),('B015','Under Armour'),('B016','Philips'),('B017','Panasonic'),('B018','Whirlpool'),('B019','Bosch'),('B020','Canon'),('B021','Epson'),('B022','JBL'),('B023','Boat'),('B024','Oppo'),('B025','Vivo'),('B026','Xiaomi'),('B027','OnePlus'),('B028','Realme'),('B029','Nokia'),('B030','Motorola'),('B031','Microsoft'),('B032','Intel'),('B033','AMD'),('B034','Nvidia'),('B035','Kingston'),('B036','Sandisk'),('B037','TP-Link'),('B038','D-Link'),('B039','Havells'),('B040','Bajaj'),('B041','Orient'),('B042','Crompton'),('B043','Prestige'),('B044','Butterfly'),('B045','Titan'),('B046','Fastrack'),('B047','Raymond'),('B048','Woodland'),('B049','Decathlon'),('B050','Sparx');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `CategoryID` varchar(10) NOT NULL,
  `CategoryName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES ('C001','Electronics'),('C002','Mobile Phones'),('C003','Computer Accessories'),('C004','Networking Devices'),('C005','Printers'),('C006','Storage Devices'),('C007','Audio Devices'),('C008','Home Appliances'),('C009','Kitchen Appliances'),('C010','Furniture'),('C011','Office Supplies'),('C012','Stationery'),('C013','Books'),('C014','Sports Equipment'),('C015','Fitness Products'),('C016','Clothing'),('C017','Footwear'),('C018','Bags'),('C019','Toys'),('C020','Baby Products'),('C021','Health Care'),('C022','Personal Care'),('C023','Beauty Products'),('C024','Watches'),('C025','Jewellery'),('C026','Automotive Parts'),('C027','Bike Accessories'),('C028','Car Accessories'),('C029','Electrical Items'),('C030','Lighting'),('C031','Tools'),('C032','Safety Equipment'),('C033','Gardening Supplies'),('C034','Pet Supplies'),('C035','Cleaning Products'),('C036','Packaging Materials'),('C037','Industrial Equipment'),('C038','Construction Materials'),('C039','Paint Supplies'),('C040','CCTV & Security'),('C041','Batteries'),('C042','Solar Products'),('C043','Gaming Accessories'),('C044','Musical Instruments'),('C045','Gift Items'),('C046','Travel Accessories'),('C047','Medical Supplies'),('C048','Laboratory Equipment'),('C049','School Supplies'),('C050','Miscellaneous');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` varchar(10) NOT NULL,
  `CustomerName` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('CU001','Arun','9876600001','Chennai'),('CU002','Priya','9876600002','Madurai'),('CU003','Karthik','9876600003','Coimbatore'),('CU004','Divya','9876600004','Salem'),('CU005','Vignesh','9876600005','Trichy'),('CU006','Meena','9876600006','Erode'),('CU007','Suresh','9876600007','Vellore'),('CU008','Anitha','9876600008','Tirunelveli'),('CU009','Rahul','9876600009','Chennai'),('CU010','Deepa','9876600010','Madurai'),('CU011','Kavin','9876600011','Coimbatore'),('CU012','Nisha','9876600012','Salem'),('CU013','Ajith','9876600013','Trichy'),('CU014','Keerthana','9876600014','Erode'),('CU015','Harish','9876600015','Vellore'),('CU016','Lavanya','9876600016','Tirunelveli'),('CU017','Praveen','9876600017','Chennai'),('CU018','Aarthi','9876600018','Madurai'),('CU019','Ramesh','9876600019','Coimbatore'),('CU020','Swathi','9876600020','Salem'),('CU021','Gokul','9876600021','Trichy'),('CU022','Pooja','9876600022','Erode'),('CU023','Saravanan','9876600023','Vellore'),('CU024','Gayathri','9876600024','Tirunelveli'),('CU025','Dinesh','9876600025','Chennai'),('CU026','Nandhini','9876600026','Madurai'),('CU027','Vijay','9876600027','Coimbatore'),('CU028','Sneha','9876600028','Salem'),('CU029','Bharath','9876600029','Trichy'),('CU030','Akshaya','9876600030','Erode'),('CU031','Manoj','9876600031','Vellore'),('CU032','Shalini','9876600032','Tirunelveli'),('CU033','Kishore','9876600033','Chennai'),('CU034','Janani','9876600034','Madurai'),('CU035','Ashwin','9876600035','Coimbatore'),('CU036','Preethi','9876600036','Salem'),('CU037','Sathish','9876600037','Trichy'),('CU038','Madhumitha','9876600038','Erode'),('CU039','Yogesh','9876600039','Vellore'),('CU040','Harini','9876600040','Tirunelveli'),('CU041','Mohan','9876600041','Chennai'),('CU042','Ritika','9876600042','Madurai'),('CU043','Balaji','9876600043','Coimbatore'),('CU044','Varsha','9876600044','Salem'),('CU045','Naveen','9876600045','Trichy'),('CU046','Monika','9876600046','Erode'),('CU047','Kumar','9876600047','Vellore'),('CU048','Revathi','9876600048','Tirunelveli'),('CU049','Sanjay','9876600049','Chennai'),('CU050','Pavithra','9876600050','Madurai');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveries`
--

DROP TABLE IF EXISTS `deliveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveries` (
  `DeliveryID` varchar(10) NOT NULL,
  `SOID` varchar(10) DEFAULT NULL,
  `DeliveryDate` date DEFAULT NULL,
  PRIMARY KEY (`DeliveryID`),
  KEY `SOID` (`SOID`),
  CONSTRAINT `deliveries_ibfk_1` FOREIGN KEY (`SOID`) REFERENCES `salesorders` (`SOID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveries`
--

LOCK TABLES `deliveries` WRITE;
/*!40000 ALTER TABLE `deliveries` DISABLE KEYS */;
INSERT INTO `deliveries` VALUES ('DEL001','SO001','2026-10-23'),('DEL002','SO002','2026-12-23'),('DEL003','SO003','2025-02-17'),('DEL004','SO004','2025-09-02'),('DEL005','SO005','2025-09-15'),('DEL006','SO006','2025-06-30'),('DEL007','SO007','2025-09-13'),('DEL008','SO008','2026-09-30'),('DEL009','SO009','2026-04-16'),('DEL010','SO010','2026-07-18'),('DEL011','SO011','2026-11-07'),('DEL012','SO012','2026-06-06'),('DEL013','SO013','2025-02-16'),('DEL014','SO014','2025-01-05'),('DEL015','SO015','2025-05-28'),('DEL016','SO016','2026-09-22'),('DEL017','SO017','2025-04-06'),('DEL018','SO018','2025-06-11'),('DEL019','SO019','2026-01-16'),('DEL020','SO020','2026-09-24'),('DEL021','SO021','2026-01-15'),('DEL022','SO022','2025-06-15'),('DEL023','SO023','2025-07-04'),('DEL024','SO024','2026-08-27'),('DEL025','SO025','2025-07-21'),('DEL026','SO026','2025-06-10'),('DEL027','SO027','2026-04-06'),('DEL028','SO028','2026-03-31'),('DEL029','SO029','2026-02-06'),('DEL030','SO030','2026-10-01'),('DEL031','SO031','2026-08-30'),('DEL032','SO032','2026-05-19'),('DEL033','SO033','2026-07-08'),('DEL034','SO034','2025-06-25'),('DEL035','SO035','2026-11-03'),('DEL036','SO036','2026-08-11'),('DEL037','SO037','2026-04-28'),('DEL038','SO038','2026-02-12'),('DEL039','SO039','2025-08-17'),('DEL040','SO040','2025-03-02'),('DEL041','SO041','2025-03-19'),('DEL042','SO042','2025-05-24'),('DEL043','SO043','2026-06-20'),('DEL044','SO044','2025-08-02'),('DEL045','SO045','2025-02-07'),('DEL046','SO046','2026-09-02'),('DEL047','SO047','2026-05-03'),('DEL048','SO048','2025-10-04'),('DEL049','SO049','2026-01-04'),('DEL050','SO050','2026-06-24');
/*!40000 ALTER TABLE `deliveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliverystatus`
--

DROP TABLE IF EXISTS `deliverystatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliverystatus` (
  `StatusID` varchar(10) NOT NULL,
  `Status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`StatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliverystatus`
--

LOCK TABLES `deliverystatus` WRITE;
/*!40000 ALTER TABLE `deliverystatus` DISABLE KEYS */;
INSERT INTO `deliverystatus` VALUES ('DS001','Delivered'),('DS002','In Transit'),('DS003','Pending'),('DS004','Returned'),('DS005','Cancelled'),('DS006','Delivered'),('DS007','In Transit'),('DS008','Pending'),('DS009','Returned'),('DS010','Cancelled'),('DS011','Delivered'),('DS012','Returned'),('DS013','In Transit'),('DS014','Delivered'),('DS015','Cancelled'),('DS016','In Transit'),('DS017','In Transit'),('DS018','Delivered'),('DS019','Delivered'),('DS020','In Transit'),('DS021','Pending'),('DS022','Returned'),('DS023','Cancelled'),('DS024','Delivered'),('DS025','In Transit'),('DS026','Pending'),('DS027','Returned'),('DS028','Cancelled'),('DS029','Delivered'),('DS030','In Transit'),('DS031','Pending'),('DS032','Returned'),('DS033','Cancelled'),('DS034','Pending'),('DS035','Pending'),('DS036','In Transit'),('DS037','Returned'),('DS038','Delivered'),('DS039','Cancelled'),('DS040','Returned'),('DS041','Cancelled'),('DS042','Pending'),('DS043','Returned'),('DS044','Delivered'),('DS045','In Transit'),('DS046','Pending'),('DS047','Returned'),('DS048','Cancelled'),('DS049','Delivered'),('DS050','In Transit');
/*!40000 ALTER TABLE `deliverystatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `EmployeeID` varchar(10) NOT NULL,
  `EmployeeName` varchar(100) DEFAULT NULL,
  `Role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES ('E001','Arun Kumar','Manager'),('E002','Priya Devi','Store Keeper'),('E003','Karthik Raj','Supervisor'),('E004','Divya Sri','Inventory Analyst'),('E005','Vignesh Kumar','Warehouse Assistant'),('E006','Meena Lakshmi','Manager'),('E007','Suresh Babu','Store Keeper'),('E008','Anitha Rani','Supervisor'),('E009','Rahul Sharma','Inventory Analyst'),('E010','Deepa Nair','Warehouse Assistant'),('E011','Kavin Raj','Manager'),('E012','Nisha Patel','Store Keeper'),('E013','Ajith Kumar','Supervisor'),('E014','Keerthana S','Inventory Analyst'),('E015','Harish Kumar','Warehouse Assistant'),('E016','Lavanya R','Manager'),('E017','Praveen K','Store Keeper'),('E018','Aarthi M','Supervisor'),('E019','Ramesh S','Inventory Analyst'),('E020','Swathi P','Warehouse Assistant'),('E021','Gokul R','Manager'),('E022','Pooja S','Store Keeper'),('E023','Saravanan K','Supervisor'),('E024','Gayathri V','Inventory Analyst'),('E025','Dinesh Kumar','Warehouse Assistant'),('E026','Nandhini R','Manager'),('E027','Vijay K','Store Keeper'),('E028','Sneha P','Supervisor'),('E029','Bharath M','Inventory Analyst'),('E030','Akshaya S','Warehouse Assistant'),('E031','Manoj Kumar','Manager'),('E032','Shalini R','Store Keeper'),('E033','Kishore V','Supervisor'),('E034','Janani P','Inventory Analyst'),('E035','Ashwin R','Warehouse Assistant'),('E036','Preethi S','Manager'),('E037','Sathish K','Store Keeper'),('E038','Madhumitha R','Supervisor'),('E039','Yogesh Kumar','Inventory Analyst'),('E040','Harini P','Warehouse Assistant'),('E041','Mohan Raj','Manager'),('E042','Ritika S','Store Keeper'),('E043','Balaji K','Supervisor'),('E044','Varsha P','Inventory Analyst'),('E045','Naveen Kumar','Warehouse Assistant'),('E046','Monika R','Manager'),('E047','Kumaravel S','Store Keeper'),('E048','Revathi P','Supervisor'),('E049','Sanjay K','Inventory Analyst'),('E050','Pavithra R','Warehouse Assistant');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `InventoryID` varchar(10) NOT NULL,
  `ProductID` varchar(10) DEFAULT NULL,
  `WarehouseID` varchar(10) DEFAULT NULL,
  `StockQty` int DEFAULT NULL,
  PRIMARY KEY (`InventoryID`),
  KEY `ProductID` (`ProductID`),
  KEY `WarehouseID` (`WarehouseID`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`),
  CONSTRAINT `inventory_ibfk_2` FOREIGN KEY (`WarehouseID`) REFERENCES `warehouses` (`WarehouseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES ('I001','P001','W001',336),('I002','P002','W002',74),('I003','P003','W003',405),('I004','P004','W004',138),('I005','P005','W005',382),('I006','P006','W006',224),('I007','P007','W007',339),('I008','P008','W008',369),('I009','P009','W009',248),('I010','P010','W010',474),('I011','P011','W011',408),('I012','P012','W012',245),('I013','P013','W013',381),('I014','P014','W014',233),('I015','P015','W015',432),('I016','P016','W016',419),('I017','P017','W017',155),('I018','P018','W018',340),('I019','P019','W019',148),('I020','P020','W020',286),('I021','P021','W021',76),('I022','P022','W022',366),('I023','P023','W023',149),('I024','P024','W024',316),('I025','P025','W025',384),('I026','P026','W026',397),('I027','P027','W027',239),('I028','P028','W028',89),('I029','P029','W029',61),('I030','P030','W030',291),('I031','P031','W031',217),('I032','P032','W032',277),('I033','P033','W033',138),('I034','P034','W034',451),('I035','P035','W035',123),('I036','P036','W036',221),('I037','P037','W037',469),('I038','P038','W038',250),('I039','P039','W039',476),('I040','P040','W040',84),('I041','P041','W041',91),('I042','P042','W042',355),('I043','P043','W043',195),('I044','P044','W044',185),('I045','P045','W045',456),('I046','P046','W046',170),('I047','P047','W047',452),('I048','P048','W048',139),('I049','P049','W049',384),('I050','P050','W050',79);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `inventoryreport`
--

DROP TABLE IF EXISTS `inventoryreport`;
/*!50001 DROP VIEW IF EXISTS `inventoryreport`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `inventoryreport` AS SELECT 
 1 AS `ProductName`,
 1 AS `WarehouseName`,
 1 AS `StockQty`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `LocationID` varchar(10) NOT NULL,
  `WarehouseID` varchar(10) DEFAULT NULL,
  `RackNo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`LocationID`),
  KEY `WarehouseID` (`WarehouseID`),
  CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`WarehouseID`) REFERENCES `warehouses` (`WarehouseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES ('L001','W001','A1'),('L002','W002','A2'),('L003','W003','A3'),('L004','W004','A4'),('L005','W005','A5'),('L006','W006','B1'),('L007','W007','B2'),('L008','W008','B3'),('L009','W009','B4'),('L010','W010','B5'),('L011','W011','C1'),('L012','W012','C2'),('L013','W013','C3'),('L014','W014','C4'),('L015','W015','C5'),('L016','W016','D1'),('L017','W017','D2'),('L018','W018','D3'),('L019','W019','D4'),('L020','W020','D5'),('L021','W021','E1'),('L022','W022','E2'),('L023','W023','E3'),('L024','W024','E4'),('L025','W025','E5'),('L026','W026','F1'),('L027','W027','F2'),('L028','W028','F3'),('L029','W029','F4'),('L030','W030','F5'),('L031','W031','G1'),('L032','W032','G2'),('L033','W033','G3'),('L034','W034','G4'),('L035','W035','G5'),('L036','W036','H1'),('L037','W037','H2'),('L038','W038','H3'),('L039','W039','H4'),('L040','W040','H5'),('L041','W041','I1'),('L042','W042','I2'),('L043','W043','I3'),('L044','W044','I4'),('L045','W045','I5'),('L046','W046','J1'),('L047','W047','J2'),('L048','W048','J3'),('L049','W049','J4'),('L050','W050','J5');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `PaymentID` varchar(10) NOT NULL,
  `CustomerID` varchar(10) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `PaymentDate` date DEFAULT NULL,
  PRIMARY KEY (`PaymentID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES ('PAY001','CU001',11018.00,'2025-03-08'),('PAY002','CU002',33479.00,'2026-06-21'),('PAY003','CU003',10295.00,'2026-05-20'),('PAY004','CU004',28844.00,'2025-06-25'),('PAY005','CU005',45321.00,'2025-10-16'),('PAY006','CU006',5538.00,'2026-08-16'),('PAY007','CU007',25413.00,'2026-01-13'),('PAY008','CU008',5503.00,'2025-11-15'),('PAY009','CU009',9479.00,'2025-04-14'),('PAY010','CU010',31452.00,'2025-12-22'),('PAY011','CU011',636.00,'2026-04-04'),('PAY012','CU012',42645.00,'2026-07-28'),('PAY013','CU013',43482.00,'2025-09-06'),('PAY014','CU014',20671.00,'2026-02-09'),('PAY015','CU015',39111.00,'2026-08-31'),('PAY016','CU016',30549.00,'2025-03-05'),('PAY017','CU017',29826.00,'2026-12-15'),('PAY018','CU018',37445.00,'2026-03-13'),('PAY019','CU019',35979.00,'2025-09-23'),('PAY020','CU020',48072.00,'2026-08-22'),('PAY021','CU021',43723.00,'2025-07-03'),('PAY022','CU022',16610.00,'2025-06-04'),('PAY023','CU023',35028.00,'2026-07-07'),('PAY024','CU024',44396.00,'2026-12-05'),('PAY025','CU025',45289.00,'2025-03-06'),('PAY026','CU026',4722.00,'2026-06-23'),('PAY027','CU027',32504.00,'2025-04-10'),('PAY028','CU028',32807.00,'2026-01-12'),('PAY029','CU029',22949.00,'2026-12-19'),('PAY030','CU030',30388.00,'2026-01-20'),('PAY031','CU031',44069.00,'2025-05-07'),('PAY032','CU032',37272.00,'2026-09-13'),('PAY033','CU033',36794.00,'2026-07-14'),('PAY034','CU034',3541.00,'2025-05-24'),('PAY035','CU035',27228.00,'2026-03-15'),('PAY036','CU036',42208.00,'2025-05-19'),('PAY037','CU037',22456.00,'2025-12-16'),('PAY038','CU038',27514.00,'2025-12-27'),('PAY039','CU039',19081.00,'2026-06-09'),('PAY040','CU040',42680.00,'2025-11-06'),('PAY041','CU041',11994.00,'2026-08-28'),('PAY042','CU042',5882.00,'2026-02-17'),('PAY043','CU043',44648.00,'2025-04-19'),('PAY044','CU044',37638.00,'2026-11-03'),('PAY045','CU045',30546.00,'2025-03-23'),('PAY046','CU046',34807.00,'2026-04-04'),('PAY047','CU047',32387.00,'2026-02-28'),('PAY048','CU048',37153.00,'2025-09-16'),('PAY049','CU049',35828.00,'2025-08-15'),('PAY050','CU050',41905.00,'2026-06-04');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProductID` varchar(10) NOT NULL,
  `ProductName` varchar(100) DEFAULT NULL,
  `CategoryID` varchar(10) DEFAULT NULL,
  `BrandID` varchar(10) DEFAULT NULL,
  `UnitPrice` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `CategoryID` (`CategoryID`),
  KEY `BrandID` (`BrandID`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`CategoryID`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`BrandID`) REFERENCES `brands` (`BrandID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('P001','Laptop','C001','B001',50000.00),('P002','Desktop Computer','C002','B002',45000.00),('P003','Mouse','C003','B003',500.00),('P004','Keyboard','C004','B004',1200.00),('P005','Monitor','C005','B005',8000.00),('P006','Printer','C006','B006',7000.00),('P007','Scanner','C007','B007',6000.00),('P008','Router','C008','B008',2500.00),('P009','Modem','C009','B009',2000.00),('P010','External Hard Disk','C010','B010',4500.00),('P011','Pendrive','C011','B011',800.00),('P012','Memory Card','C012','B012',600.00),('P013','Bluetooth Speaker','C013','B013',3000.00),('P014','Headphones','C014','B014',2500.00),('P015','Earbuds','C015','B015',3500.00),('P016','Smartphone','C016','B016',25000.00),('P017','Tablet','C017','B017',18000.00),('P018','Smart Watch','C018','B018',5000.00),('P019','Television','C019','B019',40000.00),('P020','Refrigerator','C020','B020',35000.00),('P021','Washing Machine','C021','B021',28000.00),('P022','Microwave Oven','C022','B022',3000.00),('P023','Mixer Grinder','C023','B023',2500.00),('P024','Electric Kettle','C024','B024',1500.00),('P025','Air Conditioner','C025','B025',45000.00),('P026','Office Chair','C026','B026',3000.00),('P027','Study Table','C027','B027',5000.00),('P028','Bookshelf','C028','B028',4000.00),('P029','Notebook','C029','B029',50.00),('P030','Ball Pen','C030','B030',10.00),('P031','Marker','C031','B031',25.00),('P032','Cricket Bat','C032','B032',1500.00),('P033','Football','C033','B033',900.00),('P034','Tennis Racket','C034','B034',2000.00),('P035','Treadmill','C035','B035',35000.00),('P036','T-Shirt','C036','B036',700.00),('P037','Jeans','C037','B037',1500.00),('P038','Running Shoes','C038','B038',2500.00),('P039','Backpack','C039','B039',1200.00),('P040','Baby Stroller','C040','B040',8000.00),('P041','Face Wash','C041','B041',250.00),('P042','Shampoo','C042','B042',350.00),('P043','Wrist Watch','C043','B043',2000.00),('P044','Car Battery','C044','B044',5000.00),('P045','Bike Helmet','C045','B045',1200.00),('P046','LED Bulb','C046','B046',150.00),('P047','Power Drill','C047','B047',2500.00),('P048','Garden Hose','C048','B048',600.00),('P049','CCTV Camera','C049','B049',3500.00),('P050','First Aid Kit','C050','B050',500.00);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaseorderdetails`
--

DROP TABLE IF EXISTS `purchaseorderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchaseorderdetails` (
  `PODetailsID` varchar(10) NOT NULL,
  `POID` varchar(10) DEFAULT NULL,
  `ProductID` varchar(10) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  PRIMARY KEY (`PODetailsID`),
  KEY `POID` (`POID`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `purchaseorderdetails_ibfk_1` FOREIGN KEY (`POID`) REFERENCES `purchaseorders` (`POID`),
  CONSTRAINT `purchaseorderdetails_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseorderdetails`
--

LOCK TABLES `purchaseorderdetails` WRITE;
/*!40000 ALTER TABLE `purchaseorderdetails` DISABLE KEYS */;
INSERT INTO `purchaseorderdetails` VALUES ('POD001','PO001','P001',14),('POD002','PO002','P002',28),('POD003','PO003','P003',13),('POD004','PO004','P004',38),('POD005','PO005','P005',17),('POD006','PO006','P006',16),('POD007','PO007','P007',10),('POD008','PO008','P008',61),('POD009','PO009','P009',59),('POD010','PO010','P010',18),('POD011','PO011','P011',52),('POD012','PO012','P012',39),('POD013','PO013','P013',45),('POD014','PO014','P014',58),('POD015','PO015','P015',29),('POD016','PO016','P016',23),('POD017','PO017','P017',55),('POD018','PO018','P018',21),('POD019','PO019','P019',94),('POD020','PO020','P020',45),('POD021','PO021','P021',27),('POD022','PO022','P022',15),('POD023','PO023','P023',45),('POD024','PO024','P024',15),('POD025','PO025','P025',13),('POD026','PO026','P026',33),('POD027','PO027','P027',55),('POD028','PO028','P028',38),('POD029','PO029','P029',50),('POD030','PO030','P030',24),('POD031','PO031','P031',11),('POD032','PO032','P032',42),('POD033','PO033','P033',28),('POD034','PO034','P034',32),('POD035','PO035','P035',17),('POD036','PO036','P036',34),('POD037','PO037','P037',56),('POD038','PO038','P038',28),('POD039','PO039','P039',24),('POD040','PO040','P040',12),('POD041','PO041','P041',38),('POD042','PO042','P042',27),('POD043','PO043','P043',49),('POD044','PO044','P044',19),('POD045','PO045','P045',40),('POD046','PO046','P046',29),('POD047','PO047','P047',23),('POD048','PO048','P048',12),('POD049','PO049','P049',18),('POD050','PO050','P050',56);
/*!40000 ALTER TABLE `purchaseorderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaseorders`
--

DROP TABLE IF EXISTS `purchaseorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchaseorders` (
  `POID` varchar(10) NOT NULL,
  `SupplierID` varchar(10) DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  PRIMARY KEY (`POID`),
  KEY `SupplierID` (`SupplierID`),
  CONSTRAINT `purchaseorders_ibfk_1` FOREIGN KEY (`SupplierID`) REFERENCES `suppliers` (`SupplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseorders`
--

LOCK TABLES `purchaseorders` WRITE;
/*!40000 ALTER TABLE `purchaseorders` DISABLE KEYS */;
INSERT INTO `purchaseorders` VALUES ('PO001','S001','2025-06-01'),('PO002','S002','2025-10-13'),('PO003','S003','2025-09-21'),('PO004','S004','2026-04-11'),('PO005','S005','2025-10-12'),('PO006','S006','2025-01-31'),('PO007','S007','2026-04-08'),('PO008','S008','2025-01-14'),('PO009','S009','2025-07-26'),('PO010','S010','2025-01-26'),('PO011','S011','2026-10-09'),('PO012','S012','2026-07-20'),('PO013','S013','2026-04-21'),('PO014','S014','2025-09-22'),('PO015','S015','2026-06-10'),('PO016','S016','2026-01-01'),('PO017','S017','2025-10-14'),('PO018','S018','2026-05-02'),('PO019','S019','2026-04-24'),('PO020','S020','2025-08-02'),('PO021','S021','2026-10-22'),('PO022','S022','2026-10-26'),('PO023','S023','2026-10-09'),('PO024','S024','2025-09-17'),('PO025','S025','2025-11-18'),('PO026','S026','2025-02-09'),('PO027','S027','2026-01-30'),('PO028','S028','2025-07-10'),('PO029','S029','2026-02-15'),('PO030','S030','2025-06-21'),('PO031','S031','2026-04-14'),('PO032','S032','2026-12-14'),('PO033','S033','2026-05-06'),('PO034','S034','2025-11-30'),('PO035','S035','2026-05-21'),('PO036','S036','2025-04-15'),('PO037','S037','2026-06-05'),('PO038','S038','2025-07-20'),('PO039','S039','2025-03-17'),('PO040','S040','2025-10-24'),('PO041','S041','2025-03-30'),('PO042','S042','2026-10-10'),('PO043','S043','2026-05-04'),('PO044','S044','2026-06-12'),('PO045','S045','2025-07-18'),('PO046','S046','2026-11-02'),('PO047','S047','2025-12-04'),('PO048','S048','2025-06-18'),('PO049','S049','2025-12-31'),('PO050','S050','2025-10-05');
/*!40000 ALTER TABLE `purchaseorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `returns`
--

DROP TABLE IF EXISTS `returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `returns` (
  `ReturnID` varchar(10) NOT NULL,
  `ProductID` varchar(10) DEFAULT NULL,
  `Qty` int DEFAULT NULL,
  `ReturnDate` date DEFAULT NULL,
  PRIMARY KEY (`ReturnID`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `returns_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `returns`
--

LOCK TABLES `returns` WRITE;
/*!40000 ALTER TABLE `returns` DISABLE KEYS */;
INSERT INTO `returns` VALUES ('RET001','P001',4,'2025-02-16'),('RET002','P002',5,'2026-11-05'),('RET003','P003',6,'2026-11-16'),('RET004','P004',4,'2026-07-04'),('RET005','P005',9,'2026-10-03'),('RET006','P006',3,'2026-02-13'),('RET007','P007',3,'2025-08-09'),('RET008','P008',1,'2025-10-01'),('RET009','P009',8,'2025-03-28'),('RET010','P010',1,'2026-12-24'),('RET011','P011',2,'2025-03-22'),('RET012','P012',10,'2026-12-04'),('RET013','P013',9,'2026-03-21'),('RET014','P014',2,'2025-11-27'),('RET015','P015',5,'2025-04-12'),('RET016','P016',7,'2025-05-13'),('RET017','P017',3,'2026-11-25'),('RET018','P018',1,'2026-11-24'),('RET019','P019',1,'2025-04-25'),('RET020','P020',8,'2026-01-19'),('RET021','P021',1,'2026-06-11'),('RET022','P022',3,'2025-07-04'),('RET023','P023',3,'2026-06-25'),('RET024','P024',5,'2026-07-08'),('RET025','P025',4,'2025-04-10'),('RET026','P026',5,'2025-05-05'),('RET027','P027',10,'2025-10-22'),('RET028','P028',5,'2025-11-28'),('RET029','P029',10,'2025-08-17'),('RET030','P030',10,'2026-07-24'),('RET031','P031',7,'2026-05-19'),('RET032','P032',3,'2026-06-18'),('RET033','P033',8,'2026-03-19'),('RET034','P034',8,'2025-03-31'),('RET035','P035',4,'2026-07-30'),('RET036','P036',4,'2025-07-10'),('RET037','P037',8,'2025-02-03'),('RET038','P038',9,'2025-11-08'),('RET039','P039',9,'2026-06-21'),('RET040','P040',3,'2025-10-28'),('RET041','P041',5,'2025-12-29'),('RET042','P042',8,'2026-07-12'),('RET043','P043',9,'2026-10-18'),('RET044','P044',10,'2026-11-16'),('RET045','P045',2,'2026-10-08'),('RET046','P046',6,'2026-08-22'),('RET047','P047',3,'2025-08-02'),('RET048','P048',2,'2025-05-07'),('RET049','P049',10,'2025-10-04'),('RET050','P050',8,'2026-12-29');
/*!40000 ALTER TABLE `returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesorderdetails`
--

DROP TABLE IF EXISTS `salesorderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesorderdetails` (
  `SODetailID` varchar(10) NOT NULL,
  `SOID` varchar(10) DEFAULT NULL,
  `ProductID` varchar(10) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  PRIMARY KEY (`SODetailID`),
  KEY `SOID` (`SOID`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `salesorderdetails_ibfk_1` FOREIGN KEY (`SOID`) REFERENCES `salesorders` (`SOID`),
  CONSTRAINT `salesorderdetails_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesorderdetails`
--

LOCK TABLES `salesorderdetails` WRITE;
/*!40000 ALTER TABLE `salesorderdetails` DISABLE KEYS */;
INSERT INTO `salesorderdetails` VALUES ('SOD001','SO001','P001',6),('SOD002','SO002','P002',2),('SOD003','SO003','P003',14),('SOD004','SO004','P004',4),('SOD005','SO005','P005',14),('SOD006','SO006','P006',10),('SOD007','SO007','P007',1),('SOD008','SO008','P008',15),('SOD009','SO009','P009',12),('SOD010','SO010','P010',2),('SOD011','SO011','P011',12),('SOD012','SO012','P012',18),('SOD013','SO013','P013',17),('SOD014','SO014','P014',10),('SOD015','SO015','P015',12),('SOD016','SO016','P016',3),('SOD017','SO017','P017',13),('SOD018','SO018','P018',1),('SOD019','SO019','P019',3),('SOD020','SO020','P020',3),('SOD021','SO021','P021',7),('SOD022','SO022','P022',8),('SOD023','SO023','P023',3),('SOD024','SO024','P024',12),('SOD025','SO025','P025',7),('SOD026','SO026','P026',19),('SOD027','SO027','P027',18),('SOD028','SO028','P028',18),('SOD029','SO029','P029',1),('SOD030','SO030','P030',3),('SOD031','SO031','P031',2),('SOD032','SO032','P032',8),('SOD033','SO033','P033',18),('SOD034','SO034','P034',1),('SOD035','SO035','P035',3),('SOD036','SO036','P036',11),('SOD037','SO037','P037',12),('SOD038','SO038','P038',1),('SOD039','SO039','P039',5),('SOD040','SO040','P040',9),('SOD041','SO041','P041',13),('SOD042','SO042','P042',10),('SOD043','SO043','P043',6),('SOD044','SO044','P044',16),('SOD045','SO045','P045',19),('SOD046','SO046','P046',8),('SOD047','SO047','P047',6),('SOD048','SO048','P048',6),('SOD049','SO049','P049',10),('SOD050','SO050','P050',3);
/*!40000 ALTER TABLE `salesorderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesorders`
--

DROP TABLE IF EXISTS `salesorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesorders` (
  `SOID` varchar(10) NOT NULL,
  `CustomerID` varchar(10) DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  PRIMARY KEY (`SOID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `salesorders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesorders`
--

LOCK TABLES `salesorders` WRITE;
/*!40000 ALTER TABLE `salesorders` DISABLE KEYS */;
INSERT INTO `salesorders` VALUES ('SO001','CU001','2026-05-04'),('SO002','CU002','2025-06-12'),('SO003','CU003','2026-11-16'),('SO004','CU004','2026-12-21'),('SO005','CU005','2026-10-23'),('SO006','CU006','2026-01-30'),('SO007','CU007','2025-02-25'),('SO008','CU008','2026-11-20'),('SO009','CU009','2025-06-16'),('SO010','CU010','2026-10-07'),('SO011','CU011','2025-07-14'),('SO012','CU012','2025-06-01'),('SO013','CU013','2026-07-12'),('SO014','CU014','2025-02-24'),('SO015','CU015','2025-11-28'),('SO016','CU016','2026-04-24'),('SO017','CU017','2025-06-08'),('SO018','CU018','2026-08-13'),('SO019','CU019','2025-08-12'),('SO020','CU020','2026-10-06'),('SO021','CU021','2026-09-04'),('SO022','CU022','2026-03-29'),('SO023','CU023','2025-01-27'),('SO024','CU024','2025-06-11'),('SO025','CU025','2026-10-28'),('SO026','CU026','2025-07-10'),('SO027','CU027','2026-04-29'),('SO028','CU028','2026-01-29'),('SO029','CU029','2025-01-06'),('SO030','CU030','2025-10-15'),('SO031','CU031','2026-07-10'),('SO032','CU032','2026-12-15'),('SO033','CU033','2025-04-12'),('SO034','CU034','2025-01-07'),('SO035','CU035','2025-08-02'),('SO036','CU036','2025-06-28'),('SO037','CU037','2026-11-06'),('SO038','CU038','2025-04-24'),('SO039','CU039','2025-05-09'),('SO040','CU040','2025-04-16'),('SO041','CU041','2026-06-19'),('SO042','CU042','2025-01-24'),('SO043','CU043','2025-08-25'),('SO044','CU044','2026-11-07'),('SO045','CU045','2026-03-29'),('SO046','CU046','2025-02-10'),('SO047','CU047','2026-02-09'),('SO048','CU048','2026-10-29'),('SO049','CU049','2026-08-14'),('SO050','CU050','2026-12-27');
/*!40000 ALTER TABLE `salesorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockin`
--

DROP TABLE IF EXISTS `stockin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stockin` (
  `StockInID` varchar(10) NOT NULL,
  `ProductID` varchar(10) DEFAULT NULL,
  `Qty` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`StockInID`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `stockin_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockin`
--

LOCK TABLES `stockin` WRITE;
/*!40000 ALTER TABLE `stockin` DISABLE KEYS */;
INSERT INTO `stockin` VALUES ('SI001','P001',35,'2025-06-07'),('SI002','P002',53,'2026-03-24'),('SI003','P003',27,'2026-02-14'),('SI004','P004',34,'2026-12-27'),('SI005','P005',51,'2026-12-05'),('SI006','P006',100,'2025-03-26'),('SI007','P007',29,'2026-12-20'),('SI008','P008',33,'2025-05-05'),('SI009','P009',87,'2026-06-01'),('SI010','P010',12,'2025-03-06'),('SI011','P011',75,'2026-08-19'),('SI012','P012',46,'2025-08-04'),('SI013','P013',42,'2026-07-15'),('SI014','P014',12,'2025-09-09'),('SI015','P015',96,'2026-10-11'),('SI016','P016',40,'2025-09-23'),('SI017','P017',35,'2026-11-21'),('SI018','P018',76,'2025-06-05'),('SI019','P019',40,'2026-10-05'),('SI020','P020',24,'2025-04-09'),('SI021','P021',46,'2025-02-20'),('SI022','P022',70,'2025-10-04'),('SI023','P023',47,'2026-01-09'),('SI024','P024',89,'2025-04-08'),('SI025','P025',76,'2026-03-04'),('SI026','P026',92,'2026-06-08'),('SI027','P027',17,'2025-05-09'),('SI028','P028',94,'2025-01-06'),('SI029','P029',74,'2025-03-08'),('SI030','P030',92,'2026-08-30'),('SI031','P031',98,'2026-08-12'),('SI032','P032',97,'2026-09-15'),('SI033','P033',27,'2025-11-08'),('SI034','P034',34,'2026-10-15'),('SI035','P035',80,'2026-11-27'),('SI036','P036',52,'2026-02-19'),('SI037','P037',94,'2025-07-29'),('SI038','P038',87,'2026-07-25'),('SI039','P039',97,'2025-06-19'),('SI040','P040',61,'2025-05-10'),('SI041','P041',31,'2025-01-25'),('SI042','P042',25,'2026-12-02'),('SI043','P043',72,'2026-09-02'),('SI044','P044',57,'2025-11-10'),('SI045','P045',20,'2026-07-12'),('SI046','P046',77,'2025-07-26'),('SI047','P047',61,'2025-03-20'),('SI048','P048',51,'2025-05-02'),('SI049','P049',65,'2025-11-08'),('SI050','P050',25,'2025-10-01');
/*!40000 ALTER TABLE `stockin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockout`
--

DROP TABLE IF EXISTS `stockout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stockout` (
  `StockOutID` varchar(10) NOT NULL,
  `ProductID` varchar(10) DEFAULT NULL,
  `Qty` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`StockOutID`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `stockout_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockout`
--

LOCK TABLES `stockout` WRITE;
/*!40000 ALTER TABLE `stockout` DISABLE KEYS */;
INSERT INTO `stockout` VALUES ('SOU001','P001',33,'2026-10-05'),('SOU002','P002',13,'2025-01-26'),('SOU003','P003',11,'2026-12-22'),('SOU004','P004',48,'2026-06-01'),('SOU005','P005',2,'2026-07-09'),('SOU006','P006',43,'2025-06-14'),('SOU007','P007',50,'2025-04-21'),('SOU008','P008',36,'2026-09-06'),('SOU009','P009',43,'2025-10-30'),('SOU010','P010',32,'2026-05-08'),('SOU011','P011',46,'2026-01-29'),('SOU012','P012',45,'2026-05-07'),('SOU013','P013',8,'2026-05-25'),('SOU014','P014',14,'2025-12-16'),('SOU015','P015',30,'2025-07-11'),('SOU016','P016',11,'2026-08-06'),('SOU017','P017',15,'2025-07-18'),('SOU018','P018',23,'2026-01-05'),('SOU019','P019',18,'2026-04-28'),('SOU020','P020',43,'2026-07-09'),('SOU021','P021',37,'2026-03-16'),('SOU022','P022',50,'2025-06-30'),('SOU023','P023',40,'2026-09-15'),('SOU024','P024',41,'2025-07-04'),('SOU025','P025',19,'2026-07-25'),('SOU026','P026',39,'2026-10-14'),('SOU027','P027',46,'2026-08-16'),('SOU028','P028',4,'2025-03-24'),('SOU029','P029',49,'2026-03-16'),('SOU030','P030',21,'2026-10-21'),('SOU031','P031',23,'2026-05-29'),('SOU032','P032',20,'2026-08-30'),('SOU033','P033',6,'2026-11-17'),('SOU034','P034',48,'2025-02-21'),('SOU035','P035',34,'2026-07-31'),('SOU036','P036',41,'2026-11-30'),('SOU037','P037',27,'2026-07-23'),('SOU038','P038',25,'2026-11-20'),('SOU039','P039',12,'2025-10-27'),('SOU040','P040',36,'2025-07-24'),('SOU041','P041',6,'2025-05-19'),('SOU042','P042',36,'2026-05-30'),('SOU043','P043',26,'2025-05-27'),('SOU044','P044',50,'2025-08-02'),('SOU045','P045',22,'2025-05-31'),('SOU046','P046',22,'2026-12-15'),('SOU047','P047',40,'2025-01-24'),('SOU048','P048',12,'2026-05-29'),('SOU049','P049',7,'2026-11-26'),('SOU050','P050',48,'2026-09-11');
/*!40000 ALTER TABLE `stockout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `SupplierID` varchar(10) NOT NULL,
  `SupplierName` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`SupplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES ('S001','ABC Traders','9876500001','Chennai'),('S002','XYZ Suppliers','9876500002','Bangalore'),('S003','Prime Distributors','9876500003','Hyderabad'),('S004','Global Supply','9876500004','Coimbatore'),('S005','Smart Traders','9876500005','Madurai'),('S006','Elite Suppliers','9876500006','Salem'),('S007','Metro Distributors','9876500007','Trichy'),('S008','Sunrise Traders','9876500008','Erode'),('S009','Skyline Supply','9876500009','Tirunelveli'),('S010','Tech Distributors','9876500010','Vellore'),('S011','Royal Traders','9876500011','Chennai'),('S012','Golden Suppliers','9876500012','Bangalore'),('S013','Fast Supply','9876500013','Hyderabad'),('S014','Mega Traders','9876500014','Coimbatore'),('S015','Modern Distributors','9876500015','Madurai'),('S016','Star Suppliers','9876500016','Salem'),('S017','Best Traders','9876500017','Trichy'),('S018','Quality Supply','9876500018','Erode'),('S019','City Distributors','9876500019','Tirunelveli'),('S020','National Traders','9876500020','Vellore'),('S021','Future Supply','9876500021','Chennai'),('S022','Power Traders','9876500022','Bangalore'),('S023','Smart Distribution','9876500023','Hyderabad'),('S024','Express Suppliers','9876500024','Coimbatore'),('S025','Apex Traders','9876500025','Madurai'),('S026','Titan Supply','9876500026','Salem'),('S027','Pioneer Distributors','9876500027','Trichy'),('S028','United Traders','9876500028','Erode'),('S029','Crystal Supply','9876500029','Tirunelveli'),('S030','Sigma Suppliers','9876500030','Vellore'),('S031','Vertex Traders','9876500031','Chennai'),('S032','BlueSky Supply','9876500032','Bangalore'),('S033','Alpha Distributors','9876500033','Hyderabad'),('S034','NextGen Traders','9876500034','Coimbatore'),('S035','Vision Supply','9876500035','Madurai'),('S036','Supreme Suppliers','9876500036','Salem'),('S037','Infinity Traders','9876500037','Trichy'),('S038','Perfect Supply','9876500038','Erode'),('S039','Orbit Distributors','9876500039','Tirunelveli'),('S040','Galaxy Traders','9876500040','Vellore'),('S041','Excel Supply','9876500041','Chennai'),('S042','Master Suppliers','9876500042','Bangalore'),('S043','Pro Traders','9876500043','Hyderabad'),('S044','Dynamic Supply','9876500044','Coimbatore'),('S045','Premium Distributors','9876500045','Madurai'),('S046','Reliable Traders','9876500046','Salem'),('S047','Trust Supply','9876500047','Trichy'),('S048','Rapid Suppliers','9876500048','Erode'),('S049','Universal Traders','9876500049','Tirunelveli'),('S050','Victory Supply','9876500050','Vellore');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useraccounts`
--

DROP TABLE IF EXISTS `useraccounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `useraccounts` (
  `UserID` varchar(10) NOT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraccounts`
--

LOCK TABLES `useraccounts` WRITE;
/*!40000 ALTER TABLE `useraccounts` DISABLE KEYS */;
INSERT INTO `useraccounts` VALUES ('U001','user001','Pass@001'),('U002','user002','Pass@002'),('U003','user003','Pass@003'),('U004','user004','Pass@004'),('U005','user005','Pass@005'),('U006','user006','Pass@006'),('U007','user007','Pass@007'),('U008','user008','Pass@008'),('U009','user009','Pass@009'),('U010','user010','Pass@010'),('U011','user011','Pass@011'),('U012','user012','Pass@012'),('U013','user013','Pass@013'),('U014','user014','Pass@014'),('U015','user015','Pass@015'),('U016','user016','Pass@016'),('U017','user017','Pass@017'),('U018','user018','Pass@018'),('U019','user019','Pass@019'),('U020','user020','Pass@020'),('U021','user021','Pass@021'),('U022','user022','Pass@022'),('U023','user023','Pass@023'),('U024','user024','Pass@024'),('U025','user025','Pass@025'),('U026','user026','Pass@026'),('U027','user027','Pass@027'),('U028','user028','Pass@028'),('U029','user029','Pass@029'),('U030','user030','Pass@030'),('U031','user031','Pass@031'),('U032','user032','Pass@032'),('U033','user033','Pass@033'),('U034','user034','Pass@034'),('U035','user035','Pass@035'),('U036','user036','Pass@036'),('U037','user037','Pass@037'),('U038','user038','Pass@038'),('U039','user039','Pass@039'),('U040','user040','Pass@040'),('U041','user041','Pass@041'),('U042','user042','Pass@042'),('U043','user043','Pass@043'),('U044','user044','Pass@044'),('U045','user045','Pass@045'),('U046','user046','Pass@046'),('U047','user047','Pass@047'),('U048','user048','Pass@048'),('U049','user049','Pass@049'),('U050','user050','Pass@050');
/*!40000 ALTER TABLE `useraccounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouses`
--

DROP TABLE IF EXISTS `warehouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouses` (
  `WarehouseID` varchar(10) NOT NULL,
  `WarehouseName` varchar(100) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`WarehouseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouses`
--

LOCK TABLES `warehouses` WRITE;
/*!40000 ALTER TABLE `warehouses` DISABLE KEYS */;
INSERT INTO `warehouses` VALUES ('W001','Warehouse 1','Chennai'),('W002','Warehouse 2','Bangalore'),('W003','Warehouse 3','Hyderabad'),('W004','Warehouse 4','Coimbatore'),('W005','Warehouse 5','Madurai'),('W006','Warehouse 6','Salem'),('W007','Warehouse 7','Trichy'),('W008','Warehouse 8','Erode'),('W009','Warehouse 9','Vellore'),('W010','Warehouse 10','Tirunelveli'),('W011','Warehouse 11','Chennai'),('W012','Warehouse 12','Bangalore'),('W013','Warehouse 13','Hyderabad'),('W014','Warehouse 14','Coimbatore'),('W015','Warehouse 15','Madurai'),('W016','Warehouse 16','Salem'),('W017','Warehouse 17','Trichy'),('W018','Warehouse 18','Erode'),('W019','Warehouse 19','Vellore'),('W020','Warehouse 20','Tirunelveli'),('W021','Warehouse 21','Chennai'),('W022','Warehouse 22','Bangalore'),('W023','Warehouse 23','Hyderabad'),('W024','Warehouse 24','Coimbatore'),('W025','Warehouse 25','Madurai'),('W026','Warehouse 26','Salem'),('W027','Warehouse 27','Trichy'),('W028','Warehouse 28','Erode'),('W029','Warehouse 29','Vellore'),('W030','Warehouse 30','Tirunelveli'),('W031','Warehouse 31','Chennai'),('W032','Warehouse 32','Bangalore'),('W033','Warehouse 33','Hyderabad'),('W034','Warehouse 34','Coimbatore'),('W035','Warehouse 35','Madurai'),('W036','Warehouse 36','Salem'),('W037','Warehouse 37','Trichy'),('W038','Warehouse 38','Erode'),('W039','Warehouse 39','Vellore'),('W040','Warehouse 40','Tirunelveli'),('W041','Warehouse 41','Chennai'),('W042','Warehouse 42','Bangalore'),('W043','Warehouse 43','Hyderabad'),('W044','Warehouse 44','Coimbatore'),('W045','Warehouse 45','Madurai'),('W046','Warehouse 46','Salem'),('W047','Warehouse 47','Trichy'),('W048','Warehouse 48','Erode'),('W049','Warehouse 49','Vellore'),('W050','Warehouse 50','Tirunelveli');
/*!40000 ALTER TABLE `warehouses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `inventoryreport`
--

/*!50001 DROP VIEW IF EXISTS `inventoryreport`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inventoryreport` AS select `p`.`ProductName` AS `ProductName`,`w`.`WarehouseName` AS `WarehouseName`,`i`.`StockQty` AS `StockQty` from ((`inventory` `i` join `products` `p` on((`i`.`ProductID` = `p`.`ProductID`))) join `warehouses` `w` on((`i`.`WarehouseID` = `w`.`WarehouseID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-12 16:38:38

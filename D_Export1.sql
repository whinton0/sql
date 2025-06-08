-- MySQL dump 10.13  Distrib 8.0.40, for macos14 (arm64)
--
-- Host: 127.0.0.1    Database: mydatabase
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `CustomerContact`
--

DROP TABLE IF EXISTS `CustomerContact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CustomerContact` (
  `customer_id` int NOT NULL,
  `salutation` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suffix` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomerContact`
--

LOCK TABLES `CustomerContact` WRITE;
/*!40000 ALTER TABLE `CustomerContact` DISABLE KEYS */;
INSERT INTO `CustomerContact` VALUES (1,'Ms.','First1','M','Last1','','first1.last1@example.com','555-627-5402','123 Elm St','City1','ST','12341','2004-12-18'),(2,'Mr.','First2','M','Last2','','first2.last2@example.com','555-796-3286','123 Elm St','City2','ST','12342','1994-03-10'),(3,'Dr.','First3','M','Last3','','first3.last3@example.com','555-217-7602','123 Elm St','City3','ST','12343','2005-07-13'),(4,'Dr.','First4','M','Last4','','first4.last4@example.com','555-644-5017','123 Elm St','City4','ST','12344','2001-05-28'),(5,'Dr.','First5','M','Last5','','first5.last5@example.com','555-481-1250','123 Elm St','City5','ST','12345','1991-12-26'),(6,'Dr.','First6','M','Last6','','first6.last6@example.com','555-522-3360','123 Elm St','City6','ST','12346','2004-04-05'),(7,'Dr.','First7','M','Last7','','first7.last7@example.com','555-737-7004','123 Elm St','City7','ST','12347','1997-08-10'),(8,'Dr.','First8','M','Last8','','first8.last8@example.com','555-190-2081','123 Elm St','City8','ST','12348','2005-02-01'),(9,'Ms.','First9','M','Last9','','first9.last9@example.com','555-595-2508','123 Elm St','City9','ST','12349','2004-06-15'),(10,'Ms.','First10','M','Last10','','first10.last10@example.com','555-371-2605','123 Elm St','City10','ST','123410','1992-11-16');
/*!40000 ALTER TABLE `CustomerContact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customers` (
  `customer_id` int NOT NULL,
  `age` int DEFAULT NULL,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `household_size` int DEFAULT NULL,
  `children_count` int DEFAULT NULL,
  `home_ownership` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `income_range` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `CustomerContact` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES (1,57,'Male','Single',5,3,'Rent','$50k-$75k'),(2,33,'Female','Married',5,3,'Own','$50k-$75k'),(3,48,'Non-binary','Single',4,0,'Rent','$25k-$50k'),(4,31,'Non-binary','Single',5,3,'Own','$50k-$75k'),(5,54,'Male','Married',5,1,'Rent','$25k-$50k'),(6,26,'Female','Married',4,2,'Rent','$75k-$100k'),(7,33,'Non-binary','Married',3,2,'Rent','$75k-$100k'),(8,26,'Female','Married',4,0,'Own','$25k-$50k'),(9,33,'Non-binary','Married',1,1,'Own','$25k-$50k'),(10,59,'Non-binary','Married',3,1,'Rent','$25k-$50k');
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employees`
--

DROP TABLE IF EXISTS `Employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employees` (
  `employee_id` int NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reports_to` int DEFAULT NULL,
  `job_title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `office_code` (`office_code`),
  KEY `reports_to` (`reports_to`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`office_code`) REFERENCES `Offices` (`office_code`),
  CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`reports_to`) REFERENCES `Employees` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employees`
--

LOCK TABLES `Employees` WRITE;
/*!40000 ALTER TABLE `Employees` DISABLE KEYS */;
INSERT INTO `Employees` VALUES (1,'EmpLast1','EmpFirst1','x101','emp1@retail.com','OF2',NULL,'Sales Rep','Sales',7.16),(2,'EmpLast2','EmpFirst2','x102','emp2@retail.com','OF3',1,'Sales Rep','Sales',8.95),(3,'EmpLast3','EmpFirst3','x103','emp3@retail.com','OF1',2,'Sales Rep','Sales',6.76),(4,'EmpLast4','EmpFirst4','x104','emp4@retail.com','OF2',3,'Sales Rep','Sales',4.20),(5,'EmpLast5','EmpFirst5','x105','emp5@retail.com','OF3',4,'Sales Rep','Sales',7.04);
/*!40000 ALTER TABLE `Employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Offices`
--

DROP TABLE IF EXISTS `Offices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Offices` (
  `office_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `territory` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`office_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Offices`
--

LOCK TABLES `Offices` WRITE;
/*!40000 ALTER TABLE `Offices` DISABLE KEYS */;
INSERT INTO `Offices` VALUES ('OF1','City1','555-000-0001','Addr1-1','Addr2-1','ST','USA','60601','REG1'),('OF2','City2','555-000-0002','Addr1-2','Addr2-2','ST','USA','60602','REG2'),('OF3','City3','555-000-0003','Addr1-3','Addr2-3','ST','USA','60603','REG3');
/*!40000 ALTER TABLE `Offices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderDetails`
--

DROP TABLE IF EXISTS `OrderDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OrderDetails` (
  `order_id` int NOT NULL,
  `product_code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity_ordered` int NOT NULL,
  `price_each` decimal(10,2) NOT NULL,
  `order_line_number` smallint NOT NULL,
  PRIMARY KEY (`order_id`,`product_code`),
  KEY `product_code` (`product_code`),
  CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `Orders` (`order_id`),
  CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`product_code`) REFERENCES `Products` (`product_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderDetails`
--

LOCK TABLES `OrderDetails` WRITE;
/*!40000 ALTER TABLE `OrderDetails` DISABLE KEYS */;
INSERT INTO `OrderDetails` VALUES (1,'P001',3,59.99,1),(2,'P002',2,59.99,1),(3,'P003',4,59.99,1),(4,'P004',3,59.99,1),(5,'P005',2,59.99,1),(6,'P006',5,59.99,1),(7,'P007',3,59.99,1),(8,'P008',5,59.99,1),(9,'P009',5,59.99,1),(10,'P010',2,59.99,1);
/*!40000 ALTER TABLE `OrderDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orders` (
  `order_id` int NOT NULL,
  `order_date` date NOT NULL,
  `required_date` date NOT NULL,
  `shipped_date` date DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `customer_id` int NOT NULL,
  `employee_id` int NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `Customers` (`customer_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `Employees` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (1,'2024-06-01','2024-06-03','2024-06-02','Shipped','Handle with care',1,2),(2,'2024-06-02','2024-06-04','2024-06-03','Shipped','Handle with care',2,3),(3,'2024-06-03','2024-06-05','2024-06-04','Shipped','Handle with care',3,4),(4,'2024-06-04','2024-06-06','2024-06-05','Shipped','Handle with care',4,5),(5,'2024-06-05','2024-06-07','2024-06-06','Shipped','Handle with care',5,1),(6,'2024-06-06','2024-06-08','2024-06-07','Shipped','Handle with care',6,2),(7,'2024-06-07','2024-06-09','2024-06-08','Shipped','Handle with care',7,3),(8,'2024-06-08','2024-06-10','2024-06-09','Shipped','Handle with care',8,4),(9,'2024-06-09','2024-06-11','2024-06-10','Shipped','Handle with care',9,5),(10,'2024-06-10','2024-06-12','2024-06-11','Shipped','Handle with care',10,1);
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Payments`
--

DROP TABLE IF EXISTS `Payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Payments` (
  `customer_id` int NOT NULL,
  `check_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`customer_id`,`check_number`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `Customers` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Payments`
--

LOCK TABLES `Payments` WRITE;
/*!40000 ALTER TABLE `Payments` DISABLE KEYS */;
INSERT INTO `Payments` VALUES (1,'CHK00001','2024-06-07',119.98),(2,'CHK00002','2024-06-07',119.98),(3,'CHK00003','2024-06-07',119.98),(4,'CHK00004','2024-06-07',119.98),(5,'CHK00005','2024-06-07',119.98),(6,'CHK00006','2024-06-07',119.98),(7,'CHK00007','2024-06-07',119.98),(8,'CHK00008','2024-06-07',119.98),(9,'CHK00009','2024-06-07',119.98),(10,'CHK00010','2024-06-07',119.98);
/*!40000 ALTER TABLE `Payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductLines`
--

DROP TABLE IF EXISTS `ProductLines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProductLines` (
  `product_line` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_description` varchar(4000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` mediumblob,
  PRIMARY KEY (`product_line`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductLines`
--

LOCK TABLES `ProductLines` WRITE;
/*!40000 ALTER TABLE `ProductLines` DISABLE KEYS */;
INSERT INTO `ProductLines` VALUES ('Line1','Description1','<p>HTML1</p>',NULL),('Line2','Description2','<p>HTML2</p>',NULL),('Line3','Description3','<p>HTML3</p>',NULL);
/*!40000 ALTER TABLE `ProductLines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Products`
--

DROP TABLE IF EXISTS `Products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Products` (
  `product_code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_line` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_scale` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_vendor` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity_in_stock` smallint NOT NULL,
  `buy_price` decimal(10,2) NOT NULL,
  `MSRP` decimal(10,2) NOT NULL,
  PRIMARY KEY (`product_code`),
  KEY `product_line` (`product_line`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`product_line`) REFERENCES `ProductLines` (`product_line`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Products`
--

LOCK TABLES `Products` WRITE;
/*!40000 ALTER TABLE `Products` DISABLE KEYS */;
INSERT INTO `Products` VALUES ('P001','Product1','Line2','Small','Vendor1','Desc1',59,49.99,69.99),('P002','Product2','Line3','Small','Vendor2','Desc2',37,49.99,69.99),('P003','Product3','Line1','Small','Vendor3','Desc3',58,49.99,69.99),('P004','Product4','Line2','Small','Vendor4','Desc4',46,49.99,69.99),('P005','Product5','Line3','Small','Vendor5','Desc5',61,49.99,69.99),('P006','Product6','Line1','Small','Vendor6','Desc6',64,49.99,69.99),('P007','Product7','Line2','Small','Vendor7','Desc7',49,49.99,69.99),('P008','Product8','Line3','Small','Vendor8','Desc8',19,49.99,69.99),('P009','Product9','Line1','Small','Vendor9','Desc9',16,49.99,69.99),('P010','Product10','Line2','Small','Vendor10','Desc10',87,49.99,69.99);
/*!40000 ALTER TABLE `Products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SurveyResponses`
--

DROP TABLE IF EXISTS `SurveyResponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SurveyResponses` (
  `response_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `visit_frequency` int DEFAULT NULL,
  `avg_visit_duration` int DEFAULT NULL,
  `plans_viewed_last_visit` int DEFAULT NULL,
  `comparison_method` int DEFAULT NULL,
  `customer_tenure` int DEFAULT NULL,
  `satisfaction_overall` int DEFAULT NULL,
  `satisfaction_website` int DEFAULT NULL,
  `value_for_money` int DEFAULT NULL,
  `recommend_score` int DEFAULT NULL,
  `contacted_support` tinyint(1) DEFAULT NULL,
  `support_satisfaction` int DEFAULT NULL,
  `favorite_aspect` text COLLATE utf8mb4_unicode_ci,
  `improvement_suggestions` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`response_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `surveyresponses_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `Customers` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SurveyResponses`
--

LOCK TABLES `SurveyResponses` WRITE;
/*!40000 ALTER TABLE `SurveyResponses` DISABLE KEYS */;
INSERT INTO `SurveyResponses` VALUES (1,1,5,15,5,1,22,3,5,1,10,1,3,'Feature1','Suggestion1'),(2,2,2,15,5,1,19,1,2,4,0,1,3,'Feature2','Suggestion2'),(3,3,4,19,5,1,17,2,2,2,9,1,3,'Feature3','Suggestion3'),(4,4,5,15,1,2,7,2,2,1,9,0,5,'Feature4','Suggestion4'),(5,5,1,10,2,2,14,3,2,5,0,0,2,'Feature5','Suggestion5'),(6,6,1,10,3,2,2,3,4,1,4,1,3,'Feature6','Suggestion6'),(7,7,1,14,4,1,10,4,5,3,8,0,5,'Feature7','Suggestion7'),(8,8,1,14,4,1,2,3,4,4,10,1,1,'Feature8','Suggestion8'),(9,9,3,5,5,2,11,5,4,2,0,1,2,'Feature9','Suggestion9'),(10,10,1,12,5,1,1,2,3,2,10,0,5,'Feature10','Suggestion10');
/*!40000 ALTER TABLE `SurveyResponses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-07 17:17:39

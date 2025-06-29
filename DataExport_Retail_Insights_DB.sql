-- MySQL dump 10.13  Distrib 8.0.40, for macos14 (arm64)
--
-- Host: localhost    Database: retail_insights_db
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
-- Table structure for table `BI_Metrics`
--

DROP TABLE IF EXISTS `BI_Metrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BI_Metrics` (
  `metric_id` int NOT NULL,
  `metric_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metric_value` decimal(18,4) DEFAULT NULL,
  `recorded_at` datetime DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`metric_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BI_Metrics`
--

LOCK TABLES `BI_Metrics` WRITE;
/*!40000 ALTER TABLE `BI_Metrics` DISABLE KEYS */;
INSERT INTO `BI_Metrics` VALUES (1,'Metric 1',7731.2299,'2024-11-22 00:00:00','Note 1'),(2,'Metric 2',2273.8254,'2024-12-02 00:00:00','Note 2'),(3,'Metric 3',6229.3362,'2024-05-19 00:00:00','Note 3'),(4,'Metric 4',6841.3865,'2024-01-09 00:00:00','Note 4'),(5,'Metric 5',1209.3474,'2023-11-27 00:00:00','Note 5'),(6,'Metric 6',8939.4038,'2023-03-27 00:00:00','Note 6'),(7,'Metric 7',5443.8227,'2023-06-28 00:00:00','Note 7'),(8,'Metric 8',7686.7359,'2024-12-30 00:00:00','Note 8'),(9,'Metric 9',6501.0705,'2024-01-31 00:00:00','Note 9'),(10,'Metric 10',3607.6240,'2023-10-07 00:00:00','Note 10'),(11,'Metric 11',9668.9391,'2023-08-09 00:00:00','Note 11'),(12,'Metric 12',8867.4034,'2024-11-16 00:00:00','Note 12'),(13,'Metric 13',4663.2892,'2024-05-25 00:00:00','Note 13'),(14,'Metric 14',7113.9776,'2023-02-01 00:00:00','Note 14'),(15,'Metric 15',5263.6971,'2024-12-13 00:00:00','Note 15'),(16,'Metric 16',682.0037,'2024-09-21 00:00:00','Note 16'),(17,'Metric 17',1082.2596,'2023-10-04 00:00:00','Note 17'),(18,'Metric 18',4770.5016,'2023-11-20 00:00:00','Note 18'),(19,'Metric 19',4697.8357,'2024-10-31 00:00:00','Note 19'),(20,'Metric 20',3187.2072,'2023-11-02 00:00:00','Note 20'),(21,'Metric 21',6340.2882,'2024-11-10 00:00:00','Note 21'),(22,'Metric 22',8815.9576,'2024-12-24 00:00:00','Note 22'),(23,'Metric 23',8628.7511,'2024-01-06 00:00:00','Note 23'),(24,'Metric 24',9945.7796,'2024-07-14 00:00:00','Note 24'),(25,'Metric 25',5309.9785,'2024-08-31 00:00:00','Note 25'),(26,'Metric 26',5433.3250,'2023-03-15 00:00:00','Note 26'),(27,'Metric 27',1111.6932,'2024-12-24 00:00:00','Note 27'),(28,'Metric 28',6132.7883,'2023-12-23 00:00:00','Note 28'),(29,'Metric 29',3597.2905,'2024-12-22 00:00:00','Note 29'),(30,'Metric 30',7546.0688,'2024-05-05 00:00:00','Note 30'),(31,'Metric 31',625.8592,'2024-05-08 00:00:00','Note 31'),(32,'Metric 32',7563.8151,'2024-12-07 00:00:00','Note 32'),(33,'Metric 33',5522.3761,'2024-04-15 00:00:00','Note 33'),(34,'Metric 34',5482.6341,'2024-08-31 00:00:00','Note 34'),(35,'Metric 35',7681.1208,'2024-02-22 00:00:00','Note 35'),(36,'Metric 36',9757.8747,'2023-10-23 00:00:00','Note 36'),(37,'Metric 37',5782.4377,'2024-04-23 00:00:00','Note 37'),(38,'Metric 38',533.3183,'2024-03-15 00:00:00','Note 38'),(39,'Metric 39',2086.5480,'2023-02-15 00:00:00','Note 39'),(40,'Metric 40',4352.3375,'2023-06-24 00:00:00','Note 40'),(41,'Metric 41',2140.4023,'2024-07-16 00:00:00','Note 41'),(42,'Metric 42',842.9266,'2024-12-29 00:00:00','Note 42'),(43,'Metric 43',2387.5558,'2023-09-24 00:00:00','Note 43'),(44,'Metric 44',6077.9460,'2023-08-08 00:00:00','Note 44'),(45,'Metric 45',5140.2444,'2023-06-18 00:00:00','Note 45'),(46,'Metric 46',1688.0287,'2023-10-07 00:00:00','Note 46'),(47,'Metric 47',4227.9861,'2024-10-07 00:00:00','Note 47'),(48,'Metric 48',8769.5956,'2024-12-14 00:00:00','Note 48'),(49,'Metric 49',4780.8985,'2023-06-05 00:00:00','Note 49'),(50,'Metric 50',4681.5001,'2024-05-07 00:00:00','Note 50'),(51,'Metric 51',4879.5476,'2023-01-12 00:00:00','Note 51'),(52,'Metric 52',8939.1090,'2023-01-18 00:00:00','Note 52'),(53,'Metric 53',3245.6007,'2023-05-18 00:00:00','Note 53'),(54,'Metric 54',8562.5764,'2024-09-16 00:00:00','Note 54'),(55,'Metric 55',8722.2558,'2024-09-15 00:00:00','Note 55'),(56,'Metric 56',6713.5479,'2023-02-23 00:00:00','Note 56'),(57,'Metric 57',1691.4350,'2023-12-23 00:00:00','Note 57'),(58,'Metric 58',3119.6630,'2023-12-31 00:00:00','Note 58'),(59,'Metric 59',6473.9541,'2023-01-01 00:00:00','Note 59'),(60,'Metric 60',2981.7561,'2024-01-10 00:00:00','Note 60');
/*!40000 ALTER TABLE `BI_Metrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CampaignTracking`
--

DROP TABLE IF EXISTS `CampaignTracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CampaignTracking` (
  `campaign_id` int NOT NULL,
  `campaign_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `channel` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CampaignTracking`
--

LOCK TABLES `CampaignTracking` WRITE;
/*!40000 ALTER TABLE `CampaignTracking` DISABLE KEYS */;
INSERT INTO `CampaignTracking` VALUES (1,'Campaign 1','2024-08-22','2024-09-06','Social',7245.56),(2,'Campaign 2','2024-05-18','2024-06-02','Social',4961.64),(3,'Campaign 3','2024-04-09','2024-04-24','Social',2961.59),(4,'Campaign 4','2024-06-04','2024-06-19','Social',7899.84),(5,'Campaign 5','2024-12-24','2025-01-08','Email',4308.07);
/*!40000 ALTER TABLE `CampaignTracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ChannelInteractions`
--

DROP TABLE IF EXISTS `ChannelInteractions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ChannelInteractions` (
  `interaction_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `interaction_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`interaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChannelInteractions`
--

LOCK TABLES `ChannelInteractions` WRITE;
/*!40000 ALTER TABLE `ChannelInteractions` DISABLE KEYS */;
INSERT INTO `ChannelInteractions` VALUES (1,46,'Purchase','App','2024-09-07 00:00:00','Interaction 1'),(2,38,'View','Email','2023-02-01 00:00:00','Interaction 2'),(3,56,'Purchase','Website','2023-12-17 00:00:00','Interaction 3'),(4,4,'Purchase','Website','2023-06-17 00:00:00','Interaction 4'),(5,30,'View','Email','2024-03-18 00:00:00','Interaction 5'),(6,51,'Purchase','App','2024-04-17 00:00:00','Interaction 6'),(7,56,'Click','Website','2024-10-08 00:00:00','Interaction 7'),(8,14,'Click','Email','2023-04-09 00:00:00','Interaction 8'),(9,52,'Click','Email','2023-06-02 00:00:00','Interaction 9'),(10,30,'View','App','2024-12-29 00:00:00','Interaction 10'),(11,16,'View','Email','2023-03-27 00:00:00','Interaction 11'),(12,7,'Click','Website','2024-08-19 00:00:00','Interaction 12'),(13,55,'Purchase','Email','2024-09-09 00:00:00','Interaction 13'),(14,27,'View','Email','2024-07-10 00:00:00','Interaction 14'),(15,24,'Purchase','Email','2024-08-15 00:00:00','Interaction 15'),(16,22,'Click','Email','2023-06-05 00:00:00','Interaction 16'),(17,28,'Purchase','Email','2023-08-23 00:00:00','Interaction 17'),(18,21,'Purchase','Email','2024-09-24 00:00:00','Interaction 18'),(19,16,'Purchase','Email','2023-07-10 00:00:00','Interaction 19'),(20,7,'Click','Email','2024-11-03 00:00:00','Interaction 20'),(21,9,'View','Website','2023-06-25 00:00:00','Interaction 21'),(22,8,'View','App','2024-04-09 00:00:00','Interaction 22'),(23,22,'Click','Email','2024-08-03 00:00:00','Interaction 23'),(24,2,'Click','Website','2023-01-04 00:00:00','Interaction 24'),(25,38,'Click','Website','2024-01-20 00:00:00','Interaction 25'),(26,30,'Purchase','Email','2024-02-02 00:00:00','Interaction 26'),(27,26,'View','Email','2023-07-24 00:00:00','Interaction 27'),(28,9,'Click','App','2023-08-28 00:00:00','Interaction 28'),(29,59,'Click','Website','2024-09-14 00:00:00','Interaction 29'),(30,56,'Click','Email','2024-09-06 00:00:00','Interaction 30'),(31,1,'Purchase','Website','2023-10-08 00:00:00','Interaction 31'),(32,31,'View','Email','2024-03-25 00:00:00','Interaction 32'),(33,50,'View','Website','2024-03-29 00:00:00','Interaction 33'),(34,57,'Click','Website','2023-04-04 00:00:00','Interaction 34'),(35,52,'View','App','2023-04-19 00:00:00','Interaction 35'),(36,22,'Click','Email','2023-09-16 00:00:00','Interaction 36'),(37,41,'Purchase','Website','2023-02-19 00:00:00','Interaction 37'),(38,27,'View','Website','2024-02-06 00:00:00','Interaction 38'),(39,29,'View','Email','2023-04-16 00:00:00','Interaction 39'),(40,19,'Purchase','App','2023-09-15 00:00:00','Interaction 40'),(41,22,'Click','Website','2023-07-10 00:00:00','Interaction 41'),(42,25,'Click','App','2023-07-08 00:00:00','Interaction 42'),(43,27,'View','Email','2024-08-01 00:00:00','Interaction 43'),(44,40,'Purchase','App','2023-06-05 00:00:00','Interaction 44'),(45,41,'View','Email','2023-10-30 00:00:00','Interaction 45'),(46,15,'Purchase','Email','2024-02-01 00:00:00','Interaction 46'),(47,54,'Purchase','Website','2024-05-12 00:00:00','Interaction 47'),(48,5,'View','App','2023-07-18 00:00:00','Interaction 48'),(49,18,'Purchase','Website','2023-08-15 00:00:00','Interaction 49'),(50,39,'View','Email','2023-01-17 00:00:00','Interaction 50'),(51,45,'Purchase','Email','2023-01-11 00:00:00','Interaction 51'),(52,49,'View','Email','2023-03-08 00:00:00','Interaction 52'),(53,59,'Click','App','2024-05-16 00:00:00','Interaction 53'),(54,14,'Click','Website','2024-02-07 00:00:00','Interaction 54'),(55,40,'Click','Website','2023-12-04 00:00:00','Interaction 55'),(56,28,'Purchase','Email','2024-04-18 00:00:00','Interaction 56'),(57,33,'View','Website','2023-04-29 00:00:00','Interaction 57'),(58,32,'Click','App','2023-06-21 00:00:00','Interaction 58'),(59,43,'Click','Website','2023-07-30 00:00:00','Interaction 59'),(60,43,'View','App','2024-12-10 00:00:00','Interaction 60');
/*!40000 ALTER TABLE `ChannelInteractions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomerContact`
--

DROP TABLE IF EXISTS `CustomerContact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CustomerContact` (
  `contact_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`contact_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `customercontact_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `Customers` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomerContact`
--

LOCK TABLES `CustomerContact` WRITE;
/*!40000 ALTER TABLE `CustomerContact` DISABLE KEYS */;
INSERT INTO `CustomerContact` VALUES (1,1,'555-01001','Address 1'),(2,2,'555-01002','Address 2'),(3,3,'555-01003','Address 3'),(4,4,'555-01004','Address 4'),(5,5,'555-01005','Address 5'),(6,6,'555-01006','Address 6'),(7,7,'555-01007','Address 7'),(8,8,'555-01008','Address 8'),(9,9,'555-01009','Address 9'),(10,10,'555-01010','Address 10'),(11,11,'555-01011','Address 11'),(12,12,'555-01012','Address 12'),(13,13,'555-01013','Address 13'),(14,14,'555-01014','Address 14'),(15,15,'555-01015','Address 15'),(16,16,'555-01016','Address 16'),(17,17,'555-01017','Address 17'),(18,18,'555-01018','Address 18'),(19,19,'555-01019','Address 19'),(20,20,'555-01020','Address 20'),(21,21,'555-01021','Address 21'),(22,22,'555-01022','Address 22'),(23,23,'555-01023','Address 23'),(24,24,'555-01024','Address 24'),(25,25,'555-01025','Address 25'),(26,26,'555-01026','Address 26'),(27,27,'555-01027','Address 27'),(28,28,'555-01028','Address 28'),(29,29,'555-01029','Address 29'),(30,30,'555-01030','Address 30'),(31,31,'555-01031','Address 31'),(32,32,'555-01032','Address 32'),(33,33,'555-01033','Address 33'),(34,34,'555-01034','Address 34'),(35,35,'555-01035','Address 35'),(36,36,'555-01036','Address 36'),(37,37,'555-01037','Address 37'),(38,38,'555-01038','Address 38'),(39,39,'555-01039','Address 39'),(40,40,'555-01040','Address 40'),(41,41,'555-01041','Address 41'),(42,42,'555-01042','Address 42'),(43,43,'555-01043','Address 43'),(44,44,'555-01044','Address 44'),(45,45,'555-01045','Address 45'),(46,46,'555-01046','Address 46'),(47,47,'555-01047','Address 47'),(48,48,'555-01048','Address 48'),(49,49,'555-01049','Address 49'),(50,50,'555-01050','Address 50'),(51,51,'555-01051','Address 51'),(52,52,'555-01052','Address 52'),(53,53,'555-01053','Address 53'),(54,54,'555-01054','Address 54'),(55,55,'555-01055','Address 55'),(56,56,'555-01056','Address 56'),(57,57,'555-01057','Address 57'),(58,58,'555-01058','Address 58'),(59,59,'555-01059','Address 59'),(60,60,'555-01060','Address 60');
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
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES (1,'Customer 1','customer_1@example.com'),(2,'Customer 2','customer_2@example.com'),(3,'Customer 3','customer_3@example.com'),(4,'Customer 4','customer_4@example.com'),(5,'Customer 5','customer_5@example.com'),(6,'Customer 6','customer_6@example.com'),(7,'Customer 7','customer_7@example.com'),(8,'Customer 8','customer_8@example.com'),(9,'Customer 9','customer_9@example.com'),(10,'Customer 10','customer_10@example.com'),(11,'Customer 11','customer_11@example.com'),(12,'Customer 12','customer_12@example.com'),(13,'Customer 13','customer_13@example.com'),(14,'Customer 14','customer_14@example.com'),(15,'Customer 15','customer_15@example.com'),(16,'Customer 16','customer_16@example.com'),(17,'Customer 17','customer_17@example.com'),(18,'Customer 18','customer_18@example.com'),(19,'Customer 19','customer_19@example.com'),(20,'Customer 20','customer_20@example.com'),(21,'Customer 21','customer_21@example.com'),(22,'Customer 22','customer_22@example.com'),(23,'Customer 23','customer_23@example.com'),(24,'Customer 24','customer_24@example.com'),(25,'Customer 25','customer_25@example.com'),(26,'Customer 26','customer_26@example.com'),(27,'Customer 27','customer_27@example.com'),(28,'Customer 28','customer_28@example.com'),(29,'Customer 29','customer_29@example.com'),(30,'Customer 30','customer_30@example.com'),(31,'Customer 31','customer_31@example.com'),(32,'Customer 32','customer_32@example.com'),(33,'Customer 33','customer_33@example.com'),(34,'Customer 34','customer_34@example.com'),(35,'Customer 35','customer_35@example.com'),(36,'Customer 36','customer_36@example.com'),(37,'Customer 37','customer_37@example.com'),(38,'Customer 38','customer_38@example.com'),(39,'Customer 39','customer_39@example.com'),(40,'Customer 40','customer_40@example.com'),(41,'Customer 41','customer_41@example.com'),(42,'Customer 42','customer_42@example.com'),(43,'Customer 43','customer_43@example.com'),(44,'Customer 44','customer_44@example.com'),(45,'Customer 45','customer_45@example.com'),(46,'Customer 46','customer_46@example.com'),(47,'Customer 47','customer_47@example.com'),(48,'Customer 48','customer_48@example.com'),(49,'Customer 49','customer_49@example.com'),(50,'Customer 50','customer_50@example.com'),(51,'Customer 51','customer_51@example.com'),(52,'Customer 52','customer_52@example.com'),(53,'Customer 53','customer_53@example.com'),(54,'Customer 54','customer_54@example.com'),(55,'Customer 55','customer_55@example.com'),(56,'Customer 56','customer_56@example.com'),(57,'Customer 57','customer_57@example.com'),(58,'Customer 58','customer_58@example.com'),(59,'Customer 59','customer_59@example.com'),(60,'Customer 60','customer_60@example.com');
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomerSegmentMap`
--

DROP TABLE IF EXISTS `CustomerSegmentMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CustomerSegmentMap` (
  `customer_id` int NOT NULL,
  `segment_id` int NOT NULL,
  PRIMARY KEY (`customer_id`,`segment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomerSegmentMap`
--

LOCK TABLES `CustomerSegmentMap` WRITE;
/*!40000 ALTER TABLE `CustomerSegmentMap` DISABLE KEYS */;
INSERT INTO `CustomerSegmentMap` VALUES (2,3),(3,1),(3,5),(4,2),(5,1),(6,2),(8,1),(8,3),(9,3),(9,4),(10,1),(13,4),(14,1),(15,3),(16,4),(16,5),(18,3),(19,2),(19,4),(19,5),(23,4),(25,1),(25,5),(26,4),(27,1),(29,2),(30,4),(31,1),(31,3),(32,2),(35,2),(36,4),(37,5),(38,2),(40,1),(40,3),(40,4),(41,3),(41,4),(42,5),(43,4),(45,2),(46,2),(47,5),(49,1),(49,2),(50,1),(52,2),(53,3),(53,5),(54,4),(55,1),(55,2),(56,4),(57,2),(58,4),(59,1),(59,4),(60,3),(60,5);
/*!40000 ALTER TABLE `CustomerSegmentMap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomerSegments`
--

DROP TABLE IF EXISTS `CustomerSegments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CustomerSegments` (
  `segment_id` int NOT NULL,
  `segment_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `criteria` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`segment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomerSegments`
--

LOCK TABLES `CustomerSegments` WRITE;
/*!40000 ALTER TABLE `CustomerSegments` DISABLE KEYS */;
INSERT INTO `CustomerSegments` VALUES (1,'Segment 1','Criteria 1'),(2,'Segment 2','Criteria 2'),(3,'Segment 3','Criteria 3'),(4,'Segment 4','Criteria 4'),(5,'Segment 5','Criteria 5');
/*!40000 ALTER TABLE `CustomerSegments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Departments`
--

DROP TABLE IF EXISTS `Departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Departments` (
  `department_id` int NOT NULL,
  `department_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Departments`
--

LOCK TABLES `Departments` WRITE;
/*!40000 ALTER TABLE `Departments` DISABLE KEYS */;
INSERT INTO `Departments` VALUES (1,'Department 1'),(2,'Department 2'),(3,'Department 3'),(4,'Department 4'),(5,'Department 5');
/*!40000 ALTER TABLE `Departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employees`
--

DROP TABLE IF EXISTS `Employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employees` (
  `employee_id` int NOT NULL,
  `office_id` int DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `office_id` (`office_id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`office_id`) REFERENCES `Offices` (`office_id`),
  CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `Departments` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employees`
--

LOCK TABLES `Employees` WRITE;
/*!40000 ALTER TABLE `Employees` DISABLE KEYS */;
INSERT INTO `Employees` VALUES (1,1,1,'Employee 1',8.05),(2,5,2,'Employee 2',4.20),(3,2,2,'Employee 3',5.88),(4,3,5,'Employee 4',3.00),(5,5,2,'Employee 5',6.65),(6,4,1,'Employee 6',9.84),(7,4,3,'Employee 7',2.95),(8,5,2,'Employee 8',0.32),(9,5,1,'Employee 9',1.63),(10,5,2,'Employee 10',1.66),(11,4,3,'Employee 11',4.40),(12,2,1,'Employee 12',3.69),(13,4,5,'Employee 13',9.25),(14,2,1,'Employee 14',4.72),(15,2,5,'Employee 15',6.37),(16,3,1,'Employee 16',2.00),(17,3,4,'Employee 17',0.44),(18,4,5,'Employee 18',7.80),(19,1,5,'Employee 19',1.79),(20,2,5,'Employee 20',7.90);
/*!40000 ALTER TABLE `Employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inventory`
--

DROP TABLE IF EXISTS `Inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Inventory` (
  `inventory_id` int NOT NULL,
  `product_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity_in_stock` int DEFAULT NULL,
  `warehouse_location` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`inventory_id`),
  KEY `product_code` (`product_code`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`product_code`) REFERENCES `Products` (`product_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inventory`
--

LOCK TABLES `Inventory` WRITE;
/*!40000 ALTER TABLE `Inventory` DISABLE KEYS */;
INSERT INTO `Inventory` VALUES (1,'P0001',7,'Warehouse 1'),(2,'P0002',29,'Warehouse 5'),(3,'P0003',2,'Warehouse 1'),(4,'P0004',35,'Warehouse 1'),(5,'P0005',54,'Warehouse 3'),(6,'P0006',22,'Warehouse 4'),(7,'P0007',2,'Warehouse 4'),(8,'P0008',31,'Warehouse 1'),(9,'P0009',97,'Warehouse 2'),(10,'P0010',50,'Warehouse 4'),(11,'P0011',54,'Warehouse 4'),(12,'P0012',34,'Warehouse 2'),(13,'P0013',50,'Warehouse 2'),(14,'P0014',37,'Warehouse 2'),(15,'P0015',63,'Warehouse 1'),(16,'P0016',4,'Warehouse 4'),(17,'P0017',72,'Warehouse 3'),(18,'P0018',52,'Warehouse 2'),(19,'P0019',54,'Warehouse 3'),(20,'P0020',75,'Warehouse 3'),(21,'P0021',83,'Warehouse 3'),(22,'P0022',29,'Warehouse 1'),(23,'P0023',17,'Warehouse 5'),(24,'P0024',76,'Warehouse 2'),(25,'P0025',83,'Warehouse 2'),(26,'P0026',97,'Warehouse 1'),(27,'P0027',83,'Warehouse 1'),(28,'P0028',57,'Warehouse 5'),(29,'P0029',63,'Warehouse 1'),(30,'P0030',6,'Warehouse 2'),(31,'P0031',57,'Warehouse 4'),(32,'P0032',82,'Warehouse 5'),(33,'P0033',22,'Warehouse 2'),(34,'P0034',62,'Warehouse 5'),(35,'P0035',3,'Warehouse 2'),(36,'P0036',3,'Warehouse 2'),(37,'P0037',89,'Warehouse 4'),(38,'P0038',93,'Warehouse 3'),(39,'P0039',82,'Warehouse 3'),(40,'P0040',22,'Warehouse 2'),(41,'P0041',67,'Warehouse 4'),(42,'P0042',11,'Warehouse 3'),(43,'P0043',56,'Warehouse 2'),(44,'P0044',45,'Warehouse 3'),(45,'P0045',70,'Warehouse 1'),(46,'P0046',92,'Warehouse 3'),(47,'P0047',15,'Warehouse 3'),(48,'P0048',8,'Warehouse 3'),(49,'P0049',86,'Warehouse 4'),(50,'P0050',59,'Warehouse 4'),(51,'P0051',99,'Warehouse 4'),(52,'P0052',35,'Warehouse 1'),(53,'P0053',86,'Warehouse 3'),(54,'P0054',55,'Warehouse 1'),(55,'P0055',69,'Warehouse 2'),(56,'P0056',40,'Warehouse 5'),(57,'P0057',91,'Warehouse 1'),(58,'P0058',79,'Warehouse 1'),(59,'P0059',92,'Warehouse 5'),(60,'P0060',68,'Warehouse 1');
/*!40000 ALTER TABLE `Inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Offices`
--

DROP TABLE IF EXISTS `Offices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Offices` (
  `office_id` int NOT NULL,
  `office_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`office_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Offices`
--

LOCK TABLES `Offices` WRITE;
/*!40000 ALTER TABLE `Offices` DISABLE KEYS */;
INSERT INTO `Offices` VALUES (1,'Office 1','City 1'),(2,'Office 2','City 2'),(3,'Office 3','City 3'),(4,'Office 4','City 4'),(5,'Office 5','City 5');
/*!40000 ALTER TABLE `Offices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderDetails`
--

DROP TABLE IF EXISTS `OrderDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OrderDetails` (
  `order_detail_id` int NOT NULL,
  `order_id` int DEFAULT NULL,
  `product_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`order_detail_id`),
  KEY `order_id` (`order_id`),
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
INSERT INTO `OrderDetails` VALUES (1,1,'P0053',4),(2,2,'P0037',1),(3,3,'P0041',3),(4,4,'P0036',2),(5,5,'P0028',4),(6,6,'P0035',1),(7,7,'P0007',2),(8,8,'P0030',1),(9,9,'P0037',2),(10,10,'P0015',5),(11,11,'P0040',1),(12,12,'P0049',4),(13,13,'P0023',2),(14,14,'P0034',5),(15,15,'P0028',5),(16,16,'P0025',2),(17,17,'P0034',5),(18,18,'P0043',4),(19,19,'P0014',1),(20,20,'P0013',1),(21,21,'P0017',4),(22,22,'P0014',1),(23,23,'P0055',4),(24,24,'P0034',2),(25,25,'P0037',5),(26,26,'P0051',4),(27,27,'P0053',3),(28,28,'P0057',4),(29,29,'P0014',2),(30,30,'P0031',4),(31,31,'P0006',1),(32,32,'P0012',5),(33,33,'P0009',5),(34,34,'P0023',4),(35,35,'P0047',2),(36,36,'P0040',4),(37,37,'P0039',3),(38,38,'P0033',4),(39,39,'P0015',3),(40,40,'P0036',4),(41,41,'P0058',5),(42,42,'P0037',3),(43,43,'P0044',1),(44,44,'P0056',4),(45,45,'P0033',2),(46,46,'P0051',2),(47,47,'P0058',3),(48,48,'P0035',3),(49,49,'P0044',1),(50,50,'P0021',3),(51,51,'P0018',4),(52,52,'P0042',3),(53,53,'P0036',3),(54,54,'P0060',1),(55,55,'P0022',4),(56,56,'P0040',5),(57,57,'P0013',2),(58,58,'P0020',3),(59,59,'P0012',1),(60,60,'P0017',5);
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
  `customer_id` int DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `order_date` date DEFAULT NULL,
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
INSERT INTO `Orders` VALUES (1,22,9,'2023-08-26'),(2,38,9,'2024-09-14'),(3,12,3,'2024-10-11'),(4,46,1,'2023-05-17'),(5,60,1,'2023-08-11'),(6,45,3,'2023-03-23'),(7,6,17,'2023-01-03'),(8,43,17,'2023-11-23'),(9,46,16,'2023-09-05'),(10,54,3,'2024-11-20'),(11,55,5,'2023-09-06'),(12,35,4,'2024-01-14'),(13,21,1,'2023-05-20'),(14,1,10,'2024-11-16'),(15,17,3,'2023-03-10'),(16,52,2,'2024-10-09'),(17,19,14,'2024-01-07'),(18,49,2,'2024-07-26'),(19,27,13,'2023-02-03'),(20,44,7,'2024-08-19'),(21,51,14,'2024-09-11'),(22,34,8,'2023-12-20'),(23,8,14,'2024-09-25'),(24,52,12,'2024-04-08'),(25,27,8,'2023-10-03'),(26,43,6,'2023-12-31'),(27,28,5,'2024-05-01'),(28,15,15,'2024-01-04'),(29,14,13,'2023-04-13'),(30,50,4,'2023-04-16'),(31,14,5,'2023-08-28'),(32,53,5,'2024-03-29'),(33,29,18,'2023-10-09'),(34,27,4,'2023-03-25'),(35,42,11,'2023-08-02'),(36,49,15,'2023-10-06'),(37,30,11,'2023-12-28'),(38,38,2,'2023-07-14'),(39,38,5,'2024-02-15'),(40,35,6,'2023-12-17'),(41,43,6,'2024-09-27'),(42,39,17,'2024-02-14'),(43,43,8,'2024-07-05'),(44,21,15,'2024-03-04'),(45,26,3,'2024-11-02'),(46,27,1,'2024-01-01'),(47,38,6,'2024-10-03'),(48,5,11,'2024-02-23'),(49,8,8,'2024-06-04'),(50,31,16,'2024-01-13'),(51,19,7,'2024-11-10'),(52,15,14,'2024-02-22'),(53,32,14,'2023-12-02'),(54,9,3,'2023-06-02'),(55,15,7,'2023-11-21'),(56,8,11,'2023-03-10'),(57,31,18,'2024-12-04'),(58,41,9,'2023-02-23'),(59,5,16,'2023-09-15'),(60,50,15,'2023-03-09');
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Payments`
--

DROP TABLE IF EXISTS `Payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Payments` (
  `payment_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `Customers` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Payments`
--

LOCK TABLES `Payments` WRITE;
/*!40000 ALTER TABLE `Payments` DISABLE KEYS */;
INSERT INTO `Payments` VALUES (1,22,381.20,'2023-05-05'),(2,38,287.42,'2023-11-28'),(3,12,385.72,'2023-01-06'),(4,46,75.35,'2023-08-27'),(5,60,140.67,'2024-12-15'),(6,45,191.21,'2023-01-04'),(7,6,69.86,'2024-07-07'),(8,43,394.37,'2024-08-19'),(9,46,223.04,'2024-02-16'),(10,54,54.50,'2023-10-15'),(11,55,287.08,'2024-01-28'),(12,35,123.31,'2024-06-19'),(13,21,322.32,'2024-04-21'),(14,1,476.22,'2024-10-01'),(15,17,284.68,'2023-09-24'),(16,52,299.79,'2023-07-26'),(17,19,246.81,'2023-03-11'),(18,49,325.10,'2023-07-28'),(19,27,264.93,'2024-07-17'),(20,44,380.89,'2023-02-15'),(21,51,432.20,'2023-04-10'),(22,34,369.14,'2023-12-29'),(23,8,99.29,'2024-03-11'),(24,52,353.05,'2023-04-09'),(25,27,260.88,'2023-05-14'),(26,43,308.57,'2024-02-13'),(27,28,225.29,'2024-05-17'),(28,15,269.23,'2024-11-03'),(29,14,488.52,'2024-04-04'),(30,50,257.91,'2024-09-22'),(31,14,228.52,'2023-02-04'),(32,53,262.99,'2024-12-01'),(33,29,431.67,'2024-02-17'),(34,27,336.52,'2024-04-23'),(35,42,115.67,'2024-03-25'),(36,49,298.62,'2023-02-15'),(37,30,369.52,'2024-02-06'),(38,38,278.21,'2024-05-24'),(39,38,308.43,'2024-06-15'),(40,35,283.25,'2023-12-08'),(41,43,80.54,'2024-06-22'),(42,39,128.46,'2024-05-26'),(43,43,494.90,'2023-07-11'),(44,21,154.60,'2023-05-10'),(45,26,260.40,'2023-04-17'),(46,27,389.31,'2024-06-12'),(47,38,82.53,'2023-07-07'),(48,5,148.58,'2024-07-19'),(49,8,422.52,'2023-03-21'),(50,31,481.55,'2023-03-26'),(51,19,124.91,'2024-01-30'),(52,15,129.66,'2024-05-17'),(53,32,358.59,'2023-04-12'),(54,9,494.24,'2023-12-21'),(55,15,444.87,'2023-07-19'),(56,8,436.00,'2024-08-04'),(57,31,276.36,'2023-07-08'),(58,41,418.16,'2024-07-13'),(59,5,278.14,'2023-04-30'),(60,50,233.70,'2023-04-06');
/*!40000 ALTER TABLE `Payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductLines`
--

DROP TABLE IF EXISTS `ProductLines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProductLines` (
  `productline_id` int NOT NULL,
  `line_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`productline_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductLines`
--

LOCK TABLES `ProductLines` WRITE;
/*!40000 ALTER TABLE `ProductLines` DISABLE KEYS */;
INSERT INTO `ProductLines` VALUES (1,'Product Line 1'),(2,'Product Line 2'),(3,'Product Line 3'),(4,'Product Line 4'),(5,'Product Line 5');
/*!40000 ALTER TABLE `ProductLines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductReviews`
--

DROP TABLE IF EXISTS `ProductReviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProductReviews` (
  `review_id` int NOT NULL,
  `product_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`review_id`),
  KEY `product_code` (`product_code`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `productreviews_ibfk_1` FOREIGN KEY (`product_code`) REFERENCES `Products` (`product_code`),
  CONSTRAINT `productreviews_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `Customers` (`customer_id`),
  CONSTRAINT `productreviews_chk_1` CHECK ((`rating` between 1 and 5))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductReviews`
--

LOCK TABLES `ProductReviews` WRITE;
/*!40000 ALTER TABLE `ProductReviews` DISABLE KEYS */;
INSERT INTO `ProductReviews` VALUES (1,'P0030',36,1,'Review 1'),(2,'P0028',31,3,'Review 2'),(3,'P0024',45,1,'Review 3'),(4,'P0003',6,1,'Review 4'),(5,'P0001',38,3,'Review 5'),(6,'P0022',8,1,'Review 6'),(7,'P0045',58,5,'Review 7'),(8,'P0029',40,1,'Review 8'),(9,'P0013',18,3,'Review 9'),(10,'P0053',45,4,'Review 10'),(11,'P0051',9,3,'Review 11'),(12,'P0049',37,3,'Review 12'),(13,'P0020',48,1,'Review 13'),(14,'P0005',7,2,'Review 14'),(15,'P0040',2,2,'Review 15'),(16,'P0032',20,5,'Review 16'),(17,'P0006',58,5,'Review 17'),(18,'P0041',37,3,'Review 18'),(19,'P0028',4,5,'Review 19'),(20,'P0034',30,3,'Review 20'),(21,'P0051',48,4,'Review 21'),(22,'P0060',40,4,'Review 22'),(23,'P0008',51,4,'Review 23'),(24,'P0011',57,1,'Review 24'),(25,'P0037',35,3,'Review 25'),(26,'P0038',1,4,'Review 26'),(27,'P0013',42,2,'Review 27'),(28,'P0008',33,1,'Review 28'),(29,'P0009',4,2,'Review 29'),(30,'P0052',18,2,'Review 30'),(31,'P0049',14,5,'Review 31'),(32,'P0031',28,3,'Review 32'),(33,'P0016',7,5,'Review 33'),(34,'P0009',16,5,'Review 34'),(35,'P0059',28,1,'Review 35'),(36,'P0007',50,2,'Review 36'),(37,'P0027',2,2,'Review 37'),(38,'P0048',53,1,'Review 38'),(39,'P0044',9,1,'Review 39'),(40,'P0042',12,1,'Review 40'),(41,'P0008',11,3,'Review 41'),(42,'P0001',59,1,'Review 42'),(43,'P0043',27,1,'Review 43'),(44,'P0030',5,2,'Review 44'),(45,'P0045',39,2,'Review 45'),(46,'P0029',51,3,'Review 46'),(47,'P0047',34,3,'Review 47'),(48,'P0041',41,3,'Review 48'),(49,'P0053',40,4,'Review 49'),(50,'P0030',60,4,'Review 50'),(51,'P0044',11,2,'Review 51'),(52,'P0013',5,2,'Review 52'),(53,'P0011',35,4,'Review 53'),(54,'P0027',53,1,'Review 54'),(55,'P0012',39,5,'Review 55'),(56,'P0001',23,4,'Review 56'),(57,'P0039',36,5,'Review 57'),(58,'P0060',23,1,'Review 58'),(59,'P0047',54,3,'Review 59'),(60,'P0024',48,5,'Review 60');
/*!40000 ALTER TABLE `ProductReviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Products`
--

DROP TABLE IF EXISTS `Products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Products` (
  `product_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productline_id` int DEFAULT NULL,
  `MSRP` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`product_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Products`
--

LOCK TABLES `Products` WRITE;
/*!40000 ALTER TABLE `Products` DISABLE KEYS */;
INSERT INTO `Products` VALUES ('P0001','Product P0001',4,119.08),('P0002','Product P0002',1,151.83),('P0003','Product P0003',4,173.83),('P0004','Product P0004',3,179.31),('P0005','Product P0005',2,72.14),('P0006','Product P0006',4,162.96),('P0007','Product P0007',3,124.57),('P0008','Product P0008',3,116.39),('P0009','Product P0009',5,174.15),('P0010','Product P0010',5,191.20),('P0011','Product P0011',4,184.03),('P0012','Product P0012',4,102.25),('P0013','Product P0013',1,10.94),('P0014','Product P0014',1,125.64),('P0015','Product P0015',1,188.08),('P0016','Product P0016',1,168.06),('P0017','Product P0017',4,144.85),('P0018','Product P0018',4,143.83),('P0019','Product P0019',2,163.36),('P0020','Product P0020',1,173.36),('P0021','Product P0021',1,19.23),('P0022','Product P0022',3,42.29),('P0023','Product P0023',1,74.91),('P0024','Product P0024',3,113.70),('P0025','Product P0025',4,85.11),('P0026','Product P0026',3,74.40),('P0027','Product P0027',3,192.31),('P0028','Product P0028',5,58.59),('P0029','Product P0029',1,113.20),('P0030','Product P0030',4,196.23),('P0031','Product P0031',2,140.16),('P0032','Product P0032',5,65.03),('P0033','Product P0033',2,182.38),('P0034','Product P0034',4,122.61),('P0035','Product P0035',2,71.23),('P0036','Product P0036',4,50.82),('P0037','Product P0037',2,56.74),('P0038','Product P0038',1,112.21),('P0039','Product P0039',5,131.31),('P0040','Product P0040',3,91.23),('P0041','Product P0041',2,62.30),('P0042','Product P0042',1,110.99),('P0043','Product P0043',3,65.78),('P0044','Product P0044',2,82.85),('P0045','Product P0045',4,102.25),('P0046','Product P0046',4,176.19),('P0047','Product P0047',1,56.25),('P0048','Product P0048',5,11.29),('P0049','Product P0049',3,127.94),('P0050','Product P0050',2,88.30),('P0051','Product P0051',4,59.94),('P0052','Product P0052',1,56.15),('P0053','Product P0053',1,122.26),('P0054','Product P0054',2,35.58),('P0055','Product P0055',5,189.01),('P0056','Product P0056',3,177.02),('P0057','Product P0057',5,93.39),('P0058','Product P0058',4,72.31),('P0059','Product P0059',3,169.50),('P0060','Product P0060',5,59.59);
/*!40000 ALTER TABLE `Products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductSupplier`
--

DROP TABLE IF EXISTS `ProductSupplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProductSupplier` (
  `supplier_id` int NOT NULL,
  `product_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductSupplier`
--

LOCK TABLES `ProductSupplier` WRITE;
/*!40000 ALTER TABLE `ProductSupplier` DISABLE KEYS */;
INSERT INTO `ProductSupplier` VALUES (0,'product_code');
/*!40000 ALTER TABLE `ProductSupplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Promotions`
--

DROP TABLE IF EXISTS `Promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Promotions` (
  `promo_id` int NOT NULL,
  `promo_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_percent` decimal(5,2) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`promo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Promotions`
--

LOCK TABLES `Promotions` WRITE;
/*!40000 ALTER TABLE `Promotions` DISABLE KEYS */;
INSERT INTO `Promotions` VALUES (1,'Promo 1',14.00,'2024-09-08','2024-10-08'),(2,'Promo 2',10.00,'2023-06-04','2023-07-04'),(3,'Promo 3',11.00,'2024-01-12','2024-02-11'),(4,'Promo 4',14.00,'2023-03-10','2023-04-09'),(5,'Promo 5',6.00,'2024-12-14','2025-01-13');
/*!40000 ALTER TABLE `Promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Returns`
--

DROP TABLE IF EXISTS `Returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Returns` (
  `return_id` int NOT NULL,
  `order_id` int DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`return_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `returns_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `Orders` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Returns`
--

LOCK TABLES `Returns` WRITE;
/*!40000 ALTER TABLE `Returns` DISABLE KEYS */;
INSERT INTO `Returns` VALUES (1,1,'2024-04-17','Reason 1'),(2,2,'2024-02-16','Reason 2'),(3,3,'2024-04-16','Reason 3'),(4,4,'2023-05-20','Reason 4'),(5,5,'2023-09-21','Reason 5'),(6,6,'2023-02-27','Reason 6'),(7,7,'2023-04-19','Reason 7'),(8,8,'2023-02-25','Reason 8'),(9,9,'2023-08-22','Reason 9'),(10,10,'2023-03-29','Reason 10'),(11,11,'2024-12-13','Reason 11'),(12,12,'2023-12-08','Reason 12'),(13,13,'2024-10-08','Reason 13'),(14,14,'2023-04-22','Reason 14'),(15,15,'2024-08-05','Reason 15'),(16,16,'2024-10-03','Reason 16'),(17,17,'2023-08-28','Reason 17'),(18,18,'2024-05-24','Reason 18'),(19,19,'2024-08-27','Reason 19'),(20,20,'2023-02-04','Reason 20'),(21,21,'2023-02-05','Reason 21'),(22,22,'2024-05-17','Reason 22'),(23,23,'2023-07-01','Reason 23'),(24,24,'2023-11-28','Reason 24'),(25,25,'2024-06-16','Reason 25'),(26,26,'2023-01-10','Reason 26'),(27,27,'2023-05-21','Reason 27'),(28,28,'2023-11-03','Reason 28'),(29,29,'2023-09-13','Reason 29'),(30,30,'2024-03-30','Reason 30');
/*!40000 ALTER TABLE `Returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SessionLogs`
--

DROP TABLE IF EXISTS `SessionLogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SessionLogs` (
  `session_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `login_timestamp` datetime DEFAULT NULL,
  `logout_timestamp` datetime DEFAULT NULL,
  `device_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SessionLogs`
--

LOCK TABLES `SessionLogs` WRITE;
/*!40000 ALTER TABLE `SessionLogs` DISABLE KEYS */;
INSERT INTO `SessionLogs` VALUES (1,31,'2023-07-02 00:00:00','2023-07-02 01:00:00','Tablet'),(2,1,'2024-01-21 00:00:00','2024-01-21 02:00:00','Mobile'),(3,17,'2024-02-12 00:00:00','2024-02-12 02:00:00','Mobile'),(4,48,'2023-12-06 00:00:00','2023-12-06 03:00:00','Desktop'),(5,2,'2024-08-17 00:00:00','2024-08-17 01:00:00','Tablet'),(6,9,'2024-07-05 00:00:00','2024-07-05 05:00:00','Desktop'),(7,38,'2024-02-22 00:00:00','2024-02-22 05:00:00','Desktop'),(8,31,'2024-05-27 00:00:00','2024-05-27 04:00:00','Tablet'),(9,36,'2024-07-21 00:00:00','2024-07-21 02:00:00','Mobile'),(10,13,'2024-03-18 00:00:00','2024-03-18 01:00:00','Tablet'),(11,10,'2023-10-19 00:00:00','2023-10-19 01:00:00','Desktop'),(12,57,'2023-03-17 00:00:00','2023-03-17 05:00:00','Mobile'),(13,58,'2023-06-27 00:00:00','2023-06-27 04:00:00','Tablet'),(14,57,'2024-01-14 00:00:00','2024-01-14 01:00:00','Tablet'),(15,48,'2024-03-06 00:00:00','2024-03-06 02:00:00','Mobile'),(16,9,'2024-04-21 00:00:00','2024-04-21 01:00:00','Desktop'),(17,18,'2023-09-04 00:00:00','2023-09-04 03:00:00','Desktop'),(18,29,'2023-03-08 00:00:00','2023-03-08 01:00:00','Desktop'),(19,22,'2024-01-10 00:00:00','2024-01-10 05:00:00','Mobile'),(20,19,'2023-12-07 00:00:00','2023-12-07 04:00:00','Tablet'),(21,44,'2023-07-21 00:00:00','2023-07-21 02:00:00','Mobile'),(22,25,'2023-01-08 00:00:00','2023-01-08 01:00:00','Mobile'),(23,39,'2024-04-11 00:00:00','2024-04-11 03:00:00','Mobile'),(24,23,'2024-02-04 00:00:00','2024-02-04 04:00:00','Desktop'),(25,36,'2023-04-14 00:00:00','2023-04-14 03:00:00','Mobile'),(26,32,'2024-11-26 00:00:00','2024-11-26 03:00:00','Tablet'),(27,51,'2023-08-11 00:00:00','2023-08-11 05:00:00','Tablet'),(28,36,'2024-12-03 00:00:00','2024-12-03 01:00:00','Tablet'),(29,47,'2023-10-07 00:00:00','2023-10-07 05:00:00','Desktop'),(30,3,'2023-12-11 00:00:00','2023-12-11 03:00:00','Mobile'),(31,58,'2024-12-16 00:00:00','2024-12-16 01:00:00','Mobile'),(32,14,'2023-04-04 00:00:00','2023-04-04 05:00:00','Desktop'),(33,41,'2023-02-23 00:00:00','2023-02-23 02:00:00','Mobile'),(34,44,'2024-03-11 00:00:00','2024-03-11 03:00:00','Mobile'),(35,20,'2024-10-13 00:00:00','2024-10-13 03:00:00','Mobile'),(36,46,'2024-08-19 00:00:00','2024-08-19 03:00:00','Desktop'),(37,28,'2023-08-19 00:00:00','2023-08-19 03:00:00','Desktop'),(38,6,'2024-04-29 00:00:00','2024-04-29 03:00:00','Mobile'),(39,49,'2024-07-22 00:00:00','2024-07-22 05:00:00','Mobile'),(40,3,'2024-02-07 00:00:00','2024-02-07 04:00:00','Tablet'),(41,56,'2023-12-20 00:00:00','2023-12-20 04:00:00','Desktop'),(42,2,'2023-05-05 00:00:00','2023-05-05 01:00:00','Mobile'),(43,1,'2023-06-05 00:00:00','2023-06-05 02:00:00','Desktop'),(44,55,'2024-09-11 00:00:00','2024-09-11 02:00:00','Tablet'),(45,5,'2023-09-24 00:00:00','2023-09-24 02:00:00','Mobile'),(46,33,'2024-08-06 00:00:00','2024-08-06 04:00:00','Tablet'),(47,33,'2024-01-10 00:00:00','2024-01-10 04:00:00','Tablet'),(48,33,'2023-06-02 00:00:00','2023-06-02 03:00:00','Desktop'),(49,44,'2023-10-10 00:00:00','2023-10-10 05:00:00','Mobile'),(50,25,'2023-03-29 00:00:00','2023-03-29 04:00:00','Desktop'),(51,26,'2024-02-15 00:00:00','2024-02-15 04:00:00','Tablet'),(52,2,'2023-01-30 00:00:00','2023-01-30 02:00:00','Mobile'),(53,52,'2023-03-07 00:00:00','2023-03-07 05:00:00','Desktop'),(54,32,'2024-03-13 00:00:00','2024-03-13 05:00:00','Desktop'),(55,20,'2023-01-29 00:00:00','2023-01-29 04:00:00','Mobile'),(56,10,'2024-06-29 00:00:00','2024-06-29 01:00:00','Desktop'),(57,56,'2024-08-26 00:00:00','2024-08-26 04:00:00','Tablet'),(58,41,'2024-03-28 00:00:00','2024-03-28 02:00:00','Tablet'),(59,11,'2023-02-01 00:00:00','2023-02-01 05:00:00','Tablet'),(60,58,'2023-01-14 00:00:00','2023-01-14 04:00:00','Desktop');
/*!40000 ALTER TABLE `SessionLogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Shipping`
--

DROP TABLE IF EXISTS `Shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Shipping` (
  `shipping_id` int NOT NULL,
  `order_id` int DEFAULT NULL,
  `carrier_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipped_date` date DEFAULT NULL,
  PRIMARY KEY (`shipping_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `shipping_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `Orders` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Shipping`
--

LOCK TABLES `Shipping` WRITE;
/*!40000 ALTER TABLE `Shipping` DISABLE KEYS */;
INSERT INTO `Shipping` VALUES (1,1,'UPS','TRK00001','2023-10-01'),(2,2,'UPS','TRK00002','2024-06-11'),(3,3,'DHL','TRK00003','2023-11-15'),(4,4,'FedEx','TRK00004','2023-01-08'),(5,5,'FedEx','TRK00005','2024-01-04'),(6,6,'DHL','TRK00006','2023-06-08'),(7,7,'DHL','TRK00007','2023-09-09'),(8,8,'UPS','TRK00008','2023-04-07'),(9,9,'FedEx','TRK00009','2023-07-18'),(10,10,'DHL','TRK00010','2024-07-02'),(11,11,'UPS','TRK00011','2024-06-10'),(12,12,'FedEx','TRK00012','2024-07-28'),(13,13,'UPS','TRK00013','2024-02-14'),(14,14,'UPS','TRK00014','2024-06-05'),(15,15,'FedEx','TRK00015','2023-01-04'),(16,16,'DHL','TRK00016','2023-03-03'),(17,17,'FedEx','TRK00017','2024-04-26'),(18,18,'UPS','TRK00018','2023-12-11'),(19,19,'UPS','TRK00019','2023-02-14'),(20,20,'FedEx','TRK00020','2023-12-09'),(21,21,'DHL','TRK00021','2023-10-03'),(22,22,'UPS','TRK00022','2023-05-19'),(23,23,'UPS','TRK00023','2023-06-20'),(24,24,'FedEx','TRK00024','2023-06-14'),(25,25,'DHL','TRK00025','2023-10-01'),(26,26,'DHL','TRK00026','2023-12-20'),(27,27,'FedEx','TRK00027','2024-07-10'),(28,28,'DHL','TRK00028','2024-10-23'),(29,29,'FedEx','TRK00029','2023-10-16'),(30,30,'FedEx','TRK00030','2024-04-13'),(31,31,'DHL','TRK00031','2023-07-02'),(32,32,'FedEx','TRK00032','2024-05-16'),(33,33,'FedEx','TRK00033','2024-01-22'),(34,34,'UPS','TRK00034','2023-02-28'),(35,35,'DHL','TRK00035','2024-06-16'),(36,36,'UPS','TRK00036','2023-05-27'),(37,37,'UPS','TRK00037','2023-08-01'),(38,38,'DHL','TRK00038','2024-06-12'),(39,39,'UPS','TRK00039','2024-10-14'),(40,40,'DHL','TRK00040','2023-01-12'),(41,41,'DHL','TRK00041','2024-05-09'),(42,42,'UPS','TRK00042','2024-03-01'),(43,43,'DHL','TRK00043','2024-09-29'),(44,44,'DHL','TRK00044','2024-05-29'),(45,45,'UPS','TRK00045','2024-05-19'),(46,46,'UPS','TRK00046','2023-01-20'),(47,47,'UPS','TRK00047','2023-02-09'),(48,48,'DHL','TRK00048','2024-01-04'),(49,49,'UPS','TRK00049','2024-10-14'),(50,50,'FedEx','TRK00050','2023-09-12'),(51,51,'FedEx','TRK00051','2024-05-26'),(52,52,'UPS','TRK00052','2024-09-21'),(53,53,'UPS','TRK00053','2024-03-11'),(54,54,'DHL','TRK00054','2023-11-09'),(55,55,'UPS','TRK00055','2023-02-19'),(56,56,'FedEx','TRK00056','2024-10-19'),(57,57,'UPS','TRK00057','2023-12-21'),(58,58,'UPS','TRK00058','2023-02-01'),(59,59,'UPS','TRK00059','2023-12-28'),(60,60,'UPS','TRK00060','2023-04-18');
/*!40000 ALTER TABLE `Shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Suppliers`
--

DROP TABLE IF EXISTS `Suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Suppliers` (
  `supplier_id` int NOT NULL,
  `company_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Suppliers`
--

LOCK TABLES `Suppliers` WRITE;
/*!40000 ALTER TABLE `Suppliers` DISABLE KEYS */;
INSERT INTO `Suppliers` VALUES (1,'Supplier Co 1','Contact 1','555-0201'),(2,'Supplier Co 2','Contact 2','555-0202'),(3,'Supplier Co 3','Contact 3','555-0203'),(4,'Supplier Co 4','Contact 4','555-0204'),(5,'Supplier Co 5','Contact 5','555-0205'),(6,'Supplier Co 6','Contact 6','555-0206'),(7,'Supplier Co 7','Contact 7','555-0207'),(8,'Supplier Co 8','Contact 8','555-0208'),(9,'Supplier Co 9','Contact 9','555-0209'),(10,'Supplier Co 10','Contact 10','555-02010');
/*!40000 ALTER TABLE `Suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SurveyResponses`
--

DROP TABLE IF EXISTS `SurveyResponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SurveyResponses` (
  `response_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `response_text` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`response_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `surveyresponses_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `Customers` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SurveyResponses`
--

LOCK TABLES `SurveyResponses` WRITE;
/*!40000 ALTER TABLE `SurveyResponses` DISABLE KEYS */;
INSERT INTO `SurveyResponses` VALUES (1,1,'Response text 1'),(2,2,'Response text 2'),(3,3,'Response text 3'),(4,4,'Response text 4'),(5,5,'Response text 5'),(6,6,'Response text 6'),(7,7,'Response text 7'),(8,8,'Response text 8'),(9,9,'Response text 9'),(10,10,'Response text 10'),(11,11,'Response text 11'),(12,12,'Response text 12'),(13,13,'Response text 13'),(14,14,'Response text 14'),(15,15,'Response text 15'),(16,16,'Response text 16'),(17,17,'Response text 17'),(18,18,'Response text 18'),(19,19,'Response text 19'),(20,20,'Response text 20'),(21,21,'Response text 21'),(22,22,'Response text 22'),(23,23,'Response text 23'),(24,24,'Response text 24'),(25,25,'Response text 25'),(26,26,'Response text 26'),(27,27,'Response text 27'),(28,28,'Response text 28'),(29,29,'Response text 29'),(30,30,'Response text 30'),(31,31,'Response text 31'),(32,32,'Response text 32'),(33,33,'Response text 33'),(34,34,'Response text 34'),(35,35,'Response text 35'),(36,36,'Response text 36'),(37,37,'Response text 37'),(38,38,'Response text 38'),(39,39,'Response text 39'),(40,40,'Response text 40'),(41,41,'Response text 41'),(42,42,'Response text 42'),(43,43,'Response text 43'),(44,44,'Response text 44'),(45,45,'Response text 45'),(46,46,'Response text 46'),(47,47,'Response text 47'),(48,48,'Response text 48'),(49,49,'Response text 49'),(50,50,'Response text 50'),(51,51,'Response text 51'),(52,52,'Response text 52'),(53,53,'Response text 53'),(54,54,'Response text 54'),(55,55,'Response text 55'),(56,56,'Response text 56'),(57,57,'Response text 57'),(58,58,'Response text 58'),(59,59,'Response text 59'),(60,60,'Response text 60');
/*!40000 ALTER TABLE `SurveyResponses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAccounts`
--

DROP TABLE IF EXISTS `UserAccounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserAccounts` (
  `customer_id` int DEFAULT NULL,
  `password_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `useraccounts_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `Customers` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAccounts`
--

LOCK TABLES `UserAccounts` WRITE;
/*!40000 ALTER TABLE `UserAccounts` DISABLE KEYS */;
INSERT INTO `UserAccounts` VALUES (1,'hashed_pass_1','2024-12-16 00:00:00'),(2,'hashed_pass_2','2024-07-27 00:00:00'),(3,'hashed_pass_3','2024-08-27 00:00:00'),(4,'hashed_pass_4','2023-01-13 00:00:00'),(5,'hashed_pass_5','2023-07-17 00:00:00'),(6,'hashed_pass_6','2024-06-06 00:00:00'),(7,'hashed_pass_7','2024-12-23 00:00:00'),(8,'hashed_pass_8','2023-01-29 00:00:00'),(9,'hashed_pass_9','2024-08-24 00:00:00'),(10,'hashed_pass_10','2023-04-04 00:00:00'),(11,'hashed_pass_11','2024-08-03 00:00:00'),(12,'hashed_pass_12','2024-02-02 00:00:00'),(13,'hashed_pass_13','2024-05-07 00:00:00'),(14,'hashed_pass_14','2023-09-11 00:00:00'),(15,'hashed_pass_15','2024-03-17 00:00:00'),(16,'hashed_pass_16','2023-05-26 00:00:00'),(17,'hashed_pass_17','2024-06-04 00:00:00'),(18,'hashed_pass_18','2024-10-30 00:00:00'),(19,'hashed_pass_19','2024-10-03 00:00:00'),(20,'hashed_pass_20','2023-04-14 00:00:00'),(21,'hashed_pass_21','2023-07-06 00:00:00'),(22,'hashed_pass_22','2023-11-30 00:00:00'),(23,'hashed_pass_23','2024-07-12 00:00:00'),(24,'hashed_pass_24','2024-05-04 00:00:00'),(25,'hashed_pass_25','2023-03-08 00:00:00'),(26,'hashed_pass_26','2023-08-24 00:00:00'),(27,'hashed_pass_27','2023-06-21 00:00:00'),(28,'hashed_pass_28','2024-11-29 00:00:00'),(29,'hashed_pass_29','2024-11-28 00:00:00'),(30,'hashed_pass_30','2023-08-31 00:00:00'),(31,'hashed_pass_31','2023-09-04 00:00:00'),(32,'hashed_pass_32','2024-04-18 00:00:00'),(33,'hashed_pass_33','2023-03-17 00:00:00'),(34,'hashed_pass_34','2023-03-05 00:00:00'),(35,'hashed_pass_35','2024-05-03 00:00:00'),(36,'hashed_pass_36','2024-11-27 00:00:00'),(37,'hashed_pass_37','2024-05-15 00:00:00'),(38,'hashed_pass_38','2024-01-15 00:00:00'),(39,'hashed_pass_39','2023-06-09 00:00:00'),(40,'hashed_pass_40','2023-05-28 00:00:00'),(41,'hashed_pass_41','2023-08-14 00:00:00'),(42,'hashed_pass_42','2023-05-22 00:00:00'),(43,'hashed_pass_43','2024-04-27 00:00:00'),(44,'hashed_pass_44','2024-08-26 00:00:00'),(45,'hashed_pass_45','2024-10-27 00:00:00'),(46,'hashed_pass_46','2023-05-04 00:00:00'),(47,'hashed_pass_47','2023-04-21 00:00:00'),(48,'hashed_pass_48','2023-10-18 00:00:00'),(49,'hashed_pass_49','2023-10-10 00:00:00'),(50,'hashed_pass_50','2023-02-22 00:00:00'),(51,'hashed_pass_51','2023-06-30 00:00:00'),(52,'hashed_pass_52','2023-08-06 00:00:00'),(53,'hashed_pass_53','2024-02-12 00:00:00'),(54,'hashed_pass_54','2024-06-01 00:00:00'),(55,'hashed_pass_55','2023-04-22 00:00:00'),(56,'hashed_pass_56','2024-04-09 00:00:00'),(57,'hashed_pass_57','2024-08-16 00:00:00'),(58,'hashed_pass_58','2024-04-27 00:00:00'),(59,'hashed_pass_59','2023-07-19 00:00:00'),(60,'hashed_pass_60','2023-11-22 00:00:00');
/*!40000 ALTER TABLE `UserAccounts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-28 20:48:52

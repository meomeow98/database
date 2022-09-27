-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: project2
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employeeID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `passs` varchar(20) DEFAULT NULL,
  `employeeName` enum('NV','QL') DEFAULT NULL,
  UNIQUE KEY `employeeID` (`employeeID`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'meomiden','a','QL'),(2,'meomiden2','A','NV'),(3,'admin','admin','QL'),(4,'admin2','admin','NV');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fruit`
--

DROP TABLE IF EXISTS `fruit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fruit` (
  `fruitID` int NOT NULL AUTO_INCREMENT,
  `fruitName` varchar(20) NOT NULL,
  `fruitPrice` int DEFAULT NULL,
  PRIMARY KEY (`fruitID`),
  UNIQUE KEY `fruitID` (`fruitID`),
  UNIQUE KEY `fruitName` (`fruitName`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fruit`
--

LOCK TABLES `fruit` WRITE;
/*!40000 ALTER TABLE `fruit` DISABLE KEYS */;
INSERT INTO `fruit` VALUES (1,'Táo',100),(2,'Lê',200),(3,'Đào',300),(4,'Mận',1000),(5,'Chuối',1009),(6,'Mãng Cầu',8000),(7,'Xoài',1000),(8,'Mít',1000),(9,'Dừa',1000),(10,'Kiwi',20000),(14,'Nhãn',10000),(16,'Dưa Hấu',12000),(17,'123',123),(18,'456',10000),(32,'6',6);
/*!40000 ALTER TABLE `fruit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fruitin`
--

DROP TABLE IF EXISTS `fruitin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fruitin` (
  `fruitInId` int NOT NULL AUTO_INCREMENT,
  `fruitID` int DEFAULT NULL,
  `fruitAmount` int DEFAULT NULL,
  `time_in` datetime DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `fruitInId` (`fruitInId`),
  KEY `fk_fruit1` (`fruitID`),
  CONSTRAINT `fk_fruit1` FOREIGN KEY (`fruitID`) REFERENCES `fruit` (`fruitID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fruitin`
--

LOCK TABLES `fruitin` WRITE;
/*!40000 ALTER TABLE `fruitin` DISABLE KEYS */;
INSERT INTO `fruitin` VALUES (1,1,500000,'2022-08-19 22:50:09'),(2,2,20000,'2022-08-19 22:50:09'),(4,1,2000,'2022-08-20 23:10:41'),(5,1,1000,'2022-08-20 23:14:09'),(6,2,1000,'2022-08-20 23:15:00'),(7,2,1000,'2022-08-24 11:40:40'),(8,2,1000,'2022-08-24 11:42:25'),(9,2,1000,'2022-08-24 12:23:03'),(10,2,1000,'2022-08-24 12:23:24'),(11,2,1000,'2022-08-24 12:34:55'),(13,1,12,'2022-08-24 12:46:28'),(14,2,1006,'2022-08-24 12:55:13'),(15,1,15,'2022-08-24 13:02:12'),(16,2,7,'2022-08-24 13:02:25'),(17,2,8,'2022-08-24 13:04:29'),(18,1,7,'2022-08-24 13:04:38'),(19,5,1000,'2022-08-24 13:29:39'),(21,7,1000,'2022-08-24 13:48:19'),(22,1,1000,'2022-08-24 13:48:51'),(23,1,15,'2022-08-24 13:49:16'),(24,2,1000,'2022-08-24 13:49:26'),(25,1,12,'2022-08-24 16:14:14'),(26,2,1000,'2022-08-24 16:14:31'),(27,1,15,'2022-08-24 17:42:41'),(28,1,20,'2022-08-28 21:10:24'),(29,2,13,'2022-08-28 21:11:05'),(30,8,12000,'2022-08-29 13:10:33'),(31,4,1200,'2022-08-29 13:30:31'),(32,6,20000,'2022-08-30 16:11:38'),(33,9,500,'2022-08-30 16:39:00'),(34,10,500,'2022-08-30 16:39:00'),(35,16,12000,'2022-08-30 17:06:12'),(36,14,2222,'2022-09-03 16:05:05'),(37,17,123,'2022-09-07 18:34:15'),(38,17,12333,'2022-09-07 18:34:25'),(39,18,100,'2022-09-07 18:46:18'),(40,1,1200,'2022-09-07 18:52:16'),(41,1,120,'2022-09-07 18:55:27'),(42,1,12,'2022-09-21 15:58:55'),(43,3,1,'2022-09-21 15:59:38'),(44,1,12,'2022-09-21 16:34:02'),(50,32,6,'2022-09-21 18:02:55');
/*!40000 ALTER TABLE `fruitin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fruitout`
--

DROP TABLE IF EXISTS `fruitout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fruitout` (
  `OderID` int NOT NULL AUTO_INCREMENT,
  `fruitID` int DEFAULT NULL,
  `fruitAmount_out` int DEFAULT NULL,
  `fruitPrice_out` int DEFAULT NULL,
  `time_out` datetime DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `OderID` (`OderID`),
  KEY `fk_fruit2` (`fruitID`),
  CONSTRAINT `fk_fruit2` FOREIGN KEY (`fruitID`) REFERENCES `fruit` (`fruitID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fruitout`
--

LOCK TABLES `fruitout` WRITE;
/*!40000 ALTER TABLE `fruitout` DISABLE KEYS */;
INSERT INTO `fruitout` VALUES (1,1,20,30000,'2022-08-19 22:50:39'),(2,2,200,20000,'2022-08-19 22:50:39'),(9,1,20000,2000000,'2022-09-06 18:35:35'),(10,2,20,20000,'2022-09-06 18:35:35'),(11,2,200,252222,'2022-09-07 13:52:17'),(12,2,200,252222,'2022-09-07 13:52:22'),(13,2,200,252222,'2022-09-07 14:03:42'),(14,2,200,252222,'2022-09-07 14:34:12'),(15,1,12,1200,'2022-09-07 14:40:32'),(16,1,120,12000,'2022-09-07 14:49:00'),(17,1,12,1200,'2022-09-07 16:11:19'),(18,2,14,2800,'2022-09-07 16:11:19'),(19,1,1,100,'2022-08-19 16:31:24'),(20,2,78,15600,'2022-09-07 16:31:24'),(21,1,12,1200,'2022-09-07 18:18:24'),(22,14,10,100000,'2022-09-07 18:44:53'),(23,10,12,240000,'2022-09-07 18:44:53'),(29,1,12,1200,'2022-09-19 14:33:37'),(30,2,4,800,'2022-09-19 14:33:37'),(31,1,14,1400,'2022-09-19 19:25:08'),(32,4,14,14000,'2022-09-19 19:25:08'),(33,1,14,1400,'2022-09-20 14:49:30'),(34,1,4,400,'2022-09-22 21:49:12'),(35,2,7,1400,'2022-09-22 21:49:12'),(36,3,8,2400,'2022-09-22 21:49:12'),(37,1,5,500,'2022-09-22 21:50:39'),(38,2,1,200,'2022-09-22 21:50:39'),(39,3,5,1500,'2022-09-22 21:50:39');
/*!40000 ALTER TABLE `fruitout` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-28  0:42:09

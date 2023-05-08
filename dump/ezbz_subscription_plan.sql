-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

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
-- Table structure for table `subscription_plan`
--

DROP TABLE IF EXISTS `subscription_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscription_plan` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `subscription_title` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `tenure` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `start_date` varchar(100) NOT NULL,
  `expiry_date` varchar(100) NOT NULL,
  `user_id` int NOT NULL,
  `subscription_id` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_plan`
--

LOCK TABLES `subscription_plan` WRITE;
/*!40000 ALTER TABLE `subscription_plan` DISABLE KEYS */;
INSERT INTO `subscription_plan` VALUES (1,'Basic Plan',39.00,'month','<ul><li>30GB Disk Space</li><li>30 Email Accounts</li><li>30GB Monthly Bandwidth</li><li>06 Subdomains</li><li>10 Domains</li></ul>','NA','NA',5,1,1),(2,'Master Plan',799.00,'month','<ul><li>30GB Disk Space</li><li>30 Email Accounts</li><li>30GB Monthly Bandwidth</li><li>06 Subdomains</li><li>10 Domains</li></ul>','NA','NA',5,3,1),(3,'Master Plan',799.00,'month','<ul><li>30GB Disk Space</li><li>30 Email Accounts</li><li>30GB Monthly Bandwidth</li><li>06 Subdomains</li><li>10 Domains</li></ul>','NA','NA',5,3,1),(4,'Premium Plan',79.00,'month','<ul><li>30GB Disk Space</li><li>30 Email Accounts</li><li>30GB Monthly Bandwidth</li><li>06 Subdomains</li><li>10 Domains</li></ul>','NA','NA',5,2,1);
/*!40000 ALTER TABLE `subscription_plan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-06  0:49:20

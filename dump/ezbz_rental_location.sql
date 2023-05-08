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
-- Table structure for table `rental_location`
--

DROP TABLE IF EXISTS `rental_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_location` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `country` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `apartment` varchar(1000) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `postal` varchar(100) NOT NULL,
  `user_id` int NOT NULL,
  `rental_id` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_location`
--

LOCK TABLES `rental_location` WRITE;
/*!40000 ALTER TABLE `rental_location` DISABLE KEYS */;
INSERT INTO `rental_location` VALUES (1,'IN','Noida','D 13','Noida','Up','201310',5,66,1),(2,'','','','','','',5,67,1),(3,'','','','','','',5,68,1),(4,'','','','','','',5,69,1),(5,'','','','','','',5,70,1),(6,'','','','','','',5,71,1),(7,'','','','','','',5,72,1),(8,'','','','','','',5,73,1),(9,'','','','','','',5,74,1),(10,'','','','','','',5,75,1),(11,'','','','','','',5,76,1),(12,'','','','','','',5,77,1),(13,'','','','','','',5,78,1),(14,'','','','','','',5,79,1),(15,'','','','','','',5,80,1),(16,'','','','','','',5,81,1),(17,'','','','','','',5,82,1),(18,'','','','','','',5,83,1),(19,'','','','','','',5,84,1),(20,'IN','D 14','Noida','Noida','Uttar Pradesh','201310',5,85,1),(21,'AL','D 13 ','noida','Noida','Uttar Pradesh','201310',5,86,1),(22,'','','','','','',5,87,1),(23,'','','','','','',5,88,1),(24,'','','','','','',5,89,1),(25,'','','','','','',5,90,1),(26,'','','','','','',5,91,1),(27,'','','','','','',5,92,1);
/*!40000 ALTER TABLE `rental_location` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-06  0:47:58

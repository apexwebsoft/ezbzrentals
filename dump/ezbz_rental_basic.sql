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
-- Table structure for table `rental_basic`
--

DROP TABLE IF EXISTS `rental_basic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_basic` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `rental_type` varchar(100) NOT NULL,
  `rental_basis` varchar(100) NOT NULL,
  `floorspace` varchar(100) NOT NULL,
  `floorspace_units` varchar(100) NOT NULL,
  `grounds` varchar(100) NOT NULL,
  `grounds_units` varchar(100) NOT NULL,
  `floors_building` varchar(100) NOT NULL,
  `entrance` varchar(100) NOT NULL,
  `rental_licence` varchar(100) NOT NULL,
  `user_id` int NOT NULL,
  `rental_id` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_basic`
--

LOCK TABLES `rental_basic` WRITE;
/*!40000 ALTER TABLE `rental_basic` DISABLE KEYS */;
INSERT INTO `rental_basic` VALUES (1,'','','','','','','','','',5,5,1),(2,'','','','','','','','','',5,58,1),(3,'','','','','','','','','',5,59,1),(4,'','','','','','','','','',5,60,1),(5,'','','','','','','','','',5,61,1),(6,'','','','','','','','','',5,62,1),(7,'','','','','','','','','',5,63,1),(8,'','','','','','','','','',5,64,1),(9,'20','Entire house or apartment','2','ft2','250','ft2','4','Common - with security','12345678',5,65,1),(10,'20','Room with own facilities','2','ft2','250','ft2','4','Common - with security','12345678',5,66,1),(11,'','','','','','','','','',5,67,1),(12,'','','','','','','','','',5,68,1),(13,'','','','','','','','','',5,69,1),(14,'','','','','','','','','',5,70,1),(15,'','','','','','','','','',5,71,1),(16,'','','','','','','','','',5,72,1),(17,'','','','','','','','','',5,73,1),(18,'','','','','','','','','',5,74,1),(19,'','','','','','','','','',5,75,1),(20,'','','','','','','','','',5,76,1),(21,'','','','','','','','','',5,77,1),(22,'','','','','','','','','',5,78,1),(23,'','','','','','','','','',5,79,1),(24,'','','','','','','','','',5,80,1),(25,'','','','','','','','','',5,81,1),(26,'','','','','','','','','',5,82,1),(27,'','','','','','','','','',5,83,1),(28,'','','','','','','','','',5,84,1),(29,'20','--Select--','','--Select--','','--Select--','','--Select--','',5,85,1),(30,'20','Room with own facilities','20','m2','240','ft2','5','Common - without security','123456789',5,86,1),(31,'','','','','','','','','',5,87,1),(32,'20','--Select--','11','m2','','--Select--','','--Select--','',5,88,1),(33,'','','','','','','','','',5,89,1),(34,'20','Entire house or apartment','2','ft2','250','ft2','2','Common - with security','123456788',5,90,1),(35,'','','','','','','','','',5,91,1),(36,'','','','','','','','','',5,92,1),(37,'20','Entire house or apartment','24','ft2','2000','ft2','4','Common - without security','123456789',5,94,1);
/*!40000 ALTER TABLE `rental_basic` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-06  0:41:27

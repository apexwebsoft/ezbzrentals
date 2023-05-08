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
-- Table structure for table `rental_earlybird_discount`
--

DROP TABLE IF EXISTS `rental_earlybird_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_earlybird_discount` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `booking_less` varchar(100) NOT NULL,
  `booking_less_discount` varchar(100) NOT NULL,
  `booking_more` varchar(100) NOT NULL,
  `booking_more_discount` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  `rental_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_earlybird_discount`
--

LOCK TABLES `rental_earlybird_discount` WRITE;
/*!40000 ALTER TABLE `rental_earlybird_discount` DISABLE KEYS */;
INSERT INTO `rental_earlybird_discount` VALUES (1,'2','5','3','7',1,5,68),(2,'','','','',1,5,69),(3,'','','','',1,5,70),(4,'','','','',1,5,71),(5,'','','','',1,5,72),(6,'','','','',1,5,73),(7,'','','','',1,5,74),(8,'','','','',1,5,75),(9,'','','','',1,5,76),(10,'','','','',1,5,77),(11,'','','','',1,5,78),(12,'','','','',1,5,79),(13,'','','','',1,5,80),(14,'','','','',1,5,81),(15,'','','','',1,5,82),(16,'','','','',1,5,83),(17,'','','','',1,5,84),(18,'','','','',1,5,85),(19,'2','25','2','25',1,5,86),(20,'','','','',1,5,87),(21,'','','','',1,5,88),(22,'','','','',1,5,89),(23,'','','','',1,5,90),(24,'','','','',1,5,91),(25,'','','','',1,5,92);
/*!40000 ALTER TABLE `rental_earlybird_discount` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-06  0:46:18

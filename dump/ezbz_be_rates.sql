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
-- Table structure for table `be_rates`
--

DROP TABLE IF EXISTS `be_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_rates` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `price_per_night` int NOT NULL,
  `description` longtext,
  `status` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  `adults` varchar(100) DEFAULT NULL,
  `children` varchar(100) DEFAULT NULL,
  `rooms_id` bigint NOT NULL,
  `seasons_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `be_rates_rooms_id_45b90932_fk_be_rooms_id` (`rooms_id`),
  KEY `be_rates_seasons_id_0f785ea0_fk_be_seasons_id` (`seasons_id`),
  CONSTRAINT `be_rates_rooms_id_45b90932_fk_be_rooms_id` FOREIGN KEY (`rooms_id`) REFERENCES `be_rooms` (`id`),
  CONSTRAINT `be_rates_seasons_id_0f785ea0_fk_be_seasons_id` FOREIGN KEY (`seasons_id`) REFERENCES `be_seasons` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_rates`
--

LOCK TABLES `be_rates` WRITE;
/*!40000 ALTER TABLE `be_rates` DISABLE KEYS */;
INSERT INTO `be_rates` VALUES (1,'room1',180,'<p>wec</p>',1,5,'3','4',1,1);
/*!40000 ALTER TABLE `be_rates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-06  0:50:44

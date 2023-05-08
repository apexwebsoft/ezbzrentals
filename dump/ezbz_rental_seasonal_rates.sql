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
-- Table structure for table `rental_seasonal_rates`
--

DROP TABLE IF EXISTS `rental_seasonal_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_seasonal_rates` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `season_name` varchar(100) NOT NULL,
  `start_date` varchar(100) NOT NULL,
  `end_date` varchar(100) NOT NULL,
  `basic_night` varchar(100) NOT NULL,
  `weekend_night` varchar(100) NOT NULL,
  `minimum_stay` varchar(3000) NOT NULL,
  `maximum_stay` varchar(3000) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  `rental_id` int NOT NULL,
  `checkin_days` varchar(100) NOT NULL,
  `checkout_days` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_seasonal_rates`
--

LOCK TABLES `rental_seasonal_rates` WRITE;
/*!40000 ALTER TABLE `rental_seasonal_rates` DISABLE KEYS */;
INSERT INTO `rental_seasonal_rates` VALUES (1,'winter','07 Jan, 2023','18 Jan, 2023','2500','4000','1','7',1,5,75,'True','True'),(2,'S','07 Jan, 2023','18 Jan, 2023','2500','3000','--Select--','--Select--',1,5,75,'True','True'),(3,'Seasonal','07 Jan, 2023','18 Jan, 2023','2500','3000','1','7',1,5,75,'True','True'),(4,'Summer','11 Jan, 2023','25 Jan, 2023','700','1300','1','7',1,5,74,'True','True'),(5,'Automn','24 Jan, 2023','27 Jan, 2023','1000','1500','5','10',1,5,75,'True','True'),(6,'aman','13 Jan, 2023','16 Jan, 2023','','4000','1','7',1,5,75,'True','True'),(7,'winter11','11 Jan, 2023','11 Jan, 2023','2500','3000','1','7',1,5,75,'True','True'),(9,'Summer','01 Apr, 2023','31 Oct, 2023','4500','7000','1','7',1,5,85,'[\'Sun\', \'Mon\', \'Tue\', \'Wed\', \'Thu\', \'Fri\', \'Sat\']','[\'Sun\', \'Mon\', \'Tue\', \'Wed\', \'Thu\', \'Fri\', \'Sat\']'),(10,'Winter','31 Oct, 2022','28 Feb, 2023','2500','4500','1','15',1,5,86,'[\'Sun\', \'Mon\', \'Tue\', \'Wed\', \'Thu\', \'Sat\']','[\'Sun\', \'Mon\', \'Tue\', \'Wed\', \'Fri\', \'Sat\']');
/*!40000 ALTER TABLE `rental_seasonal_rates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-06  0:44:13

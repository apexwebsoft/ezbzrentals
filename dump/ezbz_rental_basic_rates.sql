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
-- Table structure for table `rental_basic_rates`
--

DROP TABLE IF EXISTS `rental_basic_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_basic_rates` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `currency` varchar(100) NOT NULL,
  `basic_night` varchar(100) NOT NULL,
  `weekend_night` varchar(100) NOT NULL,
  `guest_number` varchar(100) NOT NULL,
  `minimum_stay` varchar(100) NOT NULL,
  `maximum_stay` varchar(3000) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  `rental_id` int NOT NULL,
  `checkin_days` varchar(100) NOT NULL,
  `checkout_days` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_basic_rates`
--

LOCK TABLES `rental_basic_rates` WRITE;
/*!40000 ALTER TABLE `rental_basic_rates` DISABLE KEYS */;
INSERT INTO `rental_basic_rates` VALUES (1,'11','2500','4000','2','1','180',1,5,75,'True','True'),(2,'','','','','','',1,5,76,'True','True'),(3,'3','5000','12','--Select--','--Select--','--Select--',1,5,77,'True','True'),(4,'','','','','','',1,5,78,'True','True'),(5,'','','','','','',1,5,79,'True','True'),(6,'','','','','','',1,5,80,'True','True'),(7,'','','','','','',1,5,81,'True','True'),(8,'','','','','','',1,5,82,'True','True'),(9,'','','','','','',1,5,83,'True','True'),(10,'','','','','','',1,5,84,'True','True'),(11,'GBP','3000','4000','2','1','7',1,5,85,'[\'Sun\', \'Mon\', \'Tue\', \'Wed\', \'Thu\', \'Fri\', \'Sat\']','[\'Sun\', \'Mon\', \'Tue\', \'Wed\', \'Thu\', \'Fri\', \'Sat\']'),(12,'INR','4500','7000','2','1','7',1,5,86,'[\'Sun\', \'Mon\', \'Tue\', \'Wed\', \'Thu\', \'Fri\']','[\'Sun\', \'Mon\', \'Tue\', \'Wed\', \'Thu\']'),(13,'EUR','4500','7000','4','5','11',1,5,87,'[\'Sun\', \'Mon\', \'Tue\']','[\'Sun\', \'Mon\', \'Tue\', \'Wed\', \'Thu\', \'Sat\']'),(14,'','','','','','',1,5,88,'True','True'),(15,'','','','','','',1,5,89,'True','True'),(16,'','','','','','',1,5,90,'True','True'),(17,'','','','','','',1,5,91,'True','True'),(18,'','','','','','',1,5,92,'True','True');
/*!40000 ALTER TABLE `rental_basic_rates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-06  0:44:21

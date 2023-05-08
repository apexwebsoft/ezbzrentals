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
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `symbol` varchar(100) NOT NULL,
  `decimal_place` varchar(100) NOT NULL,
  `currency_value` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (3,'British Pound','GBP','£','2','99.69 Indian Rupee',1,'2022-12-26 21:20:57.520050','2022-12-26 21:20:57.520050'),(4,'Euro','EUR','€','2','87.88',1,'2022-12-26 21:22:27.378195','2022-12-26 21:22:27.378195'),(5,'US Dollar','USD','$','2','82.65',1,'2022-12-26 21:23:21.289264','2022-12-26 21:23:21.289264'),(6,'Danish Krone','DKK','kr','2','11.82',1,'2022-12-26 21:25:55.316023','2022-12-26 21:25:55.316023'),(7,'Norwegian krone','NOK','kr‎','2','8.38',1,'2022-12-26 21:27:25.373533','2022-12-26 21:27:25.373533'),(8,'Swedish Krona','SEK','kr‎','2','7.87 ',1,'2022-12-26 21:28:26.841822','2022-12-26 21:28:26.841822'),(9,'South African Rand','ZAR','R‎','2','0.012',1,'2022-12-26 21:29:52.734805','2022-12-26 21:29:52.734805'),(10,'Swiss Franc','CHF','₣','2','88.70 Indian Rupee',1,'2022-12-26 21:31:52.454593','2022-12-26 21:31:52.454593'),(11,'Indian Rupee','INR','₹','2','1',1,'2022-12-26 21:33:22.766762','2022-12-26 21:33:22.766762');
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-06  0:49:53

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
-- Table structure for table `rental_extra_services`
--

DROP TABLE IF EXISTS `rental_extra_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_extra_services` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `service_name` varchar(100) NOT NULL,
  `service_provided` varchar(100) NOT NULL,
  `fee_basis` varchar(100) DEFAULT NULL,
  `service_price` varchar(100) DEFAULT NULL,
  `earliest_guest_order` varchar(100) DEFAULT NULL,
  `latest_guest_order` varchar(100) DEFAULT NULL,
  `guest_cancel_order` varchar(100) DEFAULT NULL,
  `extra_message` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  `rental_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_extra_services`
--

LOCK TABLES `rental_extra_services` WRITE;
/*!40000 ALTER TABLE `rental_extra_services` DISABLE KEYS */;
INSERT INTO `rental_extra_services` VALUES (1,'Air-conditioning','For a fee','Per cleaning','200','At the time of booking','At the time of booking','24 hours before check-in','hey',1,5,77),(2,'Air-conditioning','For a fee','Per cleaning','','At the time of booking','48 hours before check-in','24 hours before check-in','hey',1,5,77),(3,'Bed linen','Free',NULL,'',NULL,NULL,NULL,'',1,5,77);
/*!40000 ALTER TABLE `rental_extra_services` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-06  0:47:33

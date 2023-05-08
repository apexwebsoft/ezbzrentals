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
-- Table structure for table `be_rooms`
--

DROP TABLE IF EXISTS `be_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_rooms` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `no_of_adult` varchar(20) NOT NULL,
  `no_of_child` varchar(20) NOT NULL,
  `max_guest` varchar(200) NOT NULL,
  `size` varchar(100) NOT NULL,
  `view` varchar(100) NOT NULL,
  `bed_types` varchar(100) NOT NULL,
  `price` varchar(200) NOT NULL,
  `amenities` varchar(500) NOT NULL,
  `categories` varchar(500) NOT NULL,
  `tags` varchar(500) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_rooms`
--

LOCK TABLES `be_rooms` WRITE;
/*!40000 ALTER TABLE `be_rooms` DISABLE KEYS */;
INSERT INTO `be_rooms` VALUES (1,'Smoking Villa','<p>It is our pleasure to welcome you to Myrel Hotel. Whether you are traveling on business or pleasure, we know you have a variety of hotels to choose from. We strive to provide you a room that is clean and comfortable, with friendly attentive service at a value conscious price.</p>','be_rooms/r-architecture-pzMghCq2kS0-unsplash.jpg','3','2','5','100','Sea View','Double','3000','[\'Air Condition,\', \'Heater,\', \'Television,\']','Double Bed','Smoking Room',1,5,'2023-03-10 14:07:03.188106','2023-04-10 15:09:51.209502'),(2,'Paradox','','be_rooms/gus-ruballo-h5QNclJUiA8-unsplash.jpg','2','2','2','1000','Sea Facing','Double','4500','[\'Air Condition\', \'Heater\', \'Television\', \'Microwave\']','Single Bed','Smoking Room',1,5,'2023-03-13 21:02:42.026881','2023-03-14 17:44:30.710883');
/*!40000 ALTER TABLE `be_rooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-06  0:41:52

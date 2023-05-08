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
-- Table structure for table `rental_instruction`
--

DROP TABLE IF EXISTS `rental_instruction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_instruction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `checkin_instruction` varchar(100) NOT NULL,
  `checkout_instruction` varchar(100) NOT NULL,
  `checkin_contact` varchar(100) NOT NULL,
  `key_collection` varchar(100) NOT NULL,
  `telephone_country` varchar(100) NOT NULL,
  `telephone_number` varchar(3000) NOT NULL,
  `instructions` longtext NOT NULL,
  `attach_instruction` varchar(100) NOT NULL,
  `checkin_from` varchar(100) NOT NULL,
  `checkout_until` varchar(100) NOT NULL,
  `airport_instruction` varchar(100) NOT NULL,
  `property_directions` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  `rental_id` int NOT NULL,
  `dialing_code` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_instruction`
--

LOCK TABLES `rental_instruction` WRITE;
/*!40000 ALTER TABLE `rental_instruction` DISABLE KEYS */;
INSERT INTO `rental_instruction` VALUES (1,'14:00','11:00','Aman Rajput','At the property','IN','123456789','no loud music','','24','2','IG Delhi','Call for direction',1,5,70,NULL),(2,'','','','','','','','','','','','',1,5,71,NULL),(3,'','','','','','','','','','','','',1,5,72,NULL),(4,'','','','','','','','','','','','',1,5,73,NULL),(5,'','','','','','','','','','','','',1,5,74,NULL),(6,'','','','','','','','','','','','',1,5,75,NULL),(7,'','','','','','','','','','','','',1,5,76,NULL),(8,'','','','','','','','','','','','',1,5,77,NULL),(9,'','','','','','','','','','','','',1,5,78,NULL),(10,'','','','','','','','','','','','',1,5,79,NULL),(11,'','','','','','','','','','','','',1,5,80,NULL),(12,'','','','','','','','','','','','',1,5,81,NULL),(13,'','','','','','','','','','','','',1,5,82,NULL),(14,'','','','','','','','','','','','',1,5,83,NULL),(15,'','','','','','','','','','','','',1,5,84,NULL),(16,'','','','','','','','','','','','',1,5,85,NULL),(17,'14:00','11:00','Aman Rajput','At the property',' 	KY','1234560000','Enjoy','','0','2','IGI','come  and find',1,5,86,'+1345'),(18,'--Select--','--Select--','','--Select--','AF','9874561230','','','--Select--','--Select--','','',1,5,87,'+93'),(19,'','','','','','','','','','','','',1,5,88,NULL),(20,'','','','','','','','','','','','',1,5,89,NULL),(21,'','','','','','','','','','','','',1,5,90,NULL),(22,'','','','','','','','','','','','',1,5,91,NULL),(23,'','','','','','','','','','','','',1,5,92,NULL);
/*!40000 ALTER TABLE `rental_instruction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-06  0:46:51

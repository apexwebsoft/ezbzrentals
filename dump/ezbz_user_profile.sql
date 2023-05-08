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
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` longtext,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(15) NOT NULL,
  `postal_code` int NOT NULL,
  `property_phone_number` varchar(15) NOT NULL,
  `tollfree` varchar(15) NOT NULL,
  `website` varchar(200) NOT NULL,
  `property_logo` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  `description` longtext NOT NULL DEFAULT (_utf8mb3'1'),
  `no_of_properties` varchar(100) NOT NULL,
  `property_role` varchar(100) NOT NULL,
  `birth_date` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `language` varchar(100) NOT NULL,
  `language_spoken` varchar(1000) NOT NULL,
  `profile_photo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_profile_user_id_8fdce8e2_fk_auth_user_id` (`user_id`),
  CONSTRAINT `user_profile_user_id_8fdce8e2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES (4,'Aman','Rajput','7303699947','d 13 noida','Noida sec 3','Uttar Pradesh','IN',201308,'7303699947','9873218141','http://apex.in','profile/logo_WfE5cvn.png',1,5,'<h3>I own multiple properties</h3>','3','Property Manager','1923-01-01','Male','en','[]','user_profile_photo/orchid_flower_1_XzEzE7Z.jpg'),(7,'Glen','Maxwell','NA','NA','NA','NA','',201308,'NA','NA','NA','',1,17,'','','','1','1','1','1',NULL),(8,'Faf ','Duplesis','1234567891','Noida1','Noida1','UP1','AU',201308,'12345678891','1234567891','apexwebsoft.in1','',1,18,'','31','Property Owner','1','1','1','1',NULL),(14,'Aman','Rajput','NA','NA','NA','NA','',201308,'NA','NA','NA','',1,24,'','','','1','1','1','1',NULL),(15,'Rohit','Sharma','NA','NA','NA','NA','IN',201308,'NA','NA','NA','',1,25,'','2','Property Owner','1','1','1','1',NULL),(16,'NA','NA','NA','NA','NA','NA','IN',201308,'NA','NA','NA','',1,26,'','2','Property Owner','1','1','1','1',NULL),(17,'Aditya','Singh','NA','NA','NA','NA','IN',201308,'NA','NA','NA','',1,27,'','2','Property Owner','1','1','1','1',NULL);
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-06  0:48:23

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
-- Table structure for table `rental_rooms`
--

DROP TABLE IF EXISTS `rental_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_rooms` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(10000) NOT NULL,
  `no_of_rooms` varchar(100) NOT NULL,
  `user_id` int NOT NULL,
  `rental_id` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_rooms`
--

LOCK TABLES `rental_rooms` WRITE;
/*!40000 ALTER TABLE `rental_rooms` DISABLE KEYS */;
INSERT INTO `rental_rooms` VALUES (1,'[\'Balcony\', \'Bathroom \', \'Bedroom \', \'Dining room\', \'Kitchen \', \'Living room \', \'Playroom \', \'Terrace \', \'Toilet\', \'Workroom\', \'Balcony \', \'Bathroom \', \'Bedroom\', \'Dining room \', \'Kitchen\', \'Living room\', \'Playroom\', \'Terrace\', \'Toilet\', \'Workroom \']','[\'3\', \'2\', \'2\', \'1\', \'2\', \'1\', \'1\', \'2\', \'1\', \'2\', \'1\', \'2\', \'1\', \'1\', \'1\', \'1\', \'2\', \'1\', \'1\', \'2\']',5,86,1);
/*!40000 ALTER TABLE `rental_rooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-06  0:49:37

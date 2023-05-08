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
-- Table structure for table `channel`
--

DROP TABLE IF EXISTS `channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `channel` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `channel_title` varchar(100) NOT NULL,
  `channel_image` varchar(100) DEFAULT NULL,
  `channel_description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `request_booking` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel`
--

LOCK TABLES `channel` WRITE;
/*!40000 ALTER TABLE `channel` DISABLE KEYS */;
INSERT INTO `channel` VALUES (18,'Airbnb','channels/airbnb.png','\"\"','2023-01-06 19:49:49.894073','2023-05-05 17:48:06.864815',1,1),(19,'Booking.com','channels/booking.png','','2023-01-06 19:50:16.580030','2023-01-06 19:50:16.581622',1,0),(20,'VRBO','channels/vrbo.png','','2023-01-06 19:50:31.466355','2023-01-06 19:50:31.466355',1,0),(21,'Expedia','channels/Expedia.png','','2023-01-06 19:50:47.785069','2023-01-06 19:50:47.785069',1,0),(22,'TripAdvisor','channels/tripadvisor.png','','2023-01-06 19:51:06.047191','2023-01-06 19:51:06.047191',1,0),(23,'Rentberry','channels/rentberry.png','\"\"','2023-01-06 19:51:22.192928','2023-05-05 17:49:59.814923',1,1),(24,'Cozycozy','channels/cozycozy.png','\"\"','2023-01-06 19:51:37.373416','2023-05-05 17:50:06.282334',1,1),(25,'Egencia','channels/egencia.png','','2023-01-06 19:51:57.228703','2023-01-06 19:51:57.228703',1,0),(26,'Fewo-direkt','channels/fewo.png','','2023-01-06 19:52:14.652088','2023-01-06 19:52:14.652088',1,0),(27,'FlipKey','channels/flipkey.png','','2023-01-06 19:52:31.941498','2023-01-06 19:52:31.941498',1,0),(28,'holidu','channels/holidu.png','','2023-01-06 19:52:49.011118','2023-01-06 19:52:49.011118',1,0),(29,'Hometogo','channels/home-to-go.png','\"\"','2023-01-06 19:53:12.648439','2023-05-05 17:50:25.388910',1,1),(30,'Home & Villas by Marriott International','channels/home-villas_4iQFhxa.png','','2023-01-06 19:54:47.795501','2023-01-06 19:54:47.795501',1,0),(31,'Hotels.com','channels/hotels.png','','2023-01-06 19:55:13.047009','2023-01-06 19:55:13.047009',1,0),(32,'hotwire','channels/hotwire.png','','2023-01-06 19:55:33.944557','2023-01-06 19:55:33.944557',1,0),(33,'HouseTrip','channels/housetrip.png','','2023-01-06 19:55:50.921959','2023-01-06 19:55:50.921959',1,0),(34,'Hyperguest','channels/hyperguest.png','','2023-01-06 19:56:09.223254','2023-01-06 19:56:09.223254',1,0),(35,'Lastminute.au','channels/lastminut.png','','2023-01-06 19:56:37.606316','2023-01-06 19:56:37.606316',1,0),(36,'Locasun','channels/locasun.png','','2023-01-06 19:56:50.497738','2023-01-06 19:56:50.497738',1,0),(37,'Orbitz','channels/orbitz.png','','2023-01-06 19:57:02.160368','2023-01-06 19:57:02.160368',1,0),(38,'Stayz','channels/stayz.png','','2023-01-06 19:57:14.650660','2023-01-06 19:57:14.650660',1,0),(39,'Trip.com','channels/trip.png','','2023-01-06 19:57:34.770642','2023-01-06 19:57:34.770642',1,0),(40,'trivago','channels/trivago.png','','2023-01-06 19:57:58.675904','2023-01-06 19:57:58.675904',1,0),(41,'Tui Villas','channels/tui-villas.png','','2023-01-06 19:58:17.229939','2023-01-06 19:58:17.229939',1,0),(42,'e-domizil','channels/e-domizil.png','','2023-01-06 19:59:50.980339','2023-01-06 19:59:50.980339',1,0);
/*!40000 ALTER TABLE `channel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-06  0:49:03

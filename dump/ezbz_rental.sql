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
-- Table structure for table `rental`
--

DROP TABLE IF EXISTS `rental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `rental_name` varchar(500) NOT NULL,
  `rental_description` longtext NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  `rental_short_description` longtext NOT NULL DEFAULT (_utf8mb3'1'),
  `cover_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental`
--

LOCK TABLES `rental` WRITE;
/*!40000 ALTER TABLE `rental` DISABLE KEYS */;
INSERT INTO `rental` VALUES (86,'Villa 1','<p>Welcome home! The only thing you will need to do is move in. This spacious rambler on 1.7+ acres has been been updated throughout with new ceramic tile, hardwood floors with warranty, stainless steel appliances, quartz countertops, fresh paint and carpet.</p><p>Large front and back yard, level with some trees in the back. Underground electric. Nice deck to grill out on, or enjoy your morning coffee and watch the birds and wildlife. This home has everything you need – come take a tour. Then head over to Main Street where you can find great shops and dining options!</p>','2023-01-06 20:51:16.932424',1,'2023-04-11 15:55:37.445597',5,'<p>Please Visit</p>','rentals/daria-nepriakhina-LwnIuhH_5Q4-unsplash_23mUdaS.jpg'),(87,'Villa 2','<p>Welcome home! The only thing you will need to do is move in. This spacious rambler on 1.7+ acres has been been updated throughout with new ceramic tile, hardwood floors with warranty, stainless steel appliances, quartz countertops, fresh paint and carpet.</p><p>Large front and back yard, level with some trees in the back. Underground electric. Nice deck to grill out on, or enjoy your morning coffee and watch the birds and wildlife. This home has everything you need – come take a tour. Then head over to Main Street where you can find great shops and dining options!</p>','2023-01-06 21:00:27.778535',1,'2023-04-11 15:55:53.867641',5,'<p>Please Visit</p>','rentals/bernard-hermant-g9ydDMdpfM0-unsplash.jpg'),(88,'Villa 3','<p>Welcome home! The only thing you will need to do is move in. This spacious rambler on 1.7+ acres has been been updated throughout with new ceramic tile, hardwood floors with warranty, stainless steel appliances, quartz countertops, fresh paint and carpet.</p><p>Large front and back yard, level with some trees in the back. Underground electric. Nice deck to grill out on, or enjoy your morning coffee and watch the birds and wildlife. This home has everything you need – come take a tour. Then head over to Main Street where you can find great shops and dining options!</p>','2023-01-06 21:04:04.982335',1,'2023-04-11 15:56:09.525456',5,'<p>Please visit</p>','rentals/andrea-davis-4oapbWR-8ZI-unsplash.jpg'),(89,'Villa 4','<p>Welcome home! The only thing you will need to do is move in. This spacious rambler on 1.7+ acres has been been updated throughout with new ceramic tile, hardwood floors with warranty, stainless steel appliances, quartz countertops, fresh paint and carpet.</p><p>Large front and back yard, level with some trees in the back. Underground electric. Nice deck to grill out on, or enjoy your morning coffee and watch the birds and wildlife. This home has everything you need – come take a tour. Then head over to Main Street where you can find great shops and dining options!</p>','2023-01-06 21:06:50.919126',1,'2023-04-11 15:56:33.283459',5,'<p>Please Visit</p>','rentals/bernard-hermant-g9ydDMdpfM0-unsplash_j8SWSAG.jpg'),(90,'villa 5','<p>Welcome home! The only thing you will need to do is move in. This spacious rambler on 1.7+ acres has been been updated throughout with new ceramic tile, hardwood floors with warranty, stainless steel appliances, quartz countertops, fresh paint and carpet.</p><p>Large front and back yard, level with some trees in the back. Underground electric. Nice deck to grill out on, or enjoy your morning coffee and watch the birds and wildlife. This home has everything you need – come take a tour. Then head over to Main Street where you can find great shops and dining options!</p>','2023-01-06 21:45:56.055822',1,'2023-04-11 15:56:51.617976',5,'<p>Please Visit</p>','rentals/daria-nepriakhina-LwnIuhH_5Q4-unsplash_Rh6myiS.jpg'),(91,'Villa 6','<p>Welcome home! The only thing you will need to do is move in. This spacious rambler on 1.7+ acres has been been updated throughout with new ceramic tile, hardwood floors with warranty, stainless steel appliances, quartz countertops, fresh paint and carpet.</p><p>Large front and back yard, level with some trees in the back. Underground electric. Nice deck to grill out on, or enjoy your morning coffee and watch the birds and wildlife. This home has everything you need – come take a tour. Then head over to Main Street where you can find great shops and dining options!</p>','2023-01-06 23:28:47.537586',1,'2023-04-11 15:57:06.615530',5,'<p>Please Visit</p>','rentals/gus-ruballo-h5QNclJUiA8-unsplash.jpg'),(93,'Aashiyana','sdfegrxthcjyuvbnm;l','2023-01-11 15:39:16.968058',1,'2023-01-11 15:39:16.968058',14,'sdsgfrthyjukilk/','rentals/holidu.png'),(94,'Villa 7','<p>Asap</p>','2023-01-11 16:47:21.523682',1,'2023-04-11 15:51:43.855614',5,'<p>Asap</p>','rentals/orchid_flower_1.jpg');
/*!40000 ALTER TABLE `rental` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-06  0:47:08

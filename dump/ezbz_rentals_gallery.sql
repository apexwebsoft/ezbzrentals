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
-- Table structure for table `rentals_gallery`
--

DROP TABLE IF EXISTS `rentals_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rentals_gallery` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `user_id` int NOT NULL,
  `rental_id` int NOT NULL,
  `position` smallint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `rentals_gallery_chk_1` CHECK ((`position` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rentals_gallery`
--

LOCK TABLES `rentals_gallery` WRITE;
/*!40000 ALTER TABLE `rentals_gallery` DISABLE KEYS */;
INSERT INTO `rentals_gallery` VALUES (128,'rentals-gallery/gustavo-zambelli-nEvzSXBIhiU-unsplash_VXDwGLR.jpg',5,75,NULL),(129,'rentals-gallery/r-architecture-oGmf8o53LeE-unsplash_1_OMs4fgt.jpg',5,75,NULL),(130,'rentals-gallery/andrea-davis-4oapbWR-8ZI-unsplash_UanqiXr.jpg',5,75,NULL),(131,'rentals-gallery/bernard-hermant-j__9DULAstQ-unsplash_DVtLFXS.jpg',5,75,NULL),(132,'rentals-gallery/r-architecture-oGmf8o53LeE-unsplash_vZACdvo.jpg',5,75,NULL),(133,'rentals-gallery/roberto-nickson-6FZf3yzuodE-unsplash_U2uJ5pv.jpg',5,75,NULL),(134,'rentals-gallery/bernard-hermant-g9ydDMdpfM0-unsplash_3ZfW8VP.jpg',5,87,10),(135,'rentals-gallery/gustavo-zambelli-nEvzSXBIhiU-unsplash_WpQPC3G.jpg',5,87,0),(136,'rentals-gallery/r-architecture-oGmf8o53LeE-unsplash_1_ohztx9Q.jpg',5,87,2),(137,'rentals-gallery/andrea-davis-4oapbWR-8ZI-unsplash_SacuB5e.jpg',5,87,1),(139,'rentals-gallery/r-architecture-oGmf8o53LeE-unsplash_TF13ker.jpg',5,87,5),(140,'rentals-gallery/roberto-nickson-6FZf3yzuodE-unsplash_vjw1DKS.jpg',5,87,4),(141,'rentals-gallery/paul-kapischka-NLbMgDBio4Y-unsplash_zOi7toe.jpg',5,87,3),(142,'rentals-gallery/gus-ruballo-h5QNclJUiA8-unsplash_FWhgyK0.jpg',5,87,8),(143,'rentals-gallery/chuttersnap-Ch3WwM6PcsA-unsplash_AfkdepC.jpg',5,87,6),(144,'rentals-gallery/roberto-nickson-so3wgJLwDxo-unsplash.jpg',5,87,7),(145,'rentals-gallery/brian-babb-XbwHrt87mQ0-unsplash.jpg',5,87,9),(147,'rentals-gallery/cozycozy.png',5,86,0),(148,'rentals-gallery/e-domizil.png',5,86,1),(149,'rentals-gallery/egencia.png',5,86,2),(150,'rentals-gallery/Expedia.png',5,86,3),(151,'rentals-gallery/orchid_flower_1.jpg',5,86,NULL);
/*!40000 ALTER TABLE `rentals_gallery` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-06  0:43:31

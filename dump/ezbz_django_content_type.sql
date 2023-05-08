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
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(60,'bookingengine','bookingamenities'),(72,'bookingengine','bookinginformation'),(66,'bookingengine','bookingroom'),(61,'bookingengine','categories'),(73,'bookingengine','colorpalettes'),(74,'bookingengine','contactinfo'),(75,'bookingengine','coupon'),(76,'bookingengine','extraservice'),(77,'bookingengine','footerwidgets'),(67,'bookingengine','rates'),(69,'bookingengine','reservation'),(78,'bookingengine','roomadditionaldetails'),(62,'bookingengine','roomsgallery'),(65,'bookingengine','seasons'),(63,'bookingengine','services'),(79,'bookingengine','socialmedia'),(64,'bookingengine','tags'),(68,'bookingengine','tax'),(80,'bookingengine','termcondition'),(5,'contenttypes','contenttype'),(81,'rentals','accountsetting'),(9,'rentals','activity'),(10,'rentals','amenities'),(37,'rentals','amenitiestype'),(28,'rentals','attributes'),(50,'rentals','basicrates'),(49,'rentals','bed'),(17,'rentals','bookings'),(32,'rentals','category'),(8,'rentals','channel'),(33,'rentals','channelmanagement'),(23,'rentals','companyprofile'),(38,'rentals','country'),(30,'rentals','currency'),(56,'rentals','customservices'),(19,'rentals','discount'),(18,'rentals','discounttype'),(45,'rentals','earlybirddiscount'),(35,'rentals','event'),(34,'rentals','eventmember'),(55,'rentals','extraservices'),(82,'rentals','feedback'),(47,'rentals','houserules'),(22,'rentals','invoice'),(21,'rentals','invoiceitem'),(46,'rentals','longstaydiscount'),(29,'rentals','manufacturingym'),(83,'rentals','notification'),(57,'rentals','otherrooms'),(31,'rentals','partner'),(14,'rentals','policy'),(39,'rentals','propertyrole'),(16,'rentals','rate'),(15,'rentals','ratetype'),(20,'rentals','rental'),(27,'rentals','rentalactivities'),(24,'rentals','rentalamenities'),(43,'rentals','rentalbasic'),(70,'rentals','rentalbed'),(84,'rentals','rentalbookingrules'),(52,'rentals','rentalcleaning'),(53,'rentals','rentaldeposit'),(48,'rentals','rentalinstruction'),(44,'rentals','rentallocation'),(58,'rentals','rentalotherrooms'),(26,'rentals','rentalpolicy'),(71,'rentals','rentalroom'),(25,'rentals','rentalsgallery'),(54,'rentals','rentaltax'),(11,'rentals','rentaltype'),(41,'rentals','room'),(42,'rentals','roomtype'),(51,'rentals','seasonalrates'),(59,'rentals','services'),(36,'rentals','subscription'),(40,'rentals','subscriptionplan'),(12,'rentals','tax'),(13,'rentals','taxtype'),(7,'rentals','userprofile'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-06  0:52:42

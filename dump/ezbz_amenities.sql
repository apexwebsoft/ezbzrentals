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
-- Table structure for table `amenities`
--

DROP TABLE IF EXISTS `amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenities` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `amenities_type_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `amenities_amenities_type_id_610f6dfc_fk_amenities_type_id` (`amenities_type_id`),
  CONSTRAINT `amenities_amenities_type_id_610f6dfc_fk_amenities_type_id` FOREIGN KEY (`amenities_type_id`) REFERENCES `amenities_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
INSERT INTO `amenities` VALUES (19,'Parking',1,1),(20,'Pets allowed',1,1),(21,'Essentials',1,1),(22,'Washing machine',1,1),(23,'Air conditioning',1,1),(24,'General heating',1,1),(25,'Internet wireless',1,1),(26,'Kitchen stove',1,1),(27,'Jacuzzi indoor',1,4),(28,'Jacuzzi outdoor',1,4),(29,'Private dry sauna',1,4),(30,'Private heated spa indoor swimming pool',1,4),(31,'Private heated spa outdoor swimming pool',1,4),(32,'Private steam sauna',1,4),(33,'Private unheated spa indoor swimming pool',1,4),(34,'Private unheated spa outdoor swimming pool',1,4),(35,'Shared dry sauna',1,4),(36,'Shared heated spa indoor swimming pool',1,4),(37,'Shared heated spa outdoor swimming pool',1,4),(38,'Shared steam sauna',1,4),(39,'Shared unheated spa indoor swimming pool',1,4),(40,'Shared unheated spa outdoor swimming pool',1,4),(41,'Spa swimming pool',1,4),(42,'Garage',1,5),(43,'Gated community',1,4),(44,'Parking',1,5),(45,'Parking lot',1,5),(46,'Parking on street',1,5),(47,'Parking option included',1,5),(48,'Parking option optional',1,5),(49,'Parking roofed car port',1,5),(50,'Private garden',1,5),(51,'Private playground',1,5),(52,'Private porch',1,5),(53,'Private tennis court',1,5),(54,'Shared garden',1,5),(55,'Shared playground',1,5),(56,'Shared porch',1,5),(57,'Shared tennis court',1,5),(58,'Breakfast included',1,6),(59,'Housekeeper included',1,6),(60,'Housekeeper optional',1,6),(61,'Laundry service included',1,6),(62,'Laundry service optional',1,6),(63,'Meal plan all-inclusive',1,6),(64,'Meal plan full board',1,6),(65,'Meal plan half board',1,6),(66,'Accept credit card',1,7),(67,'Accessible 24/7',1,7),(68,'Children welcome',1,7),(69,'Elevator in building',1,7),(70,'Low allergen environment',1,7),(71,'Pets allowed',1,7),(72,'Pets allowed only after arrangement',1,7),(73,'Pets not allowed',1,7),(74,'Smoking allowed',1,7),(75,'Smoking not allowed',1,7),(76,'Suitable for elderly or infirm',1,7),(77,'Suitable for events',1,7),(78,'Unsuitable for elderly or infirm',1,7),(79,'Wheelchair accessible',1,7),(80,'Wheelchair inaccessible',1,7),(81,'Beach chairs',1,8),(82,'Bicycles',1,8),(83,'Boat',1,8),(84,'Canoe kayak',1,8),(85,'Foosball',1,7),(86,'Golf cart',1,8),(87,'Golf clubs',1,8),(88,'Motorboat',1,8),(89,'Ping pong table',1,8),(90,'Pool table',1,8),(91,'Private fitness room',1,8),(92,'Sailboat',1,8),(93,'Shared fitness room',1,8),(94,'DVD player',1,8),(95,'Piano',1,8),(96,'Stereo system',1,8),(97,'TV antenna',1,8),(98,'TV cable',1,8),(99,'TV satellite',1,8),(100,'BBQ charcoal grill',1,9),(101,'BBQ electric',1,9),(102,'BBQ gas',1,9),(103,'Blender',1,9),(104,'Baby high chair',1,9),(105,'Coffee machine',1,9),(106,'Cooking utensils',1,9),(107,'Dishwasher',1,9),(108,'Grill',1,9),(109,'Kitchen stove',1,9),(110,'Kitchenette',1,9),(111,'Microwave',1,9),(112,'Oven',1,9),(113,'Refrigerator',1,9),(114,'Rice steamer',1,9),(115,'Spices',1,9),(116,'Toaster',1,9),(117,'Vacuum cleaner',1,9),(118,'Water cooler',1,9),(119,'Water purifier',1,9),(120,'Beach front',1,10),(121,'Downtown',1,10),(122,'Golf course view',1,10),(123,'Lake',1,10),(124,'Mountain',1,10),(125,'Near ocean',1,10),(126,'Ocean view',1,10),(127,'Resort',1,10),(128,'River',1,10),(129,'Rural',1,10),(130,'Ski in out',1,10),(131,'Town',1,10),(132,'Village',1,10),(133,'Waterfront',1,10),(134,'Bathroom and laundry',1,11),(135,'Bed linen',1,11),(136,'Bidet',1,11),(137,'Blow dryer',1,11),(138,'Clothes dryer',1,11),(139,'Essentials',1,11),(140,'Iron and board',1,1),(141,'Shower',1,11),(142,'Towel set',1,11),(143,'Bathtub',1,11),(144,'Washbasin',1,11),(145,'Washing machine',1,11),(146,'Air conditioning',1,12),(147,'Ceiling fans',1,12),(148,'Central heating',1,12),(149,'Electric heating',1,12),(150,'Fireplace',1,12),(151,'Floor heating',1,12),(152,'Fireplace',1,12),(153,'Floor heating',1,12),(154,'General heating',1,12),(155,'Wood tiled stove',1,12),(156,'Computer',1,13),(157,'Fax',1,13),(158,'Internet broadband',1,13),(159,'Internet dial-up',1,13),(160,'Internet wireless',1,13),(161,'Telephone',1,13),(162,'Buzzer',1,14),(163,'Carbon monoxide detector',1,14),(164,'Doorman',1,14),(165,'Fire extinguisher',1,14),(166,'First aid kit',1,14),(167,'Safe',1,14),(168,'Safety card',1,14),(169,'Security system',1,14),(170,'Smoke detector',1,14);
/*!40000 ALTER TABLE `amenities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-06  0:52:50

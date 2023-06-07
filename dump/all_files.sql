-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `account_setting`
--

DROP TABLE IF EXISTS `account_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_setting` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `account_type` varchar(1000) NOT NULL,
  `account_email_address` varchar(1000) NOT NULL,
  `prefered_currency` varchar(1000) DEFAULT NULL,
  `selected_plan` varchar(1000) DEFAULT NULL,
  `user_id` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_setting`
--

LOCK TABLES `account_setting` WRITE;
/*!40000 ALTER TABLE `account_setting` DISABLE KEYS */;
INSERT INTO `account_setting` VALUES (1,'Private Person','demon@gmail.com','USD','Rates are the same for Channel and Direct bookings',5,1);
/*!40000 ALTER TABLE `account_setting` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:11
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `distance` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:12
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
  `code` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `amenities_amenities_type_id_610f6dfc_fk_amenities_type_id` (`amenities_type_id`),
  CONSTRAINT `amenities_amenities_type_id_610f6dfc_fk_amenities_type_id` FOREIGN KEY (`amenities_type_id`) REFERENCES `amenities_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=771 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
INSERT INTO `amenities` VALUES (171,'Arboretum',1,1,'ACC111'),(172,'Autumn foliage',1,1,'ACC112'),(173,'Cave',1,1,'ACC113'),(174,'Duty Free',1,1,'ACC114'),(175,'Nude beach',1,1,'ACC115'),(176,'Rain forest',1,1,'ACC116'),(177,'Reef',1,1,'ACC117'),(178,'Ruins',1,1,'ACC118'),(179,'Outdoor lanai gazebo covered',1,1,'ACC119'),(180,'Volcano',1,1,'ACC120'),(181,'Rural',1,1,'ACC123'),(182,'Church',1,1,'ACC14'),(183,'Hospital',1,1,'ACC24'),(184,'Lake',1,1,'ACC25'),(185,'Library',1,1,'ACC27'),(186,'Marina',1,1,'ACC28'),(187,'Market',1,1,'ACC29'),(188,'Mountain',1,1,'ACC31'),(189,'Mountain',1,1,'ACC32'),(190,'Ocean',1,1,'ACC33'),(191,'Recreation center',1,1,'ACC39'),(192,'Resort',1,1,'ACC40'),(193,'Restaurant',1,1,'ACC41'),(194,'River',1,1,'ACC42'),(195,'Ski area',1,1,'ACC45'),(196,'Store',1,1,'ACC47'),(197,'Beach',1,1,'ACC5'),(198,'Movie Theater',1,1,'ACC50'),(199,'Water park',1,1,'ACC54'),(200,'Waterfront',1,1,'ACC55'),(201,'Winery',1,1,'ACC56'),(202,'Zoo',1,1,'ACC57'),(203,'Festival',1,1,'ACC59'),(204,'Bar',1,1,'ACC73'),(205,'Bay',1,1,'ACC74'),(206,'Synagogue',1,1,'ACC82'),(207,'Botanical garden',1,1,'ACC90'),(208,'Natural attraction',1,1,'ACC95'),(209,'24 Hour Reception Desk',1,1,'HAC1'),(210,'Wheelchair access',1,1,'HAC101'),(211,'Accessible parking',1,1,'HAC116'),(212,'Shops and commercial services',1,1,'HAC122'),(213,'Business library',1,1,'HAC14'),(214,'Grocery shopping service available',1,1,'HAC149'),(215,'Car rental desk',1,1,'HAC15'),(216,'Medical Facilities Service',1,1,'HAC154'),(217,'All-inclusive meal plan',1,1,'HAC156'),(218,'Buffet breakfast',1,1,'HAC157'),(219,'Continental breakfast',1,1,'HAC159'),(220,'Casino',1,1,'HAC16'),(221,'Full meal plan',1,1,'HAC160'),(222,'Lounges/bars',1,1,'HAC165'),(223,'Onsite laundry',1,1,'HAC168'),(224,'Breakfast served in restaurant',1,1,'HAC173'),(225,'Full service housekeeping',1,1,'HAC176'),(226,'Street side parking',1,1,'HAC186'),(227,'Children\'s play area',1,1,'HAC193'),(228,'Disco',1,1,'HAC195'),(229,'Early check-in',1,1,'HAC196'),(230,'Locker room',1,1,'HAC197'),(231,'Non-smoking rooms (generic)',1,1,'HAC198'),(232,'Bicycle rentals',1,1,'HAC202'),(233,'Late check-out available',1,1,'HAC204'),(234,'Coin operated laundry',1,1,'HAC21'),(235,'Concierge desk',1,1,'HAC22'),(236,'Catering services',1,1,'HAC226'),(237,'Business center',1,1,'HAC228'),(238,'Secured parking',1,1,'HAC230'),(239,'Racquetball',1,1,'HAC231'),(240,'Snow sports',1,1,'HAC232'),(241,'Tennis court',1,1,'HAC233'),(242,'Water sports',1,1,'HAC234'),(243,'Golf',1,1,'HAC236'),(244,'Horseback riding',1,1,'HAC237'),(245,'Oceanfront',1,1,'HAC238'),(246,'Beachfront',1,1,'HAC239'),(247,'Ironing board',1,1,'HAC241'),(248,'Heated guest rooms',1,1,'HAC242'),(249,'Thalassotherapy',1,1,'HAC246	'),(250,'Courtyard',1,1,'HAC25'),(251,'Connecting rooms',1,1,'HAC254'),(252,'Currency exchange',1,1,'HAC26'),(253,'Kitchenette',1,1,'Kitchenette'),(254,'Welcome drink',1,1,'HAC265'),(255,'Meeting rooms',1,1,'HAC269'),(256,'Snow skiing',1,1,'HAC272'),(257,'Water skiing',1,1,'HAC273'),(258,'Grocery store',1,1,'HAC280'),(259,'Airport shuttle service',1,1,'HAC282'),(260,'Luggage service',1,1,'HAC283'),(261,'Door man',1,1,'HAC29'),(262,'Newspaper',1,1,'HAC292'),(263,'Food and beverage discount',1,1,'HAC301'),(264,'Welcome gift',1,1,'HAC309'),(265,'Hypoallergenic rooms',1,1,'HAC310'),(266,'Smoke-free property',1,1,'HAC312'),(267,'Electric car charging stations',1,1,'HAC316'),(268,'Duty free shop',1,1,'HAC32'),(269,'Events ticket service',1,1,'HAC327'),(270,'Elevators',1,1,'HAC33'),(271,'Summer terrace',1,1,'HAC334'),(272,'Executive floor',1,1,'HAC34'),(273,'Snack bar',1,1,'HAC342'),(274,'Fitness center',1,1,'HAC345'),(275,'Health and beauty services',1,1,'HAC348'),(276,'Express check-in',1,1,'HAC36'),(277,'Express check-out',1,1,'HAC37'),(278,'Free airport shuttle',1,1,'HAC41'),(279,'Free parking',1,1,'HAC42'),(280,'Game room',1,1,'HAC44'),(281,'Gift/News stand',1,1,'HAC45'),(282,'Heated pool',1,1,'HAC49'),(283,'Air conditioning',1,1,'HAC5'),(284,'Housekeeping - daily',1,1,'HAC50'),(285,'Ski Storage',1,1,'HAC5033'),(286,'Housekeeping - weekly',1,1,'HAC51'),(287,'Indoor parking',1,1,'HAC53'),(288,'Indoor pool',1,1,'HAC54'),(289,'Jacuzzi',1,1,'HAC55'),(290,'Live entertainment',1,1,'HAC60'),(291,'Chef Services',1,1,'HAC6002'),(292,'Ski rental',1,1,'HAC6008'),(293,'Child toddler seat',1,1,'HAC6010'),(294,'Photographer',1,1,'HAC6013'),(295,'Chauffeur/cars',1,1,'HAC6014'),(296,'Soap/Shampoo',1,1,'HAC6019'),(297,'Boat',1,1,'HAC6020'),(298,'Self checkin',1,1,'HAC6024'),(299,'pack-n-play',1,1,'HAC6025'),(300,'Other services staff',1,1,'HAC6026'),(301,'Games',1,1,'HAC6027'),(302,'Petanque',1,1,'HAC6028'),(303,'Car necessary',1,1,'HAC6029'),(304,'Car not necessary',1,1,'HAC6030'),(305,'Car recommended',1,1,'HAC6031'),(306,'Synagogues',1,1,'HAC6032'),(307,'EV charger',1,1,'HAC6033'),(308,'Long term stays allowed',1,1,'HAC6034'),(309,'Cleaning before checkout',1,1,'HAC6035'),(310,'Beach essentials',1,1,'HAC6036'),(311,'Wide hallway clearance',1,1,'HAC6037'),(312,'Home step free access',1,1,'HAC6038'),(313,'Path to entrance lit at night',1,1,'HAC6039'),(314,'Home wide doorway',1,1,'HAC6040'),(315,'Flat smooth pathway to front door',1,1,'HAC6041'),(316,'Disabled parking spot',1,1,'HAC6042'),(317,'HAC6043',1,1,'HAC6043'),(318,'Cycling Trips',1,1,'HAC6044'),(319,'Included housekeeping',1,1,'HAC6045'),(320,'Staffed Property',1,1,'HAC6046'),(321,'Near a train/subway station',1,1,'Near a train/subway station'),(322,'Nearby local nightlife',1,1,'HAC6048'),(323,'Shared residential building',1,1,'HAC6049'),(324,'24/7 Support',1,1,'HAC6050'),(325,'Butler',1,1,'HAC6051'),(326,'Concierge Services',1,1,'HAC6052'),(327,'In-person Check-in',1,1,'HAC6053'),(328,'Carbon Monoxide Detector + Smoke Detector',1,1,'HAC6054'),(329,'Professionally Cleaned',1,1,'HAC6055'),(330,'Accessible Parking: Indoor',1,1,'HAC6056'),(331,'Accessible Parking: Indoor, 1 spot',1,1,'HAC6057'),(332,'Accessible Parking: Indoor, 2 spots',1,1,'HAC6058'),(333,'Accessible Parking: Outdoor',1,1,'HAC6059'),(334,'Accessible Parking: Outdoor, 1 spot',1,1,'HAC6060'),(335,'Accessible Parking: Outdoor, 2 spots',1,1,'HAC6061'),(336,'Beach Access',1,1,'HAC6062'),(337,'Business Facilities',1,1,'HAC6063'),(338,'Courtyard: Shared',1,1,'HAC6064'),(339,'Courtyard: Private Use',1,1,'HAC6065'),(340,'Fire Pit',1,1,'HAC6066'),(341,'Fitness Center: Access to community facilities',1,1,'HAC6067'),(342,'Fitness Center: Private',1,1,'HAC6068'),(343,'Heli-pad',1,1,'HAC6069'),(344,'Home Theatre System',1,1,'HAC6070'),(345,'Lakefront',1,1,'HAC6072'),(346,'Laundry Facilities',1,1,'HAC6073'),(347,'Outdoor Dining Area: Private',1,1,'HAC6074'),(348,'Outdoor Dining Area: Shared',1,1,'HAC6075'),(349,'Outdoor Dining Area: Screened-in',1,1,'HAC6076'),(350,'Outdoor Dining Area: Seats 10',1,1,'HAC6077'),(351,'Outdoor Dining Area: Seats 12',1,1,'HAC6078'),(352,'Outdoor Dining Area: Seats 20+',1,1,'HAC6079'),(353,'Outdoor Furniture Area',1,1,'HAC6080'),(354,'Outdoor Furniture Area: Sun Loungers',1,1,'HAC6081'),(355,'Outdoor Furniture Area: Dining Area',1,1,'HAC6082'),(356,'Pool: Infinity Edge',1,1,'HAC6084'),(357,'Pool: Saltwater',1,1,'HAC6085'),(358,'Pool: Community Access',1,1,'Pool: Community Access'),(359,'Riverfront',1,1,'HAC6087'),(360,'Sauna: Private',1,1,'HAC6088'),(361,'Sauna: Shared',1,1,'HAC6089'),(362,'Sauna: En-suite',1,1,'HAC6090'),(363,'Seafront',1,1,'HAC6091'),(364,'Ski rental: Available for additional fee',1,1,'HAC6092'),(365,'Ski rental: Rental cost included with stay',1,1,'HAC6093'),(366,'Steam room',1,1,'HAC6095'),(367,'Bathroom Amenities: Robe included',1,1,'HAC6096'),(368,'Children’s play area: Indoor',1,1,'HAC6097'),(369,'Children’s play area: Outdoor',1,1,'HAC6098'),(370,'High Chair',1,1,'HAC6099'),(371,'Massage services',1,1,'HAC61'),(372,'Table Tennis: Indoor',1,1,'HAC6100'),(373,'Table Tennis: Outdoor',1,1,'HAC6101'),(374,'Television: Plasma',1,1,'HAC6102'),(375,'Television: Flat screen',1,1,'HAC6103'),(376,'Television: Smart',1,1,'HAC6104'),(377,'Water Sports: Available for rent',1,1,'HAC6105'),(378,'Water Sports: Available for additional fee',1,1,'HAC6106'),(379,'Baby Sitting: On request',1,1,'HAC6107'),(380,'Baby Sitting: Available for additional fee',1,1,'HAC6108'),(381,'Bartender',1,1,'HAC6109'),(382,'Bartender: On request',1,1,'HAC6110'),(383,'Bartender: Available for additional fee',1,1,'HAC6111'),(384,'Butler: On request',1,1,'HAC6113'),(385,'Butler: Available for additional fee',1,1,'HAC6114'),(386,'Chef Services: Included',1,1,'HAC6115'),(387,'Chef Services: Available for additional fee',1,1,'HAC6116'),(388,'Chef Services: Working schedule',1,1,'HAC6117'),(389,'Concierge Services: AM only',1,1,'HAC6118'),(390,'Concierge Services: PM only',1,1,'HAC6119'),(391,'Concierge Services: Weekends only',1,1,'HAC6120'),(392,'Dry Cleaning: On request',1,1,'HAC6121'),(393,'Dry Cleaning: Available for additional fee',1,1,'HAC6122'),(394,'Gardener',1,1,'HAC6123'),(395,'Grocery shopping service available: On request',1,1,'HAC6124'),(396,'Grocery shopping service available: Available for additional fee',1,1,'HAC6125'),(397,'Housekeeping: 2x Daily',1,1,'HAC6126'),(398,'Housekeeping: Additional Services',1,1,'HAC6127'),(399,'Housekeeping: Additional services available on request',1,1,'HAC6128'),(400,'Housekeeping: Additional services available for extra fee',1,1,'HAC6129'),(401,'House Manager',1,1,'HAC6130'),(402,'In-person Welcome',1,1,'HAC6131'),(403,'Laundry Services',1,1,'HAC6132'),(404,'Laundry Services: Availabe for additional fee',1,1,'HAC6133'),(405,'Meal Included: Breakfast',1,1,'HAC6134'),(406,'Meal Included: 3 meals/ day',1,1,'HAC6135'),(407,'Meal Included: Available for additional fee',1,1,'HAC6136'),(408,'Valet Parking: On request',1,1,'HAC6137'),(409,'Valet Parking: Available for additional fee',1,1,'HAC6138'),(410,'Nightclub',1,1,'HAC62'),(411,'Outdoor pool',1,1,'HAC66'),(412,'ATM/Cash machine',1,1,'HAC7'),(413,'Pool',1,1,'HAC71'),(414,'Restaurant',1,1,'HAC76'),(415,'Room service',1,1,'HAC77'),(416,'Safe deposit box',1,1,'HAC78'),(417,'Sauna',1,1,'HAC79'),(418,'Baby sitting',1,1,'HAC8'),(419,'Shoe shine stand',1,1,'HAC81'),(420,'Solarium',1,1,'HAC83'),(421,'Steam bath',1,1,'HAC86'),(422,'BBQ/Picnic area',1,1,'HAC9'),(423,'Tour/sightseeing desk',1,1,'HAC91'),(424,'Truck parking',1,1,'HAC94'),(425,'Dry cleaning',1,1,'HAC96'),(426,'Valet parking',1,1,'HAC97'),(427,'Vending machines',1,1,'HAC98'),(428,'Adjoining rooms',1,1,'RMA1'),(429,'Bathrobe',1,1,'RMA10'),(430,'Smoke detectors',1,1,'RMA100'),(431,'Sofa bed',1,1,'RMA102'),(432,'Speaker phone',1,1,'RMA103'),(433,'Stereo',1,1,'RMA104'),(434,'Stove',1,1,'RMA105'),(435,'Telephone',1,1,'RMA107'),(436,'Telephone for hearing impaired',1,1,'RMA108'),(437,'Bathroom amenities',1,1,'RMA11'),(438,'Trouser/Pant press',1,1,'RMA111'),(439,'Twin bed',1,1,'RMA113'),(440,'VCR movies',1,1,'RMA115'),(441,'Video games',1,1,'RMA117'),(442,'Wake-up calls',1,1,'RMA119'),(443,'Air conditioning individually controlled in room',1,1,'RMA126'),(444,'Bathtub &whirlpool separate',1,1,'RMA127'),(445,'CD player',1,1,'RMA129'),(446,'Bathtub',1,1,'RMA13'),(447,'Desk with electrical outlet',1,1,'RMA133'),(448,'Foam pillows',1,1,'RMA135'),(449,'Marble bathroom',1,1,'RMA138'),(450,'Bathtub only',1,1,'RMA14'),(451,'Oversized bathtub',1,1,'RMA141'),(452,'Shower',1,1,'RMA142'),(453,'Sink in-room',1,1,'RMA143'),(454,'Soundproofed room',1,1,'RMA144'),(455,'Tables and chairs',1,1,'RMA146'),(456,'Two-line phone',1,1,'RMA147'),(457,'Washer/dryer',1,1,'RMA149'),(458,'Bathtub or Shower',1,1,'RMA15'),(459,'Welcome gift',1,1,'RMA151'),(460,'Separate tub and shower',1,1,'RMA155'),(461,'Ceiling fan',1,1,'RMA157'),(462,'CNN available',1,1,'RMA158'),(463,'Bidet',1,1,'RMA16'),(464,'Accessible room',1,1,'RMA161'),(465,'Closets in room',1,1,'RMA162'),(466,'DVD player',1,1,'RMA163'),(467,'Mini-refrigerator',1,1,'RMA164	'),(468,'Heating',1,1,'RMA166'),(469,'Toaster',1,1,'RMA167'),(470,'International calls',1,1,'RMA170'),(471,'Long distance calls',1,1,'RMA175'),(472,'Cable television',1,1,'RMA18'),(473,'Hypoallergenic bed',1,1,'RMA186'),(474,'Coffee/Tea maker',1,1,'RMA19'),(475,'Meal included - continental breakfast',1,1,'RMA190'),(476,'Meal included - dinner',1,1,'RMA191'),(477,'Meal included - lunch',1,1,'RMA192'),(478,'Shared bathroom',1,1,'RMA193'),(479,'Telephone TDD/Textphone',1,1,'RMA194	'),(480,'Water bed',1,1,'RMA195'),(481,'Air conditioning',1,1,'RMA2'),(482,'Color television',1,1,'RMA20'),(483,'Futon',1,1,'RMA200'),(484,'Murphy bed',1,1,'RMA201'),(485,'Single bed',1,1,'RMA203'),(486,'Annex room',1,1,'RMA204'),(487,'Free newspaper',1,1,'RMA205'),(488,'Complimentary high speed internet in room',1,1,'RMA207'),(489,'Computer',1,1,'RMA21'),(490,'Satellite television',1,1,'RMA210'),(491,'iPod docking station',1,1,'RMA214'),(492,'Satellite radio',1,1,'RMA217'),(493,'Video on demand',1,1,'RMA218'),(494,'Connecting rooms',1,1,'RMA22'),(495,'Gulf view',1,1,'RMA220'),(496,'Mountain view',1,1,'RMA223'),(497,'Ocean view',1,1,'RMA224'),(498,'Premium movie channels',1,1,'RMA227'),(499,'Slippers',1,1,'RMA228'),(500,'Chair provided with desk',1,1,'RMA230'),(501,'Pillow top mattress',1,1,'RMA231'),(502,'Luxury linen type',1,1,'RMA234'),(503,'Instant hot water',1,1,'RMA242'),(504,'RMA245',1,1,'RMA245'),(505,'High Definition (HD) Flat Panel Television - 32 inches or greater',1,1,'RMA246'),(506,'Cordless phone',1,1,'RMA25'),(507,'TV',1,1,'RMA251'),(508,'Video game player:',1,1,'RMA254'),(509,'Dining room seats',1,1,'RMA256'),(510,'Mobile/cellular phones',1,1,'RMA258'),(511,'Movies',1,1,'RMA259'),(512,'Cribs',1,1,'RMA26'),(513,'Multiple closets',1,1,'RMA260'),(514,'Safe large enough to accommodate a laptop',1,1,'RMA262'),(515,'Bluray player',1,1,'RMA265'),(516,'Non-allergenic room',1,1,'RMA268'),(517,'Pillow type',1,1,'RMA269'),(518,'Seating area with sofa/chair',1,1,'RMA270'),(519,'Separate toilet area',1,1,'RMA271'),(520,'Widescreen TV',1,1,'RMA273'),(521,'Separate tub or shower',1,1,'RMA276'),(522,'Children\'s playpen',1,1,'RMA279'),(523,'Desk',1,1,'RMA28'),(524,'Plunge pool',1,1,'RMA280'),(525,'Desk with lamp',1,1,'RMA29'),(526,'Alarm clock',1,1,'RMA3'),(527,'Dishwasher',1,1,'RMA32'),(528,'Double bed',1,1,'RMA33'),(529,'Fax machine',1,1,'RMA38'),(530,'Fireplace',1,1,'RMA41'),(531,'Free local calls',1,1,'RMA45'),(532,'Free movies/video',1,1,'RMA46'),(533,'Full kitchen',1,1,'RMA47'),(534,'Grecian tub',1,1,'RMA49'),(535,'AM/FM radio',1,1,'RMA5'),(536,'Hairdryer',1,1,'RMA50'),(537,'Bath',1,1,'RMA5005'),(538,'Spa Bath',1,1,'RMA5020'),(539,'Dining Area',1,1,'RMA5085'),(540,'Electric Kettle',1,1,'RMA5086'),(541,'Towels/Linens At Surcharge',1,1,'RMA5091'),(542,'Dining Table',1,1,'RMA5126'),(543,'Baby safety gates',1,1,'RMA5145'),(544,'Iron',1,1,'RMA55'),(545,'Ironing board',1,1,'RMA56'),(546,'Whirpool',1,1,'RMA57'),(547,'King bed',1,1,'RMA58'),(548,'Kitchen',1,1,'RMA59'),(549,'Baby listening device',1,1,'RMA6'),(550,'RMA60',1,1,'Kitchen supplies'),(551,'Towels available',1,1,'RMA6001'),(552,'Cats allowed',1,1,'RMA6003'),(553,'Dogs allowed',1,1,'RMA6004'),(554,'CD library',1,1,'RMA6005'),(555,'Separate entrance',1,1,'RMA6010'),(556,'Beach view',1,1,'RMA6012'),(557,'Pool view',1,1,'RMA6013'),(558,'Water view',1,1,'RMA6017'),(559,'Electronic room key',1,1,'RMA6018	'),(560,'Fire extinguishers',1,1,'RMA6021'),(561,'Golf view',1,1,'RMA6027'),(562,'Ground floor',1,1,'RMA6028'),(563,'Lake view',1,1,'RMA6029'),(564,'City view',1,1,'RMA6030'),(565,'Harbor view',1,1,'RMA6031'),(566,'Bunk bed',1,1,'RMA6032'),(567,'Washer',1,1,'RMA6033'),(568,'Dryer',1,1,'RMA6034'),(569,'Hangers',1,1,'RMA6035'),(570,'Laptop Friendly Workspace',1,1,'RMA6036'),(571,'Essentials',1,1,'RMA6037'),(572,'Extra bed',1,1,'RMA6038'),(573,'Patio',1,1,'RMA6039'),(574,'iPad',1,1,'RMA6040'),(575,'Living room',1,1,'RMA6042'),(576,'Outdoor furniture',1,1,'RMA6045'),(577,'Outdoor dinning area',1,1,'RMA6046'),(578,'Garden view',1,1,'RMA6051'),(579,'River view',1,1,'RMA6052'),(580,'Park view',1,1,'RMA6053'),(581,'Game Console - Xbox 360',1,1,'RMA6054'),(582,'Game Console - PS2',1,1,'RMA6055'),(583,'Game Console - PS3',1,1,'RMA6056'),(584,'Game Console - Nintendo Wii',1,1,'RMA6057'),(585,'Linen',1,1,'RMA6058'),(586,'Carpeted floor',1,1,'RMA6059'),(587,'Tiled floor',1,1,'RMA6060'),(588,'Parquet Floor',1,1,'RMA6061'),(589,'Upper Floor Reachable By Stairs Only',1,1,'RMA6062'),(590,'Semi-Detached',1,1,'RMA6063'),(591,'Detached',1,1,'RMA6064'),(592,'RMA6063',1,1,'RMA6065'),(593,'Cleaning Included',1,1,'RMA6066'),(594,'Carbon monoxide detector',1,1,'RMA6067'),(595,'First aid kit',1,1,'RMA6068'),(596,'Buzzer/wireless intercom',1,1,'RMA6071'),(597,'Safety card',1,1,'RMA6072'),(598,'Lock on bedroom door',1,1,'RMA6073'),(599,'Smart lock',1,1,'RMA6074'),(600,'Private entrance',1,1,'RMA6075'),(601,'Outlet covers',1,1,'RMA6076'),(602,'Baby bath',1,1,'RMA6077'),(603,'Stair gates',1,1,'RMA6078'),(604,'Window guards',1,1,'RMA6079'),(605,'Table corner guards',1,1,'RMA6080'),(606,'Fireplace guards',1,1,'RMA6081'),(607,'Room darkening shades',1,1,'RMA6082'),(608,'Childrens dinnerware',1,1,'RMA6083'),(609,'Children’s books and toys',1,1,'RMA6084'),(610,'Breakfast not available',1,1,'RMA6085'),(611,'Dinner booking possible',1,1,'RMA6086'),(612,'Dinner not available',1,1,'RMA6087'),(613,'House cleaning optional',1,1,'RMA6088'),(614,'Lunch booking possible',1,1,'RMA6089'),(615,'Lunch not available',1,1,'RMA6090'),(616,'Wood stove',1,1,'RMA6091'),(617,'Dining Highchair',1,1,'RMA6092'),(618,'Dining Raclette',1,1,'RMA6093'),(619,'Dining room',1,1,'RMA6094'),(620,'Dining spices',1,1,'RMA6095'),(621,'Meals guests furnish own',1,1,'RMA6096'),(622,'Limited accessibility',1,1,'RMA6097'),(623,'Wheelchair inaccessible',1,1,'RMA6098'),(624,'Breakfast booking possible',1,1,'RMA6099'),(625,'Kitchenette',1,1,'RMA61'),(626,'Extra pillows and blankets',1,1,'RMA6100'),(627,'Ethernet connection',1,1,'RMA6101'),(628,'Pocket wifi',1,1,'RMA6102'),(629,'Cooking basics',1,1,'RMA6103	'),(630,'Changing table',1,1,'RMA6104'),(631,'Bedroom step free access',1,1,'RMA6105'),(632,'Wide clearance to bed',1,1,'RMA6106'),(633,'Bedroom wide doorway',1,1,'RMA6107'),(634,'Accessible height bed',1,1,'RMA6108'),(635,'Bathroom step free access',1,1,'RMA6109'),(636,'Grab rails in shower and toilet',1,1,'RMA6110'),(637,'Accessible height toilet',1,1,'RMA6111'),(638,'Rollin shower with bench',1,1,'RMA6112'),(639,'Bathroom wide doorway',1,1,'RMA6113	'),(640,'Tub with shower bench',1,1,'RMA6114'),(641,'Wide clearance to shower and toilet',1,1,'RMA6115'),(642,'Handheld shower hear',1,1,'RMA6116'),(643,'Single level home',1,1,'RMA6117'),(644,'Couch',1,1,'RMA6118'),(645,'Air mattress',1,1,'RMA6119'),(646,'Floor mattress',1,1,'RMA6120'),(647,'Toddler bed',1,1,'RMA6121'),(648,'Hammock',1,1,'RMA6122'),(649,'RMA6122',1,1,'RMA6122'),(650,'Private yard',1,1,'RMA6124'),(651,'Ensuite',1,1,'RMA6125'),(652,'High-Speed Wifi',1,1,'RMA6126'),(653,'Patio/Balcony',1,1,'RMA6127'),(654,'Balcony: Garden View',1,1,'RMA6128'),(655,'Balcony: City View',1,1,'RMA6129'),(656,'Balcony: Ocean View',1,1,'RMA6130'),(657,'Balcony: Mountain View',1,1,'RMA6131'),(658,'Fireplace: Wood burning',1,1,'RMA6132'),(659,'Fireplace: Gas',1,1,'RMA6133'),(660,'Fireplace: Electric',1,1,'RMA6134'),(661,'Pizza Oven',1,1,'RMA6135'),(662,'Air Conditioning: Central',1,1,'RMA6136'),(663,'Air Conditioning: Partial',1,1,'RMA6137'),(664,'Air Conditioning: In rooms',1,1,'RMA6138'),(665,'Baby Criip',1,1,'RMA6139	'),(666,'Barbeque Grill: Gas',1,1,'RMA6140'),(667,'Barbeque Grill: Gas',1,1,'RMA6140'),(668,'Barbeque Grill: Propane',1,1,'RMA6141'),(669,'Barbeque Grill: Charcoal',1,1,'RMA6142'),(670,'Premium Linens & Towels',1,1,'RMA6144'),(671,'Kitchen Essentials',1,1,'RMA6145'),(672,'In-unit Washer',1,1,'RMA6146'),(673,'Self-controlled heating/cooling system',1,1,'RMA6147'),(674,'Private living room',1,1,'RMA6148'),(675,'Amenity toilet',1,1,'RMA6149'),(676,'Amenity combo tub shower',1,1,'RMA6150'),(677,'Amenity outdoor shower',1,1,'RMA6151'),(678,'Entertainment Books',1,1,'RMA6154'),(679,'Entertainment Toys',1,1,'RMA6155'),(680,'Security System',1,1,'RMA6156'),(681,'Private Dock',1,1,'RMA6157'),(682,'Indoor Fireplace',1,1,'RMA6158'),(683,'Laptop',1,1,'RMA63'),(684,'Large desk',1,1,'RMA64'),(685,'Loft',1,1,'RMA67'),(686,'Microwave',1,1,'RMA68'),(687,'Minibar',1,1,'RMA69'),(688,'Balcony/Lanai/Terrace',1,1,'RMA7'),(689,'Multi-line phone',1,1,'RMA72'),(690,'Oven',1,1,'RMA77'),(691,'Pay per view movies on TV',1,1,'RMA78'),(692,'Barbeque grills',1,1,'RMA8'),(693,'Phone in bathroom',1,1,'RMA80'),(694,'Plates and bowls',1,1,'RMA81'),(695,'Private bathroom',1,1,'RMA85'),(696,'Queen bed',1,1,'RMA86'),(697,'Refrigerator',1,1,'RMA88'),(698,'Refrigerator with ice maker',1,1,'RMA89'),(699,'Bath tub with spray jets',1,1,'RMA9'),(700,'Rollaway bed',1,1,'RMA91'),(701,'Safe',1,1,'RMA92'),(702,'Separate closet',1,1,'RMA94'),(703,'Shower only',1,1,'RMA97'),(704,'Silverware/utensils',1,1,'RMA98'),(705,'Sitting area',1,1,'RMA99'),(706,'Windsurfing',1,1,'RST101'),(707,'Hot tub',1,1,'RST104'),(708,'Hunting',1,1,'RST105'),(709,'Mountain climbing',1,1,'RST108'),(710,'Billiards',1,1,'RST111'),(711,'Rock climbing',1,1,'RST112'),(712,'Surfing',1,1,'RST116'),(713,'Table tennis',1,1,'RST117'),(714,'Snow mobiling',1,1,'RST120'),(715,'Outdoor pool',1,1,'RST123'),(716,'Bird watching',1,1,'RST127'),(717,'Children\'s pool',1,1,'RST129'),(718,'Cross country skiing',1,1,'RST13'),(719,'Gambling',1,1,'RST133'),(720,'Garden',1,1,'RST134'),(721,'Ice skating',1,1,'RST137'),(722,'Dart board',1,1,'RST14'),(723,'Canoeing',1,1,'RST149'),(724,'Outlet shopping',1,1,'RST151'),(725,'Ski in/out facilities',1,1,'RST156'),(726,'Tennis professional',1,1,'RST157'),(727,'Diving',1,1,'RST160'),(728,'Walking track',1,1,'RST161'),(729,'Bikes Available (Free)',1,1,'RST169'),(730,'Away from it all',1,1,'RST170'),(731,'Budget',1,1,'RST171'),(732,'Farm holidays',1,1,'RST172'),(733,'Historic',1,1,'RST173'),(734,'Holiday complex',1,1,'RST174'),(735,'Romantic',1,1,'RST175'),(736,'Tourist attractions',1,1,'RST176'),(737,'Eco tourism',1,1,'RST177'),(738,'Luaus',1,1,'RST178'),(739,'Paddle boating',1,1,'RST179'),(740,'Sledding',1,1,'RST180'),(741,'Thermalisme',1,1,'RST181'),(742,'Whale watching',1,1,'RST182'),(743,'RST182',1,1,'RST183'),(744,'Shelling',1,1,'RST184'),(745,'Adventure',1,1,'RST185'),(746,'Rural countryside retreats',1,1,'RST186'),(747,'Trampoline',1,1,'RST187'),(748,'Fishing',1,1,'RST20'),(749,'Fly fishing',1,1,'RST25'),(750,'Golf',1,1,'RST34'),(751,'Gym',1,1,'RST35'),(752,'Basketball court',1,1,'RST4'),(753,'Ski-to-door access',1,1,'RST5028'),(754,'Hiking trail',1,1,'RST60'),(755,'Jet-ski',1,1,'RST63'),(756,'Kayaking',1,1,'RST65'),(757,'Miniature golf',1,1,'RST67'),(758,'Mountain biking trail',1,1,'RST68'),(759,'Boating',1,1,'RST7'),(760,'Outdoor tennis courts',1,1,'RST71'),(761,'Parasailing',1,1,'RST73'),(762,'Playground',1,1,'RST74'),(763,'River rafting ',1,1,'RST79'),(764,'Sailing',1,1,'RST80'),(765,'Scuba diving',1,1,'RST82'),(766,'Snorkeling',1,1,'RST86'),(767,'Snow boarding',1,1,'RST87'),(768,'Bowling alley',1,1,'RST9'),(769,'Squash court',1,1,'RST92'),(770,'Tubing',1,1,'RST96');
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

-- Dump completed on 2023-06-07  0:43:15
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `amenities_type`
--

DROP TABLE IF EXISTS `amenities_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenities_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities_type`
--

LOCK TABLES `amenities_type` WRITE;
/*!40000 ALTER TABLE `amenities_type` DISABLE KEYS */;
INSERT INTO `amenities_type` VALUES (1,'Popular',1),(4,'Pool & spa facilities',1),(5,'Parking & facilities',1),(6,'Services',1),(7,'Policies',1),(8,'Entertainment',1),(9,'Kitchen & dining',1),(10,'Location features',1),(11,'Bathroom & laundry',1),(12,'Heating & cooling',1),(13,'Internet & office',1),(14,'Home Safety',1);
/*!40000 ALTER TABLE `amenities_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:11
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attributes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes`
--

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
INSERT INTO `attributes` VALUES (1,'Attributes',0),(2,'Feature',1),(4,'Staff Management',1),(5,'Rental Agent',1),(6,'Staff Management',1),(7,'Staff Managements',1);
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:14
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:17
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:12
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=357 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add user profile',7,'add_userprofile'),(26,'Can change user profile',7,'change_userprofile'),(27,'Can delete user profile',7,'delete_userprofile'),(28,'Can view user profile',7,'view_userprofile'),(29,'Can add channel',8,'add_channel'),(30,'Can change channel',8,'change_channel'),(31,'Can delete channel',8,'delete_channel'),(32,'Can view channel',8,'view_channel'),(33,'Can add activites',9,'add_activites'),(34,'Can change activites',9,'change_activites'),(35,'Can delete activites',9,'delete_activites'),(36,'Can view activites',9,'view_activites'),(37,'Can add amenities',10,'add_amenities'),(38,'Can change amenities',10,'change_amenities'),(39,'Can delete amenities',10,'delete_amenities'),(40,'Can view amenities',10,'view_amenities'),(41,'Can add activity',9,'add_activity'),(42,'Can change activity',9,'change_activity'),(43,'Can delete activity',9,'delete_activity'),(44,'Can view activity',9,'view_activity'),(45,'Can add roomtype',11,'add_roomtype'),(46,'Can change roomtype',11,'change_roomtype'),(47,'Can delete roomtype',11,'delete_roomtype'),(48,'Can view roomtype',11,'view_roomtype'),(49,'Can add rentaltype',11,'add_rentaltype'),(50,'Can change rentaltype',11,'change_rentaltype'),(51,'Can delete rentaltype',11,'delete_rentaltype'),(52,'Can view rentaltype',11,'view_rentaltype'),(53,'Can add tax',12,'add_tax'),(54,'Can change tax',12,'change_tax'),(55,'Can delete tax',12,'delete_tax'),(56,'Can view tax',12,'view_tax'),(57,'Can add taxtype',13,'add_taxtype'),(58,'Can change taxtype',13,'change_taxtype'),(59,'Can delete taxtype',13,'delete_taxtype'),(60,'Can view taxtype',13,'view_taxtype'),(61,'Can add policy',14,'add_policy'),(62,'Can change policy',14,'change_policy'),(63,'Can delete policy',14,'delete_policy'),(64,'Can view policy',14,'view_policy'),(65,'Can add ratetype',15,'add_ratetype'),(66,'Can change ratetype',15,'change_ratetype'),(67,'Can delete ratetype',15,'delete_ratetype'),(68,'Can view ratetype',15,'view_ratetype'),(69,'Can add rate',16,'add_rate'),(70,'Can change rate',16,'change_rate'),(71,'Can delete rate',16,'delete_rate'),(72,'Can view rate',16,'view_rate'),(73,'Can add bookings',17,'add_bookings'),(74,'Can change bookings',17,'change_bookings'),(75,'Can delete bookings',17,'delete_bookings'),(76,'Can view bookings',17,'view_bookings'),(77,'Can add discount type',18,'add_discounttype'),(78,'Can change discount type',18,'change_discounttype'),(79,'Can delete discount type',18,'delete_discounttype'),(80,'Can view discount type',18,'view_discounttype'),(81,'Can add discount',19,'add_discount'),(82,'Can change discount',19,'change_discount'),(83,'Can delete discount',19,'delete_discount'),(84,'Can view discount',19,'view_discount'),(85,'Can add rental',20,'add_rental'),(86,'Can change rental',20,'change_rental'),(87,'Can delete rental',20,'delete_rental'),(88,'Can view rental',20,'view_rental'),(89,'Can add invoice item',21,'add_invoiceitem'),(90,'Can change invoice item',21,'change_invoiceitem'),(91,'Can delete invoice item',21,'delete_invoiceitem'),(92,'Can view invoice item',21,'view_invoiceitem'),(93,'Can add invoice',22,'add_invoice'),(94,'Can change invoice',22,'change_invoice'),(95,'Can delete invoice',22,'delete_invoice'),(96,'Can view invoice',22,'view_invoice'),(97,'Can add company profile',23,'add_companyprofile'),(98,'Can change company profile',23,'change_companyprofile'),(99,'Can delete company profile',23,'delete_companyprofile'),(100,'Can view company profile',23,'view_companyprofile'),(101,'Can add rental amenities',24,'add_rentalamenities'),(102,'Can change rental amenities',24,'change_rentalamenities'),(103,'Can delete rental amenities',24,'delete_rentalamenities'),(104,'Can view rental amenities',24,'view_rentalamenities'),(105,'Can add rentals gallery',25,'add_rentalsgallery'),(106,'Can change rentals gallery',25,'change_rentalsgallery'),(107,'Can delete rentals gallery',25,'delete_rentalsgallery'),(108,'Can view rentals gallery',25,'view_rentalsgallery'),(109,'Can add rental policy',26,'add_rentalpolicy'),(110,'Can change rental policy',26,'change_rentalpolicy'),(111,'Can delete rental policy',26,'delete_rentalpolicy'),(112,'Can view rental policy',26,'view_rentalpolicy'),(113,'Can add rental activities',27,'add_rentalactivities'),(114,'Can change rental activities',27,'change_rentalactivities'),(115,'Can delete rental activities',27,'delete_rentalactivities'),(116,'Can view rental activities',27,'view_rentalactivities'),(117,'Can add attributes',28,'add_attributes'),(118,'Can change attributes',28,'change_attributes'),(119,'Can delete attributes',28,'delete_attributes'),(120,'Can view attributes',28,'view_attributes'),(121,'Can add manufacturing ym',29,'add_manufacturingym'),(122,'Can change manufacturing ym',29,'change_manufacturingym'),(123,'Can delete manufacturing ym',29,'delete_manufacturingym'),(124,'Can view manufacturing ym',29,'view_manufacturingym'),(125,'Can add currency',30,'add_currency'),(126,'Can change currency',30,'change_currency'),(127,'Can delete currency',30,'delete_currency'),(128,'Can view currency',30,'view_currency'),(129,'Can add partner',31,'add_partner'),(130,'Can change partner',31,'change_partner'),(131,'Can delete partner',31,'delete_partner'),(132,'Can view partner',31,'view_partner'),(133,'Can add category',32,'add_category'),(134,'Can change category',32,'change_category'),(135,'Can delete category',32,'delete_category'),(136,'Can view category',32,'view_category'),(137,'Can add channel management',33,'add_channelmanagement'),(138,'Can change channel management',33,'change_channelmanagement'),(139,'Can delete channel management',33,'delete_channelmanagement'),(140,'Can view channel management',33,'view_channelmanagement'),(141,'Can add event member',34,'add_eventmember'),(142,'Can change event member',34,'change_eventmember'),(143,'Can delete event member',34,'delete_eventmember'),(144,'Can view event member',34,'view_eventmember'),(145,'Can add event',35,'add_event'),(146,'Can change event',35,'change_event'),(147,'Can delete event',35,'delete_event'),(148,'Can view event',35,'view_event'),(149,'Can add subscription',36,'add_subscription'),(150,'Can change subscription',36,'change_subscription'),(151,'Can delete subscription',36,'delete_subscription'),(152,'Can view subscription',36,'view_subscription'),(153,'Can add amenities type',37,'add_amenitiestype'),(154,'Can change amenities type',37,'change_amenitiestype'),(155,'Can delete amenities type',37,'delete_amenitiestype'),(156,'Can view amenities type',37,'view_amenitiestype'),(157,'Can add country',38,'add_country'),(158,'Can change country',38,'change_country'),(159,'Can delete country',38,'delete_country'),(160,'Can view country',38,'view_country'),(161,'Can add property role',39,'add_propertyrole'),(162,'Can change property role',39,'change_propertyrole'),(163,'Can delete property role',39,'delete_propertyrole'),(164,'Can view property role',39,'view_propertyrole'),(165,'Can add subscription plan',40,'add_subscriptionplan'),(166,'Can change subscription plan',40,'change_subscriptionplan'),(167,'Can delete subscription plan',40,'delete_subscriptionplan'),(168,'Can view subscription plan',40,'view_subscriptionplan'),(169,'Can add room',41,'add_room'),(170,'Can change room',41,'change_room'),(171,'Can delete room',41,'delete_room'),(172,'Can view room',41,'view_room'),(173,'Can add roomtype',42,'add_roomtype'),(174,'Can change roomtype',42,'change_roomtype'),(175,'Can delete roomtype',42,'delete_roomtype'),(176,'Can view roomtype',42,'view_roomtype'),(177,'Can add rental basic',43,'add_rentalbasic'),(178,'Can change rental basic',43,'change_rentalbasic'),(179,'Can delete rental basic',43,'delete_rentalbasic'),(180,'Can view rental basic',43,'view_rentalbasic'),(181,'Can add rental location',44,'add_rentallocation'),(182,'Can change rental location',44,'change_rentallocation'),(183,'Can delete rental location',44,'delete_rentallocation'),(184,'Can view rental location',44,'view_rentallocation'),(185,'Can add early bird discount',45,'add_earlybirddiscount'),(186,'Can change early bird discount',45,'change_earlybirddiscount'),(187,'Can delete early bird discount',45,'delete_earlybirddiscount'),(188,'Can view early bird discount',45,'view_earlybirddiscount'),(189,'Can add long stay discount',46,'add_longstaydiscount'),(190,'Can change long stay discount',46,'change_longstaydiscount'),(191,'Can delete long stay discount',46,'delete_longstaydiscount'),(192,'Can view long stay discount',46,'view_longstaydiscount'),(193,'Can add house rules',47,'add_houserules'),(194,'Can change house rules',47,'change_houserules'),(195,'Can delete house rules',47,'delete_houserules'),(196,'Can view house rules',47,'view_houserules'),(197,'Can add rental instruction',48,'add_rentalinstruction'),(198,'Can change rental instruction',48,'change_rentalinstruction'),(199,'Can delete rental instruction',48,'delete_rentalinstruction'),(200,'Can view rental instruction',48,'view_rentalinstruction'),(201,'Can add bed',49,'add_bed'),(202,'Can change bed',49,'change_bed'),(203,'Can delete bed',49,'delete_bed'),(204,'Can view bed',49,'view_bed'),(205,'Can add basic rates',50,'add_basicrates'),(206,'Can change basic rates',50,'change_basicrates'),(207,'Can delete basic rates',50,'delete_basicrates'),(208,'Can view basic rates',50,'view_basicrates'),(209,'Can add seasonal rates',51,'add_seasonalrates'),(210,'Can change seasonal rates',51,'change_seasonalrates'),(211,'Can delete seasonal rates',51,'delete_seasonalrates'),(212,'Can view seasonal rates',51,'view_seasonalrates'),(213,'Can add rental cleaning',52,'add_rentalcleaning'),(214,'Can change rental cleaning',52,'change_rentalcleaning'),(215,'Can delete rental cleaning',52,'delete_rentalcleaning'),(216,'Can view rental cleaning',52,'view_rentalcleaning'),(217,'Can add rental deposit',53,'add_rentaldeposit'),(218,'Can change rental deposit',53,'change_rentaldeposit'),(219,'Can delete rental deposit',53,'delete_rentaldeposit'),(220,'Can view rental deposit',53,'view_rentaldeposit'),(221,'Can add rental tax',54,'add_rentaltax'),(222,'Can change rental tax',54,'change_rentaltax'),(223,'Can delete rental tax',54,'delete_rentaltax'),(224,'Can view rental tax',54,'view_rentaltax'),(225,'Can add extra services',55,'add_extraservices'),(226,'Can change extra services',55,'change_extraservices'),(227,'Can delete extra services',55,'delete_extraservices'),(228,'Can view extra services',55,'view_extraservices'),(229,'Can add custom services',56,'add_customservices'),(230,'Can change custom services',56,'change_customservices'),(231,'Can delete custom services',56,'delete_customservices'),(232,'Can view custom services',56,'view_customservices'),(233,'Can add other rooms',57,'add_otherrooms'),(234,'Can change other rooms',57,'change_otherrooms'),(235,'Can delete other rooms',57,'delete_otherrooms'),(236,'Can view other rooms',57,'view_otherrooms'),(237,'Can add rental other rooms',58,'add_rentalotherrooms'),(238,'Can change rental other rooms',58,'change_rentalotherrooms'),(239,'Can delete rental other rooms',58,'delete_rentalotherrooms'),(240,'Can view rental other rooms',58,'view_rentalotherrooms'),(241,'Can add services',59,'add_services'),(242,'Can change services',59,'change_services'),(243,'Can delete services',59,'delete_services'),(244,'Can view services',59,'view_services'),(245,'Can add booking amenities',60,'add_bookingamenities'),(246,'Can change booking amenities',60,'change_bookingamenities'),(247,'Can delete booking amenities',60,'delete_bookingamenities'),(248,'Can view booking amenities',60,'view_bookingamenities'),(249,'Can add categories',61,'add_categories'),(250,'Can change categories',61,'change_categories'),(251,'Can delete categories',61,'delete_categories'),(252,'Can view categories',61,'view_categories'),(253,'Can add rooms gallery',62,'add_roomsgallery'),(254,'Can change rooms gallery',62,'change_roomsgallery'),(255,'Can delete rooms gallery',62,'delete_roomsgallery'),(256,'Can view rooms gallery',62,'view_roomsgallery'),(257,'Can add services',63,'add_services'),(258,'Can change services',63,'change_services'),(259,'Can delete services',63,'delete_services'),(260,'Can view services',63,'view_services'),(261,'Can add tags',64,'add_tags'),(262,'Can change tags',64,'change_tags'),(263,'Can delete tags',64,'delete_tags'),(264,'Can view tags',64,'view_tags'),(265,'Can add seasons',65,'add_seasons'),(266,'Can change seasons',65,'change_seasons'),(267,'Can delete seasons',65,'delete_seasons'),(268,'Can view seasons',65,'view_seasons'),(269,'Can add booking room',66,'add_bookingroom'),(270,'Can change booking room',66,'change_bookingroom'),(271,'Can delete booking room',66,'delete_bookingroom'),(272,'Can view booking room',66,'view_bookingroom'),(273,'Can add rates',67,'add_rates'),(274,'Can change rates',67,'change_rates'),(275,'Can delete rates',67,'delete_rates'),(276,'Can view rates',67,'view_rates'),(277,'Can add tax',68,'add_tax'),(278,'Can change tax',68,'change_tax'),(279,'Can delete tax',68,'delete_tax'),(280,'Can view tax',68,'view_tax'),(281,'Can add reservation',69,'add_reservation'),(282,'Can change reservation',69,'change_reservation'),(283,'Can delete reservation',69,'delete_reservation'),(284,'Can view reservation',69,'view_reservation'),(285,'Can add coupon',70,'add_coupon'),(286,'Can change coupon',70,'change_coupon'),(287,'Can delete coupon',70,'delete_coupon'),(288,'Can view coupon',70,'view_coupon'),(289,'Can add contact info',71,'add_contactinfo'),(290,'Can change contact info',71,'change_contactinfo'),(291,'Can delete contact info',71,'delete_contactinfo'),(292,'Can view contact info',71,'view_contactinfo'),(293,'Can add social media',72,'add_socialmedia'),(294,'Can change social media',72,'change_socialmedia'),(295,'Can delete social media',72,'delete_socialmedia'),(296,'Can view social media',72,'view_socialmedia'),(297,'Can add color palettes',73,'add_colorpalettes'),(298,'Can change color palettes',73,'change_colorpalettes'),(299,'Can delete color palettes',73,'delete_colorpalettes'),(300,'Can view color palettes',73,'view_colorpalettes'),(301,'Can add widgets',74,'add_widgets'),(302,'Can change widgets',74,'change_widgets'),(303,'Can delete widgets',74,'delete_widgets'),(304,'Can view widgets',74,'view_widgets'),(305,'Can add footer widgets',74,'add_footerwidgets'),(306,'Can change footer widgets',74,'change_footerwidgets'),(307,'Can delete footer widgets',74,'delete_footerwidgets'),(308,'Can view footer widgets',74,'view_footerwidgets'),(309,'Can add extra service',75,'add_extraservice'),(310,'Can change extra service',75,'change_extraservice'),(311,'Can delete extra service',75,'delete_extraservice'),(312,'Can view extra service',75,'view_extraservice'),(313,'Can add term condition',76,'add_termcondition'),(314,'Can change term condition',76,'change_termcondition'),(315,'Can delete term condition',76,'delete_termcondition'),(316,'Can view term condition',76,'view_termcondition'),(317,'Can add booking information',77,'add_bookinginformation'),(318,'Can change booking information',77,'change_bookinginformation'),(319,'Can delete booking information',77,'delete_bookinginformation'),(320,'Can view booking information',77,'view_bookinginformation'),(321,'Can add room additional details',78,'add_roomadditionaldetails'),(322,'Can change room additional details',78,'change_roomadditionaldetails'),(323,'Can delete room additional details',78,'delete_roomadditionaldetails'),(324,'Can view room additional details',78,'view_roomadditionaldetails'),(325,'Can add rental room',79,'add_rentalroom'),(326,'Can change rental room',79,'change_rentalroom'),(327,'Can delete rental room',79,'delete_rentalroom'),(328,'Can view rental room',79,'view_rentalroom'),(329,'Can add rental bed',80,'add_rentalbed'),(330,'Can change rental bed',80,'change_rentalbed'),(331,'Can delete rental bed',80,'delete_rentalbed'),(332,'Can view rental bed',80,'view_rentalbed'),(333,'Can add rental booking rules',81,'add_rentalbookingrules'),(334,'Can change rental booking rules',81,'change_rentalbookingrules'),(335,'Can delete rental booking rules',81,'delete_rentalbookingrules'),(336,'Can view rental booking rules',81,'view_rentalbookingrules'),(337,'Can add account setting',82,'add_accountsetting'),(338,'Can change account setting',82,'change_accountsetting'),(339,'Can delete account setting',82,'delete_accountsetting'),(340,'Can view account setting',82,'view_accountsetting'),(341,'Can add feedback',83,'add_feedback'),(342,'Can change feedback',83,'change_feedback'),(343,'Can delete feedback',83,'delete_feedback'),(344,'Can view feedback',83,'view_feedback'),(345,'Can add notification',84,'add_notification'),(346,'Can change notification',84,'change_notification'),(347,'Can delete notification',84,'delete_notification'),(348,'Can view notification',84,'view_notification'),(349,'Can add near by amenities',85,'add_nearbyamenities'),(350,'Can change near by amenities',85,'change_nearbyamenities'),(351,'Can delete near by amenities',85,'delete_nearbyamenities'),(352,'Can view near by amenities',85,'view_nearbyamenities'),(353,'Can add rental near by amenities',86,'add_rentalnearbyamenities'),(354,'Can change rental near by amenities',86,'change_rentalnearbyamenities'),(355,'Can delete rental near by amenities',86,'delete_rentalnearbyamenities'),(356,'Can view rental near by amenities',86,'view_rentalnearbyamenities');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:10
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (5,'pbkdf2_sha256$390000$CokTq2eWrCt8zAOxzztS7Z$Iv9Rp8iSxDE2rDI8wNdPmW5WUhIGRbHMRtqvnGTM5eI=','2023-06-03 13:03:33.936305',1,'admin','Aman','Rajput','demon@gmail.com',1,1,'2022-10-11 14:06:52.000000'),(11,'pbkdf2_sha256$390000$2Lh390w6RPCu3NwQL3GDth$M/70AlAUPasasC0g9Ey51g7aMCsBtoSPsOGbHFCryAY=','2023-03-20 12:20:40.638674',1,'ezbz','Aman','Rajput','ezbz@gmail.com',1,1,'2022-10-27 17:37:04.000000'),(14,'pbkdf2_sha256$390000$GjiiQjNU1bPxmF2sEQdcMv$zam8SY0klBcew3FR2q2NFWK6gng0vhpP3jOrKPnkRWU=','2023-01-11 14:55:00.819690',0,'david','David','Warner','warner@gmail.com',0,1,'2022-12-28 19:12:21.208011'),(16,'Abd@1102',NULL,0,'abd','AB','Deviliers','mr360@gmail.com',0,1,'2022-12-28 19:44:17.660718'),(17,'Maxi@1102',NULL,0,'maxi','Glen','Maxwell','maxi@gmail.com',0,1,'2022-12-28 19:45:11.006810'),(18,'pbkdf2_sha256$390000$nWEq4f1nrlBf1IqXraNNKx$PwHsBxSHZwjEVFMFYoaYlMjsxkS+WI0s5Qejl+PnLDc=','2022-12-28 19:58:18.704072',0,'faf','Faf','Duplesis','faf@gmail.com',0,1,'2022-12-28 19:49:55.507624'),(24,'pbkdf2_sha256$390000$mZwduxzXg4t1gGoYJGSibn$vGtUgPURGtE7t2y9RoIH/4NaTjINJv5Z6RZ0yoZej64=',NULL,0,'raiizaada','Aman','Rajput','amanrajput110298@gmail.com',0,0,'2023-02-03 14:33:02.594177');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:15
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:10
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (23,5,1),(24,5,2),(25,5,3),(26,5,4),(27,5,5),(28,5,6),(29,5,7),(30,5,8),(31,5,9),(32,5,10),(33,5,11),(34,5,12),(35,5,13),(36,5,14),(37,5,15),(38,5,16),(39,5,17),(40,5,18),(41,5,19),(42,5,20),(43,5,21),(44,5,22),(45,5,23),(46,5,24),(47,5,25),(48,5,26),(49,5,27),(50,5,28),(51,5,29),(52,5,30),(53,5,31),(54,5,32),(55,5,33),(56,5,34),(57,5,35),(58,5,36),(59,5,37),(60,5,38),(61,5,39),(62,5,40),(63,5,41),(64,5,42),(65,5,43),(66,5,44),(67,5,45),(68,5,46),(69,5,47),(70,5,48),(71,5,49),(72,5,50),(73,5,51),(74,5,52),(75,5,53),(76,5,54),(77,5,55),(78,5,56),(79,5,57),(80,5,58),(81,5,59),(82,5,60),(83,5,61),(84,5,62),(85,5,63),(86,5,64),(87,5,65),(88,5,66),(89,5,67),(90,5,68),(91,5,69),(92,5,70),(93,5,71),(94,5,72),(95,5,73),(96,5,74),(97,5,75),(98,5,76),(99,5,77),(100,5,78),(101,5,79),(102,5,80),(103,5,81),(104,5,82),(105,5,83),(106,5,84),(107,5,85),(108,5,86),(109,5,87),(110,5,88);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:09
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `bed`
--

DROP TABLE IF EXISTS `bed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bed` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bed`
--

LOCK TABLES `bed` WRITE;
/*!40000 ALTER TABLE `bed` DISABLE KEYS */;
INSERT INTO `bed` VALUES (1,'Baby crib','',1,'2023-01-05 19:40:10.178218','2023-01-05 19:40:10.178218'),(2,'Child bed','',1,'2023-01-05 19:40:23.955674','2023-01-05 19:40:23.955674'),(3,'Double bed','',1,'2023-01-05 19:40:32.749337','2023-01-05 19:40:32.749337'),(4,'Fold-away bed','',1,'2023-01-05 19:40:45.991385','2023-01-05 19:40:45.991385'),(5,'King-size bed','',1,'2023-01-05 19:41:00.183513','2023-01-05 19:41:00.183513'),(6,'Loft bed','',1,'2023-01-05 19:41:08.305477','2023-01-05 19:41:08.305477'),(7,'Queen-size bed','',1,'2023-01-05 19:41:16.625004','2023-01-05 19:41:16.625004'),(8,'Sofa bed','',1,'2023-01-05 19:41:26.281206','2023-01-05 19:41:26.281206'),(9,'Single bed','',1,'2023-01-05 19:41:34.608949','2023-01-05 19:41:34.608949');
/*!40000 ALTER TABLE `bed` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:11
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `be_amenities`
--

DROP TABLE IF EXISTS `be_amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_amenities` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_amenities`
--

LOCK TABLES `be_amenities` WRITE;
/*!40000 ALTER TABLE `be_amenities` DISABLE KEYS */;
INSERT INTO `be_amenities` VALUES (1,'Air Condition',1,5),(2,'Heater',1,5),(3,'Television',1,5),(4,'Microwave',1,5),(5,'Air Condition',1,11);
/*!40000 ALTER TABLE `be_amenities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:12
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `be_booking_information`
--

DROP TABLE IF EXISTS `be_booking_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_booking_information` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `honorific` varchar(25) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` longtext NOT NULL,
  `zip_code` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `notes` longtext NOT NULL,
  `card_holder_name` varchar(100) NOT NULL,
  `credit_card_number` varchar(100) NOT NULL,
  `expiry_month` varchar(100) NOT NULL,
  `expiry_year` varchar(100) NOT NULL,
  `cvv` varchar(100) NOT NULL,
  `check_in` varchar(50) NOT NULL,
  `check_out` varchar(50) NOT NULL,
  `room` varchar(100) NOT NULL,
  `no_of_guest` varchar(20) NOT NULL,
  `no_of_nights` varchar(20) NOT NULL,
  `price` varchar(20) NOT NULL,
  `tax` varchar(20) NOT NULL,
  `total_price` varchar(50) NOT NULL,
  `term_condition` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  `adult` varchar(20) NOT NULL,
  `child` varchar(20) NOT NULL,
  `extra_services` varchar(1000) NOT NULL,
  `room_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_booking_information`
--

LOCK TABLES `be_booking_information` WRITE;
/*!40000 ALTER TABLE `be_booking_information` DISABLE KEYS */;
INSERT INTO `be_booking_information` VALUES (1,'MR','Aman','Rajput','aman@gmail.com','07894561230','Noida','20310','noida','up','-1','Notes','Aman Rajput','1234567894561230','01','2024','012','2023-03-25','2023-03-26','1','3','1','3000','240','NaN',1,5,'1','2','[\'Television,100\', \'AirPort Taxi,1000\']','Smoking Villa');
/*!40000 ALTER TABLE `be_booking_information` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:12
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `be_categories`
--

DROP TABLE IF EXISTS `be_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext,
  `status` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_categories`
--

LOCK TABLES `be_categories` WRITE;
/*!40000 ALTER TABLE `be_categories` DISABLE KEYS */;
INSERT INTO `be_categories` VALUES (1,'Single Bed','',1,5),(2,'Double Bed','',1,5),(3,'Single bed','Single',1,11);
/*!40000 ALTER TABLE `be_categories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:13
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `be_color_palettes`
--

DROP TABLE IF EXISTS `be_color_palettes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_color_palettes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `top_background_colour` varchar(100) NOT NULL,
  `top_font_colour` varchar(100) NOT NULL,
  `footer_background_colour` varchar(100) NOT NULL,
  `footer_font_colour` varchar(100) NOT NULL,
  `user_id` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_color_palettes`
--

LOCK TABLES `be_color_palettes` WRITE;
/*!40000 ALTER TABLE `be_color_palettes` DISABLE KEYS */;
INSERT INTO `be_color_palettes` VALUES (2,'#BC1515','#0C0B0B','#F02A2A','#1F0F0F',5,1);
/*!40000 ALTER TABLE `be_color_palettes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:10
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `be_contact_info`
--

DROP TABLE IF EXISTS `be_contact_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_contact_info` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `telephone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` longtext NOT NULL,
  `user_id` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `copyright_name` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_contact_info`
--

LOCK TABLES `be_contact_info` WRITE;
/*!40000 ALTER TABLE `be_contact_info` DISABLE KEYS */;
INSERT INTO `be_contact_info` VALUES (1,'123456789','bookingengine@gmail.com','<p>hey11</p>',5,1,'ezbz','be_property_logo/logo.ezbz.png'),(2,'7894561230','info@gmail.com','<p><i>Sup Bro</i></p>',11,1,'1','1');
/*!40000 ALTER TABLE `be_contact_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:13
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `be_coupon`
--

DROP TABLE IF EXISTS `be_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_coupon` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `valid_from` datetime(6) NOT NULL,
  `valid_to` datetime(6) NOT NULL,
  `type` varchar(100) NOT NULL,
  `coupon_amount` varchar(200) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `rooms` varchar(2000) NOT NULL,
  `user_id` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_coupon`
--

LOCK TABLES `be_coupon` WRITE;
/*!40000 ALTER TABLE `be_coupon` DISABLE KEYS */;
INSERT INTO `be_coupon` VALUES (1,'ezbzrentals','2023-03-21 00:00:00.000000','2023-03-31 00:00:00.000000','Percentage','10',0,'[\'Smoking Villa\']',5,1);
/*!40000 ALTER TABLE `be_coupon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:13
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `be_extra_services`
--

DROP TABLE IF EXISTS `be_extra_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_extra_services` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `price` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `user_id` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_extra_services`
--

LOCK TABLES `be_extra_services` WRITE;
/*!40000 ALTER TABLE `be_extra_services` DISABLE KEYS */;
INSERT INTO `be_extra_services` VALUES (3,'Television','100','<p>tv</p>',5,1),(4,'Hot Water','50','<p>water</p>',5,1),(5,'Dinner','500','<p>dinner</p>',5,1),(6,'Laundry Services','200','<p>washing</p>',5,1),(7,'AirPort Taxi','1000','<p>Taxi</p>',5,1),(8,'10 Bedrooms','10000','<p>1000 / per room</p>',5,1);
/*!40000 ALTER TABLE `be_extra_services` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:11
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `be_rates`
--

DROP TABLE IF EXISTS `be_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_rates` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `price_per_night` int NOT NULL,
  `description` longtext,
  `status` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  `adults` varchar(100) DEFAULT NULL,
  `children` varchar(100) DEFAULT NULL,
  `rooms_id` bigint NOT NULL,
  `seasons_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `be_rates_rooms_id_45b90932_fk_be_rooms_id` (`rooms_id`),
  KEY `be_rates_seasons_id_0f785ea0_fk_be_seasons_id` (`seasons_id`),
  CONSTRAINT `be_rates_rooms_id_45b90932_fk_be_rooms_id` FOREIGN KEY (`rooms_id`) REFERENCES `be_rooms` (`id`),
  CONSTRAINT `be_rates_seasons_id_0f785ea0_fk_be_seasons_id` FOREIGN KEY (`seasons_id`) REFERENCES `be_seasons` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_rates`
--

LOCK TABLES `be_rates` WRITE;
/*!40000 ALTER TABLE `be_rates` DISABLE KEYS */;
INSERT INTO `be_rates` VALUES (1,'room1',180,'<p>wec</p>',1,5,'3','4',1,1);
/*!40000 ALTER TABLE `be_rates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:17
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `be_reservation`
--

DROP TABLE IF EXISTS `be_reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_reservation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `booking_id` varchar(100) NOT NULL,
  `room_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bookingengine_reservation_room_id_f91e573d_fk_be_rooms_id` (`room_id`),
  KEY `bookingengine_reservation_user_id_f78ed32e_fk_auth_user_id` (`user_id`),
  CONSTRAINT `bookingengine_reservation_room_id_f91e573d_fk_be_rooms_id` FOREIGN KEY (`room_id`) REFERENCES `be_rooms` (`id`),
  CONSTRAINT `bookingengine_reservation_user_id_f78ed32e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_reservation`
--

LOCK TABLES `be_reservation` WRITE;
/*!40000 ALTER TABLE `be_reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_reservation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:12
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_rooms`
--

LOCK TABLES `be_rooms` WRITE;
/*!40000 ALTER TABLE `be_rooms` DISABLE KEYS */;
INSERT INTO `be_rooms` VALUES (1,'Smoking Villa','<p><strong>It is our pleasure to welcome you to Myrel Hotel. Whether you are traveling on business or pleasure, we know you have a variety of hotels to choose from. We strive to provide you a room that is clean and comfortable, with friendly attentive service at a value conscious price.Please Visit.</strong></p><p>&nbsp;</p>','be_rooms/r-architecture-pzMghCq2kS0-unsplash.jpg','3','2','5','100','Sea View',' 2 Double size bed ','3000','[\'Air Condition,True\', \'Heater,True\', \'Television,True\']','Double Bed','Smoking Room',1,5,'2023-03-10 14:07:03.188106','2023-03-27 18:35:25.989818'),(2,'Paradox','<p><strong>Casa Rio Frio River vacation rentals have been servicing the Concan vacation rentals, Texas area in short-term Frio River vacation home rentals since 2009. Our main objective is for our guests to create long-term memories on the Frio while in our Concan cabin rentals or one of our vacation homes in Frio River. We focus on providing a safe setting with the highest standards of cleanliness.</strong></p>','be_rooms/gus-ruballo-h5QNclJUiA8-unsplash.jpg','2','2','2','1000','Sea Facing',' one Double size bed','4500','[\'Air Condition\', \'Heater\', \'Microwave\']','Single Bed','Smoking Room',1,5,'2023-03-13 21:02:42.026881','2023-03-24 16:45:39.230826'),(3,'Villa 76','','be_rooms/r-architecture-pzMghCq2kS0-unsplash_D1eA7lh.jpg','2','1','2','100','Mountain View','Queen size bed','4500','[\'Air Condition\']','Single bed','No Smoking',1,11,'2023-03-20 19:29:23.371122','2023-03-21 20:47:48.647733');
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

-- Dump completed on 2023-06-07  0:43:15
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `be_rooms_gallery`
--

DROP TABLE IF EXISTS `be_rooms_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_rooms_gallery` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `user_id` int NOT NULL,
  `room_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_rooms_gallery`
--

LOCK TABLES `be_rooms_gallery` WRITE;
/*!40000 ALTER TABLE `be_rooms_gallery` DISABLE KEYS */;
INSERT INTO `be_rooms_gallery` VALUES (1,'rooms_gallery/r-architecture-oGmf8o53LeE-unsplash_1.jpg',5,1),(2,'rooms_gallery/andrea-davis-4oapbWR-8ZI-unsplash.jpg',5,1),(3,'rooms_gallery/bernard-hermant-j__9DULAstQ-unsplash.jpg',5,1),(4,'rooms_gallery/r-architecture-oGmf8o53LeE-unsplash.jpg',5,1),(5,'rooms_gallery/roberto-nickson-6FZf3yzuodE-unsplash.jpg',5,1),(6,'rooms_gallery/paul-kapischka-NLbMgDBio4Y-unsplash.jpg',5,1),(7,'rooms_gallery/gus-ruballo-h5QNclJUiA8-unsplash.jpg',5,1),(8,'rooms_gallery/chuttersnap-Ch3WwM6PcsA-unsplash.jpg',5,1),(9,'rooms_gallery/roberto-nickson-so3wgJLwDxo-unsplash.jpg',5,1),(10,'rooms_gallery/brian-babb-XbwHrt87mQ0-unsplash.jpg',5,1),(11,'rooms_gallery/r-architecture-pzMghCq2kS0-unsplash.jpg',5,1),(12,'rooms_gallery/r-architecture-oGmf8o53LeE-unsplash_5PzARrB.jpg',5,2),(13,'rooms_gallery/roberto-nickson-6FZf3yzuodE-unsplash_t1ECZR4.jpg',5,2),(14,'rooms_gallery/paul-kapischka-NLbMgDBio4Y-unsplash_7iFZbb9.jpg',5,2),(15,'rooms_gallery/gus-ruballo-h5QNclJUiA8-unsplash_oTQFSuD.jpg',5,2),(16,'rooms_gallery/chuttersnap-Ch3WwM6PcsA-unsplash_L7c2J9c.jpg',5,2),(17,'rooms_gallery/roberto-nickson-so3wgJLwDxo-unsplash_RuJHeuk.jpg',5,2),(18,'rooms_gallery/brian-babb-XbwHrt87mQ0-unsplash_sM0LHuR.jpg',5,2),(19,'rooms_gallery/r-architecture-pzMghCq2kS0-unsplash_6pJX9XC.jpg',5,2),(20,'rooms_gallery/daria-nepriakhina-LwnIuhH_5Q4-unsplash.jpg',5,2),(21,'rooms_gallery/steven-ungermann-vvah86ql8iM-unsplash.jpg',5,2),(22,'rooms_gallery/andrea-davis-4oapbWR-8ZI-unsplash_wDv09yB.jpg',5,2),(23,'rooms_gallery/bernard-hermant-j__9DULAstQ-unsplash_qEJ1U2S.jpg',5,2);
/*!40000 ALTER TABLE `be_rooms_gallery` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:14
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `be_rooms_image`
--

DROP TABLE IF EXISTS `be_rooms_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_rooms_image` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `room_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rooms_image_room_id_d5989072_fk_be_rooms_id` (`room_id`),
  CONSTRAINT `rooms_image_room_id_d5989072_fk_be_rooms_id` FOREIGN KEY (`room_id`) REFERENCES `be_rooms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_rooms_image`
--

LOCK TABLES `be_rooms_image` WRITE;
/*!40000 ALTER TABLE `be_rooms_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_rooms_image` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:11
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `be_room_additional_details`
--

DROP TABLE IF EXISTS `be_room_additional_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_room_additional_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `checkin_time` varchar(100) NOT NULL,
  `checkout_time` varchar(100) NOT NULL,
  `user_id` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_room_additional_details`
--

LOCK TABLES `be_room_additional_details` WRITE;
/*!40000 ALTER TABLE `be_room_additional_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_room_additional_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:15
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `be_seasons`
--

DROP TABLE IF EXISTS `be_seasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_seasons` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `start_date` varchar(100) NOT NULL,
  `end_date` varchar(100) NOT NULL,
  `applied_for_days` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_seasons`
--

LOCK TABLES `be_seasons` WRITE;
/*!40000 ALTER TABLE `be_seasons` DISABLE KEYS */;
INSERT INTO `be_seasons` VALUES (1,'Summer','10 Mar, 2023','31 Oct, 2023','[\'Mon\', \'Tue\', \'Wed\', \'Thu\', \'Fri\']',1,5),(2,'Winter','01 Nov, 2023','29 Feb, 2024','[\'Sun\', \'Mon\', \'Tue\', \'Wed\', \'Thu\', \'Fri\', \'Sat\']',1,5);
/*!40000 ALTER TABLE `be_seasons` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:16
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `be_services`
--

DROP TABLE IF EXISTS `be_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_services` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `periodicity` varchar(200) NOT NULL,
  `charge` varchar(200) NOT NULL,
  `featured_image` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_services`
--

LOCK TABLES `be_services` WRITE;
/*!40000 ALTER TABLE `be_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_services` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:10
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `be_social_media`
--

DROP TABLE IF EXISTS `be_social_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_social_media` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `facebook` varchar(200) DEFAULT NULL,
  `twitter` varchar(200) DEFAULT NULL,
  `linkedin` varchar(200) DEFAULT NULL,
  `instagram` varchar(200) DEFAULT NULL,
  `youtube` varchar(200) DEFAULT NULL,
  `user_id` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_social_media`
--

LOCK TABLES `be_social_media` WRITE;
/*!40000 ALTER TABLE `be_social_media` DISABLE KEYS */;
INSERT INTO `be_social_media` VALUES (1,'facebook.com','twitter.com','linkedin.comm','instagram.co','youtube.co',5,1),(8,'facebook.in','twitter.in','linkedin.in','instagram.in','youtube.in',11,0);
/*!40000 ALTER TABLE `be_social_media` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:17
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `be_tags`
--

DROP TABLE IF EXISTS `be_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext,
  `status` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_tags`
--

LOCK TABLES `be_tags` WRITE;
/*!40000 ALTER TABLE `be_tags` DISABLE KEYS */;
INSERT INTO `be_tags` VALUES (1,'No smoking','',1,5),(2,'Smoking Room','',1,5),(3,'No Smoking','SMoking not allowed',1,11);
/*!40000 ALTER TABLE `be_tags` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:12
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `be_tax`
--

DROP TABLE IF EXISTS `be_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_tax` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `amount` varchar(200) DEFAULT NULL,
  `per_adult` varchar(200) DEFAULT NULL,
  `per_child` varchar(200) DEFAULT NULL,
  `limit` varchar(200) NOT NULL,
  `include` tinyint(1) NOT NULL,
  `rooms` varchar(2000) NOT NULL,
  `user_id` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_tax`
--

LOCK TABLES `be_tax` WRITE;
/*!40000 ALTER TABLE `be_tax` DISABLE KEYS */;
INSERT INTO `be_tax` VALUES (4,'Accomodation Tax','Per accommodation (%)','8','','','0',1,'[\'Smoking Villa\', \'Paradox\']',5,1);
/*!40000 ALTER TABLE `be_tax` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:14
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `be_term&condition`
--

DROP TABLE IF EXISTS `be_term&condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_term&condition` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `user_id` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_term&condition`
--

LOCK TABLES `be_term&condition` WRITE;
/*!40000 ALTER TABLE `be_term&condition` DISABLE KEYS */;
INSERT INTO `be_term&condition` VALUES (1,'Policies','<p><strong>Check-In Time:</strong> Check-in time is from 2.30 pm till midnight. A valid ID is required for check-in.</p><p><strong>Check-Out Time:</strong> Check-out time is 10:30 am: If an extension of this time is necessary, please check with front desk. Failure to contact the Front Desk before check-out time will result in additional charges.</p><p><strong>Age Restriction:</strong> Guests must be 21 years or older to rent a room. Minors must be accompanied by an adult at all times while on property.</p><p><strong>Checks/Deposit:</strong> We do not accept check for room payments. A credit/debit card or cash is required.</p><p><strong>Cancellation:</strong> The reservation cancellation must be canceled prior to 24 hours. Failure to meet this requirement will be subject to the cancellation fee. Please contact to the property at 208-587-2783 prior to this cancellation deadline for assistance with cancelling your reservation.</p><p><strong>No Pets Allowed:</strong> Out of consideration for guests with allergies or sensitivities to pets we maintains a pet-free environment. Animals, birds as well as aquatic animals are not allowed at property. The possession of each pet can cost $300.</p><p><strong>Children:</strong> Children of 6 years and above will be considered as adult at our property.</p><p><strong>Smoking:</strong> Smoking is not allowed inside and outside the rooms to maintain smoke-free environment. However, smoking is allowed in the designated area in the corner of the building. Smoking outside designated area can cost $200.</p><p><strong>Deposit of Valuables:</strong> Please help us protect your property. We suggest that you do not leave any valuables, such as jewelry, cash, traveler’s checks, securities, etc. in your room. We cannot assume responsibility for any missing articles.</p><p><strong>Damage to Room:</strong> Damage to rooms, fixtures, furnishing and equipment including the removal of electronic equipment (if applicable), towels, artwork, etc. will be charged a fee for replacement and labor. Any damage to motel property, whether accidental or willful, is the responsibility of the registered guest for each particular room. Any costs associated with repairs and/or replacement will be charged to the credit card of the registered guest.</p><p><strong>Damage to Mattresses and Bedding:</strong> Damage to mattresses and linen including; towels, mattress pads, sheets, bedspreads, blankets resulting from the use of body oils, make-up, shoe-polish, etc. will result in a charge for the special cleaning, repair or replacement of the damaged article.</p><p><strong>WiFi:</strong> We offer free WiFi to all guests as a courtesy. A guest’s access may be restricted or halted at any time, at the staff’s discretion, due to excessive or inappropriate internet usage.</p><p>Failure to comply with manager or staff direction and instruction at any time may result in a guest being asked to leave.</p>',5,1);
/*!40000 ALTER TABLE `be_term&condition` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:14
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `be_widgets`
--

DROP TABLE IF EXISTS `be_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_widgets` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_widgets`
--

LOCK TABLES `be_widgets` WRITE;
/*!40000 ALTER TABLE `be_widgets` DISABLE KEYS */;
INSERT INTO `be_widgets` VALUES (1,'COMPANY INFO','<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius tellus vitae justo blandit ultrices.</strong></p>',1,5);
/*!40000 ALTER TABLE `be_widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:14
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `rental_id` varchar(100) NOT NULL,
  `booking_type` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `check_in` datetime(6) NOT NULL,
  `check_out` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `channel` varchar(100) DEFAULT NULL,
  `address` longtext,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(15) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `postal_code` int NOT NULL,
  `state` varchar(50) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (15,'90','Manual','aman@gmail.com','2023-06-06 12:50:00.000000','2023-06-08 00:00:00.000000',1,NULL,'Noida','Noida','India','Aman','Rajput','1234567890',201308,'Up',5),(16,'89','Manual','john@gmail.com','2023-06-06 23:41:00.000000','2023-06-17 23:41:00.000000',0,NULL,'Noida','Noida','India','JOHN','Kim','1234567890',201308,'Up',5);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:11
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `calendar`
--

DROP TABLE IF EXISTS `calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calendar` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `rental_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `calendar_user_id_df07bae8_fk_auth_user_id` (`user_id`),
  CONSTRAINT `calendar_user_id_df07bae8_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar`
--

LOCK TABLES `calendar` WRITE;
/*!40000 ALTER TABLE `calendar` DISABLE KEYS */;
INSERT INTO `calendar` VALUES (9,1,0,'2022-12-26 17:17:36.242269','2022-12-26 17:17:36.242269','Booked for Aman','Offline','2022-12-26 22:47:00.000000','2022-12-31 22:47:00.000000',50,5);
/*!40000 ALTER TABLE `calendar` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:12
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
INSERT INTO `channel` VALUES (18,'Airbnb','channels/airbnb.png','\"\"','2023-01-06 19:49:49.894073','2023-05-05 13:30:08.953030',1,1),(19,'Booking.com','channels/booking.png','','2023-01-06 19:50:16.580030','2023-01-06 19:50:16.581622',1,0),(20,'VRBO','channels/vrbo.png','\"\"\"\"','2023-01-06 19:50:31.466355','2023-05-05 16:45:12.980910',1,0),(21,'Expedia','channels/Expedia.png','','2023-01-06 19:50:47.785069','2023-01-06 19:50:47.785069',1,0),(22,'TripAdvisor','channels/tripadvisor.png','','2023-01-06 19:51:06.047191','2023-01-06 19:51:06.047191',1,0),(23,'Rentberry','channels/rentberry.png','\"\"','2023-01-06 19:51:22.192928','2023-05-05 13:30:36.685497',1,1),(24,'Cozycozy','channels/cozycozy.png','\"\"','2023-01-06 19:51:37.373416','2023-05-05 13:30:30.965072',1,1),(25,'Egencia','channels/egencia.png','','2023-01-06 19:51:57.228703','2023-01-06 19:51:57.228703',1,0),(26,'Fewo-direkt','channels/fewo.png','','2023-01-06 19:52:14.652088','2023-01-06 19:52:14.652088',1,0),(27,'FlipKey','channels/flipkey.png','','2023-01-06 19:52:31.941498','2023-01-06 19:52:31.941498',1,0),(28,'holidu','channels/holidu.png','','2023-01-06 19:52:49.011118','2023-01-06 19:52:49.011118',1,0),(29,'Hometogo','channels/home-to-go.png','\"\"','2023-01-06 19:53:12.648439','2023-05-05 13:30:56.382514',1,1),(30,'Home & Villas by Marriott International','channels/home-villas_4iQFhxa.png','','2023-01-06 19:54:47.795501','2023-01-06 19:54:47.795501',1,0),(31,'Hotels.com','channels/hotels.png','','2023-01-06 19:55:13.047009','2023-01-06 19:55:13.047009',1,0),(32,'hotwire','channels/hotwire.png','','2023-01-06 19:55:33.944557','2023-01-06 19:55:33.944557',1,0),(33,'HouseTrip','channels/housetrip.png','','2023-01-06 19:55:50.921959','2023-01-06 19:55:50.921959',1,0),(34,'Hyperguest','channels/hyperguest.png','','2023-01-06 19:56:09.223254','2023-01-06 19:56:09.223254',1,0),(35,'Lastminute.au','channels/lastminut.png','','2023-01-06 19:56:37.606316','2023-01-06 19:56:37.606316',1,0),(36,'Locasun','channels/locasun.png','','2023-01-06 19:56:50.497738','2023-01-06 19:56:50.497738',1,0),(37,'Orbitz','channels/orbitz.png','','2023-01-06 19:57:02.160368','2023-01-06 19:57:02.160368',1,0),(38,'Stayz','channels/stayz.png','','2023-01-06 19:57:14.650660','2023-01-06 19:57:14.650660',1,0),(39,'Trip.com','channels/trip.png','','2023-01-06 19:57:34.770642','2023-01-06 19:57:34.770642',1,0),(40,'trivago','channels/trivago.png','','2023-01-06 19:57:58.675904','2023-01-06 19:57:58.675904',1,0),(41,'Tui Villas','channels/tui-villas.png','','2023-01-06 19:58:17.229939','2023-01-06 19:58:17.229939',1,0),(42,'e-domizil','channels/e-domizil.png','','2023-01-06 19:59:50.980339','2023-01-06 19:59:50.980339',1,0);
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

-- Dump completed on 2023-06-07  0:43:16
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `company_profile`
--

DROP TABLE IF EXISTS `company_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_profile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `company_name` varchar(100) NOT NULL,
  `company_logo` varchar(100) NOT NULL,
  `company_email` varchar(100) DEFAULT NULL,
  `company_tel` varchar(15) NOT NULL,
  `company_address` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_profile`
--

LOCK TABLES `company_profile` WRITE;
/*!40000 ALTER TABLE `company_profile` DISABLE KEYS */;
INSERT INTO `company_profile` VALUES (4,'Apex Websoft','company/logo_rgqW0bP.png','calendar@gmail.com','07303699947','Noida');
/*!40000 ALTER TABLE `company_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:15
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `code` varchar(200) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `country_code` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'India','IN','2022-12-27 21:19:45.845662','2023-01-05 13:51:44.221485',1,'91'),(2,'Afghanistan','AF','2022-12-28 13:30:08.316793','2023-01-05 13:54:20.170231',1,'93'),(3,'Albania','AL','2022-12-28 13:30:19.619877','2023-01-05 13:52:35.716838',1,'355'),(4,'Algeria','DZ','2022-12-28 13:30:31.707682','2023-01-05 13:52:45.316089',1,'213'),(5,'American Samoa','	AS','2022-12-28 13:30:49.340253','2023-01-05 13:52:54.582743',1,'	1-684'),(6,'Andorra','	AD','2022-12-28 13:32:01.493462','2023-01-05 13:53:04.083778',1,'376'),(7,'Angola','AO','2022-12-28 13:34:45.205585','2023-01-05 13:53:13.587680',1,'244'),(8,'Anguilla','AI','2022-12-28 13:35:27.626516','2023-01-05 13:53:23.758330',1,'1-264'),(9,'Antarctica','AQ','2022-12-28 13:35:36.032952','2023-01-05 13:53:33.867038',1,'672'),(10,'Antigua and Barbuda','AG','2022-12-28 13:35:51.499699','2023-01-05 13:53:42.074418',1,'1-268'),(11,'Argentina','AR','2022-12-28 13:36:02.421143','2023-01-05 13:53:54.427535',1,'54'),(12,'Armenia',' 	AM','2022-12-28 13:36:11.089625','2023-01-05 13:54:13.069233',1,'	374'),(13,'Aruba','AW','2022-12-28 13:36:25.206900','2023-01-05 13:54:43.665201',1,'297'),(14,'Australia','AU','2022-12-28 13:36:33.489025','2023-01-05 15:35:36.449008',1,'61'),(15,'Austria',' 	AT','2022-12-28 13:36:42.196729','2023-01-05 15:36:20.605245',1,'43'),(16,'Azerbaijan',' 	AZ','2022-12-28 13:36:50.030980','2023-01-05 15:36:33.888181',1,'994'),(17,'Bahamas (the)',' 	BS','2022-12-28 13:36:59.214620','2023-01-05 15:36:47.079660',1,'1-242'),(18,'Bahrain',' 	BH','2022-12-28 13:37:08.177237','2023-01-05 15:37:08.162610',1,'973'),(19,'Bangladesh','BD','2022-12-28 13:37:30.472311','2023-01-05 15:38:02.648104',1,'880'),(20,'Barbados','BB','2022-12-28 13:37:39.848755','2023-01-05 15:38:19.063068',1,'	1-246'),(21,'Belarus',' 	BY','2022-12-28 13:37:51.740034','2023-01-05 15:38:29.399881',1,'	375'),(22,'Belgium','BE','2022-12-28 13:38:02.329881','2023-01-05 15:39:14.195033',1,'32'),(23,'Belize','	501','2022-12-28 13:38:12.516694','2023-01-05 15:39:27.533377',1,'None'),(24,'Benin',' 	BJ','2022-12-28 13:38:20.025588','2023-01-05 15:39:40.774340',1,'229'),(25,'Bermuda',' 	BM','2022-12-28 13:38:29.505036','2023-01-05 15:39:51.615235',1,'1441'),(26,'Bhutan','BT','2022-12-28 13:38:37.734268','2023-01-05 15:40:02.008674',1,'975'),(27,'Bolivia (Plurinational State of)',' 	BO','2022-12-28 13:38:50.492795','2023-01-05 15:40:18.901562',1,'591'),(28,'Bonaire, Sint Eustatius and Saba','BQ','2022-12-28 13:38:59.081729','2022-12-28 13:38:59.081729',1,NULL),(29,'Bosnia and Herzegovina',' 	BA','2022-12-28 13:39:07.177673','2023-01-05 15:40:27.943578',1,'387'),(30,'Botswana',' 	BW','2022-12-28 13:39:16.442988','2023-01-05 15:40:41.035155',1,'267'),(31,'Bouvet Island',' 	BV','2022-12-28 13:39:23.983506','2022-12-28 13:39:23.983506',1,NULL),(32,'Brazil',' 	BR','2022-12-28 13:39:33.096908','2023-01-05 15:41:09.257019',1,'55'),(33,'British Indian Ocean Territory (the)',' 	IO','2022-12-28 13:39:43.500829','2023-01-05 15:41:19.928970',1,'246'),(34,' Brunei Darussalam',' 	BN','2022-12-28 13:39:57.296888','2023-01-05 15:42:00.153866',1,'	673'),(35,'Bulgaria',' 	BG','2022-12-28 13:40:24.902330','2023-01-05 15:42:13.353680',1,'359'),(36,'Burkina Faso',' 	BF','2022-12-28 13:40:32.572004','2023-01-05 15:42:44.157680',1,'226'),(37,'Burundi','BI','2022-12-28 13:40:57.565573','2023-01-05 15:42:58.786101',1,'257'),(38,'Cabo Verde','CV','2022-12-28 13:41:05.462640','2022-12-28 13:41:05.462640',1,NULL),(39,'Cambodia',' 	KH','2022-12-28 13:41:13.049126','2023-01-05 15:43:18.478383',1,'855'),(40,'Cameroon','CM','2022-12-28 13:41:22.818868','2023-01-05 15:43:36.100799',1,'237'),(41,'Canada','CA','2022-12-28 13:41:31.138058','2023-01-05 15:43:44.425338',1,'1'),(42,'Cayman Islands (the)',' 	KY','2022-12-28 13:41:41.084324','2023-01-05 15:44:14.528522',1,'1345'),(43,'Central African Republic (the)','CF','2022-12-28 13:41:50.186353','2023-01-05 15:44:25.264814',1,'236'),(44,'Chad',' 	TD','2022-12-28 13:41:59.144683','2023-01-05 15:44:32.264013',1,'235'),(45,'Chile',' 	CL','2022-12-28 13:42:07.736734','2023-01-05 15:44:47.414130',1,'56'),(46,'China',' 	CN','2022-12-28 13:42:21.191024','2023-01-05 15:44:57.216978',1,'86'),(47,'Christmas Island',' 	CX','2022-12-28 13:42:30.085270','2023-01-05 15:45:06.879990',1,'61'),(48,'Cocos (Keeling) Islands (the)',' 	CC','2022-12-28 13:42:44.844485','2023-01-05 15:45:22.789146',1,'61'),(49,'Colombia',' 	CO','2022-12-28 13:42:53.079380','2023-01-05 15:45:44.439591',1,'57'),(50,'Comoros (the)',' 	KM','2022-12-28 13:43:01.568470','2023-01-05 15:45:57.505937',1,'269'),(51,'Congo (the Democratic Republic of the)','CD','2022-12-28 13:43:10.185329','2022-12-28 13:43:10.185329',1,NULL),(52,'Congo (the)',' 	CG','2022-12-28 13:43:17.953146','2023-01-05 16:50:29.785072',1,'	242'),(53,'Cook Islands (the)','CK','2022-12-28 13:43:24.947369','2023-01-05 15:46:09.425301',1,'682'),(54,'Costa Rica',' 	CR','2022-12-28 13:43:32.681638','2023-01-05 15:46:26.798629',1,'506'),(55,'Croatia',' 	HR','2022-12-28 13:43:40.827081','2023-01-05 15:46:45.870736',1,'385'),(56,'Cuba','CU','2022-12-28 13:44:01.303007','2023-01-05 15:47:02.161685',1,'53'),(57,'Curaçao',' 	CW','2022-12-28 13:44:10.367535','2023-01-05 15:47:14.649074',1,'599'),(58,'Cyprus',' 	CY','2022-12-28 13:44:19.442077','2023-01-05 15:47:24.873164',1,'357'),(59,'Czechia',' 	CZ','2022-12-28 13:44:27.070954','2023-01-05 15:55:19.947635',1,'420'),(60,'Côte d\'Ivoire',' 	CI','2022-12-28 13:44:34.175008','2023-01-05 16:13:35.545631',1,'225'),(61,'Denmark',' 	DK','2022-12-28 13:44:42.390837','2023-01-05 15:55:40.584975',1,'45'),(62,'Djibouti','DJ','2022-12-28 13:44:54.020015','2023-01-05 15:56:05.660389',1,'253'),(63,'Dominica',' 	DM','2022-12-28 13:45:02.645033','2023-01-05 15:56:21.746615',1,'1767'),(64,'Dominican Republic (the)',' 	DO','2022-12-28 13:45:11.081243','2023-01-05 15:56:37.765671',1,'1-809, 1-829, 1-849'),(65,'Ecuador',' 	EC','2022-12-28 13:45:19.118618','2023-01-05 15:57:00.678427',1,'593'),(66,'Egypt',' 	EG','2022-12-28 13:45:27.285193','2023-01-05 15:57:14.120384',1,'20'),(67,'El Salvador',' 	SV','2022-12-28 13:45:39.711865','2023-01-05 15:57:25.329738',1,'503'),(68,'Equatorial Guinea','GQ','2022-12-28 13:45:48.831160','2023-01-05 15:57:37.447371',1,'240'),(69,'Eritrea','ER','2022-12-28 13:45:59.285511','2023-01-05 15:57:55.245203',1,'291'),(70,'Estonia',' 	EE','2022-12-28 13:46:08.255317','2023-01-05 15:58:06.851320',1,'372'),(71,'Eswatini',' 	SZ','2022-12-28 13:46:17.085209','2023-01-05 16:57:00.265495',1,'268'),(72,'Ethiopia',' 	ET','2022-12-28 13:46:25.745155','2023-01-05 15:58:16.262755',1,'251'),(73,'Falkland Islands (the) [Malvinas]','FK','2022-12-28 13:46:35.104259','2023-01-05 15:59:52.400105',1,'500'),(74,'Faroe Islands (the)','FO','2022-12-28 13:46:42.498015','2023-01-05 16:00:29.136937',1,'298'),(75,'Fiji',' 	FJ','2022-12-28 13:46:50.604850','2023-01-05 16:01:11.277135',1,'679'),(76,'Finland',' 	FI','2022-12-28 13:46:59.211155','2023-01-05 16:03:58.867763',1,'358'),(77,'France',' 	FR','2022-12-28 13:47:27.634584','2023-01-05 16:04:11.218535',1,'33'),(78,'French Guiana',' 	GF','2022-12-28 13:47:42.037829','2022-12-28 13:47:42.037829',1,NULL),(79,'French Polynesia',' 	PF','2022-12-28 13:47:53.455131','2023-01-05 16:04:32.547086',1,'689'),(80,'French Southern Territories (the)','French Southern Territories (the)','2022-12-28 13:48:04.765760','2022-12-28 13:48:04.765760',1,NULL),(81,'Gabon','GA','2022-12-28 13:48:16.255826','2023-01-05 16:05:17.229409',1,'241'),(82,'Gambia (the)',' 	GM','2022-12-28 13:48:24.605818','2023-01-05 16:05:33.447815',1,'220'),(83,'Georgia',' 	GE','2022-12-28 13:48:32.662574','2023-01-05 16:05:49.291983',1,'995'),(84,'Germany',' 	DE','2022-12-28 13:48:46.716207','2023-01-05 16:05:58.257642',1,'49'),(85,'Ghana','GH','2022-12-28 13:48:54.838725','2023-01-05 16:06:12.178997',1,'233'),(86,'Gibraltar',' 	GI','2022-12-28 13:49:03.011513','2023-01-05 16:06:31.695115',1,'350'),(87,'Greece','GR','2022-12-28 13:49:10.988159','2023-01-05 16:06:41.610789',1,'30'),(88,'Greenland','GL','2022-12-28 13:49:21.015329','2023-01-05 16:06:57.862640',1,'299'),(89,'Grenada',' 	GD','2022-12-28 13:49:34.668889','2023-01-05 16:09:52.753548',1,'1473'),(90,'Guadeloupe',' 	GP','2022-12-28 13:49:43.848771','2022-12-28 13:49:43.848771',1,NULL),(91,'Guam','GU','2022-12-28 13:49:52.579270','2023-01-05 16:10:02.131691',1,'1671'),(92,'Guatemala','GT','2022-12-28 13:50:04.587272','2023-01-05 16:10:11.558317',1,'502'),(93,'Guernsey',' 	GG','2022-12-28 13:50:13.219066','2023-01-05 16:10:21.657871',1,'	44-1481'),(94,'Guinea','GN','2022-12-28 13:50:21.517088','2023-01-05 16:10:38.007231',1,'	224'),(95,'Guinea-Bissau',' 	GW','2022-12-28 13:50:30.668049','2023-01-05 16:10:54.776825',1,'245'),(96,'Guyana','GY','2022-12-28 13:50:47.692494','2023-01-05 16:11:04.641152',1,'592'),(97,'Haiti',' 	HT','2022-12-28 13:50:56.676863','2023-01-05 16:11:13.173668',1,'509'),(98,'Heard Island and McDonald Islands',' 	HM','2022-12-28 13:51:05.826541','2022-12-28 13:51:05.826541',1,NULL),(99,'Holy See (the)',' 	VA','2022-12-28 13:51:15.850381','2022-12-28 13:51:15.850381',1,NULL),(100,'Honduras',' 	HN','2022-12-28 13:51:29.985348','2023-01-05 16:11:28.588197',1,'504'),(101,'Hong Kong',' 	HK','2022-12-28 13:51:40.534670','2023-01-05 16:11:37.044225',1,'852'),(102,'Hungary',' 	HU','2022-12-28 13:51:48.083121','2023-01-05 16:11:45.999029',1,'36'),(103,'Iceland',' 	IS','2022-12-28 13:51:56.989988','2023-01-05 16:11:55.790648',1,'	354'),(104,'Indonesia',' 	ID','2022-12-28 13:52:07.308011','2023-01-05 16:12:11.676173',1,'	62'),(105,'Iran (Islamic Republic of)','IR','2022-12-28 13:52:19.104817','2023-01-05 16:12:21.035819',1,'98'),(106,'Iraq',' 	IQ','2022-12-28 13:52:32.027953','2023-01-05 16:12:28.825987',1,'	964'),(107,'Ireland',' 	IE','2022-12-28 13:52:41.627514','2023-01-05 16:12:38.546190',1,'	353'),(108,'Isle of Man',' 	IM','2022-12-28 13:52:49.358529','2023-01-05 16:12:53.324923',1,'44-1624'),(109,'Israel',' 	IL','2022-12-28 13:52:59.050741','2023-01-05 16:13:12.678552',1,'	972'),(110,'Italy','IT','2022-12-28 13:53:08.066856','2023-01-05 16:13:22.857364',1,'	39'),(111,'Jamaica',' 	JM','2022-12-28 13:53:26.271363','2023-01-05 16:13:45.401118',1,'	1-876'),(112,'Japan',' 	JP','2022-12-28 13:53:48.747216','2023-01-05 16:13:53.244091',1,'	81'),(113,'Jersey',' 	JE','2022-12-28 13:53:58.034469','2023-01-05 16:14:03.528262',1,'	44-1534'),(114,'Jordan',' 	JO','2022-12-28 13:54:07.918054','2023-01-05 16:14:11.222147',1,'	962'),(115,'Kazakhstan','KZ','2022-12-28 14:16:42.436334','2023-01-05 16:14:18.875932',1,'7'),(116,'Kenya','KE','2022-12-28 14:16:50.707692','2023-01-05 16:14:28.692936',1,'	254'),(117,'Kiribati','KI','2022-12-28 14:16:59.578569','2023-01-05 16:14:48.003686',1,'686'),(118,'Korea (the Democratic People\'s Republic of)','KP','2022-12-28 14:17:07.897479','2023-01-05 16:46:44.597454',1,'	850'),(119,'Korea (the Republic of)',' 	KR','2022-12-28 14:17:14.964010','2023-01-05 16:55:42.840897',1,'82'),(120,'Kuwait',' 	KW','2022-12-28 14:17:22.818580','2023-01-05 16:15:16.673715',1,'965'),(121,'Kyrgyzstan',' 	KG','2022-12-28 14:17:30.773676','2023-01-05 16:15:27.206330',1,'	996'),(122,'Lao People\'s Democratic Republic (the)',' 	LA','2022-12-28 14:17:39.453977','2023-01-05 16:15:38.555810',1,'856'),(123,'Latvia',' 	LV','2022-12-28 14:17:46.826353','2023-01-05 16:15:49.659077',1,'	371'),(124,'Lebanon',' 	LB','2022-12-28 14:18:01.435290','2023-01-05 16:16:03.657056',1,'961'),(125,'Lesotho',' 	LS','2022-12-28 14:18:09.456476','2023-01-05 16:16:19.880608',1,'266'),(126,'Liberia',' 	LR','2022-12-28 14:18:20.726082','2023-01-05 16:16:33.872699',1,'	231'),(127,'Libya',' 	LY','2022-12-28 14:18:28.389140','2023-01-05 16:16:43.193529',1,'	218'),(128,'Liechtenstein',' 	LI','2022-12-28 14:18:36.875876','2023-01-05 16:17:23.062665',1,'423'),(129,'Lithuania','LT','2022-12-28 14:18:44.201004','2023-01-05 16:17:32.429404',1,'	370'),(130,'Luxembourg',' 	LU','2022-12-28 14:18:53.062297','2023-01-05 16:17:41.616314',1,'352'),(131,'Macao',' 	MO','2022-12-28 14:19:04.280349','2023-01-05 16:17:56.539615',1,'853'),(132,'Madagascar',' 	MG','2022-12-28 14:19:10.208182','2023-01-05 16:18:18.554652',1,'261'),(133,'Malawi','MW','2022-12-28 14:19:17.243949','2023-01-05 16:18:43.669825',1,'265'),(134,'Malaysia',' 	MY','2022-12-28 14:19:35.273755','2023-01-05 16:18:52.443375',1,'	60'),(135,'Maldives',' 	MV','2022-12-28 14:19:47.899469','2023-01-05 16:19:10.357902',1,'960'),(136,'Mali','ML','2022-12-28 14:19:55.009972','2023-01-05 16:19:20.163563',1,'223'),(137,'Malta',' 	MT','2022-12-28 14:20:01.977603','2023-01-05 16:19:28.063378',1,'	356'),(138,'Marshall Islands (the)',' 	MH','2022-12-28 14:20:09.276002','2023-01-05 16:19:37.737893',1,'692'),(139,'Martinique',' 	MQ','2022-12-28 14:20:17.321443','2022-12-28 14:20:17.321443',1,NULL),(140,'Mauritania',' 	MR','2022-12-28 14:22:36.072373','2023-01-05 16:19:49.188501',1,'	222'),(141,'Mauritius','MU','2022-12-28 14:22:55.526608','2023-01-05 16:19:59.960325',1,'	230'),(142,'Mayotte',' 	YT','2022-12-28 14:23:52.080413','2023-01-05 16:20:11.399061',1,'	262'),(143,'Mexico','MX','2022-12-28 14:24:03.096272','2023-01-05 16:20:22.459724',1,'	52'),(144,'Micronesia (Federated States of)','FM','2022-12-28 14:24:12.060520','2023-01-05 16:20:34.326214',1,'691'),(145,'Moldova (the Republic of)',' 	MD','2022-12-28 14:43:00.008386','2022-12-28 14:43:00.008386',1,NULL),(146,'Monaco','MC','2022-12-28 14:43:09.512054','2023-01-05 16:20:53.025128',1,'377'),(147,'Mongolia',' 	MN','2022-12-28 14:43:19.003008','2023-01-05 16:21:03.726810',1,'976'),(148,'Montenegro','ME','2022-12-28 14:43:27.375193','2023-01-05 16:21:44.927598',1,'382'),(149,'Montserrat',' 	MS','2022-12-28 14:43:39.007650','2023-01-05 16:23:02.480761',1,'	1-664'),(150,'Morocco',' 	MA','2022-12-28 14:43:46.420578','2023-01-05 16:23:20.352105',1,'	212'),(151,'Mozambique',' 	MZ','2022-12-28 14:43:54.734069','2023-01-05 16:24:00.582704',1,'	258'),(152,'Myanmar','MM','2022-12-28 14:44:11.662622','2023-01-05 16:24:10.521952',1,'95'),(153,'Namibia',' 	NA','2022-12-28 14:44:18.941802','2023-01-05 16:30:35.636834',1,'264'),(154,'Nauru',' 	NR','2022-12-28 14:44:27.263446','2023-01-05 16:30:51.390253',1,'674'),(155,'Nepal',' 	NP','2022-12-28 14:44:42.199977','2023-01-05 16:31:07.766917',1,'977'),(156,'Netherlands (the)',' 	NL','2022-12-28 14:44:50.069925','2023-01-05 16:44:19.064536',1,'31'),(157,'New Caledonia',' 	NC','2022-12-28 14:44:57.193307','2023-01-05 16:44:35.808826',1,'	687'),(158,'New Zealand','NZ','2022-12-28 14:45:07.485572','2023-01-05 16:44:43.305871',1,'	64'),(159,'Nicaragua',' 	NI','2022-12-28 14:45:15.912379','2023-01-05 16:44:52.995908',1,'	505'),(160,'Niger (the)','NE','2022-12-28 14:45:25.790750','2023-01-05 16:45:21.739464',1,'227'),(161,'Nigeria',' 	NG','2022-12-28 14:45:35.023031','2023-01-05 16:46:11.646797',1,'234'),(162,'Niue','NU','2022-12-28 14:45:42.425742','2023-01-05 16:46:19.718317',1,'683'),(163,'Norfolk Island',' 	NF','2022-12-28 14:45:50.266339','2022-12-28 14:45:50.266339',1,NULL),(164,'Northern Mariana Islands (the)','MP','2022-12-28 14:46:05.628556','2023-01-05 16:46:55.642854',1,'	1-670'),(165,'Norway',' 	NO','2022-12-28 14:46:15.232674','2023-01-05 16:47:03.628339',1,'	47'),(166,'Oman',' 	OM','2022-12-28 14:46:28.143431','2023-01-05 16:48:12.543257',1,'	968'),(167,'Pakistan',' 	PK','2022-12-28 14:46:37.760920','2023-01-05 16:48:23.243339',1,'	92'),(168,'Palau',' 	PW','2022-12-28 14:46:45.894401','2023-01-05 16:48:32.075272',1,'680'),(169,'Palestine, State of',' 	PS','2022-12-28 14:46:55.212710','2023-01-05 16:48:44.057868',1,'	970'),(170,'Panama',' 	PA','2022-12-28 14:47:08.083007','2023-01-05 16:48:52.891945',1,'	507'),(171,'Papua New Guinea',' 	PG','2022-12-28 14:47:15.891994','2023-01-05 16:49:02.754432',1,'675'),(172,'Paraguay',' 	PY','2022-12-28 14:47:22.733896','2023-01-05 16:49:11.974343',1,'	595'),(173,'Peru',' 	PE','2022-12-28 14:47:33.857035','2023-01-05 16:49:27.905146',1,'	51'),(174,'Philippines (the)',' 	PH','2022-12-28 14:47:41.907558','2023-01-05 16:49:37.645449',1,'63'),(175,'Pitcairn',' 	PN','2022-12-28 14:47:49.088608','2023-01-05 16:49:45.859136',1,'	64'),(176,'Poland','PL','2022-12-28 14:48:15.042903','2023-01-05 16:49:52.539727',1,'48'),(177,'Portugal',' 	PT','2022-12-28 14:48:23.341540','2023-01-05 16:50:01.456229',1,'351'),(178,'Puerto Rico',' 	PR','2022-12-28 14:48:33.550729','2023-01-05 16:50:11.763716',1,'	1-787, 1-939'),(179,'Qatar',' 	QA','2022-12-28 14:48:41.342581','2023-01-05 16:50:19.219632',1,'	974'),(180,'Republic of North Macedonia',' 	MK','2022-12-28 14:48:48.129626','2023-01-05 16:18:07.474238',1,'389'),(181,'Romania',' 	RO','2022-12-28 14:48:55.503730','2023-01-05 16:50:55.443662',1,'40'),(182,'Russian Federation (the)',' 	RU','2022-12-28 14:49:04.683998','2023-01-05 16:51:07.281344',1,'7'),(183,'Rwanda',' 	RW','2022-12-28 14:49:12.021648','2023-01-05 16:51:14.404327',1,'	250'),(184,'Réunion',' 	RE','2022-12-28 14:49:20.533780','2022-12-28 14:49:20.533780',1,NULL),(185,'Saint Barthélemy',' 	BL','2022-12-28 14:49:30.432337','2023-01-05 16:51:30.141178',1,'	590'),(186,'Saint Helena, Ascension and Tristan da Cunha',' 	SH','2022-12-28 14:49:38.794950','2023-01-05 16:51:45.308520',1,'	290'),(187,'Saint Kitts and Nevis',' 	KN','2022-12-28 14:49:51.698752','2023-01-05 16:51:56.090914',1,'1-869'),(188,'Saint Lucia','LC','2022-12-28 14:49:59.396927','2023-01-05 16:52:05.776904',1,'1758'),(189,'Saint Martin (French part)',' 	MF','2022-12-28 14:50:11.369417','2023-01-05 16:52:14.114147',1,'590'),(190,'Saint Pierre and Miquelon',' 	PM','2022-12-28 14:50:19.006676','2023-01-05 16:52:23.089717',1,'	508'),(191,'Saint Vincent and the Grenadines',' 	VC','2022-12-28 14:50:26.199924','2023-01-05 16:52:32.787409',1,'	1-784'),(192,'Samoa',' 	WS','2022-12-28 14:50:38.787888','2023-01-05 16:52:40.451341',1,'	685'),(193,'San Marino','SM','2022-12-28 14:50:48.060397','2023-01-05 16:52:50.190890',1,'	378'),(194,'Sao Tome and Principe',' 	ST','2022-12-28 14:50:56.340242','2023-01-05 16:52:58.008978',1,'	239'),(195,'Saudi Arabia',' 	SA','2022-12-28 14:51:04.509342','2023-01-05 16:53:09.776114',1,'966'),(196,'Senegal','SN','2022-12-28 14:51:12.103588','2023-01-05 16:53:20.591358',1,'	221'),(197,'Serbia',' 	RS','2022-12-28 14:51:22.436820','2023-01-05 16:53:28.726467',1,'	381'),(198,'Seychelles',' 	SC','2022-12-28 14:51:34.662521','2023-01-05 16:53:38.612460',1,'	248'),(199,'Sierra Leone',' 	SL','2022-12-28 14:51:47.326070','2023-01-05 16:53:47.730552',1,'	232'),(200,'Singapore',' 	SG','2022-12-28 14:51:55.525186','2023-01-05 16:53:55.475677',1,'	65'),(201,'Sint Maarten (Dutch part)','SX','2022-12-28 14:52:03.073837','2023-01-05 16:54:06.448929',1,'1-721'),(202,'Slovakia','SK','2022-12-28 14:52:12.445887','2023-01-05 16:54:16.249537',1,'421'),(203,'Slovenia',' 	SI','2022-12-28 14:52:24.059297','2023-01-05 16:54:24.745278',1,'	386'),(204,'Solomon Islands','SB','2022-12-28 15:19:23.530147','2023-01-05 16:54:49.224925',1,'	677'),(205,'Somalia',' 	SO','2022-12-28 15:19:30.699416','2023-01-05 16:55:03.448440',1,'252'),(206,'South Africa',' 	ZA','2022-12-28 15:19:42.381144','2023-01-05 16:55:18.086098',1,'	27'),(207,'South Georgia and the South Sandwich Islands',' 	GS','2022-12-28 15:20:02.090628','2022-12-28 15:20:02.090628',1,NULL),(208,'South Sudan',' 	SS','2022-12-28 15:20:10.595885','2023-01-05 16:55:53.423766',1,'	211'),(209,'Spain',' 	ES','2022-12-28 15:20:18.611203','2023-01-05 16:56:02.415839',1,'	34'),(210,'Sri Lanka','LK','2022-12-28 15:21:31.507879','2023-01-05 16:56:10.208742',1,'	94'),(211,'Sudan (the)',' 	SD','2022-12-28 15:21:38.111848','2023-01-05 16:56:21.719240',1,'	249'),(212,'Suriname',' 	SR','2022-12-28 15:21:44.900927','2023-01-05 16:56:30.604353',1,'	597'),(213,'Svalbard and Jan Mayen',' 	SJ','2022-12-28 15:21:52.256860','2023-01-05 16:56:39.574824',1,'	47'),(214,'Sweden',' 	SE','2022-12-28 15:21:58.842817','2023-01-05 16:57:09.709990',1,'46'),(215,'Switzerland','CH','2022-12-28 15:22:07.217685','2023-01-05 16:57:18.113609',1,'	41'),(216,'Syrian Arab Republic',' 	SY','2022-12-28 15:22:13.757039','2023-01-05 16:57:28.389905',1,'963'),(217,'Taiwan (Province of China)',' 	TW','2022-12-28 15:22:21.326691','2023-01-05 16:57:37.043210',1,'	886'),(218,'Tajikistan',' 	TJ','2022-12-28 15:22:28.339786','2023-01-05 16:57:45.642287',1,'	992'),(219,'Tanzania, United Republic of',' 	TZ','2022-12-28 15:22:37.570746','2023-01-05 16:57:54.492676',1,'	255'),(220,'Thailand',' 	TH','2022-12-28 15:22:48.201484','2023-01-05 16:58:02.560595',1,'	66'),(221,'Timor-Leste',' 	TL','2022-12-28 15:22:55.234770','2022-12-28 15:22:55.234770',1,NULL),(222,'Togo',' 	TG','2022-12-28 15:23:02.956818','2023-01-05 16:58:09.558199',1,'	228'),(223,'Tokelau',' 	TK','2022-12-28 15:23:08.779551','2023-01-05 16:58:17.593898',1,'	690'),(224,'Tonga',' 	TO','2022-12-28 15:23:15.155755','2023-01-05 16:58:26.527435',1,'	676'),(225,'Trinidad and Tobago',' 	TT','2022-12-28 15:23:22.588311','2023-01-05 16:58:37.975402',1,'	1-868'),(226,'Tunisia',' 	TN','2022-12-28 15:23:30.698982','2023-01-05 15:54:47.243946',1,'216'),(227,'Turkey','TR','2022-12-28 15:23:37.631728','2023-01-05 15:54:19.995647',1,'90'),(228,'Turkmenistan','TM','2022-12-28 15:23:44.684535','2023-01-05 15:54:14.059319',1,'993'),(229,'Turks and Caicos Islands (the)','TC','2022-12-28 15:23:54.762967','2023-01-05 15:53:54.810006',1,'1649'),(230,'Tuvalu','TV','2022-12-28 15:24:02.179739','2023-01-05 15:53:39.703290',1,'688'),(231,'Uganda','UG','2022-12-28 15:32:04.222822','2023-01-05 15:53:03.607768',1,'256'),(232,'Ukraine','UA','2022-12-28 15:32:11.502709','2023-01-05 15:52:58.202253',1,'380'),(233,'United Arab Emirates (the)','AE','2022-12-28 15:32:18.694819','2023-01-05 15:52:48.813727',1,'971'),(234,'United Kingdom of Great Britain and Northern Ireland (the)','GB','2022-12-28 15:32:26.976111','2023-01-05 15:52:33.858722',1,'44'),(235,'United States Minor Outlying Islands (the)',' 	UM','2022-12-28 15:32:34.472070','2022-12-28 15:32:34.472070',1,NULL),(236,'USA','US','2022-12-28 15:32:42.785653','2023-01-05 15:52:20.525283',1,'1'),(237,'Uruguay','UY','2022-12-28 15:32:49.816783','2023-01-05 15:52:12.187731',1,'598'),(238,'Uzbekistan','UZ','2022-12-28 15:33:02.032826','2023-01-05 15:51:56.538882',1,'998'),(239,'Vanuatu','VU','2022-12-28 15:33:09.270561','2023-01-05 15:51:39.905809',1,'678'),(240,'Venezuela (Bolivarian Republic of)','VE','2022-12-28 15:33:18.340104','2023-01-05 15:51:19.761580',1,'58'),(241,'Viet Nam','VN','2022-12-28 15:33:25.538294','2023-01-05 15:50:16.287731',1,'84'),(242,'Virgin Islands (British)','VG','2022-12-28 15:33:32.253460','2022-12-28 15:33:32.253460',1,NULL),(243,'Virgin Islands (U.S.)','VI','2022-12-28 15:33:38.888234','2023-01-05 15:53:28.731287',1,'1340'),(244,'Wallis and Futuna','WF','2022-12-28 15:33:47.102131','2023-01-05 15:50:02.358197',1,'681'),(245,'Western Sahara','EH','2022-12-28 15:33:53.936613','2023-01-05 15:49:49.647813',1,'212'),(246,'Yemen','YE','2022-12-28 15:34:04.972798','2023-01-05 15:49:43.775662',1,'967'),(247,'Zambia','ZM','2022-12-28 15:34:13.803054','2023-01-05 15:49:36.667857',1,'260'),(248,'Zimbabwe','ZW','2022-12-28 15:34:20.766269','2023-01-05 15:49:17.953591',1,'263'),(249,'Åland Islands',' 	AX','2022-12-28 15:34:29.569025','2022-12-28 15:34:29.569025',1,NULL);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:15
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `symbol` varchar(100) NOT NULL,
  `decimal_place` varchar(100) NOT NULL,
  `currency_value` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (3,'British Pound','GBP','£','2','99.69 Indian Rupee',1,'2022-12-26 21:20:57.520050','2022-12-26 21:20:57.520050'),(4,'Euro','EUR','€','2','87.88',1,'2022-12-26 21:22:27.378195','2022-12-26 21:22:27.378195'),(5,'US Dollar','USD','$','2','82.65',1,'2022-12-26 21:23:21.289264','2022-12-26 21:23:21.289264'),(6,'Danish Krone','DKK','kr','2','11.82',1,'2022-12-26 21:25:55.316023','2022-12-26 21:25:55.316023'),(7,'Norwegian krone','NOK','kr‎','2','8.38',1,'2022-12-26 21:27:25.373533','2022-12-26 21:27:25.373533'),(8,'Swedish Krona','SEK','kr‎','2','7.87 ',1,'2022-12-26 21:28:26.841822','2022-12-26 21:28:26.841822'),(9,'South African Rand','ZAR','R‎','2','0.012',1,'2022-12-26 21:29:52.734805','2022-12-26 21:29:52.734805'),(10,'Swiss Franc','CHF','₣','2','88.70 Indian Rupee',1,'2022-12-26 21:31:52.454593','2022-12-26 21:31:52.454593'),(11,'Indian Rupee','INR','₹','2','1',1,'2022-12-26 21:33:22.766762','2022-12-26 21:33:22.766762');
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:10
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `discounts_name` varchar(100) NOT NULL,
  `discounts_amount` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) NOT NULL,
  `discount_type_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `discount_discount_type_id_186396b3_fk_discount_type_id` (`discount_type_id`),
  CONSTRAINT `discount_discount_type_id_186396b3_fk_discount_type_id` FOREIGN KEY (`discount_type_id`) REFERENCES `discount_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES (7,'Flat offer','200',1,'2022-10-28 13:30:57.493266','2022-10-28 13:30:57.493266',11,1),(10,'Flat offer','200',1,'2022-12-05 17:55:35.320883','2022-12-05 17:55:35.320883',14,5);
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:15
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `discount_type`
--

DROP TABLE IF EXISTS `discount_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `discounttype_name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount_type`
--

LOCK TABLES `discount_type` WRITE;
/*!40000 ALTER TABLE `discount_type` DISABLE KEYS */;
INSERT INTO `discount_type` VALUES (11,'Weekdays Discount',1,'2022-10-27 17:07:01.203094','2022-10-27 17:07:01.203094',1),(14,'Weekend Discounts',1,'2022-11-17 17:21:15.542308','2022-11-17 17:21:25.478467',5),(16,'Weekdays Discount',1,'2022-12-28 15:48:48.143919','2022-12-28 15:48:48.143919',5);
/*!40000 ALTER TABLE `discount_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:14
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=357 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (32,'2022-10-26 10:53:09.368726','16','Paramount',2,'[{\"changed\": {\"fields\": [\"Rental logo\", \"Activities\"]}}]',20,5),(33,'2022-10-26 11:06:09.927703','17','Paramount',1,'[{\"added\": {}}]',20,5),(34,'2022-10-26 11:13:36.278390','18','Paramount',1,'[{\"added\": {}}]',20,5),(35,'2022-10-27 17:36:37.230493','10','eregt',3,'',4,5),(36,'2022-10-27 17:36:37.233628','3','ezbz',3,'',4,5),(37,'2022-10-27 17:36:37.235806','8','ripper',3,'',4,5),(38,'2022-10-27 17:37:04.538408','11','ezbz',1,'[{\"added\": {}}]',4,5),(39,'2022-10-27 17:37:27.276703','11','ezbz',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Superuser status\"]}}]',4,5),(40,'2022-10-29 09:52:57.566929','19','Paramountx',2,'[{\"changed\": {\"fields\": [\"Amenities\", \"Activities\"]}}]',20,5),(41,'2022-10-31 13:18:57.147601','23','Paramountx',2,'[{\"changed\": {\"fields\": [\"Amenities\", \"Activities\"]}}]',20,5),(42,'2022-10-31 13:26:03.252226','10','dfg',2,'[{\"changed\": {\"fields\": [\"User id\"]}}]',10,5),(43,'2022-10-31 18:13:41.401072','26','Paramount',3,'',20,5),(44,'2022-10-31 18:13:41.405963','23','Paramountx',3,'',20,5),(45,'2022-10-31 18:13:41.408307','22','Paramount',3,'',20,5),(46,'2022-10-31 18:13:41.408894','20','Paramount',3,'',20,5),(47,'2022-10-31 18:13:41.411345','19','Paramountx',3,'',20,5),(48,'2022-10-31 18:13:41.414416','18','Paramount',3,'',20,5),(49,'2022-11-02 13:46:12.652027','5','demon',2,'[{\"changed\": {\"fields\": [\"Superuser status\"]}}]',4,5),(50,'2022-11-02 13:46:29.016587','11','5',3,'',27,5),(51,'2022-11-02 13:46:29.016587','10','5',3,'',27,5),(52,'2022-11-02 13:46:29.020947','9','5',3,'',27,5),(53,'2022-11-02 13:46:29.024550','8','5',3,'',27,5),(54,'2022-11-02 13:46:29.026850','7','5',3,'',27,5),(55,'2022-11-02 13:46:29.026850','6','5',3,'',27,5),(56,'2022-11-02 13:46:29.029359','5','5',3,'',27,5),(57,'2022-11-02 13:46:29.030728','4','5',3,'',27,5),(58,'2022-11-02 13:46:29.033414','2','5',3,'',27,5),(59,'2022-11-02 13:46:29.036084','1','5',3,'',27,5),(60,'2022-11-02 13:46:37.948165','30','5',3,'',24,5),(61,'2022-11-02 13:46:37.950444','29','5',3,'',24,5),(62,'2022-11-02 13:46:37.950444','28','5',3,'',24,5),(63,'2022-11-02 13:46:37.956458','27','5',3,'',24,5),(64,'2022-11-02 13:46:37.956968','26','5',3,'',24,5),(65,'2022-11-02 13:46:37.956968','25','5',3,'',24,5),(66,'2022-11-02 13:46:37.956968','24','5',3,'',24,5),(67,'2022-11-02 13:46:37.964811','23','5',3,'',24,5),(68,'2022-11-02 13:46:37.966652','22','5',3,'',24,5),(69,'2022-11-02 13:46:37.966652','21','5',3,'',24,5),(70,'2022-11-02 13:46:37.973165','20','5',3,'',24,5),(71,'2022-11-02 13:46:37.973165','19','5',3,'',24,5),(72,'2022-11-02 13:46:37.973165','18','5',3,'',24,5),(73,'2022-11-02 13:46:37.973165','17','5',3,'',24,5),(74,'2022-11-02 13:46:37.981699','16','5',3,'',24,5),(75,'2022-11-02 13:46:37.982454','15','5',3,'',24,5),(76,'2022-11-02 13:46:37.982454','14','5',3,'',24,5),(77,'2022-11-02 13:46:37.982454','13','5',3,'',24,5),(78,'2022-11-02 13:46:37.989464','12','5',3,'',24,5),(79,'2022-11-02 13:46:37.989464','11','5',3,'',24,5),(80,'2022-11-02 13:46:37.989464','10','5',3,'',24,5),(81,'2022-11-02 13:46:37.989464','9','5',3,'',24,5),(82,'2022-11-02 13:46:37.997475','8','5',3,'',24,5),(83,'2022-11-02 13:46:37.997475','7','5',3,'',24,5),(84,'2022-11-02 13:46:37.997475','6','5',3,'',24,5),(85,'2022-11-02 13:46:37.997475','5','5',3,'',24,5),(86,'2022-11-02 13:46:38.005469','4','5',3,'',24,5),(87,'2022-11-02 13:46:38.005469','3','5',3,'',24,5),(88,'2022-11-02 13:46:38.005469','2','5',3,'',24,5),(89,'2022-11-02 13:46:38.005469','1','5',3,'',24,5),(90,'2022-11-02 13:46:47.217646','3','5',3,'',26,5),(91,'2022-11-02 13:46:47.223731','2','5',3,'',26,5),(92,'2022-11-02 13:46:47.223731','1','5',3,'',26,5),(93,'2022-11-02 14:10:09.856959','29','Paramount',1,'[{\"added\": {}}]',20,5),(94,'2022-11-04 11:55:17.627010','4','rentals-gallery/logo.png',2,'[{\"changed\": {\"fields\": [\"Rental\"]}}]',25,5),(95,'2022-11-07 15:54:36.311349','4','Rajput',1,'[{\"added\": {}}]',7,5),(96,'2022-11-10 11:07:21.665146','4','Aman',1,'[{\"added\": {}}]',17,5),(97,'2022-11-10 11:08:32.453330','5','Immy',1,'[{\"added\": {}}]',17,5),(98,'2022-11-10 11:12:25.503675','6','Aman',1,'[{\"added\": {}}]',17,5),(99,'2022-11-15 14:29:04.510594','1','2022-11-15',1,'[{\"added\": {}}]',29,5),(100,'2022-11-15 16:14:03.623689','1','2022-11-15',3,'',29,5),(101,'2022-11-15 17:25:08.594412','7','Aman',1,'[{\"added\": {}}]',17,5),(102,'2022-11-15 17:53:19.452654','7','Aman',3,'',17,5),(103,'2022-11-15 17:53:19.458975','6','Aman',3,'',17,5),(104,'2022-11-15 17:53:19.458975','5','Immy',3,'',17,5),(105,'2022-11-15 17:53:19.461896','4','Aman',3,'',17,5),(106,'2022-11-15 17:54:51.131705','8','Aman',1,'[{\"added\": {}}]',17,5),(107,'2022-11-16 17:48:54.093104','9','Aman',1,'[{\"added\": {}}]',17,5),(108,'2022-11-17 13:07:49.670382','9','Aman',2,'[{\"changed\": {\"fields\": [\"User id\"]}}]',17,5),(109,'2022-11-17 13:52:55.155801','10','Aman',1,'[{\"added\": {}}]',17,5),(110,'2022-11-17 13:53:25.597979','11','Aman',1,'[{\"added\": {}}]',17,5),(111,'2022-12-06 22:50:36.483332','9','rentals-gallery/tierra-mallorca-rgJ1J8SDEAY-unsplash.jpg',1,'[{\"added\": {}}]',25,5),(112,'2022-12-08 15:23:35.176272','9','rentals-gallery/tierra-mallorca-rgJ1J8SDEAY-unsplash.jpg',3,'',25,5),(113,'2022-12-08 15:23:35.182272','8','',3,'',25,5),(114,'2022-12-08 15:23:35.184962','7','',3,'',25,5),(115,'2022-12-08 15:23:35.188516','6','',3,'',25,5),(116,'2022-12-08 15:23:35.188516','5','',3,'',25,5),(117,'2022-12-08 15:23:35.194230','4','rentals-gallery/logo.png',3,'',25,5),(118,'2022-12-08 15:23:35.196953','3','',3,'',25,5),(119,'2022-12-08 16:18:44.126842','10','rentals-gallery/add-room.png',1,'[{\"added\": {}}]',25,5),(120,'2022-12-08 17:02:10.556640','10','rentals-gallery/add-room.png',3,'',25,5),(121,'2022-12-08 17:06:12.545801','12','',3,'',25,5),(122,'2022-12-08 17:06:12.548456','11','',3,'',25,5),(123,'2022-12-08 17:12:36.667936','16','rentals-gallery/logo.png',1,'[{\"added\": {}}]',25,5),(124,'2022-12-08 17:18:02.711207','18','',3,'',25,5),(125,'2022-12-08 17:18:02.716186','17','',3,'',25,5),(126,'2022-12-08 17:18:02.717932','15','',3,'',25,5),(127,'2022-12-08 17:18:02.719933','14','',3,'',25,5),(128,'2022-12-08 17:18:02.721746','13','',3,'',25,5),(129,'2022-12-08 17:30:26.005821','21','rentals-gallery/WIN_20221208_22_55_37_Pro.mp4',3,'',25,5),(130,'2022-12-08 20:34:16.193906','36','rentals-gallery/7c9d95e8-0e02-4fa6-8f47-de20da0d4061.avif',3,'',25,5),(131,'2022-12-08 20:34:16.201823','35','rentals-gallery/Hosthub-04-Bookings.png',3,'',25,5),(132,'2022-12-08 20:34:16.202920','34','rentals-gallery/images.jpg',3,'',25,5),(133,'2022-12-08 20:34:16.204864','33','rentals-gallery/13465.ics',3,'',25,5),(134,'2022-12-08 20:34:16.206057','32','rentals-gallery/13465_1.ics',3,'',25,5),(135,'2022-12-08 20:34:16.207876','31','rentals-gallery/219988_8zwq18v.png',3,'',25,5),(136,'2022-12-08 20:34:16.210627','30','rentals-gallery/219988_cekoBLa.png',3,'',25,5),(137,'2022-12-08 20:34:16.214496','29','rentals-gallery/tierra-mallorca-rgJ1J8SDEAY-unsplash_03g2hOh.jpg',3,'',25,5),(138,'2022-12-08 20:34:16.214496','28','rentals-gallery/tierra-mallorca-rgJ1J8SDEAY-unsplash_P7Owlym.jpg',3,'',25,5),(139,'2022-12-08 20:34:16.216608','27','rentals-gallery/219988.png',3,'',25,5),(140,'2022-12-08 20:34:16.217923','26','rentals-gallery/add-room_q07Sm11.png',3,'',25,5),(141,'2022-12-08 20:34:16.219648','25','rentals-gallery/taylor-heery-ZGw3t1Hd10c-unsplash.jpg',3,'',25,5),(142,'2022-12-08 20:34:16.221480','24','rentals-gallery/keith-luke-GUAcpXPyFRc-unsplash.jpg',3,'',25,5),(143,'2022-12-08 20:34:16.221480','23','rentals-gallery/marisol-benitez-Os8IuLEsSJU-unsplash.jpg',3,'',25,5),(144,'2022-12-08 20:34:16.226230','22','rentals-gallery/66-661092_png-file-upload-image-icon-png-transparent-png.png',3,'',25,5),(145,'2022-12-08 20:34:16.226230','20','rentals-gallery/add-room_t2r4oR1.png',3,'',25,5),(146,'2022-12-08 20:34:16.229545','19','rentals-gallery/booking.png',3,'',25,5),(147,'2022-12-08 20:34:16.229545','16','rentals-gallery/logo.png',3,'',25,5),(148,'2022-12-08 20:40:50.019120','37','rentals-gallery/219988_DKxRBKm.png',1,'[{\"added\": {}}]',25,5),(149,'2022-12-08 20:41:37.369438','37','rentals-gallery/219988_DKxRBKm.png',3,'',25,5),(150,'2022-12-08 20:43:39.417321','38','rentals-gallery/219988_zNhaEZa.png',1,'[{\"added\": {}}]',25,5),(151,'2022-12-08 20:55:47.826224','39','rentals-gallery/tierra-mallorca-rgJ1J8SDEAY-unsplash_xECrDVq.jpg',1,'[{\"added\": {}}]',25,5),(152,'2022-12-08 21:17:54.928059','39','rentals-gallery/tierra-mallorca-rgJ1J8SDEAY-unsplash_xECrDVq.jpg',3,'',25,5),(153,'2022-12-08 21:17:54.935547','38','rentals-gallery/219988_zNhaEZa.png',3,'',25,5),(154,'2022-12-08 21:57:40.248472','50','rentals-gallery/13465_4q8V5Fg.ics',3,'',25,5),(155,'2022-12-08 21:57:40.253604','49','rentals-gallery/13465_1_qzyPsSr.ics',3,'',25,5),(156,'2022-12-08 21:57:57.201969','43','rentals-gallery/taylor-heery-ZGw3t1Hd10c-unsplash_hPKvlSj.jpg',3,'',25,5),(157,'2022-12-14 16:25:50.343888','34','ChannelManagement object (34)',3,'',33,5),(158,'2022-12-14 16:25:50.347964','33','ChannelManagement object (33)',3,'',33,5),(159,'2022-12-14 16:25:50.348871','32','ChannelManagement object (32)',3,'',33,5),(160,'2022-12-14 16:25:50.350937','31','ChannelManagement object (31)',3,'',33,5),(161,'2022-12-14 16:25:50.351861','30','ChannelManagement object (30)',3,'',33,5),(162,'2022-12-14 16:25:50.352934','29','ChannelManagement object (29)',3,'',33,5),(163,'2022-12-14 16:25:50.354853','28','ChannelManagement object (28)',3,'',33,5),(164,'2022-12-14 16:25:50.357952','27','ChannelManagement object (27)',3,'',33,5),(165,'2022-12-14 16:25:50.359041','25','ChannelManagement object (25)',3,'',33,5),(166,'2022-12-14 16:25:50.362172','24','ChannelManagement object (24)',3,'',33,5),(167,'2022-12-14 16:25:50.364138','23','ChannelManagement object (23)',3,'',33,5),(168,'2022-12-14 16:25:50.365512','22','ChannelManagement object (22)',3,'',33,5),(169,'2022-12-14 16:25:50.366961','21','ChannelManagement object (21)',3,'',33,5),(170,'2022-12-14 16:25:50.368307','20','ChannelManagement object (20)',3,'',33,5),(171,'2022-12-14 16:25:50.369310','19','ChannelManagement object (19)',3,'',33,5),(172,'2022-12-14 16:25:50.369310','18','ChannelManagement object (18)',3,'',33,5),(173,'2022-12-14 16:25:50.373588','17','ChannelManagement object (17)',3,'',33,5),(174,'2022-12-14 16:25:50.374572','16','ChannelManagement object (16)',3,'',33,5),(175,'2022-12-14 16:25:50.375576','12','ChannelManagement object (12)',3,'',33,5),(176,'2022-12-14 16:25:50.376937','11','ChannelManagement object (11)',3,'',33,5),(177,'2022-12-14 16:25:50.377964','10','ChannelManagement object (10)',3,'',33,5),(178,'2022-12-14 16:25:50.379051','9','ChannelManagement object (9)',3,'',33,5),(179,'2022-12-14 16:25:50.380120','8','ChannelManagement object (8)',3,'',33,5),(180,'2022-12-14 16:25:50.381074','7','ChannelManagement object (7)',3,'',33,5),(181,'2022-12-14 16:25:50.382093','6','ChannelManagement object (6)',3,'',33,5),(182,'2022-12-14 16:25:50.382987','5','ChannelManagement object (5)',3,'',33,5),(183,'2022-12-14 16:25:50.383778','4','ChannelManagement object (4)',3,'',33,5),(184,'2022-12-14 16:25:50.384802','3','ChannelManagement object (3)',3,'',33,5),(185,'2022-12-14 16:25:50.385806','2','ChannelManagement object (2)',3,'',33,5),(186,'2022-12-20 14:17:20.578891','1','sfgvb',1,'[{\"added\": {}}]',35,5),(187,'2022-12-20 14:22:59.160932','2','Booked',1,'[{\"added\": {}}]',35,5),(188,'2022-12-20 19:41:40.099596','5','vhvhmn',1,'[{\"added\": {}}]',35,5),(189,'2022-12-21 16:17:15.493416','5','Offline',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',35,5),(190,'2022-12-21 16:17:56.437665','5','Offline',2,'[{\"changed\": {\"fields\": [\"Start time\", \"End time\"]}}]',35,5),(191,'2022-12-23 14:29:14.744387','1','Basic plan',1,'[{\"added\": {}}]',36,5),(192,'2022-12-23 14:29:57.488698','2','Premium Plan',1,'[{\"added\": {}}]',36,5),(193,'2022-12-25 22:35:34.386161','1','apex',3,'',22,5),(194,'2022-12-26 13:46:46.247488','12','Delux Pro Max',1,'[{\"added\": {}}]',11,5),(195,'2022-12-26 13:50:56.485275','45','egfrg',1,'[{\"added\": {}}]',20,5),(196,'2022-12-26 17:06:58.024198','8','hhjb hhh',3,'',35,5),(197,'2022-12-26 17:06:58.029044','7','etg5r',3,'',35,5),(198,'2022-12-26 17:06:58.031363','6','Booked for Aman',3,'',35,5),(199,'2022-12-26 17:06:58.031363','5','Offline',3,'',35,5),(200,'2022-12-26 17:06:58.036238','4','Booked For john',3,'',35,5),(201,'2022-12-26 17:07:07.595861','85','rentals-gallery/steven-ungermann-vvah86ql8iM-unsplash.jpg',3,'',25,5),(202,'2022-12-26 17:07:07.598660','84','rentals-gallery/daria-nepriakhina-LwnIuhH_5Q4-unsplash.jpg',3,'',25,5),(203,'2022-12-26 17:07:07.600990','83','rentals-gallery/r-architecture-pzMghCq2kS0-unsplash.jpg',3,'',25,5),(204,'2022-12-26 17:07:07.603156','82','rentals-gallery/brian-babb-XbwHrt87mQ0-unsplash.jpg',3,'',25,5),(205,'2022-12-26 17:07:07.605657','81','rentals-gallery/roberto-nickson-so3wgJLwDxo-unsplash.jpg',3,'',25,5),(206,'2022-12-26 17:07:07.607389','80','rentals-gallery/chuttersnap-Ch3WwM6PcsA-unsplash.jpg',3,'',25,5),(207,'2022-12-26 17:07:07.608924','79','rentals-gallery/gus-ruballo-h5QNclJUiA8-unsplash.jpg',3,'',25,5),(208,'2022-12-26 17:07:07.610033','78','rentals-gallery/paul-kapischka-NLbMgDBio4Y-unsplash.jpg',3,'',25,5),(209,'2022-12-26 17:07:07.611204','77','rentals-gallery/roberto-nickson-6FZf3yzuodE-unsplash.jpg',3,'',25,5),(210,'2022-12-26 17:07:07.612376','76','rentals-gallery/r-architecture-oGmf8o53LeE-unsplash.jpg',3,'',25,5),(211,'2022-12-26 17:07:07.612376','75','rentals-gallery/bernard-hermant-j__9DULAstQ-unsplash_VLgAnvs.jpg',3,'',25,5),(212,'2022-12-26 17:07:07.616809','74','rentals-gallery/andrea-davis-4oapbWR-8ZI-unsplash_v2V7Rjx.jpg',3,'',25,5),(213,'2022-12-26 17:07:07.618259','73','rentals-gallery/r-architecture-oGmf8o53LeE-unsplash_1_FzkMmNZ.jpg',3,'',25,5),(214,'2022-12-26 17:07:07.619774','72','rentals-gallery/gustavo-zambelli-nEvzSXBIhiU-unsplash_yZQp9ij.jpg',3,'',25,5),(215,'2022-12-26 17:07:07.620918','71','rentals-gallery/bernard-hermant-g9ydDMdpfM0-unsplash_aUvSMGY.jpg',3,'',25,5),(216,'2022-12-26 17:07:07.622411','70','rentals-gallery/r-architecture-cJeTNtkfpDA-unsplash_6ULWqT5.jpg',3,'',25,5),(217,'2022-12-26 17:07:07.623454','69','rentals-gallery/bernard-hermant-j__9DULAstQ-unsplash.jpg',3,'',25,5),(218,'2022-12-26 17:07:07.624514','68','rentals-gallery/andrea-davis-4oapbWR-8ZI-unsplash.jpg',3,'',25,5),(219,'2022-12-26 17:07:07.625552','67','rentals-gallery/r-architecture-oGmf8o53LeE-unsplash_1.jpg',3,'',25,5),(220,'2022-12-26 17:07:07.626593','66','rentals-gallery/gustavo-zambelli-nEvzSXBIhiU-unsplash.jpg',3,'',25,5),(221,'2022-12-26 17:07:07.627933','65','rentals-gallery/bernard-hermant-g9ydDMdpfM0-unsplash.jpg',3,'',25,5),(222,'2022-12-26 17:07:07.629027','64','rentals-gallery/r-architecture-cJeTNtkfpDA-unsplash.jpg',3,'',25,5),(223,'2022-12-26 17:07:07.630032','63','rentals-gallery/tierra-mallorca-rgJ1J8SDEAY-unsplash_M0tjAbJ.jpg',3,'',25,5),(224,'2022-12-26 17:07:07.632825','62','rentals-gallery/7c9d95e8-0e02-4fa6-8f47-de20da0d4061_JYgKkDQ.avif',3,'',25,5),(225,'2022-12-26 17:07:07.634752','61','rentals-gallery/Hosthub-04-Bookings_vPIzpDA.png',3,'',25,5),(226,'2022-12-26 17:07:07.636451','60','rentals-gallery/images_OVcJmuM.jpg',3,'',25,5),(227,'2022-12-26 17:07:07.637609','59','rentals-gallery/taylor-heery-ZGw3t1Hd10c-unsplash_IKdQA1W.jpg',3,'',25,5),(228,'2022-12-26 17:07:07.638657','58','rentals-gallery/Hosthub-04-Bookings_UwOYmOW.png',3,'',25,5),(229,'2022-12-26 17:07:07.639730','57','rentals-gallery/7c9d95e8-0e02-4fa6-8f47-de20da0d4061_FlkhJX0.avif',3,'',25,5),(230,'2022-12-26 17:07:07.640997','56','rentals-gallery/Hosthub-04-Bookings_Nby06el.png',3,'',25,5),(231,'2022-12-26 17:07:07.642310','55','rentals-gallery/images_KbJrlRb.jpg',3,'',25,5),(232,'2022-12-26 17:07:07.643433','54','rentals-gallery/add-room_t17EWpL.png',3,'',25,5),(233,'2022-12-26 17:07:07.644491','53','rentals-gallery/booking_R4DNiaY.png',3,'',25,5),(234,'2022-12-26 17:07:07.645518','52','rentals-gallery/keith-luke-GUAcpXPyFRc-unsplash_vbByR0D.jpg',3,'',25,5),(235,'2022-12-26 17:07:07.646539','51','rentals-gallery/add-room_9bcz3gU.png',3,'',25,5),(236,'2022-12-26 17:07:07.647778','48','rentals-gallery/images_GHcVtf3.jpg',3,'',25,5),(237,'2022-12-26 17:07:07.648851','47','rentals-gallery/tierra-mallorca-rgJ1J8SDEAY-unsplash_XmPuvk4.jpg',3,'',25,5),(238,'2022-12-26 17:07:07.649931','46','rentals-gallery/booking_dfi0lcR.png',3,'',25,5),(239,'2022-12-26 17:07:07.650947','45','rentals-gallery/219988_fp7Bfo4.png',3,'',25,5),(240,'2022-12-26 17:07:07.654411','44','rentals-gallery/219988_iHx65KW.png',3,'',25,5),(241,'2022-12-26 17:07:07.655794','42','rentals-gallery/tierra-mallorca-rgJ1J8SDEAY-unsplash_yNNBVtC.jpg',3,'',25,5),(242,'2022-12-26 17:07:07.656878','41','rentals-gallery/219988_Q6PUgqD.png',3,'',25,5),(243,'2022-12-26 17:07:07.657950','40','rentals-gallery/booking_w6LED9S.png',3,'',25,5),(244,'2022-12-28 16:46:20.744497','17','RESORT PARADISE',1,'[{\"added\": {}}]',8,5),(245,'2022-12-28 16:46:56.926395','12','Aman',1,'[{\"added\": {}}]',17,5),(246,'2023-01-02 14:49:10.074714','108','rentals-gallery/r-architecture-cJeTNtkfpDA-unsplash_ubrHq3v.jpg',3,'',25,5),(247,'2023-01-02 14:49:10.080001','107','rentals-gallery/paul-kapischka-NLbMgDBio4Y-unsplash_rSTvvGa.jpg',3,'',25,5),(248,'2023-01-02 14:49:10.082097','106','rentals-gallery/r-architecture-cJeTNtkfpDA-unsplash_06nbZJH.jpg',3,'',25,5),(249,'2023-01-02 14:49:10.083792','105','rentals-gallery/gustavo-zambelli-nEvzSXBIhiU-unsplash_7NgRaYo.jpg',3,'',25,5),(250,'2023-01-02 14:49:10.086051','104','rentals-gallery/r-architecture-pzMghCq2kS0-unsplash.jpg',3,'',25,5),(251,'2023-01-02 14:49:10.088808','103','rentals-gallery/favicon.png',3,'',25,5),(252,'2023-01-02 14:49:10.090892','102','rentals-gallery/chuttersnap-Ch3WwM6PcsA-unsplash_uflVkDY.jpg',3,'',25,5),(253,'2023-01-02 14:49:10.093374','101','rentals-gallery/marisol-benitez-Os8IuLEsSJU-unsplash.jpg',3,'',25,5),(254,'2023-01-02 14:49:10.096036','100','rentals-gallery/add-room.png',3,'',25,5),(255,'2023-01-02 14:49:10.098361','99','rentals-gallery/booking.png',3,'',25,5),(256,'2023-01-02 14:49:10.100962','98','rentals-gallery/roberto-nickson-6FZf3yzuodE-unsplash_VxrmkR2.jpg',3,'',25,5),(257,'2023-01-02 14:49:10.103528','97','rentals-gallery/r-architecture-oGmf8o53LeE-unsplash.jpg',3,'',25,5),(258,'2023-01-02 14:49:10.105831','96','rentals-gallery/bernard-hermant-j__9DULAstQ-unsplash.jpg',3,'',25,5),(259,'2023-01-02 14:49:10.108559','95','rentals-gallery/andrea-davis-4oapbWR-8ZI-unsplash.jpg',3,'',25,5),(260,'2023-01-02 14:49:10.110970','94','rentals-gallery/r-architecture-oGmf8o53LeE-unsplash_1_1YkzMlD.jpg',3,'',25,5),(261,'2023-01-02 14:49:10.112964','93','rentals-gallery/chuttersnap-Ch3WwM6PcsA-unsplash.jpg',3,'',25,5),(262,'2023-01-02 14:49:10.115444','92','rentals-gallery/gus-ruballo-h5QNclJUiA8-unsplash.jpg',3,'',25,5),(263,'2023-01-02 14:49:10.118115','91','rentals-gallery/paul-kapischka-NLbMgDBio4Y-unsplash.jpg',3,'',25,5),(264,'2023-01-02 14:49:10.120531','89','rentals-gallery/r-architecture-oGmf8o53LeE-unsplash_1.jpg',3,'',25,5),(265,'2023-01-02 14:49:10.123343','88','rentals-gallery/gustavo-zambelli-nEvzSXBIhiU-unsplash.jpg',3,'',25,5),(266,'2023-01-02 14:49:10.125530','87','rentals-gallery/bernard-hermant-g9ydDMdpfM0-unsplash.jpg',3,'',25,5),(267,'2023-01-02 14:49:10.128648','86','rentals-gallery/r-architecture-cJeTNtkfpDA-unsplash.jpg',3,'',25,5),(268,'2023-01-04 15:31:32.425894','57','Aman Rajput',3,'',20,5),(269,'2023-01-04 15:31:32.431374','56','Aman Rajput',3,'',20,5),(270,'2023-01-04 15:31:32.432940','55','Aman Rajput',3,'',20,5),(271,'2023-01-04 16:37:22.903080','64','Aman Rajput',3,'',20,5),(272,'2023-01-04 16:37:22.908369','63','Aman Rajput',3,'',20,5),(273,'2023-01-04 16:37:22.908369','62','Aman Rajput',3,'',20,5),(274,'2023-01-04 16:37:22.911619','61','Aman Rajput',3,'',20,5),(275,'2023-01-04 16:37:22.915921','60','Aman Rajput',3,'',20,5),(276,'2023-01-04 16:37:22.918336','59','Aman Rajput',3,'',20,5),(277,'2023-01-04 16:37:22.919495','58','Aman Rajput',3,'',20,5),(278,'2023-01-05 15:49:07.513786','248','Zimbabwe',2,'[{\"changed\": {\"fields\": [\"Code\", \"Country code\"]}}]',38,5),(279,'2023-01-05 15:49:11.123513','248','Zimbabwe',2,'[]',38,5),(280,'2023-01-05 15:49:17.955819','248','Zimbabwe',2,'[]',38,5),(281,'2023-01-05 15:49:36.669993','247','Zambia',2,'[{\"changed\": {\"fields\": [\"Code\", \"Country code\"]}}]',38,5),(282,'2023-01-05 15:49:43.778122','246','Yemen',2,'[{\"changed\": {\"fields\": [\"Code\", \"Country code\"]}}]',38,5),(283,'2023-01-05 15:49:49.651051','245','Western Sahara',2,'[{\"changed\": {\"fields\": [\"Code\", \"Country code\"]}}]',38,5),(284,'2023-01-05 15:50:02.362048','244','Wallis and Futuna',2,'[{\"changed\": {\"fields\": [\"Country code\"]}}]',38,5),(285,'2023-01-05 15:50:16.287731','241','Viet Nam',2,'[{\"changed\": {\"fields\": [\"Country code\"]}}]',38,5),(286,'2023-01-05 15:51:19.764883','240','Venezuela (Bolivarian Republic of)',2,'[{\"changed\": {\"fields\": [\"Country code\"]}}]',38,5),(287,'2023-01-05 15:51:39.908122','239','Vanuatu',2,'[{\"changed\": {\"fields\": [\"Code\", \"Country code\"]}}]',38,5),(288,'2023-01-05 15:51:56.541880','238','Uzbekistan',2,'[{\"changed\": {\"fields\": [\"Country code\"]}}]',38,5),(289,'2023-01-05 15:52:12.188824','237','Uruguay',2,'[{\"changed\": {\"fields\": [\"Code\", \"Country code\"]}}]',38,5),(290,'2023-01-05 15:52:20.527788','236','United States of America (the)',2,'[{\"changed\": {\"fields\": [\"Code\", \"Country code\"]}}]',38,5),(291,'2023-01-05 15:52:33.864274','234','United Kingdom of Great Britain and Northern Ireland (the)',2,'[{\"changed\": {\"fields\": [\"Code\", \"Country code\"]}}]',38,5),(292,'2023-01-05 15:52:48.819066','233','United Arab Emirates (the)',2,'[{\"changed\": {\"fields\": [\"Code\", \"Country code\"]}}]',38,5),(293,'2023-01-05 15:52:58.204129','232','Ukraine',2,'[{\"changed\": {\"fields\": [\"Country code\"]}}]',38,5),(294,'2023-01-05 15:53:03.607768','231','Uganda',2,'[{\"changed\": {\"fields\": [\"Country code\"]}}]',38,5),(295,'2023-01-05 15:53:28.734292','243','Virgin Islands (U.S.)',2,'[{\"changed\": {\"fields\": [\"Code\", \"Country code\"]}}]',38,5),(296,'2023-01-05 15:53:39.707625','230','Tuvalu',2,'[{\"changed\": {\"fields\": [\"Code\", \"Country code\"]}}]',38,5),(297,'2023-01-05 15:53:54.813603','229','Turks and Caicos Islands (the)',2,'[{\"changed\": {\"fields\": [\"Code\", \"Country code\"]}}]',38,5),(298,'2023-01-05 15:54:14.060509','228','Turkmenistan',2,'[{\"changed\": {\"fields\": [\"Code\", \"Country code\"]}}]',38,5),(299,'2023-01-05 15:54:19.997767','227','Turkey',2,'[{\"changed\": {\"fields\": [\"Code\", \"Country code\"]}}]',38,5),(300,'2023-01-06 20:18:04.039733','80','ef',3,'',20,5),(301,'2023-01-06 20:18:04.046302','79','Aman Rajput',3,'',20,5),(302,'2023-01-06 20:18:04.049811','78','Aman Rajput',3,'',20,5),(303,'2023-01-06 20:18:04.053876','77','Aman Rajput',3,'',20,5),(304,'2023-01-06 20:18:04.053876','76','Aman Rajput',3,'',20,5),(305,'2023-01-06 20:18:04.053876','75','Aman Rajput',3,'',20,5),(306,'2023-01-06 20:18:04.059947','74','Aman Rajput',3,'',20,5),(307,'2023-01-06 20:18:04.061955','73','Aman Rajput',3,'',20,5),(308,'2023-01-06 20:18:04.061955','72','',3,'',20,5),(309,'2023-01-06 20:18:04.071344','71','Aman Rajput',3,'',20,5),(310,'2023-01-06 20:18:04.076556','70','Aman Rajput',3,'',20,5),(311,'2023-01-06 20:18:04.078134','69','Aman Rajput',3,'',20,5),(312,'2023-01-06 20:18:04.080755','68','Aman Rajput',3,'',20,5),(313,'2023-01-06 20:18:04.082173','67','Aman Rajput',3,'',20,5),(314,'2023-01-06 20:18:04.083908','66','Aman Rajput',3,'',20,5),(315,'2023-01-06 20:18:04.085579','65','Aman Rajput',3,'',20,5),(316,'2023-01-06 20:32:24.815416','84','Aashiyana',3,'',20,5),(317,'2023-01-06 20:32:24.819423','83','',3,'',20,5),(318,'2023-01-06 20:32:24.821327','82','Aman Rajput',3,'',20,5),(319,'2023-01-06 20:32:24.823367','81','Aman Rajput',3,'',20,5),(320,'2023-01-06 21:32:57.053536','124','rentals-gallery/chuttersnap-Ch3WwM6PcsA-unsplash_rm9kqF6.jpg',3,'',25,5),(321,'2023-01-06 21:32:57.061964','126','rentals-gallery/r-architecture-oGmf8o53LeE-unsplash_1_lppTLog.jpg',3,'',25,5),(322,'2023-01-06 21:32:57.064885','125','rentals-gallery/gustavo-zambelli-nEvzSXBIhiU-unsplash_qaIF81j.jpg',3,'',25,5),(323,'2023-01-06 21:32:57.067510','127','rentals-gallery/steven-ungermann-vvah86ql8iM-unsplash.jpg',3,'',25,5),(324,'2023-01-06 21:32:57.070327','110','rentals-gallery/r-architecture-cJeTNtkfpDA-unsplash_xnZZe2F.jpg',3,'',25,5),(325,'2023-01-06 21:32:57.072505','111','rentals-gallery/bernard-hermant-g9ydDMdpfM0-unsplash_LDE6gkm.jpg',3,'',25,5),(326,'2023-01-06 21:32:57.074561','112','rentals-gallery/r-architecture-oGmf8o53LeE-unsplash_1_DEzDkZt.jpg',3,'',25,5),(327,'2023-01-06 21:32:57.076524','113','rentals-gallery/andrea-davis-4oapbWR-8ZI-unsplash_M9LsDOA.jpg',3,'',25,5),(328,'2023-01-06 21:32:57.079545','114','rentals-gallery/gustavo-zambelli-nEvzSXBIhiU-unsplash_Mk7DG7b.jpg',3,'',25,5),(329,'2023-01-06 21:32:57.082494','115','rentals-gallery/gustavo-zambelli-nEvzSXBIhiU-unsplash_0i1LciG.jpg',3,'',25,5),(330,'2023-01-06 21:32:57.083007','116','rentals-gallery/r-architecture-oGmf8o53LeE-unsplash_1_Ouy9JHo.jpg',3,'',25,5),(331,'2023-01-06 21:32:57.085545','117','rentals-gallery/andrea-davis-4oapbWR-8ZI-unsplash_xTigVbS.jpg',3,'',25,5),(332,'2023-01-06 21:32:57.087552','118','rentals-gallery/bernard-hermant-j__9DULAstQ-unsplash_lH9LCwn.jpg',3,'',25,5),(333,'2023-01-06 21:32:57.090843','119','rentals-gallery/r-architecture-oGmf8o53LeE-unsplash_T2L3AKE.jpg',3,'',25,5),(334,'2023-01-06 21:32:57.092531','120','rentals-gallery/roberto-nickson-6FZf3yzuodE-unsplash_U8i8kqm.jpg',3,'',25,5),(335,'2023-01-06 21:32:57.095030','121','rentals-gallery/roberto-nickson-6FZf3yzuodE-unsplash_JdOCO1H.jpg',3,'',25,5),(336,'2023-01-06 21:32:57.097631','122','rentals-gallery/gustavo-zambelli-nEvzSXBIhiU-unsplash_cjYyjV8.jpg',3,'',25,5),(337,'2023-01-06 21:32:57.098797','123','rentals-gallery/gus-ruballo-h5QNclJUiA8-unsplash_OjHXx7Q.jpg',3,'',25,5),(338,'2023-01-06 21:32:57.101381','109','rentals-gallery/favicon_sD6K1nV.png',3,'',25,5),(339,'2023-01-06 23:09:07.966060','13','Dino',1,'[{\"added\": {}}]',17,5),(340,'2023-01-30 13:46:35.668947','18','faf',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',4,5),(341,'2023-02-01 20:07:56.339899','5','demon',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',4,5),(342,'2023-02-01 20:08:47.880959','5','admin',2,'[{\"changed\": {\"fields\": [\"Username\"]}}]',4,5),(343,'2023-02-02 13:33:14.100997','19','raiizaada',3,'',4,5),(344,'2023-02-02 13:37:29.442859','20','raiizaada',3,'',4,5),(345,'2023-02-02 13:43:11.173636','21','raiizaada',3,'',4,5),(346,'2023-02-02 19:00:49.041443','1','India',2,'[{\"changed\": {\"fields\": [\"Dialing code\", \"Country code\"]}}]',38,5),(347,'2023-02-02 20:14:25.041587','1','India',2,'[{\"changed\": {\"fields\": [\"Dialing code\", \"Country code\"]}}]',38,5),(348,'2023-02-02 20:15:04.392063','1','India',2,'[]',38,5),(349,'2023-02-03 14:11:40.297315','22','raiizaada',3,'',4,5),(350,'2023-02-03 14:32:38.971353','23','raiizaada',3,'',4,5),(351,'2023-02-06 20:54:37.410444','2','[\'Hall\', \' Laundry\']',3,'',58,5),(352,'2023-02-06 20:56:22.169575','1','',3,'',58,5),(353,'2023-02-15 14:20:56.889943','43','ChannelManagement object (43)',3,'',33,5),(354,'2023-02-15 14:20:56.908568','42','ChannelManagement object (42)',3,'',33,5),(355,'2023-02-15 14:37:49.454158','44','ChannelManagement object (44)',1,'[{\"added\": {}}]',33,5),(356,'2023-03-29 18:27:06.752581','4','[\'Common area\', \' Dining room\', \'Drying room\', \'Eating area\', \'Fitness room\', \'Work studio\']',1,'[{\"added\": {}}]',58,5);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:16
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(60,'bookingengine','bookingamenities'),(77,'bookingengine','bookinginformation'),(66,'bookingengine','bookingroom'),(61,'bookingengine','categories'),(73,'bookingengine','colorpalettes'),(71,'bookingengine','contactinfo'),(70,'bookingengine','coupon'),(75,'bookingengine','extraservice'),(74,'bookingengine','footerwidgets'),(67,'bookingengine','rates'),(69,'bookingengine','reservation'),(78,'bookingengine','roomadditionaldetails'),(62,'bookingengine','roomsgallery'),(65,'bookingengine','seasons'),(63,'bookingengine','services'),(72,'bookingengine','socialmedia'),(64,'bookingengine','tags'),(68,'bookingengine','tax'),(76,'bookingengine','termcondition'),(5,'contenttypes','contenttype'),(82,'rentals','accountsetting'),(9,'rentals','activity'),(10,'rentals','amenities'),(37,'rentals','amenitiestype'),(28,'rentals','attributes'),(50,'rentals','basicrates'),(49,'rentals','bed'),(17,'rentals','bookings'),(32,'rentals','category'),(8,'rentals','channel'),(33,'rentals','channelmanagement'),(23,'rentals','companyprofile'),(38,'rentals','country'),(30,'rentals','currency'),(56,'rentals','customservices'),(19,'rentals','discount'),(18,'rentals','discounttype'),(45,'rentals','earlybirddiscount'),(35,'rentals','event'),(34,'rentals','eventmember'),(55,'rentals','extraservices'),(83,'rentals','feedback'),(47,'rentals','houserules'),(22,'rentals','invoice'),(21,'rentals','invoiceitem'),(46,'rentals','longstaydiscount'),(29,'rentals','manufacturingym'),(85,'rentals','nearbyamenities'),(84,'rentals','notification'),(57,'rentals','otherrooms'),(31,'rentals','partner'),(14,'rentals','policy'),(39,'rentals','propertyrole'),(16,'rentals','rate'),(15,'rentals','ratetype'),(20,'rentals','rental'),(27,'rentals','rentalactivities'),(24,'rentals','rentalamenities'),(43,'rentals','rentalbasic'),(80,'rentals','rentalbed'),(81,'rentals','rentalbookingrules'),(52,'rentals','rentalcleaning'),(53,'rentals','rentaldeposit'),(48,'rentals','rentalinstruction'),(44,'rentals','rentallocation'),(86,'rentals','rentalnearbyamenities'),(58,'rentals','rentalotherrooms'),(26,'rentals','rentalpolicy'),(79,'rentals','rentalroom'),(25,'rentals','rentalsgallery'),(54,'rentals','rentaltax'),(11,'rentals','rentaltype'),(41,'rentals','room'),(42,'rentals','roomtype'),(51,'rentals','seasonalrates'),(59,'rentals','services'),(36,'rentals','subscription'),(40,'rentals','subscriptionplan'),(12,'rentals','tax'),(13,'rentals','taxtype'),(7,'rentals','userprofile'),(6,'sessions','session');
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

-- Dump completed on 2023-06-07  0:43:16
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-10-10 17:09:45.190557'),(2,'auth','0001_initial','2022-10-10 17:09:45.640708'),(3,'admin','0001_initial','2022-10-10 17:09:45.761396'),(4,'admin','0002_logentry_remove_auto_add','2022-10-10 17:09:45.766017'),(5,'admin','0003_logentry_add_action_flag_choices','2022-10-10 17:09:45.778882'),(6,'contenttypes','0002_remove_content_type_name','2022-10-10 17:09:45.844743'),(7,'auth','0002_alter_permission_name_max_length','2022-10-10 17:09:45.905239'),(8,'auth','0003_alter_user_email_max_length','2022-10-10 17:09:45.929719'),(9,'auth','0004_alter_user_username_opts','2022-10-10 17:09:45.939031'),(10,'auth','0005_alter_user_last_login_null','2022-10-10 17:09:46.028542'),(11,'auth','0006_require_contenttypes_0002','2022-10-10 17:09:46.031607'),(12,'auth','0007_alter_validators_add_error_messages','2022-10-10 17:09:46.037670'),(13,'auth','0008_alter_user_username_max_length','2022-10-10 17:09:46.075979'),(14,'auth','0009_alter_user_last_name_max_length','2022-10-10 17:09:46.125149'),(15,'auth','0010_alter_group_name_max_length','2022-10-10 17:09:46.143301'),(16,'auth','0011_update_proxy_permissions','2022-10-10 17:09:46.149409'),(17,'auth','0012_alter_user_first_name_max_length','2022-10-10 17:09:46.201821'),(18,'rentals','0001_initial','2022-10-10 17:09:46.266050'),(19,'sessions','0001_initial','2022-10-10 17:09:46.293522'),(20,'rentals','0002_channel','2022-10-10 17:51:58.480199'),(21,'rentals','0003_activites_amenities','2022-10-11 11:40:56.865314'),(22,'rentals','0004_rename_activites_activity','2022-10-11 12:14:07.362983'),(23,'rentals','0005_roomtype','2022-10-11 17:26:59.842633'),(24,'rentals','0006_rename_roomtype_rentaltype_alter_rentaltype_table','2022-10-11 17:28:45.518007'),(25,'rentals','0007_rentaltype_status','2022-10-11 17:31:22.051582'),(26,'rentals','0008_rentaltype_created_at_rentaltype_updated_at','2022-10-11 18:20:01.641876'),(27,'rentals','0009_tax','2022-10-13 10:25:46.261142'),(28,'rentals','0010_taxtype_tax_tax_type','2022-10-13 10:53:53.966945'),(29,'rentals','0011_policy','2022-10-13 12:59:45.201398'),(30,'rentals','0012_ratetype','2022-10-13 14:31:47.216894'),(31,'rentals','0013_rate','2022-10-13 17:17:35.105594'),(32,'rentals','0014_remove_rate_channel_manager_markup','2022-10-13 17:41:06.976755'),(33,'rentals','0015_rate_day_surcharge','2022-10-14 18:02:59.836183'),(34,'rentals','0016_bookings','2022-10-17 10:58:17.153460'),(35,'rentals','0017_rename_guest_name_bookings_email_bookings_address_and_more','2022-10-17 13:09:54.787746'),(36,'rentals','0018_alter_bookings_check_in_alter_bookings_check_out_and_more','2022-10-17 13:16:24.002900'),(37,'rentals','0019_remove_bookings_created_at_and_more','2022-10-17 13:17:58.821090'),(38,'rentals','0020_alter_bookings_check_in_alter_bookings_check_out','2022-10-17 13:52:59.759434'),(39,'rentals','0021_discounttype','2022-10-17 14:26:21.732164'),(40,'rentals','0022_discounttype_created_at_discounttype_updated_at','2022-10-17 14:26:43.936224'),(41,'rentals','0023_discount','2022-10-17 15:26:41.757070'),(42,'rentals','0024_rental','2022-10-18 10:56:28.396694'),(43,'rentals','0025_rental_created_at_rental_status_rental_updated_at','2022-10-18 11:03:12.033196'),(44,'rentals','0026_remove_rental_policy_rental_policy','2022-10-18 12:27:05.563757'),(45,'rentals','0027_remove_rental_activities_remove_rental_amenities_and_more','2022-10-18 14:50:00.032790'),(46,'rentals','0028_activity_created_at_activity_updated_at','2022-10-21 14:30:12.924736'),(47,'rentals','0029_invoice_invoiceitem','2022-10-21 15:31:03.103375'),(48,'rentals','0030_companyprofile','2022-10-21 16:20:14.380178'),(49,'rentals','0031_activity_user_id','2022-10-29 12:15:23.785920'),(50,'rentals','0032_amenities_user_id_bookings_user_id_channel_user_id_and_more','2022-10-29 13:51:24.489380'),(51,'rentals','0033_alter_rate_user_id_alter_ratetype_user_id','2022-10-31 16:32:14.080637'),(52,'rentals','0034_remove_rental_activities_remove_rental_amenities_and_more','2022-10-31 18:14:11.364158'),(53,'rentals','0035_rentalamenities','2022-11-01 12:29:44.316572'),(54,'rentals','0036_rentalsgallery','2022-11-01 15:11:17.242539'),(55,'rentals','0037_rentalpolicy_rentalactivities','2022-11-01 16:03:08.206486'),(56,'rentals','0038_remove_rentalamenities_amenities_and_more','2022-11-02 13:49:30.519901'),(57,'rentals','0039_rental_activities_id_rental_amenities_id_and_more','2022-11-02 14:09:09.051751'),(58,'rentals','0040_attributes','2022-11-07 16:16:10.392787'),(59,'rentals','0041_manufacturingym_bookings_mfdate','2022-11-15 14:15:51.825991'),(60,'rentals','0042_remove_bookings_mfdate_bookings_created_at_and_more','2022-11-15 16:16:01.170982'),(61,'rentals','0043_alter_bookings_created_at','2022-11-15 17:53:57.681347'),(62,'rentals','0044_currency','2022-12-02 15:40:51.099230'),(63,'rentals','0045_remove_rentalsgallery_rental','2022-12-08 17:02:51.910943'),(64,'rentals','0046_rentalsgallery_rental','2022-12-08 20:36:36.089142'),(65,'rentals','0047_rename_rental_rentalsgallery_rental_id','2022-12-08 20:38:12.564543'),(66,'rentals','0048_remove_rentalsgallery_rental_id_and_more','2022-12-08 20:42:11.520902'),(67,'rentals','0049_alter_rentalsgallery_rental','2022-12-08 21:18:22.644807'),(68,'rentals','0050_rename_rental_rentalsgallery_rental_id','2022-12-08 21:19:18.864830'),(69,'rentals','0051_category_partner','2022-12-09 18:07:12.277487'),(70,'rentals','0052_remove_category_channel_description','2022-12-09 18:22:13.337568'),(71,'rentals','0053_partner_url','2022-12-09 18:42:44.610531'),(72,'rentals','0054_channelmanagement','2022-12-13 13:55:44.242300'),(73,'rentals','0055_remove_channelmanagement_created_at_and_more','2022-12-13 13:58:36.826093'),(74,'rentals','0056_event_eventmember','2022-12-20 13:40:46.726721'),(75,'rentals','0057_subscription','2022-12-23 14:11:19.547572'),(76,'rentals','0058_remove_invoice_user_id_remove_invoiceitem_user_id','2022-12-25 22:36:22.957475'),(77,'rentals','0059_rental_rental_types_alter_rental_activities_id_and_more','2022-12-26 14:37:21.413872'),(78,'rentals','0059_rental_rentaltype','2022-12-26 15:46:41.662140'),(79,'rentals','0060_remove_rental_rentaltype','2022-12-26 16:03:03.933513'),(80,'rentals','0061_rental_rental_type','2022-12-26 16:29:55.244029'),(81,'rentals','0062_remove_currency_user_id','2022-12-26 21:13:44.697510'),(82,'rentals','0063_amenitiestype_remove_amenities_user_id_and_more','2022-12-27 18:59:11.817250'),(83,'rentals','0064_remove_amenitiestype_logo','2022-12-27 19:26:05.813071'),(84,'rentals','0065_country_propertyrole','2022-12-27 21:00:27.129809'),(85,'rentals','0066_remove_activity_user_id_remove_attributes_user_id_and_more','2022-12-28 15:48:18.601194'),(86,'rentals','0067_rename_coutry_userprofile_country_and_more','2022-12-28 18:58:55.703603'),(87,'rentals','0068_alter_partner_url','2022-12-28 20:26:12.789895'),(88,'rentals','0069_subscription_tenure','2022-12-29 15:20:58.280658'),(89,'rentals','0070_subscriptionplan_delete_subscription','2022-12-29 16:07:47.909527'),(90,'rentals','0071_subscription_delete_subscriptionplan','2022-12-29 16:34:55.461919'),(91,'rentals','0072_subscriptionplan','2022-12-29 16:37:53.913607'),(92,'rentals','0073_alter_subscriptionplan_expiry_date_and_more','2022-12-29 17:09:54.885782'),(93,'rentals','0074_rate_rental_id_alter_rate_user_id_and_more','2022-12-30 19:14:02.894291'),(94,'rentals','0075_room_roomtype','2023-01-03 14:05:36.929457'),(95,'rentals','0076_room_icon_roomtype_icon','2023-01-03 14:55:37.550475'),(96,'rentals','0077_alter_rentalsgallery_options_rentalsgallery_position','2023-01-03 16:24:05.465052'),(97,'rentals','0078_remove_rental_activities_id_and_more','2023-01-04 14:51:58.051248'),(98,'rentals','0079_rentalbasic','2023-01-04 15:16:40.115403'),(99,'rentals','0080_rentallocation','2023-01-04 17:57:30.073861'),(100,'rentals','0081_amenities_rental_id','2023-01-04 19:24:32.095581'),(101,'rentals','0082_remove_amenities_rental_id','2023-01-04 19:26:10.735823'),(102,'rentals','0083_remove_rentalamenities_rental_and_more','2023-01-04 19:31:23.932652'),(103,'rentals','0084_earlybirddiscount_longstaydiscount','2023-01-04 20:31:44.938312'),(104,'rentals','0085_houserules_rentalpolicy_and_more','2023-01-04 21:13:05.357834'),(105,'rentals','0086_country_country_code','2023-01-05 13:47:26.623477'),(106,'rentals','0087_rentalinstruction','2023-01-05 14:47:14.758872'),(107,'rentals','0088_bed_alter_room_table','2023-01-05 16:41:49.763608'),(108,'rentals','0089_room_room_type','2023-01-05 17:44:22.181864'),(109,'rentals','0090_alter_bed_table_alter_room_table','2023-01-05 18:16:01.725232'),(110,'rentals','0091_basicrates_seasonalrates','2023-01-05 20:21:30.317023'),(111,'rentals','0092_rentalcleaning_rentaldeposit','2023-01-06 14:41:14.041989'),(112,'rentals','0093_alter_rentaldeposit_security_deposit','2023-01-06 15:41:16.029478'),(113,'rentals','0094_rentaltax','2023-01-06 15:48:36.548744'),(114,'rentals','0095_extraservices','2023-01-06 16:33:17.474871'),(115,'rentals','0096_alter_extraservices_earliest_guest_order_and_more','2023-01-06 16:56:38.755437'),(116,'rentals','0097_customservices','2023-01-06 17:07:54.557291'),(117,'rentals','0098_alter_channel_channel_title','2023-01-06 19:54:31.909076'),(118,'rentals','0099_rental_cover_image','2023-01-06 20:21:32.982344'),(119,'rentals','0100_otherrooms','2023-01-08 17:35:48.778055'),(120,'rentals','0101_rentalotherrooms','2023-01-08 18:50:35.276595'),(121,'rentals','0102_seasonalrates_checkin_days_and_more','2023-01-11 14:15:24.722403'),(122,'rentals','0103_basicrates_checkin_days_basicrates_checkout_days','2023-01-11 14:15:24.771498'),(123,'rentals','0104_channelmanagement_rental_id','2023-01-11 14:15:24.797382'),(124,'rentals','0105_services','2023-01-12 15:55:46.677685'),(125,'rentals','0106_remove_country_code_country_dialing_code_and_more','2023-02-02 17:06:14.185331'),(126,'rentals','0107_alter_country_country_code','2023-02-02 17:21:29.367496'),(127,'rentals','0108_rename_country_code_rentalinstruction_dialing_code','2023-02-02 19:16:06.227204'),(128,'rentals','0109_rename_dialing_code_country_code','2023-02-02 20:17:11.148459'),(129,'rentals','0110_remove_channelmanagement_channel_and_more','2023-02-15 14:25:13.298345'),(130,'bookingengine','0001_initial','2023-03-09 16:17:03.713377'),(131,'bookingengine','0002_tax','2023-03-09 21:07:32.032371'),(132,'bookingengine','0003_remove_tax_charge_alter_tax_amount_and_more','2023-03-13 14:36:37.054810'),(133,'bookingengine','0004_reservation','2023-03-13 17:35:47.611025'),(134,'bookingengine','0005_alter_reservation_table','2023-03-13 17:36:43.118554'),(135,'bookingengine','0006_alter_rates_price_per_night','2023-03-14 20:21:20.732326'),(136,'bookingengine','0007_coupon','2023-03-21 12:48:06.434969'),(137,'bookingengine','0008_alter_coupon_coupon_amount','2023-03-21 12:49:57.236704'),(138,'bookingengine','0009_alter_bookingroom_description','2023-03-21 20:26:10.874311'),(139,'bookingengine','0010_alter_bookingroom_description','2023-03-21 20:27:02.744802'),(140,'bookingengine','0011_contactinfo_socialmedia_coupon_status','2023-03-22 16:44:40.816823'),(141,'bookingengine','0012_colorpalettes_widgets_contactinfo_copyright_name_and_more','2023-03-23 19:44:46.984857'),(142,'bookingengine','0013_widgets_status_widgets_user_id','2023-03-23 20:05:11.615049'),(143,'bookingengine','0014_rename_widgets_footerwidgets','2023-03-23 20:07:47.984620'),(144,'bookingengine','0015_extraservice_termcondition','2023-03-24 18:53:28.613687'),(145,'bookingengine','0016_bookinginformation_roomadditionaldetails','2023-03-24 18:55:35.563208'),(146,'bookingengine','0017_remove_bookinginformation_status_and_more','2023-03-27 18:49:22.947350'),(147,'rentals','0111_rentalroom','2023-03-28 15:23:36.719872'),(148,'rentals','0112_remove_rentalroom_rental_room_rentalroom_room_type_and_more','2023-03-28 15:26:08.028873'),(149,'rentals','0113_delete_rentalroom','2023-03-28 21:18:47.346179'),(150,'rentals','0114_rentalroom','2023-03-29 14:31:52.775335'),(151,'rentals','0115_rentalbed','2023-04-03 15:05:50.962825'),(152,'rentals','0116_alter_rentalbed_name_alter_rentalroom_name','2023-04-03 15:17:00.198991'),(153,'rentals','0117_rentalbookingrules','2023-05-02 20:47:52.603962'),(154,'rentals','0118_accountsetting_feedback_notification','2023-05-04 14:39:14.039837'),(155,'rentals','0119_userprofile_birth_date_userprofile_gender_and_more','2023-05-04 18:48:38.059529'),(156,'rentals','0120_channel_request_booking','2023-05-05 13:19:56.537204'),(157,'rentals','0121_channelmanagement_request_booking_and_more','2023-05-05 16:35:53.745173'),(158,'rentals','0122_amenities_code','2023-05-29 11:49:24.800740'),(159,'rentals','0123_nearbyamenities','2023-05-29 15:17:23.205902'),(160,'rentals','0124_rentalnearbyamenities','2023-05-31 09:29:27.364924'),(161,'rentals','0125_rentallocation_latitude_rentallocation_longitude','2023-05-31 11:23:45.942509'),(162,'rentals','0126_rentalbasic_bathrooms_rentalbasic_childs_and_more','2023-05-31 13:17:00.239503'),(163,'rentals','0127_alter_bookings_rental','2023-06-05 07:55:31.051486'),(164,'rentals','0128_remove_bookings_created_at','2023-06-05 08:40:57.890955'),(165,'rentals','0129_alter_bookings_channel','2023-06-05 08:42:23.265717'),(166,'rentals','0130_houserules_pets_charge','2023-06-06 08:28:26.810514'),(167,'rentals','0131_alter_houserules_pets_charge','2023-06-06 08:29:08.140759');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:15
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('03j2h762sq6ynslghkry1e7g9v2yqcqf','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1pbmYN:orntkln-0-V5XV3kXfTFh2c6w92siVRLv4RGTRIv41o','2023-03-27 18:05:47.298482'),('05n9yonn01oz31wozirw0gkyehmw4ufn','.eJxVjDsOwjAQRO_iGlleB_8o6TmDtbt2cADZUpxUiLuTSCmgnHlv5i0irkuJa89znJK4CABx-i0J-ZnrTtID671JbnWZJ5K7Ig_a5a2l_Loe7t9BwV62NRrKCu0QSCk_eganGHwAvWVrtPLsMTtnkjHeAdPZAiUbYEx6cExWfL7t9Tdp:1ow5ws:-ThTbRYURJVJwGCV_86mm37_mDyicUeWRswo1AC75R8','2022-12-02 18:18:46.514807'),('1myypcgih7iam1z4zz7kvc3gwc8eh9gw','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1pZCv2:PhFbXnQBOI98UV3VL2cMLSCAg0gBtoPHThXEcDRSWy4','2023-03-20 15:38:32.441034'),('1o0ykkj19rx6he03sy7yxqtqi9l149n8','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1pjMyf:28dzlQmE_oPHqOW6KCTgt5vGaynSkjKOmT9qfrzAybA','2023-04-17 16:24:17.552800'),('1xfzjxeqxzuldvu25jqumvkfpuw1wkoa','.eJxVjDsOwjAQBe_iGln-e5eSnjNY6w84gGwpTirE3UmkFNC-mXlvFmhdalhHmcOU2ZlpdvrdIqVnaTvID2r3zlNvyzxFviv8oINfey6vy-H-HVQadavBIiTnqIAyiEaBksJCMoRRWh-ltNEKR1Ckd1FoyJte6IY-64ReGPb5ArDWNtE:1ola9v:Krd8Fenf_ancAt60YT1tevlCiip6XrrPQKUFDIjcv68','2022-11-03 18:20:47.906742'),('1zulh3wtqeg22wzfn9p0fq3eztblv0i1','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1pX2lJ:8AQs6wF-V0uVz4MNKQ5ixaBJudd6mBGxr0q4ycdQqjc','2023-03-14 16:23:33.230605'),('26qpnra3zmtja26kobwy0mi3a3g4koy4','.eJxVjMsOwiAQRf-FtSGU4dFx6d5vIFMYpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJnYcXpd5soPrjuIN2p3pqMra7LPMldkQft8toSPy-H-3dQqJdvTUikwGDmyTmNOgGChtGCGqM3g0PjdAQATDai08ryAJRBJ8seMnrx_gC57DaX:1pCNxO:FPcKbEOfXVq65pHrTWfwqKLffwJOdAuieTIlYZnXUes','2023-01-16 16:46:38.212921'),('2ogqvq6ae8t0dc950a20n375uiyg1iya','.eJxVjDsOwjAQRO_iGlleB_8o6TmDtbt2cADZUpxUiLuTSCmgnHlv5i0irkuJa89znJK4CABx-i0J-ZnrTtID671JbnWZJ5K7Ig_a5a2l_Loe7t9BwV62NRrKCu0QSCk_eganGHwAvWVrtPLsMTtnkjHeAdPZAiUbYEx6cExWfL7t9Tdp:1pBJ7P:SjWnkHixb55SKMe-vIs0Ihwrrm9J9b5Bw585RW-u_AU','2023-01-13 17:24:31.386287'),('2u39axx5omzw2m1jclz3jmqrxsxlyhix','.eJxVjMsOwiAQRf-FtSGU4dFx6d5vIFMYpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJnYcXpd5soPrjuIN2p3pqMra7LPMldkQft8toSPy-H-3dQqJdvTUikwGDmyTmNOgGChtGCGqM3g0PjdAQATDai08ryAJRBJ8seMnrx_gC57DaX:1p1V8i:BaKlPAeRqWIqAkgMsjoJRrs3iXv_P3vaUm7rprVxdMQ','2022-12-17 16:13:20.359626'),('38z0pnhq9tpqu2niy25t1mvd5eyyr0ih','.eJxVjMsOwiAQRf-FtSGU4dFx6d5vIFMYpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJnYcXpd5soPrjuIN2p3pqMra7LPMldkQft8toSPy-H-3dQqJdvTUikwGDmyTmNOgGChtGCGqM3g0PjdAQATDai08ryAJRBJ8seMnrx_gC57DaX:1pHrSz:Cbt_rGkEOPGAKc7OEoxTIcaO_KTthinzKJSG1deOZnI','2023-01-31 19:17:53.682989'),('3be6lz94epgp4hgv2xriz6qksl6e3sqn','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1puYSF:0K5YBpn2vd7OfkZQFgGKBITpf9dRvOGQNlTAOuAF5sc','2023-05-18 12:53:03.387775'),('3k1x7rdlvypcxsqui4mioxcr9ex9xzt3','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1pQaPP:V3wqXLO3ilEntGJQeYrOlkF8CJGmB4ajqOYPsyB7As4','2023-02-24 20:54:15.404995'),('3lm733o41udq2xa805gaxws5a3tmc2gt','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1pQ6ey:ti0mtTxmArL9q1pd22Chh_xT-KzmqxnfKWp8rVrkHLA','2023-02-23 13:08:20.023102'),('3r42k9ug4cjmerx2yer91w2cw1joxlje','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1pjgiG:NtEaFrkUolI5XPuhQR1h9pUYGnS3xpOZxA_y9FqJ32o','2023-04-18 13:28:40.060514'),('3s7chlcmn9no5ltpgjlrri1pa42byiy9','.eJxVjMsOwiAQRf-FtSHlUaAu3fsNZIYZpGogKe3K-O_apAvd3nPOfYkI21ri1nmJM4mzGMXpd0NID647oDvUW5Op1XWZUe6KPGiX10b8vBzu30GBXr61cx7RZgNJp-wnzAOFQStmFxgDZzY2sVEezGQJSY9A2qiQQPvsQXnx_gAMazjE:1p1F6X:eTvJpy4Nc5hWVuByfOGgAH1sQ4BlCowScYFJ7krCorc','2022-12-16 23:06:01.235827'),('3s8q2a8em62ovkqxy2tbiwzs0wrul41z','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1q5Qus:YQmW31s6iAPvX_Gm3ezZEqleWjhDQKuoES2vY-e-5aQ','2023-06-17 13:03:34.037288'),('49qwiixsvczy3epo0dzjrpme26q2uq22','.eJxVjMsOwiAQRf-FtSGU4dFx6d5vIFMYpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJnYcXpd5soPrjuIN2p3pqMra7LPMldkQft8toSPy-H-3dQqJdvTUikwGDmyTmNOgGChtGCGqM3g0PjdAQATDai08ryAJRBJ8seMnrx_gC57DaX:1p86bS:kqrBT_gTOqUbE5SU-g3RuJLIpZ2p12Fj0yITXD21TLE','2023-01-04 21:26:18.690354'),('55nikwxu43uuxrbf2q9qvnju3or4lht6','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1phCIm:-uwvOP67ME8R-gkjIilAuOea5nC7rIY6qbRhiwlcVbc','2023-04-11 16:36:04.841781'),('560eplgddguxcw3gk1rn6vuzgk6pmdrc','.eJxVjMsOwiAQRf-FtSGU4dFx6d5vIFMYpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJnYcXpd5soPrjuIN2p3pqMra7LPMldkQft8toSPy-H-3dQqJdvTUikwGDmyTmNOgGChtGCGqM3g0PjdAQATDai08ryAJRBJ8seMnrx_gC57DaX:1pCnCG:wfP72xlqyRIo75VFJipHJIpbdo38tZKjfxwwaKf7Fjc','2023-01-17 19:43:40.584758'),('5lwmolc0ngvcra09tqcvz3h1tn9ey6ip','.eJxVjMsOwiAQRf-FtSHlUaAu3fsNZIYZpGogKe3K-O_apAvd3nPOfYkI21ri1nmJM4mzGMXpd0NID647oDvUW5Op1XWZUe6KPGiX10b8vBzu30GBXr61cx7RZgNJp-wnzAOFQStmFxgDZzY2sVEezGQJSY9A2qiQQPvsQXnx_gAMazjE:1onGgs:bFB18k1Lre12U4AprEn8pXIrQwOPcVe54JnGlNzby7U','2022-11-08 09:57:46.087976'),('5n9sijahelznmp2lk5ol8skqadbrgsnh','.eJxVjMsOwiAQRf-FtSGU4dFx6d5vIFMYpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJnYcXpd5soPrjuIN2p3pqMra7LPMldkQft8toSPy-H-3dQqJdvTUikwGDmyTmNOgGChtGCGqM3g0PjdAQATDai08ryAJRBJ8seMnrx_gC57DaX:1pGMgk:mxdB2AS9paUrIC9j7gBTIEde0mlbR67IVzZGOY4DV9o','2023-01-27 16:13:54.989520'),('63mxnifkz0i28o811rylsk8ympi0mikx','.eJxVjMsOwiAURP-FtSVckEdddu83NJcLlVoDSR8r479Lk5rU5ZyZOW_W47amflvi3I-B3RgAu5yhR5pi3pvwxPwonEpe59HzfcKPduH3EuKrO7Z_goRLqm_UPgo0qvVCuMERWEHgWpA1Gy2FI4fRWh20dhbIXw34YFoYglSWvKlSSpGmMVeZFFI1QjVS_XDZ1jPX7PMFPAdDRA:1pfO6I:SF2dx-yz2AN4bdR8NuycsnLp69JLKMrPX28ScUEu60M','2023-04-06 16:47:42.519516'),('6hj1d9dz43fy3uzjc5ds5z60fjahaqur','.eJxVjMsOwiAQRf-FtSGU4dFx6d5vIFMYpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJnYcXpd5soPrjuIN2p3pqMra7LPMldkQft8toSPy-H-3dQqJdvTUikwGDmyTmNOgGChtGCGqM3g0PjdAQATDai08ryAJRBJ8seMnrx_gC57DaX:1pCkcv:5q-06HKxccyjfKtTG4OpoehEteHmgF4slmjR8rzd2Xk','2023-01-17 16:59:01.364579'),('6rp45izulqazlqcee5u4s1faxpy058aj','.eJxVjMsOwiAQRf-FtSGU4dFx6d5vIFMYpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJnYcXpd5soPrjuIN2p3pqMra7LPMldkQft8toSPy-H-3dQqJdvTUikwGDmyTmNOgGChtGCGqM3g0PjdAQATDai08ryAJRBJ8seMnrx_gC57DaX:1pCLzh:q6h2b1g1-Vjpkn9tlqcR1f8gHvmAfNpsXEECi5hwYjM','2023-01-16 14:40:53.358875'),('74y3fpvlhbk0ex8ckzdwrrc6v57obsj6','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1pahm3:hkGSHqLMwFu7mWnO2EUhAT1kvsk_gBicqrF6Wy0apuE','2023-03-24 18:47:27.019146'),('7927y42k2ibrv60ivlopcssz5jmz01zh','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1pT6Rz:yK17T3PUv6hVwF8kC-9GWkl93ml_uDONBrL-d-xye4k','2023-03-03 19:31:19.958452'),('7ag8bw4f8wyub15916578dstmwo0w0g7','.eJxVjMsOwiAQAP-FsyGwbXl49N5vIAvsStXQpLQn478bkh70OjOZtwh47CUcjbawZHEVGsTlF0ZMT6rd5AfW-yrTWvdtibIn8rRNzmum1-1s_wYFW-nfpKNBb0EZJuUSoIIhkXccjSXLEzAwZ5NHxAmJEBJ6z04PTG7URny-H3w4-w:1ovMRo:O2BdPpmbvt0JMUEdobuWZ-iY1fWaOUbdUeAqB3J4siM','2022-11-30 17:43:40.649741'),('7o7548t0t172jjg3v4h3mj6c1fvowdxy','.eJxVjMsOwiAQRf-FtSGU4dFx6d5vIFMYpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJnYcXpd5soPrjuIN2p3pqMra7LPMldkQft8toSPy-H-3dQqJdvTUikwGDmyTmNOgGChtGCGqM3g0PjdAQATDai08ryAJRBJ8seMnrx_gC57DaX:1p8hXw:sjoSk-GyMPn0ovqDrUQdDaaze_O_PtLrIja8CtyPKoE','2023-01-06 12:53:08.792079'),('80069nw19wmeyq1qeecpo81y6q0z8dmv','.eJxVjMsOwiAQRf-FtSGU4dFx6d5vIFMYpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJnYcXpd5soPrjuIN2p3pqMra7LPMldkQft8toSPy-H-3dQqJdvTUikwGDmyTmNOgGChtGCGqM3g0PjdAQATDai08ryAJRBJ8seMnrx_gC57DaX:1pFcAm:8VSFLiPZxpoO8EY2T6bIVvQfQZ2Ebg7M2Nr3uw_uCpk','2023-01-25 14:33:48.775151'),('89qau74t58l3d2mghkkqmjyyvizpke9u','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1pQ9Xc:8Hyk9z2MVW3GzavkmrZfyP7k3Xchpr6pb1MsQ6At6cw','2023-02-23 16:12:56.828262'),('8agcrg93zpf9nu0v5srw72e7sjudb2u2','.eJxVjMsOwiAQRf-FtSHlUaAu3fsNZIYZpGogKe3K-O_apAvd3nPOfYkI21ri1nmJM4mzGMXpd0NID647oDvUW5Op1XWZUe6KPGiX10b8vBzu30GBXr61cx7RZgNJp-wnzAOFQStmFxgDZzY2sVEezGQJSY9A2qiQQPvsQXnx_gAMazjE:1ovj6N:-ynwVpx4a_lII2Fm8ZNxBiem9imFF6rq6Jyv5kaBGLI','2022-12-01 17:55:03.591757'),('8wdx5s01tyypk6u4m1y7agox0b3m74dx','.eJxVjDsOwjAQBe_iGln-e5eSnjNY6w84gGwpTirE3UmkFNC-mXlvFmhdalhHmcOU2ZlpdvrdIqVnaTvID2r3zlNvyzxFviv8oINfey6vy-H-HVQadavBIiTnqIAyiEaBksJCMoRRWh-ltNEKR1Ckd1FoyJte6IY-64ReGPb5ArDWNtE:1okT36:MQKvVfXL8RwPl4Ny-O1ORn-7fX-rhnMpzJ6alE1Jx3A','2022-10-31 16:33:08.051201'),('9b0yvhngtqwlu8q711rqjulhzyz9gd05','.eJxVjMsOwiAQRf-FtSGU4dFx6d5vIFMYpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJnYcXpd5soPrjuIN2p3pqMra7LPMldkQft8toSPy-H-3dQqJdvTUikwGDmyTmNOgGChtGCGqM3g0PjdAQATDai08ryAJRBJ8seMnrx_gC57DaX:1pCOmF:a3HaUqdwtSoJHsFWX2fbI7JT5I5hDx3mbMxIb86x630','2023-01-16 17:39:11.056364'),('9bmbiskmorvue05d1deibg2xof4s9zzb','.eJxVjDsOwjAQBe_iGln-e5eSnjNY6w84gGwpTirE3UmkFNC-mXlvFmhdalhHmcOU2ZlpdvrdIqVnaTvID2r3zlNvyzxFviv8oINfey6vy-H-HVQadavBIiTnqIAyiEaBksJCMoRRWh-ltNEKR1Ckd1FoyJte6IY-64ReGPb5ArDWNtE:1olaCm:pLMdLqrPXzaACOy3Ie9ZdVkwM7vJp2ek5NYvEPt282Y','2022-11-03 18:23:44.147742'),('9lck2oqq0me6dvxbqozsfl5bsetu3v84','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1pboRr:C7GvSlRTd8Cqi3r2gfDk8TTxtDQPqFwbqaNmDBOgtbU','2023-03-27 20:07:11.178797'),('da0zamwn5b4810ex6lux0v1j238gvx66','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1pbovE:Q4CC_lj51cZcKSGk0ClRPjllxebvtbq8GKenreTlGCo','2023-03-27 20:37:32.868849'),('dv9ez70rtevk68iaw1f43nnmskh0n7xf','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1pQ9Xy:RwERdF2pXaQkWPqpbyY301qZ-ixOyROARtTBqu55FVE','2023-02-23 16:13:18.581600'),('exgz1gf9oq81etnya8m2zviljjwug1qb','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1pZ9kj:SkbUVKSsANmx7Kxdd-GknXZVb9gmA5WcjS9-oome-AE','2023-03-20 12:15:41.892499'),('f6ops0c6qfwqe90q3y8rk1pvhnad9xgn','.eJxVjMsOwiAQRf-FtSHlUaAu3fsNZIYZpGogKe3K-O_apAvd3nPOfYkI21ri1nmJM4mzGMXpd0NID647oDvUW5Op1XWZUe6KPGiX10b8vBzu30GBXr61cx7RZgNJp-wnzAOFQStmFxgDZzY2sVEezGQJSY9A2qiQQPvsQXnx_gAMazjE:1olVko:_AyIHC89W3cu0vZ2Tc1va63UROO78VHEH_Bp0Gjl5VQ','2022-11-03 13:38:34.303356'),('fgmpms11c1x8k4c5mzhb9yqbo5cu88z5','.eJxVjDsOwjAQBe_iGln-e5eSnjNY6w84gGwpTirE3UmkFNC-mXlvFmhdalhHmcOU2ZlpdvrdIqVnaTvID2r3zlNvyzxFviv8oINfey6vy-H-HVQadavBIiTnqIAyiEaBksJCMoRRWh-ltNEKR1Ckd1FoyJte6IY-64ReGPb5ArDWNtE:1olaB7:stautjXt3w4pznJqwBu0PpzNMl5VRXueQ5RxdG0JDvw','2022-11-03 18:22:01.632355'),('g0juzzigar6g25b3fy4dfw1p8xmcpzll','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1pSlxs:nP-XxzAw5yYpBTxOHDBZkAEZpeDps2qKlQG8HX8h_Ec','2023-03-02 21:38:52.562734'),('g3mpbn7lrvqgdbx0rrl4ot4zlvh6idgl','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1pZCwH:TXdf6JULfalSK1sOwemk0xMnKHcFypfynmSqA9OpdMw','2023-03-20 15:39:49.087028'),('g75n5p596zvci4bupas12u22j9vij07t','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1pRcLi:SSaPne9Nfx3r0hbcTpI9jls5Dhdb-gkf86YrYxS74pE','2023-02-27 17:10:42.665980'),('gazdu8g0ky8ve6n4ysj0k1nrqzy4vxs5','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1pblnI:7HpvOklazQVwrWgJhnrQDljZdFLPQaYrxOUmtX6r0t8','2023-03-27 17:17:08.383566'),('gwkrup4kw7tt4qykgz2o6dkv7uh76xg8','.eJxVjMsOwiAQRf-FtSGU4dFx6d5vIFMYpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJnYcXpd5soPrjuIN2p3pqMra7LPMldkQft8toSPy-H-3dQqJdvTUikwGDmyTmNOgGChtGCGqM3g0PjdAQATDai08ryAJRBJ8seMnrx_gC57DaX:1p7eCt:JIKrE7NWWRYQXjXeBMtjPWF4l6s1km7NYIEFx2ErYz0','2023-01-03 15:07:03.960712'),('h0adh1mhb16jgxols7v0nv13jz3xemib','.eJxVjMsOwiAQRf-FtSGU4dFx6d5vIFMYpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJnYcXpd5soPrjuIN2p3pqMra7LPMldkQft8toSPy-H-3dQqJdvTUikwGDmyTmNOgGChtGCGqM3g0PjdAQATDai08ryAJRBJ8seMnrx_gC57DaX:1p2F8R:BHf2PMJ9_VZiCC1zCjhVfb8uWZ9yVup-6t9uMUj2dRQ','2022-12-19 17:20:07.732794'),('hr0od712hluwxh80yd4ju3x7qmz7hps0','.eJxVjMsOwiAQRf-FtSGU4dFx6d5vIFMYpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJnYcXpd5soPrjuIN2p3pqMra7LPMldkQft8toSPy-H-3dQqJdvTUikwGDmyTmNOgGChtGCGqM3g0PjdAQATDai08ryAJRBJ8seMnrx_gC57DaX:1pCKkp:uBohjVXf5KyvP2Orc_ZbPAoyU5UxIc015mgsQmkv-s0','2023-01-16 13:21:27.913619'),('i2uk0yuhauf3kjer08mnvb4pvpjf7fgg','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1q3b8H:YdWtKOZ5TMNHffYXiYqe-AMabAd68C7RoHbCqC0_hQM','2023-06-12 11:33:49.973087'),('isyot0yc0vokqpfo2qyx8v0w1b7lc5nx','.eJxVjMsOwiAQRf-FtSGU4dFx6d5vIFMYpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJnYcXpd5soPrjuIN2p3pqMra7LPMldkQft8toSPy-H-3dQqJdvTUikwGDmyTmNOgGChtGCGqM3g0PjdAQATDai08ryAJRBJ8seMnrx_gC57DaX:1pCnCG:wfP72xlqyRIo75VFJipHJIpbdo38tZKjfxwwaKf7Fjc','2023-01-17 19:43:40.664156'),('jclimlpvg8r6n3gehrjugj20b3ha0bzn','.eJxVjMsOwiAQRf-FtSGU4dFx6d5vIFMYpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJnYcXpd5soPrjuIN2p3pqMra7LPMldkQft8toSPy-H-3dQqJdvTUikwGDmyTmNOgGChtGCGqM3g0PjdAQATDai08ryAJRBJ8seMnrx_gC57DaX:1pMxJO:GOvS6JFULKLirjmnLvfOnmHhCgo0kv9GeeaHYUe9FHc','2023-02-14 20:33:02.567870'),('kl223gwpiir96qqzs8mpaheia8h7ipvo','.eJxVjMsOwiAQRf-FtSHlUaAu3fsNZIYZpGogKe3K-O_apAvd3nPOfYkI21ri1nmJM4mzGMXpd0NID647oDvUW5Op1XWZUe6KPGiX10b8vBzu30GBXr61cx7RZgNJp-wnzAOFQStmFxgDZzY2sVEezGQJSY9A2qiQQPvsQXnx_gAMazjE:1onZEx:pfFHyB3MhlgDMPGPk-vtah0j6A2xx1OZw9wLGeeJ0MM','2022-11-09 05:46:11.544815'),('msdhca8hyd8f5nbvhfw7k217hw8dgizp','.eJxVjMsOwiAQRf-FtSGU4dFx6d5vIFMYpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJnYcXpd5soPrjuIN2p3pqMra7LPMldkQft8toSPy-H-3dQqJdvTUikwGDmyTmNOgGChtGCGqM3g0PjdAQATDai08ryAJRBJ8seMnrx_gC57DaX:1pHllQ:JtfDK-PAKBXxKskSurDBuqk_3Kbv-V7OXMu7d_7Y8l4','2023-01-31 13:12:32.124299'),('mwrq3yb9nyaoicvnz9y52yub5stii33x','.eJxVjMsOwiAQRf-FtSGU4dFx6d5vIFMYpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJnYcXpd5soPrjuIN2p3pqMra7LPMldkQft8toSPy-H-3dQqJdvTUikwGDmyTmNOgGChtGCGqM3g0PjdAQATDai08ryAJRBJ8seMnrx_gC57DaX:1p1Tu6:5exJGVb-JcCq50IWxRF6ULmqs7aL8380X8UwK8_ZjSY','2022-12-17 14:54:10.025038'),('n5hyz7bw2oh0e44k3ijrzpaa9eypytew','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1pklWP:QqNR8FRpc-OGYn_5Dwz0VJyvfs9QSss-_HuF9fPxhEI','2023-04-21 12:48:53.479186'),('n7wdf9tvh9ddl4rqpk591oiy8xxzyvut','.eJxVjMsOwiAQRf-FtSGU4dFx6d5vIFMYpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJnYcXpd5soPrjuIN2p3pqMra7LPMldkQft8toSPy-H-3dQqJdvTUikwGDmyTmNOgGChtGCGqM3g0PjdAQATDai08ryAJRBJ8seMnrx_gC57DaX:1p7dPx:lTdSqADl-RHC3a175-gc-Z1Bmsmb4ynqhkclmOMa3ZM','2023-01-03 14:16:29.532110'),('nc0ubd6na4ov2j8hlnmmbqd66f9vpwhr','.eJxVjDsOwjAQRO_iGlleB_8o6TmDtbt2cADZUpxUiLuTSCmgnHlv5i0irkuJa89znJK4CABx-i0J-ZnrTtID671JbnWZJ5K7Ig_a5a2l_Loe7t9BwV62NRrKCu0QSCk_eganGHwAvWVrtPLsMTtnkjHeAdPZAiUbYEx6cExWfL7t9Tdp:1pBK0b:CCUvVIG-Z2BQYL1cX6Jii5YBnmbl5Dacz8z311_Mc0I','2023-01-13 18:21:33.350849'),('nrc1qtrh3gp6y1mv16tcwa4z3k9wedow','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1ptTCc:2eK3faw2vfYEYHYZRmFkZQMLjqIg6cogCNPntEK71hk','2023-05-15 13:04:26.298243'),('onb1ima6g9q2k20w7p1cruxauuu10pr8','.eJxVjMsOwiAQRf-FtSGU4dFx6d5vIFMYpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJnYcXpd5soPrjuIN2p3pqMra7LPMldkQft8toSPy-H-3dQqJdvTUikwGDmyTmNOgGChtGCGqM3g0PjdAQATDai08ryAJRBJ8seMnrx_gC57DaX:1pMU2F:umFsg0UNoGk_LXw882Dcjfg1mMonN8M2FSKbMJukVlA','2023-02-13 13:17:23.856140'),('opvlzjbzwhkbxrshotzzmvuyjajz0piv','.eJxVjDsOwjAQBe_iGln-e5eSnjNY6w84gGwpTirE3UmkFNC-mXlvFmhdalhHmcOU2ZlpdvrdIqVnaTvID2r3zlNvyzxFviv8oINfey6vy-H-HVQadavBIiTnqIAyiEaBksJCMoRRWh-ltNEKR1Ckd1FoyJte6IY-64ReGPb5ArDWNtE:1oiJit:YhZjaU5N0Cr4-QbRsxBK-pzJSQsI65OVfrXwhOGWHGE','2022-10-25 18:11:23.991546'),('oqt8fvjz10ypkacc3p8i4yuw2o5mzmc6','.eJxVjMsOwiAQRf-FtSGU4dFx6d5vIFMYpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJnYcXpd5soPrjuIN2p3pqMra7LPMldkQft8toSPy-H-3dQqJdvTUikwGDmyTmNOgGChtGCGqM3g0PjdAQATDai08ryAJRBJ8seMnrx_gC57DaX:1p8LPN:5YtlxC0ADVlUAP3YfngdnQVYXjxzB4IzSTz9gjZuGCw','2023-01-05 13:14:49.481501'),('p0ok1lrahk1ils4ynr7exd1vzea614rq','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1pNMlM:nLU2YWszUMneuP9Wy561d1EDlDCn8UweawU_fdXYkQE','2023-02-15 23:43:36.324926'),('pbz3tkxqtfg1l0rf8626gf9fi2ap5v3l','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1pnLdo:27mL6PvsIGfEA-TgajpgIiR7lcFqSRQvyCONmoCBYog','2023-04-28 15:47:12.797364'),('pc6bj03n82gdjww1wqx9e9uq2jkkju58','.eJxVj8sKgzAQRf8laytxNDF22X2_IUweo1ZJwJhV6b83ggW7G84998K8mca8Tzonv-nZsTsTrLoyg3bx4QjcC8MYaxvDvs2mPpT6TFP9jM6vj9P9G5gwTaVNvZe97JQBRCAJKFAMRnDZCzFIUugGImoUCGG47MB6x8ulyDXK-YbKqJ28XeZQxoBDe-PtDdQPx7xfeMsLD1FH0mP2qUTt4c1r-QMqhi6vhTWfL7SaTz8:1phAzm:3VIJk02iWY05DoaSUpuE5EaDc3PkZ7z40-nPccFxlkw','2023-04-11 15:12:22.883447'),('pywpv5sot1aeqene8r6ev0rx2jzt1agj','.eJxVjMsOwiAQRf-FtSGU4dFx6d5vIFMYpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJnYcXpd5soPrjuIN2p3pqMra7LPMldkQft8toSPy-H-3dQqJdvTUikwGDmyTmNOgGChtGCGqM3g0PjdAQATDai08ryAJRBJ8seMnrx_gC57DaX:1pBIiC:J2ojZLciZAP-1Sht5eJgpTF9N5SXKI5WyaPu16NusCY','2023-01-13 16:58:28.853062'),('qc6u71eorq0moh72lg8x09723yihv0pn','.eJxVjMsOwiAQRf-FtSHlUaAu3fsNZIYZpGogKe3K-O_apAvd3nPOfYkI21ri1nmJM4mzGMXpd0NID647oDvUW5Op1XWZUe6KPGiX10b8vBzu30GBXr61cx7RZgNJp-wnzAOFQStmFxgDZzY2sVEezGQJSY9A2qiQQPvsQXnx_gAMazjE:1ovySh:9F2yVLMeWtE0K7qGGHD1zTlhKDl7ZgN1XkEKqJDrYBo','2022-12-02 10:19:07.485133'),('qmfu2t01qe9tb3f9tep3qpcyev0d3gel','.eJxVjDsOwjAQBe_iGln-e5eSnjNY6w84gGwpTirE3UmkFNC-mXlvFmhdalhHmcOU2ZlpdvrdIqVnaTvID2r3zlNvyzxFviv8oINfey6vy-H-HVQadavBIiTnqIAyiEaBksJCMoRRWh-ltNEKR1Ckd1FoyJte6IY-64ReGPb5ArDWNtE:1ol9KZ:zY-nfet1-3o9JCrW-6_ZJEPe7YRidZKlIZjH688lpTg','2022-11-02 13:41:59.342322'),('qoksxz50zgd24bzrlnz9jgcezjqo4nyx','.eJxVjMsOwiAQRf-FtSGU4dFx6d5vIFMYpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJnYcXpd5soPrjuIN2p3pqMra7LPMldkQft8toSPy-H-3dQqJdvTUikwGDmyTmNOgGChtGCGqM3g0PjdAQATDai08ryAJRBJ8seMnrx_gC57DaX:1pMwZL:_aTMGUxW9WHuaN-ucqvS5BURKRiHA3JHhM0Zkr318T4','2023-02-14 19:45:27.459227'),('qwr5h45ukdkputz8xtm2stl93z4m19z6','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1pZCv5:nmVSSC70OmyVbqtU46QPv_iG6H7F8QsW6TYwrKqXCGA','2023-03-20 15:38:35.259142'),('rfxmega1pt4jfowy58wx2vptgn8dwrhy','e30:1oiI2C:4-bshd_J8BYXqxzsHdJJbi1QqaLWXqtGSjlcZFxwbxY','2022-10-25 16:23:12.330277'),('rn0w1micd0itow5jdvtd9syzdm1jpl3x','.eJxVjMsOwiAQRf-FtSGU4dFx6d5vIFMYpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJnYcXpd5soPrjuIN2p3pqMra7LPMldkQft8toSPy-H-3dQqJdvTUikwGDmyTmNOgGChtGCGqM3g0PjdAQATDai08ryAJRBJ8seMnrx_gC57DaX:1p55Qr:2ya-RrePj7WKmwK3ggSNUCmGFaVrn9WLwlCT2N_3eTk','2022-12-27 13:34:53.444320'),('s6i3c5zhc71ii19zdsenvvrxror23z64','.eJxVjMsOwiAQRf-FtSGU4dFx6d5vIFMYpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJnYcXpd5soPrjuIN2p3pqMra7LPMldkQft8toSPy-H-3dQqJdvTUikwGDmyTmNOgGChtGCGqM3g0PjdAQATDai08ryAJRBJ8seMnrx_gC57DaX:1pCkAU:x4MCuSNfzDWpFkyaBbcHjr1bPqCBcnGjJ1kEKiQM0wg','2023-01-17 16:29:38.058473'),('szbc1om8xyvaaoq98qqjonbs0gkq49h1','.eJxVj8sKwjAQRf8lay3p1ElTl-79hjB5TFtbEmialfjvpqCgu-Hccy_MUxgq-2RKDpuZvbgKFKdfZsktIR6Bf1AcU-NS3LfZNofSfNLc3JMP6-3j_g1MlKfa5j6oXl20BSJgBYSEg0WpesRBsSY_MHOrAdFKdQEXvKyXZt9qH1quo24KbpljHQMJ3Vl2Z8AvTmX_5arymExiM5aQa9Qd3rzWP-AkyJe1svb1BrSfT0E:1pmFRT:-z76NRWb-AsHdz85KD5tYS1BQDhzjcKn1Ce3cpB_Tdo','2023-04-25 14:57:55.177519'),('tpauu5vvgr7sjy545m3s0quvpsy8h0wq','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1poT4y:lqzJ7AHvXPAbPUaq1s8JyP3gIw7POtcCa3qGMRwCMSU','2023-05-01 17:55:52.444580'),('tuvr2itrvs8tnteuo0wqdwsmcjzoy3ng','.eJxVjMsOwiAQRf-FtSHlUaAu3fsNZIYZpGogKe3K-O_apAvd3nPOfYkI21ri1nmJM4mzGMXpd0NID647oDvUW5Op1XWZUe6KPGiX10b8vBzu30GBXr61cx7RZgNJp-wnzAOFQStmFxgDZzY2sVEezGQJSY9A2qiQQPvsQXnx_gAMazjE:1ow5vh:0xAvELAJFVX-66cvlEyONhgqEQto2yoa8D693jENW3o','2022-12-02 18:17:33.709891'),('u3s8u1md5bzy2j26kin5eo82puty7ovw','.eJxVjMsOwiAQRf-FtSGU4dFx6d5vIFMYpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJnYcXpd5soPrjuIN2p3pqMra7LPMldkQft8toSPy-H-3dQqJdvTUikwGDmyTmNOgGChtGCGqM3g0PjdAQATDai08ryAJRBJ8seMnrx_gC57DaX:1pAsdW:4JCwvN0SwQmgkPhrFmISRjYQyPjiBlZeJklae47pNAU','2023-01-12 13:07:54.593865'),('uc0bur56vsqccdc5ibup5q2b5eujx2xp','.eJxVjMsOwiAQRf-FtSHlUaAu3fsNZIYZpGogKe3K-O_apAvd3nPOfYkI21ri1nmJM4mzGMXpd0NID647oDvUW5Op1XWZUe6KPGiX10b8vBzu30GBXr61cx7RZgNJp-wnzAOFQStmFxgDZzY2sVEezGQJSY9A2qiQQPvsQXnx_gAMazjE:1olW3C:1Op5qFIoHHZUW9NRxVRG0466rN5Gm6rYNQw6TiKW2gE','2022-11-03 13:57:34.545295'),('ush0skcnwzqhg3aj77m0o9hwdx81zz9h','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1pbne3:usLH8fJ-d4PzEGBR054ipI7uhZcC35CA_jEAdCaFSGI','2023-03-27 19:15:43.929832'),('v656syc3v1fmd9tuii98k3fdk4jzc321','.eJxVjMsOwiAQRf-FtSHlUaAu3fsNZIYZpGogKe3K-O_apAvd3nPOfYkI21ri1nmJM4mzGMXpd0NID647oDvUW5Op1XWZUe6KPGiX10b8vBzu30GBXr61cx7RZgNJp-wnzAOFQStmFxgDZzY2sVEezGQJSY9A2qiQQPvsQXnx_gAMazjE:1olZrE:MCoVVttac27wdbax6F1yI285vtwV3y5rRdPjsl6rMLU','2022-11-03 18:01:28.819815'),('vblgic340ca7pf1yc2xqivxmyauizvvg','.eJxVjDsOwjAQBe_iGln-e5eSnjNY6w84gGwpTirE3UmkFNC-mXlvFmhdalhHmcOU2ZlpdvrdIqVnaTvID2r3zlNvyzxFviv8oINfey6vy-H-HVQadavBIiTnqIAyiEaBksJCMoRRWh-ltNEKR1Ckd1FoyJte6IY-64ReGPb5ArDWNtE:1ohwYB:MX0-VkppO2O2Jzvfb4nIezTIO4HCiTGRRoZZKcEp4BQ','2022-10-24 17:26:47.693959'),('vfukqyf48velgftt2a7urstheokmmtil','.eJxVjDsOwjAQRO_iGlleB_8o6TmDtbt2cADZUpxUiLuTSCmgnHlv5i0irkuJa89znJK4CABx-i0J-ZnrTtID671JbnWZJ5K7Ig_a5a2l_Loe7t9BwV62NRrKCu0QSCk_eganGHwAvWVrtPLsMTtnkjHeAdPZAiUbYEx6cExWfL7t9Tdp:1ovibv:Kg8nha4xshbfqWtMhtRiisJbw1UOc5JIMTsDWiBxOhA','2022-12-01 17:23:35.556371'),('virdu8acyljmm60vo41kv7t0oxdkjb2k','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1pSMCa:zVlh67TpdH3GuEvdGkReNZ_nHXhxjb3x27yFjyRzJC0','2023-03-01 18:08:20.398756'),('visvkmp0k9d8gnpoz8qrvvksgdeqvuzn','.eJxVjMsOwiAQRf-FtSGU4dFx6d5vIFMYpGogKe3K-O_apAvd3nPOfYlA21rC1nkJcxJnYcXpd5soPrjuIN2p3pqMra7LPMldkQft8toSPy-H-3dQqJdvTUikwGDmyTmNOgGChtGCGqM3g0PjdAQATDai08ryAJRBJ8seMnrx_gC57DaX:1pBKZ8:q5iaykseDNubdzxQdc4JrilwKf0HGwsRms-9tEH7F_Y','2023-01-13 18:57:14.440359'),('vsdkymsz6e2m82r7odn1cr6pvep05jia','.eJxVjMsOwiAQRf-FtSHlUaAu3fsNZIYZpGogKe3K-O_apAvd3nPOfYkI21ri1nmJM4mzGMXpd0NID647oDvUW5Op1XWZUe6KPGiX10b8vBzu30GBXr61cx7RZgNJp-wnzAOFQStmFxgDZzY2sVEezGQJSY9A2qiQQPvsQXnx_gAMazjE:1olaI5:TwkLmQ1saTbazUZVMRZQN8Z-7i1sgaXI2v-htoX0JrA','2022-11-03 18:29:13.589571'),('vw9ziir30q39xulwn4lvxelcw2nbfbq2','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1pNa9G:lnAfu98gtxf-4l5YlbxlfaQQE3oPIFze1XEfUuuiLok','2023-02-16 14:01:10.094094'),('wkhpd7t9v9wx6xnqxh92gkyf3d8ajy1q','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1pWiTV:UjYcSfGvvTTowbX0cU-mEM9ijFB_DyEQpFQRh3WWd6w','2023-03-13 18:43:49.820113'),('wrhgnrglim2xts8r26pww17nee9n1sdj','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1pbl6L:O2KuYgfF3yGs4GkUMSeKPMSsVwu95aIdjfeFnDpTRHo','2023-03-27 16:32:45.630489'),('x5gwt7c28a50d4bta1zvrq9ukeh84i10','.eJxVjMsOwiAQRf-FtSHlUaAu3fsNZIYZpGogKe3K-O_apAvd3nPOfYkI21ri1nmJM4mzGMXpd0NID647oDvUW5Op1XWZUe6KPGiX10b8vBzu30GBXr61cx7RZgNJp-wnzAOFQStmFxgDZzY2sVEezGQJSY9A2qiQQPvsQXnx_gAMazjE:1ow5uw:U8ka-A9JUTWaXY-vwxuuqqC05Ky_J9nq2zy29kcYcQ4','2022-12-02 18:16:46.065333'),('x8xt66dx2eu7t3jamsolnepwa6em3zh7','.eJxVjDsOwjAQRO_iGlleB_8o6TmDtbt2cADZUpxUiLuTSCmgnHlv5i0irkuJa89znJK4CABx-i0J-ZnrTtID671JbnWZJ5K7Ig_a5a2l_Loe7t9BwV62NRrKCu0QSCk_eganGHwAvWVrtPLsMTtnkjHeAdPZAiUbYEx6cExWfL7t9Tdp:1pBJ64:e2OAlzC8uRmyr9FIGA7Op44V8ymxKK-bwRiskqRSgZ4','2023-01-13 17:23:08.684704'),('xkyitd2ddu6o0ywi96sgmccnehz5ampa','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1puyXo:t5QSCBDmmNxM38NfMrigGiQTM__ilRwaEIwJH4die2M','2023-05-19 16:44:32.235475'),('zdwspw20zewbklxr23jn03kq5r8xmgvx','.eJxVjDsOwyAQRO9CHSFAXj4p0-cMaGHZ4CTCkrErK3ePLblIutG8N7OJiOtS49rLHEcSVwHi8tslzK_SDkBPbI9J5qkt85jkociTdnmfqLxvp_t3ULHXfc2uWGcHnwyiYWsQEEICZR1AsOyRAjNrbwCSsoPJhdSePJP2VDSLzxfj1zgZ:1pNJUy:JADVgv0__XUQZfEmMZOIeS4nwO9Nf6i1h2k3QT4V9mg','2023-02-15 20:14:28.136093');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:16
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `rating` varchar(100) NOT NULL,
  `feedback_category` varchar(1000) NOT NULL,
  `description` longtext,
  `user_id` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'2','report bug','Not Working Properly',5,1),(2,'8','suggestions','Not Working Properly ..Fix it',5,1),(3,'6 star','compliment','Yeah..Good',5,1),(4,'8 star','report bug','Not Working',5,1);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:17
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer` varchar(100) NOT NULL,
  `customer_email` varchar(254) DEFAULT NULL,
  `billing_address` longtext,
  `message` longtext NOT NULL,
  `total_amount` decimal(9,2) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (2,'Joe smith','calendar@gmail.com','Noida','07303699947',5000.00,0,1);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:10
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `invoice_item`
--

DROP TABLE IF EXISTS `invoice_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `service` longtext NOT NULL,
  `description` longtext NOT NULL,
  `quantity` int NOT NULL,
  `rate` decimal(9,2) NOT NULL,
  `amount` decimal(9,2) NOT NULL,
  `customer_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_item_customer_id_dd82c3b0_fk_invoice_id` (`customer_id`),
  CONSTRAINT `invoice_item_customer_id_dd82c3b0_fk_invoice_id` FOREIGN KEY (`customer_id`) REFERENCES `invoice` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_item`
--

LOCK TABLES `invoice_item` WRITE;
/*!40000 ALTER TABLE `invoice_item` DISABLE KEYS */;
INSERT INTO `invoice_item` VALUES (3,'Hp','Ram increment',1,5000.00,5000.00,2,1);
/*!40000 ALTER TABLE `invoice_item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:09
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `nearby_amenities`
--

DROP TABLE IF EXISTS `nearby_amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nearby_amenities` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `distance` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nearby_amenities`
--

LOCK TABLES `nearby_amenities` WRITE;
/*!40000 ALTER TABLE `nearby_amenities` DISABLE KEYS */;
INSERT INTO `nearby_amenities` VALUES (1,'Airport','ACC1','0',1),(2,'Ferry','ACC203','0',1),(3,'Shopping','ACC65','0',1),(4,'Railway','HAC199','0',1),(5,'Beach','RST5','0',1);
/*!40000 ALTER TABLE `nearby_amenities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:11
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `newsletter` tinyint(1) NOT NULL,
  `blog_updates` tinyint(1) NOT NULL,
  `new_channel_announcement` tinyint(1) NOT NULL,
  `surveys` tinyint(1) NOT NULL,
  `booking_notification` tinyint(1) NOT NULL,
  `payout_notification` tinyint(1) NOT NULL,
  `guest_review` tinyint(1) NOT NULL,
  `guest_notification` tinyint(1) NOT NULL,
  `calendar_update` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,1,1,1,0,0,1,1,1,1,5,1);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:15
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_category` varchar(20) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `shipping_cost` varchar(50) NOT NULL,
  `unit_price` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'Books','Credit Card','39',59.00);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:14
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `other_rooms`
--

DROP TABLE IF EXISTS `other_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `other_rooms` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `other_rooms`
--

LOCK TABLES `other_rooms` WRITE;
/*!40000 ALTER TABLE `other_rooms` DISABLE KEYS */;
INSERT INTO `other_rooms` VALUES (1,'Common area',1),(2,' Dining room',1),(3,'Drying room',1),(4,'Eating area',1),(5,'Fitness room',1),(6,'Games room',1),(7,'Hall',1),(8,' Laundry',1),(9,' Library',1),(10,' Living room',1),(11,'Lounge',1),(12,'Office',1),(13,'Pantry',1),(14,' Rumpus room',1),(15,' Sauna',1),(16,'Studio',1),(17,'Study',1),(18,'TV room',1),(19,'Work studio',1);
/*!40000 ALTER TABLE `other_rooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:17
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `partner`
--

DROP TABLE IF EXISTS `partner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partner` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(40) NOT NULL,
  `subtitle` varchar(40) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `shortdescription` longtext NOT NULL,
  `description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `category_id` bigint NOT NULL,
  `url` longtext,
  PRIMARY KEY (`id`),
  KEY `partner_category_id_8b30a49d_fk_partner_category_id` (`category_id`),
  CONSTRAINT `partner_category_id_8b30a49d_fk_partner_category_id` FOREIGN KEY (`category_id`) REFERENCES `partner_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partner`
--

LOCK TABLES `partner` WRITE;
/*!40000 ALTER TABLE `partner` DISABLE KEYS */;
INSERT INTO `partner` VALUES (3,'4u restro','dfb','partner/219988_rpMXKPI.png','dvbf','dfbgn','2022-12-09 21:40:03.224187','2022-12-09 21:40:03.224187',1,3,'fbdgn');
/*!40000 ALTER TABLE `partner` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:12
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `partner_category`
--

DROP TABLE IF EXISTS `partner_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partner_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partner_category`
--

LOCK TABLES `partner_category` WRITE;
/*!40000 ALTER TABLE `partner_category` DISABLE KEYS */;
INSERT INTO `partner_category` VALUES (3,'Zomato','partner_category/marisol-benitez-Os8IuLEsSJU-unsplash.jpg','2022-12-09 21:38:42.933173','2022-12-09 21:38:42.933173',1);
/*!40000 ALTER TABLE `partner_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:11
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `policy`
--

DROP TABLE IF EXISTS `policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `policy` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `policy_number` varchar(100) NOT NULL,
  `policy_name` varchar(100) NOT NULL,
  `policy_type` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policy`
--

LOCK TABLES `policy` WRITE;
/*!40000 ALTER TABLE `policy` DISABLE KEYS */;
/*!40000 ALTER TABLE `policy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:14
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `property_role`
--

DROP TABLE IF EXISTS `property_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_role`
--

LOCK TABLES `property_role` WRITE;
/*!40000 ALTER TABLE `property_role` DISABLE KEYS */;
INSERT INTO `property_role` VALUES (1,'Property Owner','2022-12-27 21:30:46.957885','2022-12-27 21:31:50.020376',1),(2,'Property Manager','2022-12-27 21:30:57.357122','2022-12-27 21:30:57.357122',1);
/*!40000 ALTER TABLE `property_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:17
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `rate`
--

DROP TABLE IF EXISTS `rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rate` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `rate_name` varchar(100) NOT NULL,
  `included_occupants` varchar(100) NOT NULL,
  `extra_adult_charge` varchar(100) NOT NULL,
  `extra_children_charge` varchar(100) NOT NULL,
  `weekend_surcharge` varchar(100) NOT NULL,
  `disable_rates` tinyint(1) NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) NOT NULL,
  `rate_type_id` bigint NOT NULL,
  `day_surcharge` varchar(100) NOT NULL,
  `user_id` int NOT NULL,
  `rental_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rate_rate_type_id_cac9ec6c_fk_rate_type_id` (`rate_type_id`),
  CONSTRAINT `rate_rate_type_id_cac9ec6c_fk_rate_type_id` FOREIGN KEY (`rate_type_id`) REFERENCES `rate_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rate`
--

LOCK TABLES `rate` WRITE;
/*!40000 ALTER TABLE `rate` DISABLE KEYS */;
INSERT INTO `rate` VALUES (12,'sdcv','dcvbf','sdvbfg','dfbg','vdfbgv',1,'sdvfbg',1,'2022-12-30 19:36:51.387927','2022-12-30 19:36:51.387927',1,'[\'1\']',5,54);
/*!40000 ALTER TABLE `rate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:10
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `rate_type`
--

DROP TABLE IF EXISTS `rate_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rate_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ratetype_name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rate_type`
--

LOCK TABLES `rate_type` WRITE;
/*!40000 ALTER TABLE `rate_type` DISABLE KEYS */;
INSERT INTO `rate_type` VALUES (1,'Daily Rate',1,'2022-10-13 14:38:42.119130','2022-10-13 14:39:56.759451',1),(2,'Weekly Rate',1,'2022-10-13 14:38:49.975717','2022-10-13 14:38:49.975717',1),(3,'Monthly Rate',1,'2022-10-13 14:38:58.430052','2022-10-13 14:38:58.430052',1),(4,'Special Rate',1,'2022-10-13 14:39:15.758552','2022-10-13 14:39:15.758552',1),(5,'Hourly Rate',1,'2022-10-13 14:39:31.199263','2022-10-13 14:39:31.199263',1),(6,'Fixed Monthly Rate',1,'2022-10-13 14:39:47.425632','2022-10-13 14:39:47.425632',1),(10,'Weekly Rate',1,'2022-10-29 14:25:08.927092','2022-10-29 14:25:08.927092',1),(11,'Weekly Rate',1,'2022-10-29 14:26:04.461865','2022-10-29 14:26:04.461865',1),(12,'Weekly Rate',1,'2022-10-29 14:26:30.807750','2022-10-29 14:26:30.807750',11),(13,'Weekly Rate',0,'2022-11-17 13:25:43.917306','2022-11-17 17:13:15.156329',5);
/*!40000 ALTER TABLE `rate_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:11
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental`
--

LOCK TABLES `rental` WRITE;
/*!40000 ALTER TABLE `rental` DISABLE KEYS */;
INSERT INTO `rental` VALUES (86,'Aman Rajput11','<p>hey</p>','2023-01-06 20:51:16.932424',1,'2023-04-11 14:16:29.853520',5,'<p><strong>hey1</strong></p>','rentals/daria-nepriakhina-LwnIuhH_5Q4-unsplash_23mUdaS.jpg'),(87,'Hill','<p>fhbgmgm</p>','2023-01-06 21:00:27.778535',1,'2023-04-11 13:30:15.590622',5,'<p>fdhfhng</p>','rentals/bernard-hermant-g9ydDMdpfM0-unsplash.jpg'),(88,'Aman Rajput','<p>sdfsd</p>','2023-01-06 21:04:04.982335',1,'2023-01-06 21:04:04.982335',5,'<p>sfdf</p>','rentals/andrea-davis-4oapbWR-8ZI-unsplash.jpg'),(89,'Aman Rajput','<p>fsdf</p>','2023-01-06 21:06:50.919126',1,'2023-01-06 21:07:27.425769',5,'<p>dgfsdfsd</p>','rentals/bernard-hermant-g9ydDMdpfM0-unsplash_j8SWSAG.jpg'),(90,'villa','<p>fdbfr</p>','2023-01-06 21:45:56.055822',1,'2023-01-06 21:45:56.055822',5,'<p>afge</p>','rentals/daria-nepriakhina-LwnIuhH_5Q4-unsplash_Rh6myiS.jpg'),(91,'Lotus Garden','<p>eghrnjt</p>','2023-01-06 23:28:47.537586',1,'2023-02-14 13:30:40.570228',5,'<p>tghrt</p>','rentals/gus-ruballo-h5QNclJUiA8-unsplash.jpg'),(93,'Aashiyana','sdfegrxthcjyuvbnm;l','2023-01-11 15:39:16.968058',1,'2023-01-11 15:39:16.968058',14,'sdsgfrthyjukilk/','rentals/holidu.png'),(94,'Paramount11','<p>Asap</p>','2023-01-11 16:47:21.523682',1,'2023-01-11 16:47:21.523682',5,'<p>Asap</p>','rentals/stayz.png'),(95,'Aditya Singh','<p>grehrt</p>','2023-05-01 15:25:14.110419',1,'2023-05-03 13:43:59.954593',5,'<p>wdewg</p>','rentals/paul-kapischka-NLbMgDBio4Y-unsplash.jpg');
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

-- Dump completed on 2023-06-07  0:43:12
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `rentals_eventmember`
--

DROP TABLE IF EXISTS `rentals_eventmember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rentals_eventmember` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `event_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rentals_eventmember_event_id_user_id_1e2d1cc6_uniq` (`event_id`,`user_id`),
  KEY `rentals_eventmember_user_id_05f62ede_fk_auth_user_id` (`user_id`),
  CONSTRAINT `rentals_eventmember_event_id_2ef7b4c4_fk_calendar_id` FOREIGN KEY (`event_id`) REFERENCES `calendar` (`id`),
  CONSTRAINT `rentals_eventmember_user_id_05f62ede_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rentals_eventmember`
--

LOCK TABLES `rentals_eventmember` WRITE;
/*!40000 ALTER TABLE `rentals_eventmember` DISABLE KEYS */;
/*!40000 ALTER TABLE `rentals_eventmember` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:12
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rentals_gallery`
--

LOCK TABLES `rentals_gallery` WRITE;
/*!40000 ALTER TABLE `rentals_gallery` DISABLE KEYS */;
INSERT INTO `rentals_gallery` VALUES (128,'rentals-gallery/gustavo-zambelli-nEvzSXBIhiU-unsplash_VXDwGLR.jpg',5,75,NULL),(129,'rentals-gallery/r-architecture-oGmf8o53LeE-unsplash_1_OMs4fgt.jpg',5,75,NULL),(130,'rentals-gallery/andrea-davis-4oapbWR-8ZI-unsplash_UanqiXr.jpg',5,75,NULL),(131,'rentals-gallery/bernard-hermant-j__9DULAstQ-unsplash_DVtLFXS.jpg',5,75,NULL),(132,'rentals-gallery/r-architecture-oGmf8o53LeE-unsplash_vZACdvo.jpg',5,75,NULL),(133,'rentals-gallery/roberto-nickson-6FZf3yzuodE-unsplash_U2uJ5pv.jpg',5,75,NULL),(134,'rentals-gallery/bernard-hermant-g9ydDMdpfM0-unsplash_3ZfW8VP.jpg',5,87,10),(135,'rentals-gallery/gustavo-zambelli-nEvzSXBIhiU-unsplash_WpQPC3G.jpg',5,87,0),(136,'rentals-gallery/r-architecture-oGmf8o53LeE-unsplash_1_ohztx9Q.jpg',5,87,2),(137,'rentals-gallery/andrea-davis-4oapbWR-8ZI-unsplash_SacuB5e.jpg',5,87,1),(139,'rentals-gallery/r-architecture-oGmf8o53LeE-unsplash_TF13ker.jpg',5,87,5),(140,'rentals-gallery/roberto-nickson-6FZf3yzuodE-unsplash_vjw1DKS.jpg',5,87,4),(141,'rentals-gallery/paul-kapischka-NLbMgDBio4Y-unsplash_zOi7toe.jpg',5,87,3),(142,'rentals-gallery/gus-ruballo-h5QNclJUiA8-unsplash_FWhgyK0.jpg',5,87,8),(143,'rentals-gallery/chuttersnap-Ch3WwM6PcsA-unsplash_AfkdepC.jpg',5,87,6),(144,'rentals-gallery/roberto-nickson-so3wgJLwDxo-unsplash.jpg',5,87,7),(145,'rentals-gallery/brian-babb-XbwHrt87mQ0-unsplash.jpg',5,87,9),(146,'rentals-gallery/casevacanza.png',5,86,4),(147,'rentals-gallery/cozycozy.png',5,86,0),(148,'rentals-gallery/e-domizil.png',5,86,1),(149,'rentals-gallery/egencia.png',5,86,2),(150,'rentals-gallery/Expedia.png',5,86,3);
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

-- Dump completed on 2023-06-07  0:43:16
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `rental_amenities`
--

DROP TABLE IF EXISTS `rental_amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_amenities` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `amenities` varchar(500) NOT NULL,
  `rental_id` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_amenities`
--

LOCK TABLES `rental_amenities` WRITE;
/*!40000 ALTER TABLE `rental_amenities` DISABLE KEYS */;
INSERT INTO `rental_amenities` VALUES (1,5,'[\'\']',67,1),(2,5,'',68,1),(3,5,'',69,1),(4,5,'[\' Beach chairs\', \'Bicycles\', \' Boat\', \'Canoe kayak\', \'Golf cart\', \' Golf clubs\']',70,1),(5,5,'',71,1),(6,5,'',72,1),(7,5,'',73,1),(8,5,'',74,1),(9,5,'',75,1),(10,5,'',76,1),(11,5,'[\' Accept credit card\', \' Accessible 24/7\', \'Children welcome\', \'Elevator in building\', \'Low allergen environment\']',77,1),(12,5,'',78,1),(13,5,'',79,1),(14,5,'',80,1),(15,5,'',81,1),(16,5,'',82,1),(17,5,'',83,1),(18,5,'',84,1),(19,5,'[\'Parking\', \'Pets allowed\', \' Essentials\', \'Washing machine\', \'Air conditioning\', \'General heating\', \'Internet wireless\', \'Kitchen stove\']',85,1),(20,5,'[\'ACC113\', \'ACC114\', \'ACC115\', \'ACC116\']',86,1),(21,5,'[\'Parking\', \'Pets allowed\', \' Essentials\', \'Washing machine\', \'Air conditioning\', \'General heating\', \'Internet wireless\', \'Kitchen stove\', \'Iron and board\', \' Jacuzzi indoor\', \' Private heated spa outdoor swimming pool\', \'Private steam sauna\', \' Private unheated spa indoor swimming pool\', \' Private unheated spa outdoor swimming pool\', \'Shared dry sauna\', \'Parking\', \'Beach front\', \'Downtown\', \' Essentials\', \'Washing machine\', \'Air conditioning\']',87,1),(22,5,'',88,1),(23,5,'',89,1),(24,5,'',90,1),(25,5,'',91,1),(26,5,'',92,1),(27,5,'',95,1);
/*!40000 ALTER TABLE `rental_amenities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:09
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `rental_basic`
--

DROP TABLE IF EXISTS `rental_basic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_basic` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `rental_type` varchar(100) NOT NULL,
  `rental_basis` varchar(100) NOT NULL,
  `floorspace` varchar(100) NOT NULL,
  `floorspace_units` varchar(100) NOT NULL,
  `grounds` varchar(100) NOT NULL,
  `grounds_units` varchar(100) NOT NULL,
  `floors_building` varchar(100) NOT NULL,
  `entrance` varchar(100) NOT NULL,
  `rental_licence` varchar(100) NOT NULL,
  `user_id` int NOT NULL,
  `rental_id` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `bathrooms` varchar(100) NOT NULL,
  `childs` varchar(100) NOT NULL,
  `living_room` varchar(100) NOT NULL,
  `persons` varchar(100) NOT NULL,
  `rooms` varchar(100) NOT NULL,
  `toilets` varchar(100) NOT NULL,
  `total_beds` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_basic`
--

LOCK TABLES `rental_basic` WRITE;
/*!40000 ALTER TABLE `rental_basic` DISABLE KEYS */;
INSERT INTO `rental_basic` VALUES (1,'','','','','','','','','',5,5,1,'1','1','1','1','1','1','1'),(2,'','','','','','','','','',5,58,1,'1','1','1','1','1','1','1'),(3,'','','','','','','','','',5,59,1,'1','1','1','1','1','1','1'),(4,'','','','','','','','','',5,60,1,'1','1','1','1','1','1','1'),(5,'','','','','','','','','',5,61,1,'1','1','1','1','1','1','1'),(6,'','','','','','','','','',5,62,1,'1','1','1','1','1','1','1'),(7,'','','','','','','','','',5,63,1,'1','1','1','1','1','1','1'),(8,'','','','','','','','','',5,64,1,'1','1','1','1','1','1','1'),(9,'20','Entire house or apartment','2','ft2','250','ft2','4','Common - with security','12345678',5,65,1,'1','1','1','1','1','1','1'),(10,'20','Room with own facilities','2','ft2','250','ft2','4','Common - with security','12345678',5,66,1,'1','1','1','1','1','1','1'),(11,'','','','','','','','','',5,67,1,'1','1','1','1','1','1','1'),(12,'','','','','','','','','',5,68,1,'1','1','1','1','1','1','1'),(13,'','','','','','','','','',5,69,1,'1','1','1','1','1','1','1'),(14,'','','','','','','','','',5,70,1,'1','1','1','1','1','1','1'),(15,'','','','','','','','','',5,71,1,'1','1','1','1','1','1','1'),(16,'','','','','','','','','',5,72,1,'1','1','1','1','1','1','1'),(17,'','','','','','','','','',5,73,1,'1','1','1','1','1','1','1'),(18,'','','','','','','','','',5,74,1,'1','1','1','1','1','1','1'),(19,'','','','','','','','','',5,75,1,'1','1','1','1','1','1','1'),(20,'','','','','','','','','',5,76,1,'1','1','1','1','1','1','1'),(21,'','','','','','','','','',5,77,1,'1','1','1','1','1','1','1'),(22,'','','','','','','','','',5,78,1,'1','1','1','1','1','1','1'),(23,'','','','','','','','','',5,79,1,'1','1','1','1','1','1','1'),(24,'','','','','','','','','',5,80,1,'1','1','1','1','1','1','1'),(25,'','','','','','','','','',5,81,1,'1','1','1','1','1','1','1'),(26,'','','','','','','','','',5,82,1,'1','1','1','1','1','1','1'),(27,'','','','','','','','','',5,83,1,'1','1','1','1','1','1','1'),(28,'','','','','','','','','',5,84,1,'1','1','1','1','1','1','1'),(29,'20','--Select--','','--Select--','','--Select--','','--Select--','',5,85,1,'1','1','1','1','1','1','1'),(30,'20','Room with own facilities','20','m2','240','m2','4','Common - without security','123456789',5,86,1,'1','4','1','8','2','1','1'),(31,'','','','','','','','','',5,87,1,'1','1','1','1','1','1','1'),(32,'','','','','','','','','',5,88,1,'1','1','1','1','1','1','1'),(33,'','','','','','','','','',5,89,1,'1','1','1','1','1','1','1'),(34,'20','Entire house or apartment','2','ft2','250','ft2','2','Common - with security','123456788',5,90,1,'1','1','1','1','1','1','1'),(35,'','','','','','','','','',5,91,1,'1','1','1','1','1','1','1'),(36,'','','','','','','','','',5,92,1,'1','1','1','1','1','1','1'),(37,'20','Entire house or apartment','24','ft2','2000','ft2','4','Common - without security','123456789',5,94,1,'1','1','1','1','1','1','1'),(38,'','','','','','','','','',5,95,1,'1','1','1','1','1','1','1');
/*!40000 ALTER TABLE `rental_basic` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:12
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `rental_basic_rates`
--

DROP TABLE IF EXISTS `rental_basic_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_basic_rates` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `currency` varchar(100) NOT NULL,
  `basic_night` varchar(100) NOT NULL,
  `weekend_night` varchar(100) NOT NULL,
  `guest_number` varchar(100) NOT NULL,
  `minimum_stay` varchar(100) NOT NULL,
  `maximum_stay` varchar(3000) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  `rental_id` int NOT NULL,
  `checkin_days` varchar(100) NOT NULL,
  `checkout_days` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_basic_rates`
--

LOCK TABLES `rental_basic_rates` WRITE;
/*!40000 ALTER TABLE `rental_basic_rates` DISABLE KEYS */;
INSERT INTO `rental_basic_rates` VALUES (1,'11','2500','4000','2','1','180',1,5,75,'True','True'),(2,'','','','','','',1,5,76,'True','True'),(3,'3','5000','12','--Select--','--Select--','--Select--',1,5,77,'True','True'),(4,'','','','','','',1,5,78,'True','True'),(5,'','','','','','',1,5,79,'True','True'),(6,'','','','','','',1,5,80,'True','True'),(7,'','','','','','',1,5,81,'True','True'),(8,'','','','','','',1,5,82,'True','True'),(9,'','','','','','',1,5,83,'True','True'),(10,'','','','','','',1,5,84,'True','True'),(11,'GBP','3000','4000','2','1','7',1,5,85,'[\'Sun\', \'Mon\', \'Tue\', \'Wed\', \'Thu\', \'Fri\', \'Sat\']','[\'Sun\', \'Mon\', \'Tue\', \'Wed\', \'Thu\', \'Fri\', \'Sat\']'),(12,'EUR','3.62','5.44','2','2','8',1,5,86,'[\'Sun\', \'Mon\', \'Tue\', \'Wed\', \'Thu\']','[\'Sun\', \'Mon\', \'Tue\', \'Wed\', \'Thu\', \'Fri\']'),(13,'EUR','4500','7000','4','5','11',1,5,87,'[\'Sun\', \'Mon\', \'Tue\']','[\'Sun\', \'Mon\', \'Tue\', \'Wed\', \'Thu\', \'Sat\']'),(14,'EUR','4','6','2','2','7',1,5,88,'[\'Sun\', \'Mon\', \'Tue\', \'Wed\']','[\'Thu\', \'Fri\', \'Sat\']'),(15,'','','','','','',1,5,89,'True','True'),(16,'INR','2000','','--Select--','--Select--','--Select--',1,5,90,'[]','[]'),(17,'','','','','','',1,5,91,'True','True'),(18,'','','','','','',1,5,92,'True','True'),(19,'','','','','','',1,5,95,'True','True');
/*!40000 ALTER TABLE `rental_basic_rates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:16
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `rental_beds`
--

DROP TABLE IF EXISTS `rental_beds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_beds` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(10000) NOT NULL,
  `no_of_beds` varchar(100) NOT NULL,
  `user_id` int NOT NULL,
  `rental_id` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_beds`
--

LOCK TABLES `rental_beds` WRITE;
/*!40000 ALTER TABLE `rental_beds` DISABLE KEYS */;
INSERT INTO `rental_beds` VALUES (1,'[\'Baby crib\', \'Child bed\', \'Double bed\', \'Fold-away bed\', \'King-size bed\', \'Loft bed\', \'Queen-size bed\', \'Sofa bed\', \'Single bed\']','[\'4\', \'5\', \'4\', \'3\', \'2\', \'3\', \'2\', \'2\', \'2\']',5,86,1),(4,'[\'Baby crib\', \'Child bed\', \'Double bed\', \'Fold-away bed\', \'King-size bed\', \'Loft bed\', \'Queen-size bed\', \'Sofa bed\', \'Single bed\']','[\'2\', \'2\', \'2\', \'2\', \'1\', \'1\', \'1\', \'1\', \'1\']',5,87,1),(5,'Baby Crib','5',5,90,1);
/*!40000 ALTER TABLE `rental_beds` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:11
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `rental_booking_rules`
--

DROP TABLE IF EXISTS `rental_booking_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_booking_rules` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `before_checkin_allow` varchar(1000) NOT NULL,
  `prefered_policy` varchar(1000) NOT NULL,
  `additional_policy_increase` varchar(1000) NOT NULL,
  `rates_increase` varchar(1000) NOT NULL,
  `additional_policy_decrease` varchar(1000) NOT NULL,
  `rates_decrease` varchar(1000) NOT NULL,
  `user_id` int NOT NULL,
  `rental_id` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_booking_rules`
--

LOCK TABLES `rental_booking_rules` WRITE;
/*!40000 ALTER TABLE `rental_booking_rules` DISABLE KEYS */;
INSERT INTO `rental_booking_rules` VALUES (1,'No advance notice required','Free cancellation upto 14 days:100% refund upto 14 days prior to check-in','Free cancellation upto 21 days:100% refund upto 21 days prior to check-in','14','Non-refundable:No refund for guest cancellation','7',5,86,1);
/*!40000 ALTER TABLE `rental_booking_rules` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:14
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `rental_channel`
--

DROP TABLE IF EXISTS `rental_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_channel` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `rental_id` int NOT NULL,
  `channels` varchar(1000) NOT NULL,
  `request_booking` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_channel`
--

LOCK TABLES `rental_channel` WRITE;
/*!40000 ALTER TABLE `rental_channel` DISABLE KEYS */;
INSERT INTO `rental_channel` VALUES (44,5,86,'[\'Airbnb\', \'Booking.com\', \'VRBO\', \'Expedia\', \'TripAdvisor\', \'Hotels.com\', \'Stayz\', \'e-domizil\']','[\'Airbnb\', \'Rentberry\', \'Cozycozy\']'),(45,5,95,'[\'Airbnb\', \'Booking.com\', \'VRBO\', \'Expedia\', \'e-domizil\']',NULL);
/*!40000 ALTER TABLE `rental_channel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:16
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `rental_channels`
--

DROP TABLE IF EXISTS `rental_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_channels` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `rental_id` int NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `channels` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_channels`
--

LOCK TABLES `rental_channels` WRITE;
/*!40000 ALTER TABLE `rental_channels` DISABLE KEYS */;
INSERT INTO `rental_channels` VALUES (62,5,86,1,'[\'Airbnb\', \'Booking.com\', \'VRBO\', \'Rentberry\', \'Cozycozy\']'),(63,5,90,1,'[\'Airbnb\', \'Booking.com\', \'Cozycozy\']');
/*!40000 ALTER TABLE `rental_channels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:13
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `rental_cleaning`
--

DROP TABLE IF EXISTS `rental_cleaning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_cleaning` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cleaning_available` varchar(100) NOT NULL,
  `cleaning_basis` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `user_id` int NOT NULL,
  `rental_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_cleaning`
--

LOCK TABLES `rental_cleaning` WRITE;
/*!40000 ALTER TABLE `rental_cleaning` DISABLE KEYS */;
INSERT INTO `rental_cleaning` VALUES (1,'Yes','optional','1200',5,76),(2,'Yes','optional','1500',5,77),(3,'','','',5,78),(4,'','','',5,79),(5,'','','',5,80),(6,'','','',5,81),(7,'','','',5,82),(8,'','','',5,83),(9,'','','',5,84),(10,'','','',5,85),(11,'Yes','mandatory','3000',5,86),(12,'','','',5,87),(13,'','','',5,88),(14,'','','',5,89),(15,'','','',5,90),(16,'','','',5,91),(17,'','','',5,92),(18,'','','',5,95);
/*!40000 ALTER TABLE `rental_cleaning` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:17
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `rental_custom_extra_services`
--

DROP TABLE IF EXISTS `rental_custom_extra_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_custom_extra_services` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `custom_service_name` varchar(100) NOT NULL,
  `custom_service_provided` varchar(100) NOT NULL,
  `custom_fee_basis` varchar(100) DEFAULT NULL,
  `custom_service_price` varchar(100) DEFAULT NULL,
  `custom_earliest_guest_order` varchar(100) DEFAULT NULL,
  `custom_latest_guest_order` varchar(100) DEFAULT NULL,
  `custom_guest_cancel_order` varchar(100) DEFAULT NULL,
  `custom_extra_message` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  `rental_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_custom_extra_services`
--

LOCK TABLES `rental_custom_extra_services` WRITE;
/*!40000 ALTER TABLE `rental_custom_extra_services` DISABLE KEYS */;
INSERT INTO `rental_custom_extra_services` VALUES (1,'Movie','For a fee','Per day','250','48 hours before check-in','At the time of booking','24 hours before check-in','Yeah',1,5,77),(2,'Movie','For a fee','Per night','250','At the time of booking','At the time of booking','24 hours before check-in','d',1,5,77),(3,'Dinner','Free',NULL,'',NULL,NULL,NULL,'',1,5,77),(5,'Ac-1','For a fee','Per day','1000','48 hours before check-in','No restriction','Guest cannot cancel order','Check1',1,5,86),(8,'Ac-2','For a fee','Per day','1000','At the time of booking','No restriction','Any time before check-out','Check2',1,5,86);
/*!40000 ALTER TABLE `rental_custom_extra_services` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:11
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `rental_deposit`
--

DROP TABLE IF EXISTS `rental_deposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_deposit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `security_deposit` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `user_id` int NOT NULL,
  `rental_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_deposit`
--

LOCK TABLES `rental_deposit` WRITE;
/*!40000 ALTER TABLE `rental_deposit` DISABLE KEYS */;
INSERT INTO `rental_deposit` VALUES (1,'on','2750',5,77),(2,'','',5,78),(3,'','',5,79),(4,'','',5,80),(5,'','',5,81),(6,'','',5,82),(7,'','',5,83),(8,'','',5,84),(9,'','',5,85),(10,'Yes','1250',5,86),(11,'Yes','2500',5,87),(12,'','',5,88),(13,'','',5,89),(14,'','',5,90),(15,'','',5,91),(16,'','',5,92),(17,'','',5,95);
/*!40000 ALTER TABLE `rental_deposit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:15
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `rental_earlybird_discount`
--

DROP TABLE IF EXISTS `rental_earlybird_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_earlybird_discount` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `booking_less` varchar(100) NOT NULL,
  `booking_less_discount` varchar(100) NOT NULL,
  `booking_more` varchar(100) NOT NULL,
  `booking_more_discount` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  `rental_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_earlybird_discount`
--

LOCK TABLES `rental_earlybird_discount` WRITE;
/*!40000 ALTER TABLE `rental_earlybird_discount` DISABLE KEYS */;
INSERT INTO `rental_earlybird_discount` VALUES (1,'2','5','3','7',1,5,68),(2,'','','','',1,5,69),(3,'','','','',1,5,70),(4,'','','','',1,5,71),(5,'','','','',1,5,72),(6,'','','','',1,5,73),(7,'','','','',1,5,74),(8,'','','','',1,5,75),(9,'','','','',1,5,76),(10,'','','','',1,5,77),(11,'','','','',1,5,78),(12,'','','','',1,5,79),(13,'','','','',1,5,80),(14,'','','','',1,5,81),(15,'','','','',1,5,82),(16,'','','','',1,5,83),(17,'','','','',1,5,84),(18,'','','','',1,5,85),(19,'2','25','3','25',1,5,86),(20,'','','','',1,5,87),(21,'','','','',1,5,88),(22,'','','','',1,5,89),(23,'','','','',1,5,90),(24,'','','','',1,5,91),(25,'','','','',1,5,92),(26,'','','','',1,5,95);
/*!40000 ALTER TABLE `rental_earlybird_discount` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:13
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_extra_services`
--

LOCK TABLES `rental_extra_services` WRITE;
/*!40000 ALTER TABLE `rental_extra_services` DISABLE KEYS */;
INSERT INTO `rental_extra_services` VALUES (1,'Air-conditioning','For a fee','Per cleaning','200','At the time of booking','At the time of booking','24 hours before check-in','hey',1,5,77),(2,'Air-conditioning','For a fee','Per cleaning','','At the time of booking','48 hours before check-in','24 hours before check-in','hey',1,5,77),(3,'Bed linen','Free',NULL,'',NULL,NULL,NULL,'',1,5,77),(7,'Electricity','For a fee','Per person / cleaning','1001','At the time of booking','At the time of booking','Any time before check-out','Hey1',1,5,86),(12,'Boat berth','Free','','','','','','Hey2',1,5,86);
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

-- Dump completed on 2023-06-07  0:43:09
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `rental_house_rules`
--

DROP TABLE IF EXISTS `rental_house_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_house_rules` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `for_kid` varchar(100) NOT NULL,
  `wheelchair_access` varchar(100) NOT NULL,
  `parties_allowed` varchar(100) NOT NULL,
  `smoking_allowed` varchar(100) NOT NULL,
  `pets` varchar(100) NOT NULL,
  `house_rules` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  `rental_id` int NOT NULL,
  `pets_charge` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_house_rules`
--

LOCK TABLES `rental_house_rules` WRITE;
/*!40000 ALTER TABLE `rental_house_rules` DISABLE KEYS */;
INSERT INTO `rental_house_rules` VALUES (1,'Great for children','Room with own facilities','Allowed','Smoking allowed','No pets allowed','Hey',1,5,69,'1'),(2,'','','','','','',1,5,70,'1'),(3,'','','','','','',1,5,71,'1'),(4,'','','','','','',1,5,72,'1'),(5,'','','','','','',1,5,73,'1'),(6,'','','','','','',1,5,74,'1'),(7,'','','','','','',1,5,75,'1'),(8,'','','','','','',1,5,76,'1'),(9,'','','','','','',1,5,77,'1'),(10,'','','','','','',1,5,78,'1'),(11,'','','','','','',1,5,79,'1'),(12,'','','','','','',1,5,80,'1'),(13,'','','','','','',1,5,81,'1'),(14,'','','','','','',1,5,82,'1'),(15,'','','','','','',1,5,83,'1'),(16,'','','','','','',1,5,84,'1'),(17,'Children welcome','Entire house or apartment','Allowed','Smoking allowed','Pets allowed','Enjoy',1,5,85,'1'),(18,'Great for children','Room with own facilities','Not allowed','Smoking allowed','Pets allowed','Enjoy1',1,5,86,'500'),(19,'','','','','','',1,5,87,'1'),(20,'','','','','','',1,5,88,'1'),(21,'','','','','','',1,5,89,'1'),(22,'','','','','','',1,5,90,'1'),(23,'','','','','','',1,5,91,'1'),(24,'','','','','','',1,5,92,'1'),(25,'','','','','','',1,5,95,'1');
/*!40000 ALTER TABLE `rental_house_rules` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:10
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_instruction`
--

LOCK TABLES `rental_instruction` WRITE;
/*!40000 ALTER TABLE `rental_instruction` DISABLE KEYS */;
INSERT INTO `rental_instruction` VALUES (1,'14:00','11:00','Aman Rajput','At the property','IN','123456789','no loud music','','24','2','IG Delhi','Call for direction',1,5,70,NULL),(2,'','','','','','','','','','','','',1,5,71,NULL),(3,'','','','','','','','','','','','',1,5,72,NULL),(4,'','','','','','','','','','','','',1,5,73,NULL),(5,'','','','','','','','','','','','',1,5,74,NULL),(6,'','','','','','','','','','','','',1,5,75,NULL),(7,'','','','','','','','','','','','',1,5,76,NULL),(8,'','','','','','','','','','','','',1,5,77,NULL),(9,'','','','','','','','','','','','',1,5,78,NULL),(10,'','','','','','','','','','','','',1,5,79,NULL),(11,'','','','','','','','','','','','',1,5,80,NULL),(12,'','','','','','','','','','','','',1,5,81,NULL),(13,'','','','','','','','','','','','',1,5,82,NULL),(14,'','','','','','','','','','','','',1,5,83,NULL),(15,'','','','','','','','','','','','',1,5,84,NULL),(16,'','','','','','','','','','','','',1,5,85,NULL),(17,'14:00','11:00','Aman Rajput','Key code entrance','CF','1234560000','Enjoy','rentals-instruction/roberto-nickson-so3wgJLwDxo-unsplash.jpg','24','4','IGI','come  and find',1,5,86,'+236'),(18,'--Select--','--Select--','','--Select--','AF','9874561230','','','--Select--','--Select--','','',1,5,87,'+93'),(19,'','','','','','','','','','','','',1,5,88,NULL),(20,'','','','','','','','','','','','',1,5,89,NULL),(21,'','','','','','','','','','','','',1,5,90,NULL),(22,'','','','','','','','','','','','',1,5,91,NULL),(23,'','','','','','','','','','','','',1,5,92,NULL),(24,'','','','','','','','','','','','',1,5,95,NULL);
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

-- Dump completed on 2023-06-07  0:43:10
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `rental_location`
--

DROP TABLE IF EXISTS `rental_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_location` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `country` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `apartment` varchar(1000) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `postal` varchar(100) NOT NULL,
  `user_id` int NOT NULL,
  `rental_id` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_location`
--

LOCK TABLES `rental_location` WRITE;
/*!40000 ALTER TABLE `rental_location` DISABLE KEYS */;
INSERT INTO `rental_location` VALUES (1,'IN','Noida','D 13','Noida','Up','201310',5,66,1,'1','1'),(2,'','','','','','',5,67,1,'1','1'),(3,'','','','','','',5,68,1,'1','1'),(4,'','','','','','',5,69,1,'1','1'),(5,'','','','','','',5,70,1,'1','1'),(6,'','','','','','',5,71,1,'1','1'),(7,'','','','','','',5,72,1,'1','1'),(8,'','','','','','',5,73,1,'1','1'),(9,'','','','','','',5,74,1,'1','1'),(10,'','','','','','',5,75,1,'1','1'),(11,'','','','','','',5,76,1,'1','1'),(12,'','','','','','',5,77,1,'1','1'),(13,'','','','','','',5,78,1,'1','1'),(14,'','','','','','',5,79,1,'1','1'),(15,'','','','','','',5,80,1,'1','1'),(16,'','','','','','',5,81,1,'1','1'),(17,'','','','','','',5,82,1,'1','1'),(18,'','','','','','',5,83,1,'1','1'),(19,'','','','','','',5,84,1,'1','1'),(20,'IN','D 14','Noida','Noida','Uttar Pradesh','201310',5,85,1,'1','1'),(21,'ZW','D 12','noida','Noida','Uttar Pradesh','201310',5,86,1,'1','1'),(22,'','','','','','',5,87,1,'1','1'),(23,'','','','','','',5,88,1,'1','1'),(24,'','','','','','',5,89,1,'1','1'),(25,'','','','','','',5,90,1,'1','1'),(26,'','','','','','',5,91,1,'1','1'),(27,'','','','','','',5,92,1,'1','1'),(28,'','','','','','',5,95,1,'1','1');
/*!40000 ALTER TABLE `rental_location` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:10
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `rental_longstay_discount`
--

DROP TABLE IF EXISTS `rental_longstay_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_longstay_discount` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `seven_nights` varchar(100) NOT NULL,
  `fourteen_nights` varchar(100) NOT NULL,
  `twenty_one_nights` varchar(100) NOT NULL,
  `twenty_eight_nights` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  `rental_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_longstay_discount`
--

LOCK TABLES `rental_longstay_discount` WRITE;
/*!40000 ALTER TABLE `rental_longstay_discount` DISABLE KEYS */;
INSERT INTO `rental_longstay_discount` VALUES (1,'14','22','33','50',1,5,68),(2,'','','','',1,5,69),(3,'','','','',1,5,70),(4,'','','','',1,5,71),(5,'','','','',1,5,72),(6,'','','','',1,5,73),(7,'','','','',1,5,74),(8,'','','','',1,5,75),(9,'','','','',1,5,76),(10,'','','','',1,5,77),(11,'','','','',1,5,78),(12,'','','','',1,5,79),(13,'','','','',1,5,80),(14,'','','','',1,5,81),(15,'','','','',1,5,82),(16,'','','','',1,5,83),(17,'','','','',1,5,84),(18,'','','','',1,5,85),(19,'14','21','28','50',1,5,86),(20,'','','','',1,5,87),(21,'','','','',1,5,88),(22,'','','','',1,5,89),(23,'','','','',1,5,90),(24,'','','','',1,5,91),(25,'','','','',1,5,92),(26,'','','','',1,5,95);
/*!40000 ALTER TABLE `rental_longstay_discount` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:17
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `rental_nearby_amenities`
--

DROP TABLE IF EXISTS `rental_nearby_amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_nearby_amenities` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nearbyamenities` varchar(1000) NOT NULL,
  `distance` varchar(100) NOT NULL,
  `user_id` int NOT NULL,
  `rental_id` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_nearby_amenities`
--

LOCK TABLES `rental_nearby_amenities` WRITE;
/*!40000 ALTER TABLE `rental_nearby_amenities` DISABLE KEYS */;
INSERT INTO `rental_nearby_amenities` VALUES (1,'HAC199','2',5,86,1),(2,'HAC199','4',5,86,1),(3,'RST5','6',5,86,1),(4,'RST5','4',5,86,1);
/*!40000 ALTER TABLE `rental_nearby_amenities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:13
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `rental_other_rooms`
--

DROP TABLE IF EXISTS `rental_other_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_other_rooms` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `other_rooms` varchar(500) NOT NULL,
  `user_id` int NOT NULL,
  `rental_id` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_other_rooms`
--

LOCK TABLES `rental_other_rooms` WRITE;
/*!40000 ALTER TABLE `rental_other_rooms` DISABLE KEYS */;
INSERT INTO `rental_other_rooms` VALUES (3,'[\'Common area\', \' Dining room\', \'Drying room\', \'Eating area\', \'Fitness room\', \'Lounge\', \'Work studio\']',5,86,1),(4,'[\'Common area\', \' Dining room\', \'Drying room\', \'Eating area\', \'Fitness room\', \'Work studio\']',5,87,1),(5,'',5,95,1);
/*!40000 ALTER TABLE `rental_other_rooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:13
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `rental_policy`
--

DROP TABLE IF EXISTS `rental_policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_policy` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  `rental_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_policy`
--

LOCK TABLES `rental_policy` WRITE;
/*!40000 ALTER TABLE `rental_policy` DISABLE KEYS */;
INSERT INTO `rental_policy` VALUES (1,'Policy','<p>Policy lelo</p>',1,5,69),(2,'','',1,5,70),(3,'','',1,5,71),(4,'','',1,5,72),(5,'','',1,5,73),(6,'','',1,5,74),(7,'','',1,5,75),(8,'','',1,5,76),(9,'','',1,5,77),(10,'','',1,5,78),(11,'','',1,5,79),(12,'','',1,5,80),(13,'','',1,5,81),(14,'','',1,5,82),(15,'','',1,5,83),(16,'','',1,5,84),(17,'','',1,5,85),(18,'Cancellation Policy 1','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',1,5,86),(19,'','',1,5,87),(20,'','',1,5,88),(21,'','',1,5,89),(22,'','',1,5,90),(23,'','',1,5,91),(24,'','',1,5,92),(25,'','',1,5,95);
/*!40000 ALTER TABLE `rental_policy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:12
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_rooms`
--

LOCK TABLES `rental_rooms` WRITE;
/*!40000 ALTER TABLE `rental_rooms` DISABLE KEYS */;
INSERT INTO `rental_rooms` VALUES (155,'[\'      Balcony (private)\', \'      Bathroom (private) \', \'      Bedroom (private) \', \'      Dining room (private)\', \'      Kitchen (private)\', \'      Living room (private) \', \'      Playroom (private)\', \'      Terrace (private)\', \'      Toilet (private)\', \'      Workroom (private)\', \'      Balcony (shared)\', \'      Bathroom (shared)\', \'      Bedroom (shared)\', \'      Dining room (shared) \', \'      Kitchen (shared)\', \'      Living room (shared)\', \'      Playroom (shared)\', \'      Terrace (shared)\', \'      Toilet (shared)\', \'      Workroom (shared)\']','[\'4\', \'3\', \'3\', \'3\', \'3\', \'1\', \'1\', \'1\', \'1\', \'1\', \'1\', \'1\', \'1\', \'1\', \'1\', \'1\', \'1\', \'1\', \'1\', \'2\']',5,86,1),(156,'[\'        Balcony (private)\', \'        Bathroom (private) \', \'        Bedroom (private) \', \'        Dining room (private)\', \'        Kitchen (private)\', \'        Living room (private) \', \'        Playroom (private)\', \'        Terrace (private)\', \'        Toilet (private)\', \'        Workroom (private)\', \'        Balcony (shared)\', \'        Bathroom (shared)\', \'        Bedroom (shared)\', \'        Dining room (shared) \', \'        Kitchen (shared)\', \'        Living room (shared)\', \'        Playroom (shared)\', \'        Terrace (shared)\', \'        Toilet (shared)\', \'        Workroom (shared)\']','[\'3\', \'3\', \'2\', \'1\', \'1\', \'1\', \'1\', \'4\', \'1\', \'1\', \'1\', \'1\', \'1\', \'1\', \'1\', \'1\', \'1\', \'1\', \'1\', \'2\']',5,87,1);
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

-- Dump completed on 2023-06-07  0:43:13
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `rental_seasonal_rates`
--

DROP TABLE IF EXISTS `rental_seasonal_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_seasonal_rates` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `season_name` varchar(100) NOT NULL,
  `start_date` varchar(100) NOT NULL,
  `end_date` varchar(100) NOT NULL,
  `basic_night` varchar(100) NOT NULL,
  `weekend_night` varchar(100) NOT NULL,
  `minimum_stay` varchar(3000) NOT NULL,
  `maximum_stay` varchar(3000) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  `rental_id` int NOT NULL,
  `checkin_days` varchar(100) NOT NULL,
  `checkout_days` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_seasonal_rates`
--

LOCK TABLES `rental_seasonal_rates` WRITE;
/*!40000 ALTER TABLE `rental_seasonal_rates` DISABLE KEYS */;
INSERT INTO `rental_seasonal_rates` VALUES (10,'Winter1','25 Oct, 2022','29 Feb, 2024','3000','4000','3','17',1,5,86,'[\'Sun\', \'Mon\', \'Tue\', \'Wed\', \'Thu\', \'Sat\']','[\'Sun\', \'Mon\', \'Tue\', \'Wed\', \'Thu\', \'Fri\']'),(12,'Winter2','01 Nov, 2023','29 Feb, 2024','2300','3000','2','8',1,5,86,'[\'Mon\', \'Tue\', \'Wed\', \'Thu\', \'Fri\']','[\'Mon\', \'Tue\', \'Wed\', \'Thu\', \'Fri\']'),(13,'Summer','01 Feb, 2023','31 Oct, 2023','3000','4500','4','11',1,5,87,'[\'Mon\', \'Tue\', \'Wed\', \'Thu\', \'Fri\']','[\'Sun\', \'Mon\', \'Tue\', \'Wed\', \'Thu\', \'Fri\']');
/*!40000 ALTER TABLE `rental_seasonal_rates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:14
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `rental_tax`
--

DROP TABLE IF EXISTS `rental_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_tax` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tax_type` varchar(100) NOT NULL,
  `fee_basis` varchar(100) NOT NULL,
  `percentage` varchar(100) NOT NULL,
  `amountin` varchar(100) NOT NULL,
  `user_id` int NOT NULL,
  `rental_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_tax`
--

LOCK TABLES `rental_tax` WRITE;
/*!40000 ALTER TABLE `rental_tax` DISABLE KEYS */;
INSERT INTO `rental_tax` VALUES (1,'City tax','Per adult / day','','500',5,77),(2,'City tax','% of Rental Amount','20','',5,77),(3,'Destination fee','Per adult / week','','530',5,77),(4,'Destination fee','Per adult / week','','200',5,77),(7,'Destination fee','% of Rental Amount','12','',5,7),(8,'Goods and services tax','Per adult / day','','100',5,8),(9,'Destination fee','Per adult / stay','','100',5,9),(11,'Destination fee','% of Rental Amount','16','',5,86),(12,'Goods and services tax','Per adult / stay','','200',5,86);
/*!40000 ALTER TABLE `rental_tax` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:15
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `rental_type`
--

DROP TABLE IF EXISTS `rental_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `room_type_name` varchar(100) NOT NULL,
  `noof_beds` varchar(10) NOT NULL,
  `max_occupancy` varchar(10) NOT NULL,
  `noof_rooms` varchar(10) NOT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `rental_description` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_type`
--

LOCK TABLES `rental_type` WRITE;
/*!40000 ALTER TABLE `rental_type` DISABLE KEYS */;
INSERT INTO `rental_type` VALUES (20,'Delux Pro','1','1','1','roomtype/daria-nepriakhina-LwnIuhH_5Q4-unsplash.jpg','<p>A</p>',1,'2022-12-28 18:10:42.838545','2022-12-28 18:10:42.838545');
/*!40000 ALTER TABLE `rental_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:13
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `room_type_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rental_room_room_type_id_b879f820_fk_room_type_id` (`room_type_id`),
  CONSTRAINT `rental_room_room_type_id_b879f820_fk_room_type_id` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'Balcony (private)',1,'2023-01-05 18:05:51.861183','2023-01-05 19:18:14.903559','',1),(2,'Bathroom (private) ',1,'2023-01-05 18:06:49.702346','2023-01-05 19:18:20.011505','',1),(3,'Bedroom (private) ',1,'2023-01-05 18:07:31.288890','2023-01-05 19:18:24.541751','',1),(4,'Dining room (private)',1,'2023-01-05 18:07:39.123438','2023-01-05 19:18:30.557837','',1),(5,'Kitchen (private)',1,'2023-01-05 18:07:48.055421','2023-01-05 19:18:35.477667','',1),(6,'Living room (private) ',1,'2023-01-05 18:07:56.368568','2023-01-05 19:18:41.223039','',1),(7,'Playroom (private)',1,'2023-01-05 18:08:09.120092','2023-01-05 19:18:48.030051','',1),(8,'Terrace (private)',1,'2023-01-05 18:08:16.027806','2023-01-05 19:18:53.730475','',1),(9,'Toilet (private)',1,'2023-01-05 18:08:22.892505','2023-01-05 19:18:58.368888','',1),(10,'Workroom (private)',1,'2023-01-05 18:08:30.937091','2023-01-05 19:19:02.811632','',1),(11,'Balcony (shared)',1,'2023-01-05 18:08:48.488852','2023-01-05 19:19:11.889724','',2),(12,'Bathroom (shared)',1,'2023-01-05 18:08:57.277803','2023-01-05 19:19:19.070701','',2),(13,'Bedroom (shared)',1,'2023-01-05 18:09:05.265106','2023-01-05 19:19:26.736786','',2),(14,'Dining room (shared) ',1,'2023-01-05 18:09:13.410594','2023-01-05 19:19:33.063512','',2),(15,'Kitchen (shared)',1,'2023-01-05 18:09:25.408437','2023-01-05 19:19:39.416480','',2),(16,'Living room (shared)',1,'2023-01-05 18:09:33.052253','2023-01-05 19:19:46.464241','',2),(17,'Playroom (shared)',1,'2023-01-05 18:09:41.507315','2023-01-05 19:19:52.946173','',2),(18,'Terrace (shared)',1,'2023-01-05 18:10:09.553621','2023-01-05 19:19:59.633346','',2),(19,'Toilet (shared)',1,'2023-01-05 18:10:18.612522','2023-01-05 19:20:08.182279','',2),(20,'Workroom (shared)',1,'2023-01-05 18:10:28.811153','2023-01-05 19:20:14.649577','',2);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:15
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `room_type`
--

DROP TABLE IF EXISTS `room_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_type`
--

LOCK TABLES `room_type` WRITE;
/*!40000 ALTER TABLE `room_type` DISABLE KEYS */;
INSERT INTO `room_type` VALUES (1,'Private',1,'2023-01-05 18:03:48.889141','2023-01-05 18:03:48.889141',''),(2,'Shared',1,'2023-01-05 18:03:57.046758','2023-01-05 18:03:57.046758','');
/*!40000 ALTER TABLE `room_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:13
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Additional Cleaning',1,'2023-01-13 16:30:51.490300','2023-01-13 16:30:51.490300'),(2,'Air-conditioning',1,'2023-01-13 16:31:04.450383','2023-01-13 16:31:04.450383'),(3,'Airport transfer',1,'2023-01-13 16:31:19.901619','2023-01-13 16:31:19.901619'),(4,'Baby cot',1,'2023-01-13 16:31:36.856523','2023-01-13 16:31:36.856523'),(5,'Barbecue',1,'2023-01-13 16:31:54.301814','2023-01-13 16:31:54.301814'),(6,'Bed linen',1,'2023-01-13 16:32:08.897725','2023-01-13 16:32:08.897725'),(7,'Bike rental',1,'2023-01-13 16:32:24.064286','2023-01-13 16:32:24.064286'),(8,'Boat berth',1,'2023-01-13 16:32:40.634599','2023-01-13 16:32:40.634599'),(9,'Breakfast',1,'2023-01-13 16:34:23.120236','2023-01-13 16:34:23.120236'),(10,'Car rental',1,'2023-01-13 16:34:34.623574','2023-01-13 16:34:34.623574'),(11,'Early check-in',1,'2023-01-13 16:34:50.253931','2023-01-13 16:34:50.253931'),(12,'Electricity',1,'2023-01-13 16:34:59.400185','2023-01-13 16:34:59.400185'),(13,'Heated Pool',1,'2023-01-13 16:35:12.132736','2023-01-13 16:35:12.132736'),(14,'Heating',1,'2023-01-13 16:35:21.778013','2023-01-13 16:35:21.778013'),(15,'High chair',1,'2023-01-13 16:35:34.096338','2023-01-13 16:35:34.096338'),(16,'Internet',1,'2023-01-13 16:35:44.135116','2023-01-13 16:35:44.135116'),(17,'Jacuzzi',1,'2023-01-13 16:35:52.991849','2023-01-13 16:35:52.991849'),(18,'Kitchen linen',1,'2023-01-13 16:36:03.580083','2023-01-13 16:36:03.580083'),(19,'Late check-out',1,'2023-01-13 16:36:13.773934','2023-01-13 16:36:13.773934'),(20,'Laundry service',1,'2023-01-13 16:36:30.196478','2023-01-13 16:36:30.196478'),(21,'Linen package (bed linen + towel)',1,'2023-01-13 16:36:47.194988','2023-01-13 16:36:47.194988'),(22,'Meditation class',1,'2023-01-13 16:36:58.897543','2023-01-13 16:36:58.897543'),(23,'Muay Thai Gym',1,'2023-01-13 16:37:13.350541','2023-01-13 16:37:13.350541'),(24,'Parking',1,'2023-01-13 16:37:24.075363','2023-01-13 16:37:24.075363'),(25,'Pool',1,'2023-01-13 16:37:35.038867','2023-01-13 16:37:35.038867'),(26,'Sunbed',1,'2023-01-13 16:37:45.634744','2023-01-13 16:37:45.634744'),(27,'Tennis class',1,'2023-01-13 16:37:56.402136','2023-01-13 16:37:56.402136'),(28,'Tennis court',1,'2023-01-13 16:38:09.644946','2023-01-13 16:38:09.644946'),(29,'Towels',1,'2023-01-13 16:38:20.473557','2023-01-13 16:38:20.473557'),(30,'Transfer',1,'2023-01-13 16:38:29.065204','2023-01-13 16:38:29.065204'),(31,'Umbrella',1,'2023-01-13 16:38:37.964460','2023-01-13 16:38:37.964460'),(32,'Waste sorting',1,'2023-01-13 16:38:47.233372','2023-01-13 16:38:47.233372'),(33,'Welcome package',1,'2023-01-13 16:39:06.229732','2023-01-13 16:39:06.229732'),(34,'Yoga class',1,'2023-01-13 16:39:23.377632','2023-01-13 16:39:23.377632');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:16
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscription` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `subtitle` varchar(200) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `tenure` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
INSERT INTO `subscription` VALUES (1,'Basic Plan','It is a long established fact that a reader will be distracted by the readable.',39.00,'month','<ul><li>30GB Disk Space</li><li>30 Email Accounts</li><li>30GB Monthly Bandwidth</li><li>06 Subdomains</li><li>10 Domains</li></ul>',1,'2022-12-29 16:38:30.871881','2022-12-29 16:38:30.871881'),(2,'Premium Plan','It is a long established fact that a reader will be distracted by the readable.',79.00,'month','<ul><li>30GB Disk Space</li><li>30 Email Accounts</li><li>30GB Monthly Bandwidth</li><li>06 Subdomains</li><li>10 Domains</li></ul>',1,'2022-12-29 16:39:06.115273','2022-12-29 16:39:06.115273'),(3,'Master Plan','It is a long established fact that a reader will be distracted by the readable.',799.00,'month','<ul><li>30GB Disk Space</li><li>30 Email Accounts</li><li>30GB Monthly Bandwidth</li><li>06 Subdomains</li><li>10 Domains</li></ul>',1,'2022-12-29 16:39:31.974485','2022-12-29 16:39:31.974485');
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:10
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `subscription_plan`
--

DROP TABLE IF EXISTS `subscription_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscription_plan` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `subscription_title` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `tenure` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `start_date` varchar(100) NOT NULL,
  `expiry_date` varchar(100) NOT NULL,
  `user_id` int NOT NULL,
  `subscription_id` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_plan`
--

LOCK TABLES `subscription_plan` WRITE;
/*!40000 ALTER TABLE `subscription_plan` DISABLE KEYS */;
INSERT INTO `subscription_plan` VALUES (1,'Basic Plan',39.00,'month','<ul><li>30GB Disk Space</li><li>30 Email Accounts</li><li>30GB Monthly Bandwidth</li><li>06 Subdomains</li><li>10 Domains</li></ul>','NA','NA',5,1,1),(2,'Master Plan',799.00,'month','<ul><li>30GB Disk Space</li><li>30 Email Accounts</li><li>30GB Monthly Bandwidth</li><li>06 Subdomains</li><li>10 Domains</li></ul>','NA','NA',5,3,1),(3,'Master Plan',799.00,'month','<ul><li>30GB Disk Space</li><li>30 Email Accounts</li><li>30GB Monthly Bandwidth</li><li>06 Subdomains</li><li>10 Domains</li></ul>','NA','NA',5,3,1),(4,'Premium Plan',79.00,'month','<ul><li>30GB Disk Space</li><li>30 Email Accounts</li><li>30GB Monthly Bandwidth</li><li>06 Subdomains</li><li>10 Domains</li></ul>','NA','NA',5,2,1);
/*!40000 ALTER TABLE `subscription_plan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:16
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `tax`
--

DROP TABLE IF EXISTS `tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tax` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tax_name` varchar(100) NOT NULL,
  `tax_percentage` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) NOT NULL,
  `tax_type_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tax_tax_type_id_291ec313_fk_tax_type_id` (`tax_type_id`),
  CONSTRAINT `tax_tax_type_id_291ec313_fk_tax_type_id` FOREIGN KEY (`tax_type_id`) REFERENCES `tax_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax`
--

LOCK TABLES `tax` WRITE;
/*!40000 ALTER TABLE `tax` DISABLE KEYS */;
INSERT INTO `tax` VALUES (7,'GST','16',1,'2022-10-19 16:34:10.699951','2022-10-27 16:17:32.087360',4,1),(8,'VAT 69','28',1,'2022-10-19 18:36:36.759869','2022-10-19 18:36:36.759869',6,1),(9,'VAT 69','28',1,'2022-10-19 18:37:17.747166','2022-10-19 18:37:17.747166',4,1),(12,'VAT 69','28',1,'2022-10-29 14:11:05.093954','2022-10-29 14:11:05.093954',5,11),(13,'VAT 69','28',1,'2022-11-17 13:27:10.924694','2022-11-17 13:27:10.924694',13,5);
/*!40000 ALTER TABLE `tax` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:16
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `tax_type`
--

DROP TABLE IF EXISTS `tax_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tax_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `taxtype_name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_type`
--

LOCK TABLES `tax_type` WRITE;
/*!40000 ALTER TABLE `tax_type` DISABLE KEYS */;
INSERT INTO `tax_type` VALUES (4,'Percentage of Amount',0,'2022-10-13 14:15:03.500939','2022-10-27 16:25:03.402600',1),(5,'Flat Amount',1,'2022-10-13 14:15:19.612319','2022-10-13 14:15:19.612319',1),(6,'Inclusive GST',1,'2022-10-13 14:15:34.144799','2022-10-13 14:15:34.144799',1),(7,'InclusiveTax',1,'2022-10-13 14:15:50.881972','2022-10-13 14:15:50.881972',1),(8,'Flat Amount/Per Night',1,'2022-10-13 14:16:05.248652','2022-10-13 14:16:39.651103',1),(9,'Partial Inclusive',1,'2022-10-13 14:16:57.662561','2022-10-13 14:16:57.662561',1),(13,'Percentage of Amount',1,'2022-11-17 13:26:48.729257','2022-11-17 13:26:48.729257',5),(14,'Tax',1,'2022-12-02 22:45:02.192287','2022-12-02 22:45:02.192287',12);
/*!40000 ALTER TABLE `tax_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07  0:43:14
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ezbz
-- ------------------------------------------------------
-- Server version	8.0.30

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
  PRIMARY KEY (`id`),
  KEY `user_profile_user_id_8fdce8e2_fk_auth_user_id` (`user_id`),
  CONSTRAINT `user_profile_user_id_8fdce8e2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES (4,'Aman','Rajput','7303699947','D 13 Sec 3','Noida','Uttar Pradesh','US',201308,'7303699947','9873218141','http://apex.in','profile/logo_WfE5cvn.png',1,5,'<h3>I own multiple properties</h3>','3','Property Manager','1998-02-11','Male','de','[]'),(7,'Glen','Maxwell','NA','NA','NA','NA','',201308,'NA','NA','NA','NA',1,17,'','','','1','1','1','1'),(8,'Aman11','Rajput1','1234567891','Noida1','Noida1','UP1','AU',201308,'12345678891','1234567891','apexwebsoft.in1','NA',1,18,'','31','Property Owner','1','1','1','1'),(14,'NA','NA','NA','NA','NA','NA','',201308,'NA','NA','NA','NA',1,24,'','','','1','1','1','1');
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

-- Dump completed on 2023-06-07  0:43:13

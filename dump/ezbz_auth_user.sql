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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (5,'pbkdf2_sha256$390000$TXIEIk9eXJ8NoJi2dTlQW1$SLXmlrDyz/eVcS+fJeIslZgQugPP0pJSCeBFIq33hGU=','2023-05-05 19:09:14.637735',1,'admin','Aman','Rajput','demon@gmail.com',1,1,'2022-10-11 14:06:52.000000'),(11,'pbkdf2_sha256$390000$FvvRhl2kDbg3HfSn58lun3$pf9VRr+ggbuFucWE6h/z6y5D0S+DRTJthM6DDRhgJ90=','2023-04-12 18:50:53.782937',1,'ezbz','Aman','Rajput','ezbz@gmail.com',1,1,'2022-10-27 17:37:04.000000'),(14,'pbkdf2_sha256$390000$GjiiQjNU1bPxmF2sEQdcMv$zam8SY0klBcew3FR2q2NFWK6gng0vhpP3jOrKPnkRWU=','2023-01-11 14:55:00.819690',0,'david','David','Warner','warner@gmail.com',0,1,'2022-12-28 19:12:21.208011'),(16,'Abd@1102',NULL,0,'abd','AB','Deviliers','mr360@gmail.com',0,1,'2022-12-28 19:44:17.660718'),(17,'Maxi@1102',NULL,0,'maxi','Glen','Maxwell','maxi@gmail.com',0,1,'2022-12-28 19:45:11.006810'),(18,'pbkdf2_sha256$390000$nWEq4f1nrlBf1IqXraNNKx$PwHsBxSHZwjEVFMFYoaYlMjsxkS+WI0s5Qejl+PnLDc=','2022-12-28 19:58:18.704072',0,'faf','Faf','Duplesis','faf@gmail.com',0,1,'2022-12-28 19:49:55.507624'),(24,'pbkdf2_sha256$390000$mZwduxzXg4t1gGoYJGSibn$vGtUgPURGtE7t2y9RoIH/4NaTjINJv5Z6RZ0yoZej64=',NULL,0,'raiizaada','Aman','Rajput','amanrajput110298@gmail.com',1,1,'2023-02-03 14:33:02.594177'),(25,'pbkdf2_sha256$390000$pqHem7YlKvD36q6JzDmAND$AkO95ODiCRLcYUUatRn1AGKlNZrm/zHe1QPncJbtgzc=','2023-04-12 16:31:18.418012',0,'rohit','Rohit','Sharma','rohit@gmail.com',1,1,'2023-04-11 16:56:56.000000'),(26,'pbkdf2_sha256$390000$Qyp25K7g86kQwYyyaXhrlH$hTm1oENqZw3I8HlJrHNEj3ahhDBgHsHaNeT2Mjy5VsM=','2023-04-12 18:54:41.840738',0,'sandeep','Sandeep','Sharma','sandeep@gmail.com',0,1,'2023-04-12 18:48:37.990161'),(27,'pbkdf2_sha256$390000$ya5DISodz687T8KmUytz11$iS+pW2Ofy+1SvKn4Jv1rHjLwwOq2wwGhHQfNUBaWenY=','2023-04-12 18:56:27.922528',0,'aditya','Aditya','Singh','adi@gmail.com',0,1,'2023-04-12 18:56:20.084995');
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

-- Dump completed on 2023-05-06  0:43:48

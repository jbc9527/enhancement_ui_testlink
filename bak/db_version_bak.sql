-- MySQL dump 10.13  Distrib 8.0.31, for macos12.6 (arm64)
--
-- Host: localhost    Database: bitnami_testlink
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `db_version`
--

DROP TABLE IF EXISTS `db_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db_version` (
  `version` varchar(50) NOT NULL DEFAULT 'unknown',
  `upgrade_ts` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_version`
--

LOCK TABLES `db_version` WRITE;
/*!40000 ALTER TABLE `db_version` DISABLE KEYS */;
INSERT INTO `db_version` VALUES ('DB 1.3','2011-02-16 06:56:28','TestLink 1.9'),('DB 1.4','2011-08-24 03:41:11','TestLink 1.9.1'),('DB 1.5','2015-10-13 18:17:45','TestLink 1.9.4'),('DB 1.6','2015-10-13 18:18:57','TestLink 1.9.6'),('DB 1.9.8','2015-10-13 18:20:12','TestLink 1.9.8'),('DB 1.9.9','2015-10-13 18:21:17','TestLink 1.9.9'),('DB 1.9.11','2015-10-13 18:23:12','TestLink 1.9.11'),('DB 1.9.12','2015-10-13 18:24:09','TestLink 1.9.12'),('DB 1.9.13','2015-10-13 18:24:59','TestLink 1.9.13'),('DB 1.9.14','2022-12-08 02:52:35','TestLink 1.9.14'),('DB 1.9.15','2022-12-08 02:52:51','TestLink 1.9.15'),('DB 1.9.16','2022-12-08 02:53:07','TestLink 1.9.16'),('DB 1.9.17','2022-12-08 02:53:22','TestLink 1.9.17 Alan Turing'),('DB 1.9.18','2022-12-08 02:53:39','TestLink 1.9.18 Gaura'),('DB 1.9.19','2022-12-08 02:53:55','TestLink 1.9.19 Metonic cycle'),('DB 1.9.20','2022-12-08 02:54:11','TestLink 1.9.20 Raijin');
/*!40000 ALTER TABLE `db_version` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-16 13:29:57

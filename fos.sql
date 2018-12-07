-- MySQL dump 10.13  Distrib 5.7.20, for Win64 (x86_64)
--
-- Host: localhost    Database: fos
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `fordering`
--

DROP TABLE IF EXISTS `fordering`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fordering` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `fone` varchar(50) NOT NULL,
  `ftwo` varchar(50) DEFAULT NULL,
  `fthree` varchar(50) DEFAULT NULL,
  `pone` int(10) NOT NULL,
  `ptwo` int(10) DEFAULT NULL,
  `pthree` int(10) DEFAULT NULL,
  `total` int(20) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `mob` varchar(10) DEFAULT NULL,
  `dt` date DEFAULT NULL,
  `tm` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fordering`
--

LOCK TABLES `fordering` WRITE;
/*!40000 ALTER TABLE `fordering` DISABLE KEYS */;
INSERT INTO `fordering` VALUES (2,'chicken nuggent','cold drink','burger',120,50,80,250,'rohan','7185469542','2018-11-03','10:46:09'),(3,'jgskfl;g',NULL,NULL,500,0,0,500,'rohan','756453','2018-11-03','11:34:13'),(4,'afdjk',NULL,NULL,555,0,0,555,'dfjakf','564f864','2018-11-03','18:44:29'),(5,'afdjk',NULL,NULL,555,0,0,555,'dfjakf','564f864','2018-11-03','18:47:08'),(6,'afdjk',NULL,NULL,555,0,0,555,'dfjakf','564f864','2018-11-03','18:48:02'),(7,'afdjk',NULL,NULL,555,0,0,555,'dfjakf','564f864','2018-11-03','18:48:31'),(8,'afdjk',NULL,NULL,555,0,0,555,'dfjakf','564f864','2018-11-03','18:48:47'),(9,'afdjk',NULL,NULL,555,0,0,555,'dfjakf','564f864','2018-11-03','18:49:12'),(10,'afdjk',NULL,NULL,555,0,0,555,'dfjakf','564f864','2018-11-03','18:49:27'),(11,'jdakf',NULL,NULL,55,0,0,55,'jfkskd','89','2018-11-03','18:52:33'),(12,'jdakf',NULL,NULL,55,0,0,55,'jfkskd','89','2018-11-03','18:56:06'),(13,'jdakf',NULL,NULL,55,0,0,55,'jfkskd','89','2018-11-03','18:56:31'),(14,'kdsf',NULL,NULL,20,0,0,20,'hfakj','5252','2018-11-03','20:50:03'),(15,'fakjdff;alk',NULL,NULL,856,0,0,856,'jgs;lkjlfg','985566256','2018-11-03','23:10:11'),(16,'rooti','daal','chawal',50,120,90,260,'mohan','9875642314','2018-11-06','01:32:11'),(17,'rooti','daal','chawal',50,120,90,260,'mohan','9875642314','2018-11-06','01:32:15'),(18,'hakka noodle','fried rice','cold drink',160,90,50,300,'raamya','9698756226','2018-11-06','01:33:28'),(19,'dim sum','chaumin',NULL,120,200,0,320,'nira','9865745621','2018-11-06','01:34:12'),(20,'chicken tikka','soup',NULL,90,50,0,140,'nani','9856745865','2018-11-06','01:34:56'),(21,'thaali','curd',NULL,60,20,0,80,'manish','9865426597','2018-11-06','13:11:14');
/*!40000 ALTER TABLE `fordering` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `uname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('emp1','emp1','employee'),('rana','9876548','employee'),('satya','satya','admin');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-06 13:31:55

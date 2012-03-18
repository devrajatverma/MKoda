-- MySQL dump 10.13  Distrib 5.1.31, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: bootstrap
-- ------------------------------------------------------
-- Server version	5.1.31-1ubuntu2

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
-- Table structure for table `FILETABLE`
--

DROP TABLE IF EXISTS `FILETABLE`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `FILETABLE` (
  `IPADDR` varchar(15) NOT NULL,
  `USER` varchar(40) NOT NULL,
  `ACTIVE_STATUS` tinyint(3) DEFAULT NULL,
  `FILEDIGEST` varchar(2048) DEFAULT NULL,
  `FILENAME` varchar(20) DEFAULT NULL,
  `FILESIZE` int(11) DEFAULT NULL,
  `MSGDST` varchar(40) NOT NULL,
  `ABSTRACT` varchar(100) DEFAULT NULL,
  `DOWNLOADS` int(10) NOT NULL,
  `PORT_NO` double(17,0) DEFAULT NULL,
  PRIMARY KEY (`USER`,`MSGDST`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `FILETABLE`
--

LOCK TABLES `FILETABLE` WRITE;
/*!40000 ALTER TABLE `FILETABLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `FILETABLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IPTABLE`
--

DROP TABLE IF EXISTS `IPTABLE`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `IPTABLE` (
  `IPADDR` varchar(15) NOT NULL,
  `HOST` varchar(20) NOT NULL,
  `PASSWORD` varchar(40) DEFAULT NULL,
  `ACTIVE_STATUS` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(64) DEFAULT NULL,
  `PORT_NO` double(17,0) DEFAULT NULL,
  PRIMARY KEY (`HOST`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `IPTABLE`
--

LOCK TABLES `IPTABLE` WRITE;
/*!40000 ALTER TABLE `IPTABLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `IPTABLE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2009-12-17  6:56:49
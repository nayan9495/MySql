-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: poc
-- ------------------------------------------------------
-- Server version	5.7.34-log

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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `postid` int(11) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `postid` (`postid`),
  KEY `userid` (`userid`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `post` (`id`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'Live and let live',4,'1986-08-13',1),(2,'Gold Finger',4,'1988-05-12',1),(3,'You only live twice',4,'1975-04-13',1),(4,'Thunderball',4,'1980-05-24',1),(5,'SPECTRE',4,'2015-08-23',1),(6,'NEVER SAY NEVER AGAIN',4,'1983-03-15',1),(7,'GOLDENEYE',4,'1997-04-21',1),(8,'LICENCE TO KILL',4,'1997-04-04',1),(9,'THE SPY WHO LOVED ME',4,'1986-01-27',1),(10,'ON HER MAJESTY SECRET SERVICE',4,'1988-02-21',1),(11,'CASINO ROYALE ',4,'2006-05-12',1),(12,'MOONRAKER',4,'1979-07-12',1),(13,'DIE ANOTHER DAY',4,'2002-04-17',1),(14,'Rich dad poor dad',3,'1995-07-12',2),(15,'Retire Young Retire Rich',3,'1988-07-13',2),(16,'Be Rich and Happy',3,'2010-01-10',2),(17,'ORIGIN',2,'1995-07-12',3),(18,'INFERNO',2,'1988-07-13',3),(19,'THE LOST SYMBOL',2,'2010-01-10',3);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-18 20:41:16

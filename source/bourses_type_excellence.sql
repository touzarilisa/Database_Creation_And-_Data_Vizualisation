-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: bourses
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `type_excellence`
--

DROP TABLE IF EXISTS `type_excellence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_excellence` (
  `code_idex` int NOT NULL,
  `code_pres` char(8) NOT NULL,
  `idex` varchar(50) NOT NULL,
  `pres` varchar(50) NOT NULL,
  PRIMARY KEY (`code_idex`,`code_pres`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_excellence`
--

LOCK TABLES `type_excellence` WRITE;
/*!40000 ALTER TABLE `type_excellence` DISABLE KEYS */;
INSERT INTO `type_excellence` VALUES (0,'0000000X','Hors IDEX','Hors PRES'),(0,'0142382N','Hors IDEX','PRES Normandie Université'),(0,'0212207K','Hors IDEX','PRES Bourgogne Franche-Comté'),(0,'0312758E','Hors IDEX','PRES Université de Toulouse'),(0,'0333178A','Hors IDEX','PRES Université de Bordeaux'),(0,'0342255S','Hors IDEX','PRES Université Montpellier Sud de France'),(0,'0352756F','Hors IDEX','PRES Université européenne de Bretagne'),(0,'0371692N','Hors IDEX','PRES Centre-Val de Loire Université'),(0,'0383412C','Hors IDEX','PRES Université de Grenoble'),(0,'0442665H','Hors IDEX','PRES Université Nantes Angers Maine'),(0,'0512141A','Hors IDEX','PRES Picardie-Champagne'),(0,'0542471T','Hors IDEX','PRES Université de Lorraine'),(0,'0596870X','Hors IDEX','PRES Université Lille Nord de France'),(0,'0631987T','Hors IDEX','PRES Clermont Université'),(0,'0694094A','Hors IDEX','PRES Université de Lyon'),(0,'0755581J','Hors IDEX','PRES Hautes Etudes - Sorbonne - Arts et Métiers'),(0,'0755698L','Hors IDEX','PRES Paris Lumières'),(0,'0772710C','Hors IDEX','PRES Université Paris Est'),(0,'0783617H','Hors IDEX','PRES Université du Grand Ouest parisien'),(0,'0861420B','Hors IDEX','PRES Limousin Poitou-Charentes'),(0,'0912274C','Hors IDEX','PRES UniverSud Paris'),(0,'0932558A','Hors IDEX','PRES COLLEGIUM'),(1,'0000000X','IDEX AMIDEX','Hors PRES'),(2,'0333178A','IDEX Bordeaux','PRES Université de Bordeaux'),(3,'0912274C','IDEX PARIS SACLAY','PRES UniverSud Paris'),(4,'0755575C','IDEX PSL','PRES Paris Sciences et Lettres - Quartier latin'),(5,'0755574B','IDEX SUPER','PRES Sorbonne université'),(6,'0312758E','IDEX UNITI','PRES Université de Toulouse'),(7,'0755598C','IDEX USPC','PRES Sorbonne Paris Cité'),(8,'0000000X','UNISTRA','Hors PRES');
/*!40000 ALTER TABLE `type_excellence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-31 16:57:53

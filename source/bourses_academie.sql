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
-- Table structure for table `academie`
--

DROP TABLE IF EXISTS `academie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academie` (
  `code_academie` int NOT NULL,
  `academie` varchar(50) NOT NULL,
  `code_region` int NOT NULL,
  PRIMARY KEY (`code_academie`),
  KEY `Academie_region_FK` (`code_region`),
  CONSTRAINT `Academie_region_FK` FOREIGN KEY (`code_region`) REFERENCES `region` (`code_region`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academie`
--

LOCK TABLES `academie` WRITE;
/*!40000 ALTER TABLE `academie` DISABLE KEYS */;
INSERT INTO `academie` VALUES (1,'Paris',11),(2,'Aix-Marseille',93),(3,'Besançon',43),(4,'Bordeaux',72),(5,'Caen',25),(6,'Clermont-Ferrand',83),(7,'Dijon',26),(8,'Grenoble',82),(9,'Lille',31),(10,'Lyon',82),(11,'Montpellier',91),(12,'Nancy-Metz',41),(13,'Poitiers',54),(14,'Rennes',53),(15,'Strasbourg',42),(16,'Toulouse',73),(17,'Nantes',52),(18,'Orléans-Tours',24),(19,'Reims',21),(20,'Amiens',22),(21,'Rouen',23),(22,'Limoges',74),(23,'Nice',93),(24,'Créteil',11),(25,'Versailles',11),(27,'Corse',94),(28,'Réunion',4),(32,'Guadeloupe',1),(40,'Nouvelle-Calédonie',0),(41,'Polynésie française',0);
/*!40000 ALTER TABLE `academie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-31 16:57:54

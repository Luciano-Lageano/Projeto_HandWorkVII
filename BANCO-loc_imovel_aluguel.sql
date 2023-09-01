-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: loc_imovel
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `aluguel`
--

DROP TABLE IF EXISTS `aluguel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluguel` (
  `id_venda` int NOT NULL AUTO_INCREMENT,
  `data_pagto` date DEFAULT NULL,
  `valor_pagto` float DEFAULT NULL,
  `cod_imovel` int DEFAULT NULL,
  `desc_imovel` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id_venda`),
  KEY `fk_imovel_aluguel_idx` (`cod_imovel`),
  CONSTRAINT `fk_imovel_aluguel` FOREIGN KEY (`cod_imovel`) REFERENCES `tipo_imovel` (`id_imovel`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluguel`
--

LOCK TABLES `aluguel` WRITE;
/*!40000 ALTER TABLE `aluguel` DISABLE KEYS */;
INSERT INTO `aluguel` VALUES (1,'2023-02-20',1000,2,'3 quartos'),(2,'2023-02-20',1000,2,'3 quartos'),(3,'2023-02-10',750,2,'2 quartos'),(4,'2023-02-10',800,2,'4 quartos'),(5,'2023-02-15',900,2,' 4 quartos, com suite'),(6,'2023-02-20',700,2,'3 quartos'),(7,'2023-02-20',1000,1,'3 quartos e suite'),(8,'2023-02-10',750,1,'2 quartos'),(9,'2023-02-10',800,1,'4 quartos, 1 suite'),(10,'2023-02-15',900,1,'4 quartos, com suite'),(11,'2023-02-20',700,1,'3 quartos'),(12,'2023-02-20',1000,3,'100 metros quadrado'),(13,'2023-02-10',950,3,'50 metros quadrado'),(14,'2023-02-10',2000,3,'150 metros quadrado'),(15,'2023-02-15',2600,3,'200 metros quadrado'),(16,'2023-02-20',5000,3,'3500 metros quadrado'),(17,'2023-02-20',1000,4,'100 metros quadrado'),(18,'2023-02-10',950,4,'50 metros quadrado'),(19,'2023-02-10',2000,4,'150 metros quadrado'),(20,'2023-02-15',2600,4,'200 metros quadrado'),(21,'2023-02-20',5000,4,'3500 metros quadrado'),(22,'2023-03-20',1000,2,'3 quartos'),(23,'2023-03-10',750,2,'2 quartos'),(24,'2023-03-10',800,2,'4 quartos'),(25,'2023-03-15',900,2,'4 quartos, com suite'),(26,'2023-03-20',700,2,'3 quartos'),(27,'2023-03-20',1000,1,'3 quartos e suite'),(28,'2023-03-10',750,1,'2 quartos'),(29,'2023-03-10',800,1,'4 quartos, 1 suite'),(30,'2023-03-15',900,1,'4 quartos, com suite'),(31,'2023-03-20',700,1,'3 quartos'),(32,'2023-03-20',1000,3,'100 metros quadrado'),(33,'2023-03-10',950,3,'50 metros quadrado'),(34,'2023-03-10',2000,3,'150 metros quadrado'),(35,'2023-03-15',2600,3,'200 metros quadrado'),(36,'2023-03-20',5000,3,'3500 metros quadrado'),(37,'2023-03-20',1000,4,'100 metros quadrado'),(38,'2023-03-10',950,4,'50 metros quadrado'),(39,'2023-03-10',2000,4,'150 metros quadrado'),(40,'2023-03-15',2600,4,'200 metros quadrado'),(41,'2023-03-20',5000,4,'3500 metros quadrado'),(42,'2023-04-20',1000,2,'3 quartos'),(43,'2023-04-10',750,2,'2 quartos'),(44,'2023-04-10',800,2,'4 quartos'),(45,'2023-04-15',900,2,'4 quartos, com suite'),(46,'2023-04-20',700,2,'3 quartos'),(47,'2023-04-20',1000,1,'3 quartos e suite'),(48,'2023-04-10',750,1,'2 quartos'),(49,'2023-04-10',800,1,'4 quartos, 1 suite'),(50,'2023-04-15',900,1,'4 quartos, com suite'),(51,'2023-04-20',700,1,'3 quartos'),(52,'2023-03-20',1000,3,'100 metros quadrado'),(53,'2023-04-10',950,3,'50 metros quadrado'),(54,'2023-04-10',2000,3,'150 metros quadrado'),(55,'2023-04-15',2600,3,'200 metros quadrado'),(56,'2023-04-20',5000,3,'3500 metros quadrado'),(57,'2023-04-20',1000,4,'100 metros quadrado'),(58,'2023-04-10',950,4,'50 metros quadrado'),(59,'2023-04-10',2000,4,'150 metros quadrado'),(60,'2023-04-15',2600,4,'200 metros quadrado'),(61,'2023-04-20',5000,4,'3500 metros quadrado');
/*!40000 ALTER TABLE `aluguel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-01 16:00:02

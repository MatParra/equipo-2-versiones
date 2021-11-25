-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `brigadista`
--

DROP TABLE IF EXISTS `brigadista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brigadista` (
  `Rut` varchar(200) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `Empresa` varchar(45) DEFAULT NULL,
  `Rol` varchar(45) DEFAULT NULL,
  `Codigo_empresa` varchar(45) DEFAULT NULL,
  `empresa_Codigo` int NOT NULL,
  PRIMARY KEY (`Rut`),
  KEY `fk_Brigadista_empresa_idx` (`empresa_Codigo`),
  CONSTRAINT `fk_Brigadista_empresa` FOREIGN KEY (`empresa_Codigo`) REFERENCES `empresa` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brigadista`
--

LOCK TABLES `brigadista` WRITE;
/*!40000 ALTER TABLE `brigadista` DISABLE KEYS */;
/*!40000 ALTER TABLE `brigadista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brigadista_has_unidad_operativa`
--

DROP TABLE IF EXISTS `brigadista_has_unidad_operativa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brigadista_has_unidad_operativa` (
  `Brigadista_Rut` varchar(200) NOT NULL,
  `Unidad_operativa_Codigo` int NOT NULL,
  PRIMARY KEY (`Brigadista_Rut`,`Unidad_operativa_Codigo`),
  KEY `fk_Brigadista_has_Unidad_operativa_Unidad_operativa1_idx` (`Unidad_operativa_Codigo`),
  KEY `fk_Brigadista_has_Unidad_operativa_Brigadista1_idx` (`Brigadista_Rut`),
  CONSTRAINT `fk_Brigadista_has_Unidad_operativa_Brigadista1` FOREIGN KEY (`Brigadista_Rut`) REFERENCES `brigadista` (`Rut`),
  CONSTRAINT `fk_Brigadista_has_Unidad_operativa_Unidad_operativa1` FOREIGN KEY (`Unidad_operativa_Codigo`) REFERENCES `unidad_operativa` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brigadista_has_unidad_operativa`
--

LOCK TABLES `brigadista_has_unidad_operativa` WRITE;
/*!40000 ALTER TABLE `brigadista_has_unidad_operativa` DISABLE KEYS */;
/*!40000 ALTER TABLE `brigadista_has_unidad_operativa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `Codigo` int NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidad_operativa`
--

DROP TABLE IF EXISTS `unidad_operativa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unidad_operativa` (
  `Codigo` int NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidad_operativa`
--

LOCK TABLES `unidad_operativa` WRITE;
/*!40000 ALTER TABLE `unidad_operativa` DISABLE KEYS */;
/*!40000 ALTER TABLE `unidad_operativa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-25 13:00:59

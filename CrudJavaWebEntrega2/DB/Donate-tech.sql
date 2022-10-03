CREATE DATABASE  IF NOT EXISTS `donate_tech` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `donate_tech`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: donate_tech
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
-- Table structure for table `beneficiarios`
--

DROP TABLE IF EXISTS `beneficiarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beneficiarios` (
  `codBenef` int NOT NULL AUTO_INCREMENT,
  `tipoBenef` varchar(10) DEFAULT NULL,
  `nomeBenef` varchar(20) NOT NULL,
  `telBenef` varchar(14) NOT NULL,
  `cidadeBenef` varchar(30) DEFAULT NULL,
  `cepBenef` varchar(8) DEFAULT NULL,
  `enderecoBenef` varchar(50) DEFAULT NULL,
  `dataEntrega` date DEFAULT NULL,
  PRIMARY KEY (`codBenef`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beneficiarios`
--

LOCK TABLES `beneficiarios` WRITE;
/*!40000 ALTER TABLE `beneficiarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `beneficiarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doacao`
--

DROP TABLE IF EXISTS `doacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doacao` (
  `codDoacao` int NOT NULL AUTO_INCREMENT,
  `nomeDoacao` varchar(20) DEFAULT NULL,
  `fk_doador_codDoador` int DEFAULT NULL,
  PRIMARY KEY (`codDoacao`),
  KEY `FK_doacao_2` (`fk_doador_codDoador`),
  CONSTRAINT `FK_doacao_2` FOREIGN KEY (`fk_doador_codDoador`) REFERENCES `doador` (`codDoador`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doacao`
--

LOCK TABLES `doacao` WRITE;
/*!40000 ALTER TABLE `doacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `doacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doador`
--

DROP TABLE IF EXISTS `doador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doador` (
  `codDoador` int NOT NULL AUTO_INCREMENT,
  `nomeDoador` varchar(20) NOT NULL,
  `telDoador` varchar(14) NOT NULL,
  `cidadeDoador` varchar(30) DEFAULT NULL,
  `cepDoador` varchar(10) DEFAULT NULL,
  `enderecoDoador` varchar(50) DEFAULT NULL,
  `dataRetirada` date DEFAULT NULL,
  `comentarios` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codDoador`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doador`
--

LOCK TABLES `doador` WRITE;
/*!40000 ALTER TABLE `doador` DISABLE KEYS */;
INSERT INTO `doador` VALUES (2,'Bill Gates','(01)01010-1010','California','22.785-111','Vale do Silicio, 111','2022-10-01',' Windows Is best seller !'),(3,'Linus Torvald','(22)45789-9999','UnixLand','22.777-000','Rua chmod, 777','2022-10-03','Linux Rules !'),(5,'Captain Caveman','(11)11111-1111','Carverna Cave','78.987-888','Rua das cavernas, 123','2022-10-03',' CavernaaaaH !!!'),(6,'Papai Noel','21966665555','Groenlandia','22785091','Casa do Papai noel SN','2022-10-07','Ho ho Hooo !!!'),(7,'Steve Jobs','(33)78787-8787','Applecity','98.745-632','Rua das Ma�as, 12345','2022-10-01',' IOS is most beautiful and stable!');
/*!40000 ALTER TABLE `doador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repassa`
--

DROP TABLE IF EXISTS `repassa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repassa` (
  `fk_Beneficiarios_codBenef` int DEFAULT NULL,
  `fk_doacao_codDoacao` int DEFAULT NULL,
  KEY `FK_repassa_1` (`fk_Beneficiarios_codBenef`),
  KEY `FK_repassa_2` (`fk_doacao_codDoacao`),
  CONSTRAINT `FK_repassa_1` FOREIGN KEY (`fk_Beneficiarios_codBenef`) REFERENCES `beneficiarios` (`codBenef`) ON DELETE CASCADE,
  CONSTRAINT `FK_repassa_2` FOREIGN KEY (`fk_doacao_codDoacao`) REFERENCES `doacao` (`codDoacao`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repassa`
--

LOCK TABLES `repassa` WRITE;
/*!40000 ALTER TABLE `repassa` DISABLE KEYS */;
/*!40000 ALTER TABLE `repassa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-02 22:28:03

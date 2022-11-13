-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: universidad
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `numero_carne` int(11) NOT NULL,
  `nombre` varchar(75) NOT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `direccion` varchar(105) DEFAULT NULL,
  `genero_idgenero` int(11) NOT NULL,
  PRIMARY KEY (`numero_carne`),
  KEY `fk_Alumno_genero_idx` (`genero_idgenero`),
  CONSTRAINT `fk_Alumno_genero` FOREIGN KEY (`genero_idgenero`) REFERENCES `genero` (`idgenero`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (11112,'LUIS ANTONIO MORALES','correo@correo.com',NULL,'Puerto Barrios',1),(12333,'ALUMNO NUEVO ','correo@hotmail.com',NULL,'El Estor',1),(123456,'NUEVO ALUMNO REGISTRADO','NAR@GMAIL.COM',NULL,'PUERTO BARRIOS',1),(147825,'ANGEL VARGAS','AVARGAS@UMG.EDU.GT',NULL,'SANTO TOMAS',1),(165156,'MILTON CARDENAS','correo@correo.com',NULL,'Puerto Barrios',1),(312311,'MARIO MORALES','correo@correo.com',NULL,'Puerto Barrios',1),(324333,'SAUL CORDERO','correo@correo.com',NULL,'Puerto Barrios',1),(435356,'RAMIRO SOTO','correo@correo.com',NULL,'Santo Tomas',1),(456456,'JORGE ARMANDO MORALES','jmorales@gmail.com',NULL,'Morales',1),(963741,'JUAN LUIS PONCIANO','UMG@CORREO.COM',NULL,'SANTO TOMAS',1),(4761465,'JORGE ARIAS AGUIRRE','jarias@gmail.com',NULL,'Guatemala',1),(45646511,'ANTONIO LOPEZ','correo@correo.com',NULL,'puerto barrios',1),(151515122,'JORGE ARMANDO LOPEZ','correo@correo.com',NULL,'puerto barrios',1);
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignacion_curso`
--

DROP TABLE IF EXISTS `asignacion_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignacion_curso` (
  `idasignacion_curso` int(11) NOT NULL AUTO_INCREMENT,
  `inscripcion_idinscripcion` int(11) NOT NULL,
  `curso_codigo_curso` int(11) NOT NULL,
  PRIMARY KEY (`idasignacion_curso`),
  KEY `fk_asignacion_curso_inscripcion1_idx` (`inscripcion_idinscripcion`),
  KEY `fk_asignacion_curso_curso1_idx` (`curso_codigo_curso`),
  CONSTRAINT `fk_asignacion_curso_curso1` FOREIGN KEY (`curso_codigo_curso`) REFERENCES `curso` (`codigo_curso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_asignacion_curso_inscripcion1` FOREIGN KEY (`inscripcion_idinscripcion`) REFERENCES `inscripcion` (`idinscripcion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignacion_curso`
--

LOCK TABLES `asignacion_curso` WRITE;
/*!40000 ALTER TABLE `asignacion_curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `asignacion_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `codigo_curso` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`codigo_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (47,'PROGRA I'),(48,'PROGRA II'),(49,'PROGRA III'),(50,'DESARROLLO WEB'),(51,'INGENIERIA DE SOFTWARE');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `idgenero` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL COMMENT 'Este es un ejemplo de notas en las tablas',
  PRIMARY KEY (`idgenero`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'MASCULINO'),(2,'FEMENINO');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscripcion`
--

DROP TABLE IF EXISTS `inscripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inscripcion` (
  `idinscripcion` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_inscripcion` date NOT NULL,
  `Alumno_numero_carne` int(11) NOT NULL,
  PRIMARY KEY (`idinscripcion`),
  KEY `fk_inscripcion_Alumno1_idx` (`Alumno_numero_carne`),
  CONSTRAINT `fk_inscripcion_Alumno1` FOREIGN KEY (`Alumno_numero_carne`) REFERENCES `alumno` (`numero_carne`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscripcion`
--

LOCK TABLES `inscripcion` WRITE;
/*!40000 ALTER TABLE `inscripcion` DISABLE KEYS */;
/*!40000 ALTER TABLE `inscripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `usuario` varchar(75) NOT NULL,
  `contrasenia` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('JP','123');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
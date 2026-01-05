CREATE DATABASE  IF NOT EXISTS `estadisticapersonadisp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `estadisticapersonadisp`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: estadisticapersonadisp
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `centro_de_estudio`
--

DROP TABLE IF EXISTS `centro_de_estudio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `centro_de_estudio` (
  `centroestudioID` int NOT NULL AUTO_INCREMENT,
  `Nombre_del_centro` varchar(45) DEFAULT NULL,
  `tipo_de_nivel` varchar(45) DEFAULT NULL,
  `provincia` varchar(45) DEFAULT NULL,
  `provincia_id` int DEFAULT NULL,
  PRIMARY KEY (`centroestudioID`),
  KEY `provincia_id_idx` (`provincia_id`),
  CONSTRAINT `provincia_id` FOREIGN KEY (`provincia_id`) REFERENCES `discapacidad_por_provincias` (`provincia_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centro_de_estudio`
--

LOCK TABLES `centro_de_estudio` WRITE;
/*!40000 ALTER TABLE `centro_de_estudio` DISABLE KEYS */;
INSERT INTO `centro_de_estudio` VALUES (1,'CAID Santo Domingo Oeste','Atención Integral (0-12 años)','Santo Domingo (Oeste)',NULL),(2,'Escuela Especial de Sordos (Filial)','Primaria / Básica Especial','Santo Domingo (Norte)',NULL),(3,'Escuela Nacional de Ciegos (Olga Estrella)','Primaria / Rehabilitación','Distrito Nacional',NULL),(4,'Escuela Nacional para Sordos (Sede)','Primaria / Secundaria / Técnico','Distrito Nacional',NULL),(5,'Centro de Rehabilitación (Padre Billini)','Educación Especial y Terapia','Distrito Nacional',NULL),(6,'CAID Santiago','Atención Integral (0-12 años)','Santiago',NULL),(7,'Escuela de Educación Especial Santiago','Primaria Especial','Santiago',NULL),(8,'CAID San Juan','Atención Integral (0-12 años)','San Juan',NULL),(9,'Centro Escolar Emmanuel','Primaria Especial','San Juan',NULL),(10,'Esc. Padre Guido Gildea','Primaria Especial','San Juan',NULL),(11,'Instituto Preparatorio de Menores','Educación Especial / Técnica','San Cristóbal',NULL),(12,'Esc. Parroquial Santa Rita','Primaria (Inclusiva/Especial)','San Cristóbal',NULL),(13,'Aula Específica (Haina)','Aula de Recursos (Autismo)','San Cristóbal',NULL),(14,'Esc. Divina Pastora','Primaria Especial','Barahona',NULL),(15,'Col. Jesús en ti Confío','Primaria Especial','Barahona',NULL),(16,'Esc. El Jardín','Primaria Especial','Azua',NULL),(17,'Centro Educ. Paraíso del Aprendizaje','Primaria Especial','Azua',NULL),(18,'Esc. María Trinidad Sánchez','Primaria Especial','Peravia (Baní)',NULL),(19,'Escuela de Sordos (Filial)','Primaria Especial','Puerto Plata',NULL);
/*!40000 ALTER TABLE `centro_de_estudio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discapacidad_por_provincias`
--

DROP TABLE IF EXISTS `discapacidad_por_provincias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discapacidad_por_provincias` (
  `provincia_id` int NOT NULL AUTO_INCREMENT,
  `PROVINCIA` varchar(45) DEFAULT NULL,
  `POSICION` int DEFAULT NULL,
  `CANTIDADPOBLACIONAL` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`provincia_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discapacidad_por_provincias`
--

LOCK TABLES `discapacidad_por_provincias` WRITE;
/*!40000 ALTER TABLE `discapacidad_por_provincias` DISABLE KEYS */;
INSERT INTO `discapacidad_por_provincias` VALUES (1,'Santo Domingo',1,'259,935'),(2,'Distrito Nacional',2,'131,398'),(3,'Santiago',3,'129,600'),(4,'San Cristóbal',4,'65,345'),(5,'La Vega',5,'55,104'),(6,'Duarte',6,'44,803'),(7,'Puerto Plata',7,'38,748'),(8,'San Pedro de Macorís',8,'34,190'),(9,'La Romana',9,'29,624'),(10,'Espaillat',10,'28,777'),(11,'San Juan',11,'28,575'),(12,'Monte Plata',12,'24,727'),(13,'La Altagracia',13,'24,301'),(14,'Sánchez Ramírez',14,'23,883'),(15,'Barahona',15,'22,433'),(16,'Peravia',16,'22,188'),(17,'Azua',17,'21,475'),(18,'Valverde',18,'21,151'),(19,'Monseñor Nouel',19,'20,573'),(20,'María Trinidad Sánchez',20,'18,068'),(21,'Monte Cristi',21,'15,796'),(22,'Hermanas Mirabal',22,'13,025'),(23,'Samaná',23,'12,611'),(24,'El Seibo',24,'11,835'),(25,'Dajabón',25,'11,590'),(26,'Hato Mayor',26,'11,014'),(27,'Baoruco',27,'10,064'),(28,'Santiago Rodríguez',28,'8,048'),(29,'San José de Ocoa',29,'7,541'),(30,'Elías Piña',30,'6,187'),(31,'Independencia',31,'5,472'),(32,'Pedernales',32,'2,766');
/*!40000 ALTER TABLE `discapacidad_por_provincias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadistica_discapacidad`
--

DROP TABLE IF EXISTS `estadistica_discapacidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estadistica_discapacidad` (
  `ESTADISTICAID` int NOT NULL AUTO_INCREMENT,
  `PROVINCIAID` int DEFAULT NULL,
  `DISCAPACIDADID` int DEFAULT NULL,
  `CANTIDAD_PERSONAS` int DEFAULT NULL,
  `FECHA_CENSO` date DEFAULT NULL,
  PRIMARY KEY (`ESTADISTICAID`),
  KEY `PROVINCIAID_idx` (`PROVINCIAID`),
  KEY `DISCAPACIDADID_idx` (`DISCAPACIDADID`),
  CONSTRAINT `DISCAPACIDADID` FOREIGN KEY (`DISCAPACIDADID`) REFERENCES `tipos_de_discapacidades` (`DISCAPACIDADID`),
  CONSTRAINT `PROVINCIAID` FOREIGN KEY (`PROVINCIAID`) REFERENCES `discapacidad_por_provincias` (`provincia_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadistica_discapacidad`
--

LOCK TABLES `estadistica_discapacidad` WRITE;
/*!40000 ALTER TABLE `estadistica_discapacidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `estadistica_discapacidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_de_discapacidades`
--

DROP TABLE IF EXISTS `tipos_de_discapacidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipos_de_discapacidades` (
  `DISCAPACIDADID` int NOT NULL AUTO_INCREMENT,
  `TIPOS_DE_DISCAPACIDAD` varchar(60) DEFAULT NULL,
  `PORCENTAJE_DE_POBLACION` float DEFAULT NULL,
  PRIMARY KEY (`DISCAPACIDADID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_de_discapacidades`
--

LOCK TABLES `tipos_de_discapacidades` WRITE;
/*!40000 ALTER TABLE `tipos_de_discapacidades` DISABLE KEYS */;
INSERT INTO `tipos_de_discapacidades` VALUES (37,'Visual (Para ver, aunque use lentes)',8.34),(38,'Motora - Caminar (Caminar o subir escalones)',3.47),(39,'Cognitiva (Recordar o concentrarse)',2.83),(40,'Motora - Piernas (Mover una o ambas piernas)',2.68),(41,'Motora - Brazos (Mover uno o ambos brazos)',1.72),(42,'Auditiva (Oír, aunque use audífonos)',1.65),(43,'Motora - Manos (Agarrar objetos/abrir recipientes)',1.37),(44,'Habla (Para hablar)',0.94),(45,'Mental (Problemas mentales)',0.77),(46,'Mudez (Es mudo/a)',0.3),(47,'Amputación (Falta de una o ambas piernas)',0.16),(48,'Amputación (Falta de uno o ambos brazos)',0.11);
/*!40000 ALTER TABLE `tipos_de_discapacidades` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-29 17:35:57

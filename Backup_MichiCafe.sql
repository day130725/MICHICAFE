-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: michi_cafe_db
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `telefono` varchar(9) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_dni` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'juan jose','alcantara','12345678','987654321','asd@gmail.com','los heroes','Activo'),(2,'kelly','huaman','32165498','741852963','asdas@gmail.com','nogales','Activo'),(3,'jose luis','alcantara vergara','48537114','852369741','asd@gmail.com','av.los heroes ','Activo'),(4,'jacinta','perez quiliche','56784512','000000000','michi@gmail.com','-','Inactivo'),(5,'dairon','perez','89652341','000000000','michi@gmail.com','-','Activo'),(6,'roberto paolo','-','78541236','000000000','michi@gmail.com','-','Activo'),(7,'jose','dobertin','99999999','000000000','michi@gmail.com','-','Activo'),(8,'miguel','pajarez','12385749','000000000','michi@gmail.com','-','Inactivo'),(9,'juancito','perez','66666663','369741852','pere@gmail.com','av.casanova','Activo'),(10,'tomas','flores','12346666','000000000','asd@gmail.com','-','Inactivo'),(11,'asdf','asdf','12385473','000000000','michi@gmail.com','-','Inactivo');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_ventas`
--

DROP TABLE IF EXISTS `detalle_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_ventas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_venta` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_venta` (`id_venta`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_ventas`
--

LOCK TABLES `detalle_ventas` WRITE;
/*!40000 ALTER TABLE `detalle_ventas` DISABLE KEYS */;
INSERT INTO `detalle_ventas` VALUES (1,1,1,2,10.00),(2,2,2,50,0.50),(3,3,2,10,0.50),(4,4,1,2,10.00),(5,5,3,4,1.00),(6,6,3,10,1.00),(7,7,1,2,10.00),(8,7,3,2,1.00),(9,7,3,5,1.00),(10,8,2,1,0.50),(11,8,1,2,10.00),(12,8,3,4,1.00),(13,9,2,1,0.50),(14,10,2,1,0.50),(15,10,2,2,0.50),(16,11,2,2,0.50),(17,12,1,3,10.00),(18,13,2,4,0.50),(19,14,2,14,0.50),(20,14,3,6,1.00),(21,14,4,2,5.00),(22,15,4,8,5.00),(23,16,1,1,10.00),(24,17,3,1,1.00),(25,18,3,3,1.00),(26,18,2,1,0.50),(27,19,3,2,1.00),(28,20,1,1,10.00),(29,21,3,1,1.00);
/*!40000 ALTER TABLE `detalle_ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `telefono` varchar(9) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` varchar(30) NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario` (`usuario`),
  UNIQUE KEY `uc_empleado_dni` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Administrador','General','12345678',NULL,NULL,'admin','admin123','Administrador','Activo'),(2,'jose luis','alcantara','48537114','956825776','3ckokill@gmail.com','Jose','48537114','Empleado','Activo'),(4,'maria','vergara','85698547','956825452','asdf@gmail.com','maria','123456789','Empleado','Activo'),(5,'paolo','santos','22222222','147369852','asdf@gmail.com','paolo','paolo123','Empleado','Inactivo'),(6,'kelly','vergara','69852314','369852147','kelly@gmail.com','kelly','kelly','Empleado','Inactivo'),(7,'asd','asd','11111111','888888888','asd@gmail.com','asd','asd','Empleado','Inactivo');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'capuccino',10.00,5),(2,'caramelito',0.50,14),(3,'Galletita',1.00,13),(4,'pie de manzana',5.00,0),(10,'Café Mocha',9.50,20);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) DEFAULT NULL,
  `id_empleado` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT current_timestamp(),
  `total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_empleado` (`id_empleado`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`),
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,1,2,'2026-06-20 16:12:39',20.00),(2,1,2,'2026-06-20 16:13:29',25.00),(3,1,2,'2026-06-20 17:01:52',5.00),(4,1,2,'2026-06-20 17:07:16',20.00),(5,2,2,'2026-06-20 22:00:13',4.00),(6,2,2,'2026-06-20 22:07:30',10.00),(7,2,2,'2026-06-20 22:22:57',27.00),(8,2,1,'2026-06-20 22:26:59',24.50),(9,1,1,'2026-06-21 02:37:59',0.50),(10,1,1,'2026-06-21 02:53:26',1.50),(11,1,1,'2026-06-22 15:58:21',1.00),(12,6,2,'2026-06-22 18:00:31',30.00),(13,6,1,'2026-06-22 18:31:01',2.00),(14,2,1,'2026-06-23 19:03:01',23.00),(15,3,1,'2026-06-25 01:40:18',40.00),(16,1,1,'2026-06-25 01:47:07',10.00),(17,5,1,'2026-06-25 01:50:11',1.00),(18,3,1,'2026-06-25 04:08:28',2.50),(19,3,1,'2026-06-25 04:17:04',2.00),(20,2,2,'2026-06-25 04:19:04',10.00),(21,6,4,'2026-06-25 04:27:54',1.00);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-25  4:42:38

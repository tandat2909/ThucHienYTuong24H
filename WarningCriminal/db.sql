-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: warningcriminal
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
                           `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                           `userName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                           `pw` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                           `status` tinyint NOT NULL DEFAULT '1' COMMENT '1 active\\\\n0 inactive',
                           `roleID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                           PRIMARY KEY (`id`),
                           KEY `fk_account_role1_idx` (`roleID`),
                           CONSTRAINT `fk_account_role1` FOREIGN KEY (`roleID`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='thông tin tài khoản';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `congan`
--

DROP TABLE IF EXISTS `congan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `congan` (
                          `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                          `HovaTen` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                          `soHieuQuanNhan` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                          `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                          `sdt` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                          `accountID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                          PRIMARY KEY (`id`),
                          UNIQUE KEY `account_accountID_UNIQUE` (`accountID`),
                          KEY `fk_customer_account_idx` (`accountID`),
                          CONSTRAINT `fk_customer_account` FOREIGN KEY (`accountID`) REFERENCES `account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='bảnh lưu khách hàng';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `congan`
--

LOCK TABLES `congan` WRITE;
/*!40000 ALTER TABLE `congan` DISABLE KEYS */;
/*!40000 ALTER TABLE `congan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mucdo`
--

DROP TABLE IF EXISTS `mucdo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mucdo` (
                         `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                         `tenMucDo` varchar(100) NOT NULL,
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mucdo`
--

LOCK TABLES `mucdo` WRITE;
/*!40000 ALTER TABLE `mucdo` DISABLE KEYS */;
/*!40000 ALTER TABLE `mucdo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoidan`
--

DROP TABLE IF EXISTS `nguoidan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nguoidan` (
                            `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                            `HovaTen` varchar(45) DEFAULT NULL,
                            `CCCD` varchar(45) DEFAULT NULL,
                            `trangthaixacthucnguoidan` tinyint NOT NULL DEFAULT '0',
                            `diachi` varchar(100) DEFAULT NULL,
                            `account_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                            PRIMARY KEY (`id`),
                            KEY `fk_NguoiDan_account1_idx` (`account_id`),
                            CONSTRAINT `fk_NguoiDan_account1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoidan`
--

LOCK TABLES `nguoidan` WRITE;
/*!40000 ALTER TABLE `nguoidan` DISABLE KEYS */;
/*!40000 ALTER TABLE `nguoidan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
                        `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                        `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                        `description` varbinary(300) DEFAULT NULL,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES ('ROLE_ADMIN','ROLE_ADMIN',NULL),('ROLE_ANONYMOUS','ROLE_ANONYMOUS',NULL),('ROLE_CONGAN','ROLE_NGUOIDAN',NULL),('ROLE_NGUOIDAN','ROLE_NGUOIDAN',NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sysconfig`
--

DROP TABLE IF EXISTS `sysconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sysconfig` (
                             `key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                             `value` varchar(100) NOT NULL,
                             PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysconfig`
--

LOCK TABLES `sysconfig` WRITE;
/*!40000 ALTER TABLE `sysconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `sysconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tintinhbao`
--

DROP TABLE IF EXISTS `tintinhbao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tintinhbao` (
                              `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                              `NoiDungTinhBao` varchar(500) DEFAULT NULL,
                              `idToiPham` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                              `idNguoiDan` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                              PRIMARY KEY (`id`),
                              KEY `fk_TinTinhBao_ToiPham1_idx` (`idToiPham`),
                              KEY `fk_TinTinhBao_NguoiDan1_idx` (`idNguoiDan`),
                              CONSTRAINT `fk_TinTinhBao_NguoiDan1` FOREIGN KEY (`idNguoiDan`) REFERENCES `nguoidan` (`id`),
                              CONSTRAINT `fk_TinTinhBao_ToiPham1` FOREIGN KEY (`idToiPham`) REFERENCES `toipham` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tintinhbao`
--

LOCK TABLES `tintinhbao` WRITE;
/*!40000 ALTER TABLE `tintinhbao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tintinhbao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toipham`
--

DROP TABLE IF EXISTS `toipham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toipham` (
                           `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                           `HovaTen` varchar(100) NOT NULL,
                           `CCID` varchar(45) NOT NULL,
                           `hinhAnh` varchar(300) DEFAULT NULL,
                           `ngaySinh` date DEFAULT NULL,
                           `chiTietPhamToi` varchar(500) DEFAULT NULL,
                           `trangThaiBiBat` tinyint NOT NULL DEFAULT '0' COMMENT 'Tội phạm chưa bắt',
                           `idMucDo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                           PRIMARY KEY (`id`),
                           KEY `fk_ToiPham_MucDo1_idx` (`idMucDo`),
                           CONSTRAINT `fk_ToiPham_MucDo1` FOREIGN KEY (`idMucDo`) REFERENCES `mucdo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toipham`
--

LOCK TABLES `toipham` WRITE;
/*!40000 ALTER TABLE `toipham` DISABLE KEYS */;
/*!40000 ALTER TABLE `toipham` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-17 17:24:21

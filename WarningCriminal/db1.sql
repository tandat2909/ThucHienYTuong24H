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
INSERT INTO `account` VALUES ('1dca4916-7d57-441f-9e4d-b88cba47c7be','tandat1','$2a$10$mZRf4UFGRapLedL.UfSNgug1HBhyZYd8SLQ20ogjoeUJzyLDSmud2',1,'ROLE_NGUOIDAN'),('22e04ed0-2f39-4b20-a01f-51986abd261c','cong1','$2a$10$Anm1ZjMMtavhvFlHft0DnuqlVrSXCTIxnIoEn0tQcyds/ETGD/tP2',1,'ROLE_CONGAN'),('80895f89-673a-4f22-9b34-46162e92f7ac','congan','$2a$10$5/vYdDo5CJoCrgf0rnOhquCa4gY72dqRUDTd5czGnDh1BJFjoJ7Ku',1,'ROLE_CONGAN'),('88f3cb48-3621-47a9-a62e-8b05fd393d90','tandat','$2a$10$RtayXdbmi43rjPg/cc1BROKPB0Y5lid/zMgn1hwDrIAqq9kdfZAay',1,'ROLE_NGUOIDAN'),('e87f5092-4ace-42a7-9dd5-955091c096fb','nguyentrong','$2a$10$2ArU1e6tgosowGezKo5aIuoEFiwk/jswY8.9qUoyuINz1jt/TrtsO',1,'ROLE_NGUOIDAN');
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
INSERT INTO `mucdo` VALUES ('itnghiemtrong','Ít Nghiêm Trọng'),('nghiemtrong','Nghiêm Trọng'),('ratnghiemtrong','Rất Nghiêm Trọng');
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
INSERT INTO `nguoidan` VALUES ('1077902e-ac66-428c-83ac-63a3c08f90c9',NULL,'123333333',0,NULL,'22e04ed0-2f39-4b20-a01f-51986abd261c'),('11fee0e7-eb2b-4cf3-b6c0-06659e3193ca',NULL,'333333333',0,NULL,'1dca4916-7d57-441f-9e4d-b88cba47c7be'),('460e02cd-941a-458b-bbe1-ed5e9b94b243',NULL,'343453454',0,NULL,'80895f89-673a-4f22-9b34-46162e92f7ac'),('d32e7e2d-bb67-497a-ad9d-50bc2d12bb55',NULL,'423423432',0,NULL,'e87f5092-4ace-42a7-9dd5-955091c096fb'),('e880a543-94e5-4928-8c4d-72995727cc98',NULL,'234242422',0,NULL,'88f3cb48-3621-47a9-a62e-8b05fd393d90');
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
  `gioitinh` varchar(45) DEFAULT NULL,
  `noisinh` varchar(45) DEFAULT NULL,
  `hokhauthuongtru` varchar(500) DEFAULT NULL,
  `quoctich` varchar(45) DEFAULT NULL,
  `dantoc` varchar(45) DEFAULT NULL,
  `hotenbo` varchar(100) DEFAULT NULL,
  `hotenme` varchar(100) DEFAULT NULL,
  `mauda` varchar(45) DEFAULT NULL,
  `chieucao` varchar(45) DEFAULT NULL,
  `dacdiemmaitoc` varchar(500) DEFAULT NULL,
  `dacdiemlongmay` varchar(500) DEFAULT NULL,
  `dacdiemmui` varchar(500) DEFAULT NULL,
  `dacdiemtai` varchar(500) DEFAULT NULL,
  `dacdiemmat` varchar(500) DEFAULT NULL,
  `dacdiemkhac` varchar(500) DEFAULT NULL,
  `toidanh` varchar(500) DEFAULT NULL,
  `heloaitoidanh` varchar(500) DEFAULT NULL,
  `phamvitruyna` varchar(500) DEFAULT NULL,
  `quyetdinhtruyna` varchar(500) DEFAULT NULL,
  `donviraquyetdinh` varchar(500) DEFAULT NULL,
  `baochodonvi` varchar(500) DEFAULT NULL,
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
INSERT INTO `toipham` VALUES ('1','Mai Ngọc Linh','2','sss.jpg','1992-01-01','Tội lừa đảo chiếm đoạt tài sản',0,'nghiemtrong','Nam','Châu Thành, Hậu Giang','ấp Phú Thạnh, thị trấn Mái Dầm, Châu Thành, Hậu Giang','Việt Nam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Tội lừa đảo chiếm đoạt tài sản','Ma tuý',NULL,'Số 06/ Ngày 14/12/2019','	CA huyện Phụng Hiệp, CA tỉnh Hậu Giang',NULL),('2','Lê Quốc Khánh','3',NULL,'1989-01-01','Tội trộm cắp tài sản',0,'itnghiemtrong','Nam','Phụng Hiệp, Hậu Giang','ấp Tân Long, xã Hòa Mỹ, Phụng Hiệp, Hậu Giang','Việt Nam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Tội trộm cắp tài sản','Ma tuý',NULL,'Số 05/ Ngày 13/12/2019','CA huyện Phụng Hiệp, CA tỉnh Hậu Giang',NULL),('3','Nguyễn Ngọc Toàn','4',NULL,'1999-01-01','Tội trộm cắp tài sản',0,'itnghiemtrong','Nam','	Đà Nẵng','	Tổ 34, phường Hòa Hiệp Nam, Liên Chiểu, Đà Nẵng','Việt Nam','Kinh','Đăng Ngọc Thành','Nguyễn Thị Bảy',NULL,'	1m',NULL,NULL,NULL,NULL,NULL,NULL,'Trộm cắp tài sản','Hình sự','	Địa phương','Số 04/ Ngày 11/12/2019','	CA Huyện Hoà Vang, CA TP. Đà Nẵng',NULL),('4','Nguyễn Đình Long','5',NULL,'1989-01-01','Tội lừa đảo chiếm đoạt tài sản',0,'nghiemtrong','Nam','Hải phòng','Thuận thiên, Kiến Thuỵ, Hải Phòng','Việt Nam','Kinh','Nguyễn Đình Phóng','Nguyễn Thị Gọn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Nốt ruồi cách 1cm dưới trước mép phải','Tội lừa đảo chiếm đoạt tài sản','Ma tuý','Toàn quốc','Số 07/ Ngày 11/12/2019','Cơ quan CSĐT, CA TP. Hải Phòng','	Cục CSĐT TP về TTXH - Bộ Công an'),('5','Trần Thị Cẩm Tiên','6',NULL,'1995-01-01','Tội mua bán trái phép chất ma túy',0,'nghiemtrong','Nữ','Tỉnh Tiền Giang','	ấp Tân Thạnh, xã Tân Lý Tây, Châu Thành, Tiền Giang','Việt Nam','Kinh','Trần Hồng Vân','Hồ Thị Hoa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'	Tội mua bán trái phép chất ma túy','Ma tuý','Toàn quốc','Số 20/ Ngày 10/12/2019','Cơ quan Thi Hành án Hình Sự, CA tỉnh Tiền Giang','Cục CSĐT TP về TTXH - Bộ Công an'),('6','Huỳnh Văn Kiệu','7',NULL,'1984-01-01','Tội cố ý gây thương tích hoặc gây tổn hại cho sức khỏe của người khác',0,'nghiemtrong','Nam','Tỉnh Tiền Giang','ấp 1, xã Tân Bình, TX Cai Lậy, tỉnh Tiền Giang','Việt Nam','Kinh','	Huỳnh Văn Thảo','Nguyễn Thị Hoa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'	Tội cố ý gây thương tích hoặc gây tổn hại cho sức khỏe của người khác','Hình sự ','Toàn quốc','	Số 3709/ Ngày 09/12/2019','CA thị xã Cai Lậy, CA tỉnh Tiền Giang','Cục CSĐT TP về TTXH - Bộ Công an'),('7','Bùi Thị Liên','8',NULL,'1979-01-01','Tội trộm cắp tài sản',0,'itnghiemtrong','Nữ','Tỉnh Tiền Giang','ấp Bình Khương 2, xã Bình Phục Nhứt, Chợ Gạo, Tiền Giang','Việt Nam','Kinh','Bùi Văn Thi','Nguyễn Thị Hoa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Tội trộm cắp tài sản','Hình sự','Toàn quốc','Số 1784/ Ngày 06/12/2019','CA huyện Gò Công Tây, CA tỉnh Tiền Giang','Cục CSĐT TP về TTXH - Bộ Công an'),('8','Nguyễn Xuân Trường','9',NULL,'1992-01-01','Tội tàng trữ trái phép chất ma túy',0,'ratnghiemtrong','Nam','Tỉnh Tiền Giang','	Số 174/3 khu phố 2, phường 5, TX Cai Lậy, tỉnh Tiền Giang','Việt Nam','Kinh','Nguyễn Thanh Tâm','Đinh Thị Kim Phượng',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Tội tàng trữ trái phép chất ma túy','Ma tuý','Toàn quốc','Số 3700/ Ngày 06/12/2019','CA thị xã Cai Lậy, CA tỉnh Tiền Giang','Cục CSĐT TP về TTXH - Bộ Công an');
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

-- Dump completed on 2021-04-18 13:31:13

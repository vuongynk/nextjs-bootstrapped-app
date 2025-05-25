-- MySQL dump 10.13  Distrib 8.0.41, for macos15 (x86_64)
--
-- Host: 127.0.0.1    Database: englishcoursedb
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Table structure for table `ChamDiem`
--

DROP TABLE IF EXISTS `ChamDiem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ChamDiem` (
  `MaHV` varchar(45) NOT NULL,
  `MaKT` varchar(45) DEFAULT NULL,
  `Diem` varchar(45) DEFAULT NULL,
  `NhanXet` varchar(255) DEFAULT NULL,
  `NgayCham` datetime DEFAULT NULL,
  PRIMARY KEY (`MaHV`),
  KEY `MaKT_idx` (`MaKT`),
  CONSTRAINT `ChamDiem_MaHV` FOREIGN KEY (`MaHV`) REFERENCES `HocVien` (`MaHV`),
  CONSTRAINT `ChamDiem_MaKT` FOREIGN KEY (`MaKT`) REFERENCES `KiemTraDG` (`MaKT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChamDiem`
--

LOCK TABLES `ChamDiem` WRITE;
/*!40000 ALTER TABLE `ChamDiem` DISABLE KEYS */;
INSERT INTO `ChamDiem` VALUES ('H00000001','KT001','130','Good performance','2024-12-31 00:00:00'),('H00000002','KT001','125','Good performance','2024-12-31 00:00:00'),('H00000003','KT001','135','Good performance','2024-12-31 00:00:00'),('H00000004','KT001','120','Needs improvement','2024-12-31 00:00:00'),('H00000005','KT001','140','Excellent','2024-12-31 00:00:00'),('H00000006','KT002','150','Good performance','2025-04-30 00:00:00'),('H00000007','KT002','145','Good performance','2025-04-30 00:00:00'),('H00000008','KT002','160','Excellent','2025-04-30 00:00:00'),('H00000009','KT002','155','Good performance','2025-04-30 00:00:00'),('H00000010','KT002','150','Good performance','2025-04-30 00:00:00'),('H00000011','KT003','4.0','Needs improvement','2024-10-31 00:00:00'),('H00000012','KT003','3.5','Needs improvement','2024-10-31 00:00:00'),('H00000013','KT003','4.5','Good performance','2024-10-31 00:00:00'),('H00000014','KT003','5.0','Good performance','2024-10-31 00:00:00'),('H00000015','KT003','4.0','Needs improvement','2024-10-31 00:00:00'),('H00000016','KT004','4.0','Needs improvement','2024-12-31 00:00:00'),('H00000017','KT004','3.5','Needs improvement','2024-12-31 00:00:00'),('H00000018','KT004','5.0','Good performance','2024-12-31 00:00:00'),('H00000019','KT004','4.5','Good performance','2024-12-31 00:00:00'),('H00000020','KT004','4.5','Needs improvement','2024-12-31 00:00:00'),('H00000021','KT005','5.0','Good performance','2024-12-31 00:00:00'),('H00000022','KT005','5.5','Excellent','2024-12-31 00:00:00'),('H00000023','KT005','5.0','Good performance','2024-12-31 00:00:00'),('H00000024','KT005','4.5','Needs improvement','2024-12-31 00:00:00'),('H00000025','KT005','5.5','Excellent','2024-12-31 00:00:00'),('H00000026','KT006','5.0','Good performance','2025-04-30 00:00:00'),('H00000027','KT006','5.5','Excellent','2025-04-30 00:00:00'),('H00000028','KT006','5.0','Good performance','2025-04-30 00:00:00'),('H00000029','KT006','4.5','Needs improvement','2025-04-30 00:00:00'),('H00000030','KT006','5.5','Excellent','2025-04-30 00:00:00'),('H00000031','KT007','6.0','Good performance','2024-12-31 00:00:00'),('H00000032','KT007','6.5','Good performance','2024-12-31 00:00:00'),('H00000033','KT007','5.5','Needs improvement','2024-12-31 00:00:00'),('H00000034','KT007','6.0','Good performance','2024-12-31 00:00:00'),('H00000035','KT007','6.5','Good performance','2024-12-31 00:00:00'),('H00000036','KT008','6.5','Good performance','2025-04-30 00:00:00'),('H00000037','KT008','7.0','Excellent','2025-04-30 00:00:00'),('H00000038','KT008','6.5','Good performance','2025-04-30 00:00:00'),('H00000039','KT008','6.0','Good performance','2025-04-30 00:00:00'),('H00000040','KT008','6.5','Good performance','2025-04-30 00:00:00'),('H00000041','KT009','Pass','Good performance','2024-12-31 00:00:00'),('H00000042','KT009','Fail','Needs improvement','2024-12-31 00:00:00'),('H00000043','KT009','Pass','Good performance','2024-12-31 00:00:00'),('H00000044','KT009','Fail','Needs improvement','2024-12-31 00:00:00'),('H00000045','KT009','Pass','Good performance','2024-12-31 00:00:00'),('H00000046','KT010','Pass','Good performance','2025-04-30 00:00:00'),('H00000047','KT010','Fail','Needs improvement','2025-04-30 00:00:00'),('H00000048','KT010','Pass','Good performance','2025-04-30 00:00:00'),('H00000049','KT010','Fail','Needs improvement','2025-04-30 00:00:00'),('H00000050','KT010','Pass','Good performance','2025-04-30 00:00:00'),('H00000051','KT011','65','Needs improvement','2024-12-31 00:00:00'),('H00000052','KT011','60','Needs improvement','2024-12-31 00:00:00'),('H00000053','KT011','55','Needs improvement','2024-12-31 00:00:00'),('H00000054','KT011','68','Good performance','2024-12-31 00:00:00'),('H00000055','KT011','70','Good performance','2024-12-31 00:00:00'),('H00000056','KT012','85','Good performance','2025-04-30 00:00:00'),('H00000057','KT012','90','Excellent','2025-04-30 00:00:00'),('H00000058','KT012','80','Good performance','2025-04-30 00:00:00'),('H00000059','KT012','88','Good performance','2025-04-30 00:00:00'),('H00000060','KT012','75','Needs improvement','2025-04-30 00:00:00'),('H00000061','KT013','350','Good performance','2024-12-31 00:00:00'),('H00000062','KT013','400','Excellent','2024-12-31 00:00:00'),('H00000063','KT013','300','Needs improvement','2024-12-31 00:00:00'),('H00000064','KT013','390','Good performance','2024-12-31 00:00:00'),('H00000065','KT013','380','Good performance','2024-12-31 00:00:00'),('H00000066','KT014','380','Good performance','2025-04-30 00:00:00'),('H00000067','KT014','420','Excellent','2025-04-30 00:00:00'),('H00000068','KT014','370','Needs improvement','2025-04-30 00:00:00'),('H00000069','KT014','390','Good performance','2025-04-30 00:00:00'),('H00000070','KT014','400','Good performance','2025-04-30 00:00:00'),('H00000071','KT015','510','Good performance','2024-12-31 00:00:00'),('H00000072','KT015','540','Excellent','2024-12-31 00:00:00'),('H00000073','KT015','500','Needs improvement','2024-12-31 00:00:00'),('H00000074','KT015','530','Good performance','2024-12-31 00:00:00'),('H00000075','KT015','550','Excellent','2024-12-31 00:00:00'),('H00000076','KT016','520','Good performance','2025-04-30 00:00:00'),('H00000077','KT016','550','Excellent','2025-04-30 00:00:00'),('H00000078','KT016','510','Good performance','2025-04-30 00:00:00'),('H00000079','KT016','530','Good performance','2025-04-30 00:00:00'),('H00000080','KT016','540','Excellent','2025-04-30 00:00:00'),('H00000081','KT017','600','Good performance','2024-12-31 00:00:00'),('H00000082','KT017','650','Excellent','2024-12-31 00:00:00'),('H00000083','KT017','590','Needs improvement','2024-12-31 00:00:00'),('H00000084','KT017','610','Good performance','2024-12-31 00:00:00'),('H00000085','KT017','630','Good performance','2024-12-31 00:00:00'),('H00000086','KT018','680','Good performance','2025-04-30 00:00:00'),('H00000087','KT018','700','Excellent','2025-04-30 00:00:00'),('H00000088','KT018','670','Good performance','2025-04-30 00:00:00'),('H00000089','KT018','690','Good performance','2025-04-30 00:00:00'),('H00000090','KT018','660','Good performance','2025-04-30 00:00:00'),('H00000091','KT019','Level 2','Good performance','2024-12-31 00:00:00'),('H00000092','KT019','Level 2','Good performance','2024-12-31 00:00:00'),('H00000093','KT019','Level 2','Good performance','2024-12-31 00:00:00'),('H00000094','KT019','Level 2','Good performance','2024-12-31 00:00:00'),('H00000095','KT019','Level 2','Good performance','2024-12-31 00:00:00'),('H00000096','KT020','Level 3','Good performance','2025-04-30 00:00:00'),('H00000097','KT020','Level 3','Good performance','2025-04-30 00:00:00'),('H00000098','KT020','Level 3','Good performance','2025-04-30 00:00:00'),('H00000099','KT020','Level 3','Good performance','2025-04-30 00:00:00'),('H00000100','KT020','Level 3','Good performance','2025-04-30 00:00:00');
/*!40000 ALTER TABLE `ChamDiem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ChungChi`
--

DROP TABLE IF EXISTS `ChungChi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ChungChi` (
  `MaCC` varchar(45) NOT NULL,
  `MaHV` varchar(45) DEFAULT NULL,
  `MaKH` varchar(45) DEFAULT NULL,
  `TenCC` varchar(45) DEFAULT NULL,
  `NgayCap` datetime DEFAULT NULL,
  `ThoiHan` varchar(45) DEFAULT NULL,
  `TrangThai` varchar(45) DEFAULT NULL,
  `HinhAnh` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaCC`),
  KEY `MaHV_idx` (`MaHV`),
  KEY `MaKH_idx` (`MaKH`),
  CONSTRAINT `ChungChi_MaHV` FOREIGN KEY (`MaHV`) REFERENCES `HocVien` (`MaHV`),
  CONSTRAINT `ChungChi_MaKH` FOREIGN KEY (`MaKH`) REFERENCES `KhoaHoc` (`MaKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChungChi`
--

LOCK TABLES `ChungChi` WRITE;
/*!40000 ALTER TABLE `ChungChi` DISABLE KEYS */;
INSERT INTO `ChungChi` VALUES ('CC0001','H00000011','KH0003','IELTS','2025-06-16 00:00:00','2 năm','Đã cấp chứng chỉ','Chưa có'),('CC0002','H00000012','KH0003','IELTS','2025-06-16 00:00:00','2 năm','Đã cấp chứng chỉ','Chưa có'),('CC0003','H00000013','KH0003','IELTS','2025-06-16 00:00:00','2 năm','Đã cấp chứng chỉ','Chưa có'),('CC0004','H00000091','KH0019','VSTEP','2025-06-16 00:00:00','2 năm','Đã cấp chứng chỉ','Chưa có'),('CC0005','H00000092','KH0019','VSTEP','2025-06-16 00:00:00','2 năm','Đã cấp chứng chỉ','Chưa có'),('CC0006','H00000093','KH0019','VSTEP','2025-06-16 00:00:00','2 năm','Đã cấp chứng chỉ','Chưa có'),('CC0007','H00000094','KH0019','VSTEP','2025-06-16 00:00:00','2 năm','Đã cấp chứng chỉ','Chưa có'),('CC0008','H00000095','KH0019','VSTEP','2025-06-16 00:00:00','2 năm','Đã cấp chứng chỉ','Chưa có');
/*!40000 ALTER TABLE `ChungChi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DangKy`
--

DROP TABLE IF EXISTS `DangKy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DangKy` (
  `MaHV` varchar(45) NOT NULL,
  `MaKH` varchar(45) NOT NULL,
  `NgayDK` varchar(45) DEFAULT NULL,
  `TrangThaiDK` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaHV`,`MaKH`),
  KEY `MaKH_idx` (`MaKH`),
  CONSTRAINT `DangKy_MaHV` FOREIGN KEY (`MaHV`) REFERENCES `HocVien` (`MaHV`),
  CONSTRAINT `DangKy_MaKH` FOREIGN KEY (`MaKH`) REFERENCES `KhoaHoc` (`MaKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DangKy`
--

LOCK TABLES `DangKy` WRITE;
/*!40000 ALTER TABLE `DangKy` DISABLE KEYS */;
INSERT INTO `DangKy` VALUES ('H00000001','KH0001','2024-12-14','Đã thanh toán '),('H00000002','KH0001','2024-12-14','Đã thanh toán '),('H00000003','KH0001','2024-12-16','Đã thanh toán '),('H00000004','KH0001','2024-12-20','Đã thanh toán '),('H00000005','KH0001','2024-12-25','Đã thanh toán '),('H00000006','KH0002','2025-03-25','Đã thanh toán '),('H00000007','KH0002','2025-04-01','Đã thanh toán '),('H00000008','KH0002','2025-04-03','Đã thanh toán '),('H00000009','KH0002','2025-04-10','Đã thanh toán '),('H00000010','KH0002','2025-04-15','Đã thanh toán '),('H00000011','KH0003','2024-08-10','Đã thanh toán '),('H00000012','KH0003','2024-09-01','Đã thanh toán '),('H00000013','KH0003','2024-09-15','Đã thanh toán '),('H00000014','KH0003','2024-09-17','Đã thanh toán '),('H00000015','KH0003','2024-10-01','Đã thanh toán '),('H00000016','KH0004','2024-12-14','Đã thanh toán '),('H00000017','KH0004','2024-12-15','Đã thanh toán '),('H00000018','KH0004','2024-12-20','Đã thanh toán '),('H00000019','KH0004','2024-12-23','Đã thanh toán '),('H00000020','KH0004','2024-12-23','Đã thanh toán '),('H00000021','KH0005','2025-04-01','Đã thanh toán '),('H00000022','KH0005','2025-04-05','Đã thanh toán '),('H00000023','KH0005','2025-04-06','Đã thanh toán '),('H00000024','KH0005','2025-04-10','Đã thanh toán '),('H00000025','KH0005','2025-04-15','Đã thanh toán '),('H00000026','KH0006','2025-04-19','Đã thanh toán '),('H00000027','KH0006','2025-04-19','Đã thanh toán '),('H00000028','KH0006','2025-04-20','Đã thanh toán '),('H00000029','KH0006','2025-04-21','Đã thanh toán '),('H00000030','KH0006','2025-04-22','Đã thanh toán '),('H00000031','KH0007','2024-12-14','Đã thanh toán '),('H00000032','KH0007','2025-01-02','Đã thanh toán '),('H00000033','KH0007','2025-01-15','Đã thanh toán '),('H00000034','KH0007','2025-01-26','Đã thanh toán '),('H00000035','KH0007','2025-01-27','Đã thanh toán '),('H00000036','KH0008','2025-01-02','Đã thanh toán '),('H00000037','KH0008','2025-01-04','Đã thanh toán '),('H00000038','KH0008','2025-01-06','Đã thanh toán '),('H00000039','KH0008','2025-01-08','Đã thanh toán '),('H00000040','KH0008','2025-01-10','Đã thanh toán '),('H00000041','KH0009','2025-04-01','Đã thanh toán '),('H00000042','KH0009','2025-04-04','Đã thanh toán '),('H00000043','KH0009','2025-04-14','Đã thanh toán '),('H00000044','KH0009','2025-04-15','Đã thanh toán '),('H00000045','KH0009','2025-04-16','Đã thanh toán '),('H00000046','KH0010','2025-04-23','Đã thanh toán '),('H00000047','KH0010','2025-04-23','Đã thanh toán '),('H00000048','KH0010','2025-04-26','Đã thanh toán '),('H00000049','KH0010','2025-04-27','Đã thanh toán '),('H00000050','KH0010','2025-05-01','Đã thanh toán '),('H00000051','KH0011','2025-04-30','Đã thanh toán'),('H00000052','KH0011','2025-04-30','Đã thanh toán'),('H00000053','KH0011','2025-04-30','Đã thanh toán'),('H00000054','KH0011','2025-04-30','Đã thanh toán'),('H00000055','KH0011','2025-04-30','Đã thanh toán'),('H00000056','KH0012','2025-04-30','Đã thanh toán'),('H00000057','KH0012','2025-04-30','Đã thanh toán'),('H00000058','KH0012','2025-04-30','Đã thanh toán'),('H00000059','KH0012','2025-04-30','Đã thanh toán'),('H00000060','KH0012','2025-04-30','Đã thanh toán'),('H00000061','KH0013','2025-04-30','Đã thanh toán'),('H00000062','KH0013','2025-04-30','Đã thanh toán'),('H00000063','KH0013','2025-04-30','Đã thanh toán'),('H00000064','KH0013','2025-04-30','Đã thanh toán'),('H00000065','KH0013','2025-04-30','Đã thanh toán'),('H00000066','KH0014','2025-04-30','Đã thanh toán'),('H00000067','KH0014','2025-04-30','Đã thanh toán'),('H00000068','KH0014','2025-04-30','Đã thanh toán'),('H00000069','KH0014','2025-04-30','Đã thanh toán'),('H00000070','KH0014','2025-04-30','Đã thanh toán'),('H00000071','KH0015','2025-04-30','Đã thanh toán'),('H00000072','KH0015','2025-04-30','Đã thanh toán'),('H00000073','KH0015','2025-04-30','Đã thanh toán'),('H00000074','KH0015','2025-04-30','Đã thanh toán'),('H00000075','KH0015','2025-04-30','Đã thanh toán'),('H00000076','KH0016','2025-04-30','Đã thanh toán'),('H00000077','KH0016','2025-04-30','Đã thanh toán'),('H00000078','KH0016','2025-04-30','Đã thanh toán'),('H00000079','KH0016','2025-04-30','Đã thanh toán'),('H00000080','KH0016','2025-04-30','Đã thanh toán'),('H00000081','KH0017','2025-04-30','Đã thanh toán'),('H00000082','KH0017','2025-04-30','Đã thanh toán'),('H00000083','KH0017','2025-04-30','Đã thanh toán'),('H00000084','KH0017','2025-04-30','Đã thanh toán'),('H00000085','KH0017','2025-04-30','Đã thanh toán'),('H00000086','KH0018','2025-04-30','Đã thanh toán'),('H00000087','KH0018','2025-04-30','Đã thanh toán'),('H00000088','KH0018','2025-04-30','Đã thanh toán'),('H00000089','KH0018','2025-04-30','Đã thanh toán'),('H00000090','KH0018','2025-04-30','Đã thanh toán'),('H00000091','KH0019','2025-04-30','Đã thanh toán'),('H00000092','KH0019','2025-04-30','Đã thanh toán'),('H00000093','KH0019','2025-04-30','Đã thanh toán'),('H00000094','KH0019','2025-04-30','Đã thanh toán'),('H00000095','KH0019','2025-04-30','Đã thanh toán'),('H00000096','KH0020','2025-04-30','Đã thanh toán'),('H00000097','KH0020','2025-04-30','Đã thanh toán'),('H00000098','KH0020','2025-04-30','Đã thanh toán'),('H00000099','KH0020','2025-04-30','Đã thanh toán'),('H00000100','KH0020','2025-04-30','Đã thanh toán');
/*!40000 ALTER TABLE `DangKy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DangKyLop`
--

DROP TABLE IF EXISTS `DangKyLop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DangKyLop` (
  `MaHV` varchar(45) NOT NULL,
  `MaLH` varchar(45) NOT NULL,
  `NgayDK` datetime DEFAULT NULL,
  `TrangThai` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaHV`,`MaLH`),
  KEY `DangKyLop_MaLH_idx` (`MaLH`),
  CONSTRAINT `DangKyLop_MaHV` FOREIGN KEY (`MaHV`) REFERENCES `HocVien` (`MaHV`),
  CONSTRAINT `DangKyLop_MaLH` FOREIGN KEY (`MaLH`) REFERENCES `LopHoc` (`MaLH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DangKyLop`
--

LOCK TABLES `DangKyLop` WRITE;
/*!40000 ALTER TABLE `DangKyLop` DISABLE KEYS */;
INSERT INTO `DangKyLop` VALUES ('H00000001','LH001','2024-12-14 00:00:00','Thành công'),('H00000002','LH001','2024-12-14 00:00:00','Thành công'),('H00000003','LH001','2024-12-16 00:00:00','Thành công'),('H00000004','LH001','2024-12-20 00:00:00','Thành công'),('H00000005','LH001','2024-12-25 00:00:00','Thành công'),('H00000006','LH002','2025-03-25 00:00:00','Thành công'),('H00000007','LH002','2025-04-01 00:00:00','Thành công'),('H00000008','LH002','2025-04-03 00:00:00','Thành công'),('H00000009','LH002','2025-04-10 00:00:00','Thành công'),('H00000010','LH002','2025-04-15 00:00:00','Thành công'),('H00000011','LH003','2024-08-10 00:00:00','Thành công'),('H00000012','LH003','2024-09-01 00:00:00','Thành công'),('H00000013','LH003','2024-09-15 00:00:00','Thành công'),('H00000014','LH003','2024-09-17 00:00:00','Thành công'),('H00000015','LH003','2024-10-01 00:00:00','Thành công'),('H00000016','LH004','2024-12-14 00:00:00','Thành công'),('H00000017','LH004','2024-12-15 00:00:00','Thành công'),('H00000018','LH004','2024-12-20 00:00:00','Thành công'),('H00000019','LH004','2024-12-23 00:00:00','Thành công'),('H00000020','LH004','2024-12-23 00:00:00','Thành công'),('H00000021','LH005','2025-04-01 00:00:00','Thành công'),('H00000022','LH005','2025-04-05 00:00:00','Thành công'),('H00000023','LH005','2025-04-06 00:00:00','Thành công'),('H00000024','LH005','2025-04-10 00:00:00','Thành công'),('H00000025','LH005','2025-04-15 00:00:00','Thành công'),('H00000026','LH006','2025-04-19 00:00:00','Thành công'),('H00000027','LH006','2025-04-19 00:00:00','Thành công'),('H00000028','LH006','2025-04-20 00:00:00','Thành công'),('H00000029','LH006','2025-04-21 00:00:00','Thành công'),('H00000030','LH006','2025-04-22 00:00:00','Thành công'),('H00000031','LH007','2024-12-14 00:00:00','Thành công'),('H00000032','LH007','2025-01-02 00:00:00','Thành công'),('H00000033','LH007','2025-01-15 00:00:00','Thành công'),('H00000034','LH007','2025-01-26 00:00:00','Thành công'),('H00000035','LH007','2025-01-27 00:00:00','Thành công'),('H00000036','LH008','2025-01-02 00:00:00','Thành công'),('H00000037','LH008','2025-01-04 00:00:00','Thành công'),('H00000038','LH008','2025-01-06 00:00:00','Thành công'),('H00000039','LH008','2025-01-08 00:00:00','Thành công'),('H00000040','LH008','2025-01-10 00:00:00','Thành công'),('H00000041','LH009','2025-04-01 00:00:00','Thành công'),('H00000042','LH009','2025-04-04 00:00:00','Thành công'),('H00000043','LH009','2025-04-14 00:00:00','Thành công'),('H00000044','LH009','2025-04-15 00:00:00','Thành công'),('H00000045','LH009','2025-04-16 00:00:00','Thành công'),('H00000046','LH010','2025-04-23 00:00:00','Thành công'),('H00000047','LH010','2025-04-23 00:00:00','Thành công'),('H00000048','LH010','2025-04-26 00:00:00','Thành công'),('H00000049','LH010','2025-04-27 00:00:00','Thành công'),('H00000050','LH010','2025-05-01 00:00:00','Thành công'),('H00000051','LH011','2025-04-30 00:00:00','Thành công'),('H00000052','LH011','2025-04-30 00:00:00','Thành công'),('H00000053','LH011','2025-04-30 00:00:00','Thành công'),('H00000054','LH011','2025-04-30 00:00:00','Thành công'),('H00000055','LH011','2025-04-30 00:00:00','Thành công'),('H00000056','LH012','2025-04-30 00:00:00','Thành công'),('H00000057','LH012','2025-04-30 00:00:00','Thành công'),('H00000058','LH012','2025-04-30 00:00:00','Thành công'),('H00000059','LH012','2025-04-30 00:00:00','Thành công'),('H00000060','LH012','2025-04-30 00:00:00','Thành công'),('H00000061','LH013','2025-04-30 00:00:00','Thành công'),('H00000062','LH013','2025-04-30 00:00:00','Thành công'),('H00000063','LH013','2025-04-30 00:00:00','Thành công'),('H00000064','LH013','2025-04-30 00:00:00','Thành công'),('H00000065','LH013','2025-04-30 00:00:00','Thành công'),('H00000066','LH014','2025-04-30 00:00:00','Thành công'),('H00000067','LH014','2025-04-30 00:00:00','Thành công'),('H00000068','LH014','2025-04-30 00:00:00','Thành công'),('H00000069','LH014','2025-04-30 00:00:00','Thành công'),('H00000070','LH014','2025-04-30 00:00:00','Thành công'),('H00000071','LH015','2025-04-30 00:00:00','Thành công'),('H00000072','LH015','2025-04-30 00:00:00','Thành công'),('H00000073','LH015','2025-04-30 00:00:00','Thành công'),('H00000074','LH015','2025-04-30 00:00:00','Thành công'),('H00000075','LH015','2025-04-30 00:00:00','Thành công'),('H00000076','LH016','2025-04-30 00:00:00','Thành công'),('H00000077','LH016','2025-04-30 00:00:00','Thành công'),('H00000078','LH016','2025-04-30 00:00:00','Thành công'),('H00000079','LH016','2025-04-30 00:00:00','Thành công'),('H00000080','LH016','2025-04-30 00:00:00','Thành công'),('H00000081','LH017','2025-04-30 00:00:00','Thành công'),('H00000082','LH017','2025-04-30 00:00:00','Thành công'),('H00000083','LH017','2025-04-30 00:00:00','Thành công'),('H00000084','LH017','2025-04-30 00:00:00','Thành công'),('H00000085','LH017','2025-04-30 00:00:00','Thành công'),('H00000086','LH018','2025-04-30 00:00:00','Thành công'),('H00000087','LH018','2025-04-30 00:00:00','Thành công'),('H00000088','LH018','2025-04-30 00:00:00','Thành công'),('H00000089','LH018','2025-04-30 00:00:00','Thành công'),('H00000090','LH018','2025-04-30 00:00:00','Thành công'),('H00000091','LH019','2025-04-30 00:00:00','Thành công'),('H00000092','LH019','2025-04-30 00:00:00','Thành công'),('H00000093','LH019','2025-04-30 00:00:00','Thành công'),('H00000094','LH019','2025-04-30 00:00:00','Thành công'),('H00000095','LH019','2025-04-30 00:00:00','Thành công'),('H00000096','LH020','2025-04-30 00:00:00','Thành công'),('H00000097','LH020','2025-04-30 00:00:00','Thành công'),('H00000098','LH020','2025-04-30 00:00:00','Thành công'),('H00000099','LH020','2025-04-30 00:00:00','Thành công'),('H00000100','LH020','2025-04-30 00:00:00','Thành công');
/*!40000 ALTER TABLE `DangKyLop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DanhGiaKH`
--

DROP TABLE IF EXISTS `DanhGiaKH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DanhGiaKH` (
  `MaHV` varchar(45) NOT NULL,
  `MaKH` varchar(45) NOT NULL,
  `DiemDG` int DEFAULT NULL,
  `NhanXet` varchar(255) DEFAULT NULL,
  `NgayDG` datetime DEFAULT NULL,
  PRIMARY KEY (`MaHV`,`MaKH`),
  KEY `MaKH_idx` (`MaKH`),
  CONSTRAINT `DanhGiaKH_MaHV` FOREIGN KEY (`MaHV`) REFERENCES `HocVien` (`MaHV`),
  CONSTRAINT `DanhGiaKH_MaKH` FOREIGN KEY (`MaKH`) REFERENCES `KhoaHoc` (`MaKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DanhGiaKH`
--

LOCK TABLES `DanhGiaKH` WRITE;
/*!40000 ALTER TABLE `DanhGiaKH` DISABLE KEYS */;
INSERT INTO `DanhGiaKH` VALUES ('H00000011','KH0003',9,'Khóa học rất bổ ích, tôi đã cải thiện kỹ năng nghe nói.','2025-04-03 00:00:00'),('H00000012','KH0003',9,'Giảng viên rất nhiệt tình, giúp tôi tự tin hơn khi giao tiếp.','2025-04-04 00:00:00'),('H00000013','KH0003',8,'Khóa học tốt nhưng tôi mong muốn có thêm bài tập thực hành.','2025-04-05 00:00:00'),('H00000014','KH0003',9,'Khóa học rất lý thú, tôi học được nhiều kiến thức mới.','2025-04-06 00:00:00'),('H00000015','KH0003',10,'Khóa học rất tuyệt vời, tôi cảm thấy rất hài lòng.','2025-04-07 00:00:00'),('H00000091','KH0019',8,'Rất hài lòng với khóa học, tôi sẽ giới thiệu cho bạn bè.','2025-06-03 00:00:00'),('H00000092','KH0019',10,'Khóa học tuyệt vời, tôi cảm thấy tự tin hơn về khả năng của mình.','2025-06-04 00:00:00'),('H00000093','KH0019',10,'Nội dung khóa học tốt nhưng tốc độ giảng dạy hơi nhanh.','2025-06-05 00:00:00'),('H00000094','KH0019',8,'Khóa học rất hữu ích, nhưng tài liệu quá lý thuyết.','2025-06-06 00:00:00'),('H00000095','KH0019',9,'Khóa học tuyệt vời, tôi cảm thấy tự tin hơn về khả năng của mình.','2025-06-07 00:00:00');
/*!40000 ALTER TABLE `DanhGiaKH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GiangDay`
--

DROP TABLE IF EXISTS `GiangDay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GiangDay` (
  `MaKH` varchar(45) NOT NULL,
  `MaGV` varchar(45) NOT NULL,
  `VaiTro` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaKH`,`MaGV`),
  KEY `MaGV_idx` (`MaGV`),
  CONSTRAINT `GiangDay_MaGV` FOREIGN KEY (`MaGV`) REFERENCES `GiangVien` (`MaGV`),
  CONSTRAINT `GiangDay_MaKH` FOREIGN KEY (`MaKH`) REFERENCES `KhoaHoc` (`MaKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GiangDay`
--

LOCK TABLES `GiangDay` WRITE;
/*!40000 ALTER TABLE `GiangDay` DISABLE KEYS */;
INSERT INTO `GiangDay` VALUES ('KH0001','GV0008','Giảng viên chính'),('KH0002','GV0008','Giảng viên chính'),('KH0003','GV0001','Giảng viên chính'),('KH0004','GV0001','Giảng viên chính'),('KH0005','GV0002','Giảng viên chính'),('KH0006','GV0002','Giảng viên chính'),('KH0007','GV0003','Giảng viên chính'),('KH0008','GV0003','Giảng viên chính'),('KH0009','GV0010','Giảng viên chính'),('KH0010','GV0010','Giảng viên chính'),('KH0011','GV0007','Giảng viên chính'),('KH0012','GV0007','Giảng viên chính'),('KH0013','GV0004','Giảng viên chính'),('KH0014','GV0004','Giảng viên chính'),('KH0015','GV0005','Giảng viên chính'),('KH0016','GV0005','Giảng viên chính'),('KH0017','GV0006','Giảng viên chính'),('KH0018','GV0006','Giảng viên chính'),('KH0019','GV0009','Giảng viên chính'),('KH0020','GV0010','Giảng viên chính');
/*!40000 ALTER TABLE `GiangDay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GiangVien`
--

DROP TABLE IF EXISTS `GiangVien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GiangVien` (
  `MaGV` varchar(45) NOT NULL,
  `TenGV` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `ChuyenMon` varchar(45) DEFAULT NULL,
  `BangCap` varchar(45) DEFAULT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MaGV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GiangVien`
--

LOCK TABLES `GiangVien` WRITE;
/*!40000 ALTER TABLE `GiangVien` DISABLE KEYS */;
INSERT INTO `GiangVien` VALUES ('GV0001','Dương Hữu Thành','thanh.dh@lms.vn','IELTS','IELTS 9.0','Huyện Nhà Bè, Thành phố Hồ Chí Minh '),('GV0002','Nguyễn Thị Phương Trang ','trang.ntp@lms.vn','IELTS','IELTS 9.0','Quận 7, Thành phố Hồ Chí Minh '),('GV0003','Hồ Hướng Thiên ','thien.ht@lms.vn','IELTS','IELTS 9.0','Thành phố Thủ Đức, Thành phố Hồ Chí Minh '),('GV0004','Nguyễn Tiến Đạt ','dat.nt@lms.vn','TOEIC','TOEIC 990','Quận Tân Phú, Thành phố Hồ Chí Minh '),('GV0005','Nguyễn Văn Bảy ','bay.nv@lms.vn','TOEIC','TOEIC 990','Quận 3, Thành phố Hồ Chí Minh '),('GV0006','Phan Trần Minh Khuê ','khue.ntm@lms.vn','TOEIC','TOEIC 990','Quận Bình Thạnh, Thành phố Hồ Chí Minh '),('GV0007','Lê Thị Kim Anh ','anh.ltk@lms.vn','TOEFL','TOEFL 120','Quận 4, Thành phố Hồ Chí Minh '),('GV0008','Nguyễn Trung Hậu ','hau.nt@lms.vn','CAMBRIGDE','CAMBRIGDE C2','Huyện Nhà Bè, Thành phố Hồ Chí Minh '),('GV0009','Lê Viết Tuấn ','tuan.lv@lms.vn','VSTEP','VSTEP Bậc 6','Quận 2, Thành phố Hồ Chí Minh '),('GV0010','Nguyễn Thị Mai Trang ','trang.ntm@lms.vn','TESOL','TESOL Pass with Distinction ','Quận 8, Thành phố Hồ Chí Minh ');
/*!40000 ALTER TABLE `GiangVien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HocPhi`
--

DROP TABLE IF EXISTS `HocPhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HocPhi` (
  `MaHP` varchar(45) NOT NULL,
  `MaHV` varchar(45) NOT NULL,
  `MaKH` varchar(45) NOT NULL,
  `SoTien` float DEFAULT NULL,
  `TrangThai` varchar(45) DEFAULT NULL,
  `NgayDong` datetime DEFAULT NULL,
  `PhuongThucTT` varchar(45) DEFAULT NULL,
  `MaQR` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaHP`,`MaHV`,`MaKH`),
  KEY `MaHV_idx` (`MaHV`),
  KEY `MaKH_idx` (`MaKH`),
  CONSTRAINT `MaHV` FOREIGN KEY (`MaHV`) REFERENCES `HocVien` (`MaHV`),
  CONSTRAINT `MaKH` FOREIGN KEY (`MaKH`) REFERENCES `KhoaHoc` (`MaKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HocPhi`
--

LOCK TABLES `HocPhi` WRITE;
/*!40000 ALTER TABLE `HocPhi` DISABLE KEYS */;
INSERT INTO `HocPhi` VALUES ('H00000001_KH0001','H00000001','KH0001',3000000,'Đã thanh toán','2024-12-14 00:00:00','Chuyển khoản','QR_H00000001_KH0001'),('H00000002_KH0001','H00000002','KH0001',3000000,'Đã thanh toán','2024-12-14 00:00:00','Chuyển khoản','QR_H00000002_KH0001'),('H00000003_KH0001','H00000003','KH0001',3000000,'Đã thanh toán','2024-12-16 00:00:00','Chuyển khoản','QR_H00000003_KH0001'),('H00000004_KH0001','H00000004','KH0001',3000000,'Đã thanh toán','2024-12-20 00:00:00','Chuyển khoản','QR_H00000004_KH0001'),('H00000005_KH0001','H00000005','KH0001',3000000,'Đã thanh toán','2024-12-25 00:00:00','Chuyển khoản','QR_H00000005_KH0001'),('H00000006_KH0002','H00000006','KH0002',4000000,'Đã thanh toán','2025-03-25 00:00:00','Chuyển khoản','QR_H00000006_KH0002'),('H00000007_KH0002','H00000007','KH0002',4000000,'Đã thanh toán','2025-04-01 00:00:00','Chuyển khoản','QR_H00000007_KH0002'),('H00000008_KH0002','H00000008','KH0002',4000000,'Đã thanh toán','2025-04-03 00:00:00','Chuyển khoản','QR_H00000008_KH0002'),('H00000009_KH0002','H00000009','KH0002',4000000,'Đã thanh toán','2025-04-10 00:00:00','Chuyển khoản','QR_H00000009_KH0002'),('H00000010_KH0002','H00000010','KH0002',4000000,'Đã thanh toán','2025-04-15 00:00:00','Chuyển khoản','QR_H00000010_KH0002'),('H00000011_KH0003','H00000011','KH0003',4000000,'Đã thanh toán','2024-08-10 00:00:00','Chuyển khoản','QR_H00000011_KH0003'),('H00000012_KH0003','H00000012','KH0003',4000000,'Đã thanh toán','2024-09-01 00:00:00','Chuyển khoản','QR_H00000012_KH0003'),('H00000013_KH0003','H00000013','KH0003',4000000,'Đã thanh toán','2024-09-15 00:00:00','Chuyển khoản','QR_H00000013_KH0003'),('H00000014_KH0003','H00000014','KH0003',4000000,'Đã thanh toán','2024-09-17 00:00:00','Chuyển khoản','QR_H00000014_KH0003'),('H00000015_KH0003','H00000015','KH0003',4000000,'Đã thanh toán','2024-10-01 00:00:00','Chuyển khoản','QR_H00000015_KH0003'),('H00000016_KH0004','H00000016','KH0004',5000000,'Đã thanh toán','2024-12-14 00:00:00','Chuyển khoản','QR_H00000016_KH0004'),('H00000017_KH0004','H00000017','KH0004',5000000,'Đã thanh toán','2024-12-15 00:00:00','Chuyển khoản','QR_H00000017_KH0004'),('H00000018_KH0004','H00000018','KH0004',5000000,'Đã thanh toán','2024-12-20 00:00:00','Chuyển khoản','QR_H00000018_KH0004'),('H00000019_KH0004','H00000019','KH0004',5000000,'Đã thanh toán','2024-12-23 00:00:00','Chuyển khoản','QR_H00000019_KH0004'),('H00000020_KH0004','H00000020','KH0004',5000000,'Đã thanh toán','2024-12-23 00:00:00','Chuyển khoản','QR_H00000020_KH0004'),('H00000021_KH0005','H00000021','KH0005',5000000,'Đã thanh toán','2025-04-01 00:00:00','Chuyển khoản','QR_H00000021_KH0005'),('H00000022_KH0005','H00000022','KH0005',5000000,'Đã thanh toán','2025-04-05 00:00:00','Chuyển khoản','QR_H00000022_KH0005'),('H00000023_KH0005','H00000023','KH0005',5000000,'Đã thanh toán','2025-04-06 00:00:00','Chuyển khoản','QR_H00000023_KH0005'),('H00000024_KH0005','H00000024','KH0005',5000000,'Đã thanh toán','2025-04-10 00:00:00','Chuyển khoản','QR_H00000024_KH0005'),('H00000025_KH0005','H00000025','KH0005',5000000,'Đã thanh toán','2025-04-15 00:00:00','Chuyển khoản','QR_H00000025_KH0005'),('H00000026_KH0006','H00000026','KH0006',5000000,'Đã thanh toán','2025-04-19 00:00:00','Chuyển khoản','QR_H00000026_KH0006'),('H00000027_KH0006','H00000027','KH0006',5000000,'Đã thanh toán','2025-04-19 00:00:00','Chuyển khoản','QR_H00000027_KH0006'),('H00000028_KH0006','H00000028','KH0006',5000000,'Đã thanh toán','2025-04-20 00:00:00','Chuyển khoản','QR_H00000028_KH0006'),('H00000029_KH0006','H00000029','KH0006',5000000,'Đã thanh toán','2025-04-21 00:00:00','Chuyển khoản','QR_H00000029_KH0006'),('H00000030_KH0006','H00000030','KH0006',5000000,'Đã thanh toán','2025-04-22 00:00:00','Chuyển khoản','QR_H00000030_KH0006'),('H00000031_KH0007','H00000031','KH0007',6000000,'Đã thanh toán','2024-12-14 00:00:00','Chuyển khoản','QR_H00000031_KH0007'),('H00000032_KH0007','H00000032','KH0007',6000000,'Đã thanh toán','2025-01-02 00:00:00','Chuyển khoản','QR_H00000032_KH0007'),('H00000033_KH0007','H00000033','KH0007',6000000,'Đã thanh toán','2025-01-15 00:00:00','Chuyển khoản','QR_H00000033_KH0007'),('H00000034_KH0007','H00000034','KH0007',6000000,'Đã thanh toán','2025-01-26 00:00:00','Chuyển khoản','QR_H00000034_KH0007'),('H00000035_KH0007','H00000035','KH0007',6000000,'Đã thanh toán','2025-01-27 00:00:00','Chuyển khoản','QR_H00000035_KH0007'),('H00000036_KH0008','H00000036','KH0008',6000000,'Đã thanh toán','2025-01-02 00:00:00','Chuyển khoản','QR_H00000036_KH0008'),('H00000037_KH0008','H00000037','KH0008',6000000,'Đã thanh toán','2025-01-04 00:00:00','Chuyển khoản','QR_H00000037_KH0008'),('H00000038_KH0008','H00000038','KH0008',6000000,'Đã thanh toán','2025-01-06 00:00:00','Chuyển khoản','QR_H00000038_KH0008'),('H00000039_KH0008','H00000039','KH0008',6000000,'Đã thanh toán','2025-01-08 00:00:00','Chuyển khoản','QR_H00000039_KH0008'),('H00000040_KH0008','H00000040','KH0008',6000000,'Đã thanh toán','2025-01-10 00:00:00','Chuyển khoản','QR_H00000040_KH0008'),('H00000041_KH0009','H00000041','KH0009',4000000,'Đã thanh toán','2025-04-01 00:00:00','Chuyển khoản','QR_H00000041_KH0009'),('H00000042_KH0009','H00000042','KH0009',4000000,'Đã thanh toán','2025-04-04 00:00:00','Chuyển khoản','QR_H00000042_KH0009'),('H00000043_KH0009','H00000043','KH0009',4000000,'Đã thanh toán','2025-04-14 00:00:00','Chuyển khoản','QR_H00000043_KH0009'),('H00000044_KH0009','H00000044','KH0009',4000000,'Đã thanh toán','2025-04-15 00:00:00','Chuyển khoản','QR_H00000044_KH0009'),('H00000045_KH0009','H00000045','KH0009',4000000,'Đã thanh toán','2025-04-16 00:00:00','Chuyển khoản','QR_H00000045_KH0009'),('H00000046_KH0010','H00000046','KH0010',4000000,'Đã thanh toán','2025-04-23 00:00:00','Chuyển khoản','QR_H00000046_KH0010'),('H00000047_KH0010','H00000047','KH0010',4000000,'Đã thanh toán','2025-04-23 00:00:00','Chuyển khoản','QR_H00000047_KH0010'),('H00000048_KH0010','H00000048','KH0010',4000000,'Đã thanh toán','2025-04-26 00:00:00','Chuyển khoản','QR_H00000048_KH0010'),('H00000049_KH0010','H00000049','KH0010',4000000,'Đã thanh toán','2025-04-27 00:00:00','Chuyển khoản','QR_H00000049_KH0010'),('H00000050_KH0010','H00000050','KH0010',4000000,'Đã thanh toán','2025-05-01 00:00:00','Chuyển khoản','QR_H00000050_KH0010'),('H00000051_KH0011','H00000051','KH0011',3500000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000051_KH0011'),('H00000052_KH0011','H00000052','KH0011',3500000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000052_KH0011'),('H00000053_KH0011','H00000053','KH0011',3500000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000053_KH0011'),('H00000054_KH0011','H00000054','KH0011',3500000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000054_KH0011'),('H00000055_KH0011','H00000055','KH0011',3500000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000055_KH0011'),('H00000056_KH0012','H00000056','KH0012',3500000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000056_KH0012'),('H00000057_KH0012','H00000057','KH0012',3500000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000057_KH0012'),('H00000058_KH0012','H00000058','KH0012',3500000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000058_KH0012'),('H00000059_KH0012','H00000059','KH0012',3500000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000059_KH0012'),('H00000060_KH0012','H00000060','KH0012',3500000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000060_KH0012'),('H00000061_KH0013','H00000061','KH0013',2500000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000061_KH0013'),('H00000062_KH0013','H00000062','KH0013',2500000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000062_KH0013'),('H00000063_KH0013','H00000063','KH0013',2500000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000063_KH0013'),('H00000064_KH0013','H00000064','KH0013',2500000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000064_KH0013'),('H00000065_KH0013','H00000065','KH0013',2500000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000065_KH0013'),('H00000066_KH0014','H00000066','KH0014',3000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000066_KH0014'),('H00000067_KH0014','H00000067','KH0014',3000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000067_KH0014'),('H00000068_KH0014','H00000068','KH0014',3000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000068_KH0014'),('H00000069_KH0014','H00000069','KH0014',3000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000069_KH0014'),('H00000070_KH0014','H00000070','KH0014',3000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000070_KH0014'),('H00000071_KH0015','H00000071','KH0015',3500000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000071_KH0015'),('H00000072_KH0015','H00000072','KH0015',3500000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000072_KH0015'),('H00000073_KH0015','H00000073','KH0015',3500000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000073_KH0015'),('H00000074_KH0015','H00000074','KH0015',3500000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000074_KH0015'),('H00000075_KH0015','H00000075','KH0015',3500000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000075_KH0015'),('H00000076_KH0016','H00000076','KH0016',4000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000076_KH0016'),('H00000077_KH0016','H00000077','KH0016',4000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000077_KH0016'),('H00000078_KH0016','H00000078','KH0016',4000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000078_KH0016'),('H00000079_KH0016','H00000079','KH0016',4000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000079_KH0016'),('H00000080_KH0016','H00000080','KH0016',4000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000080_KH0016'),('H00000081_KH0017','H00000081','KH0017',4000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000081_KH0017'),('H00000082_KH0017','H00000082','KH0017',4000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000082_KH0017'),('H00000083_KH0017','H00000083','KH0017',4000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000083_KH0017'),('H00000084_KH0017','H00000084','KH0017',4000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000084_KH0017'),('H00000085_KH0017','H00000085','KH0017',4000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000085_KH0017'),('H00000086_KH0018','H00000086','KH0018',4000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000086_KH0018'),('H00000087_KH0018','H00000087','KH0018',4000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000087_KH0018'),('H00000088_KH0018','H00000088','KH0018',4000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000088_KH0018'),('H00000089_KH0018','H00000089','KH0018',4000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000089_KH0018'),('H00000090_KH0018','H00000090','KH0018',4000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000090_KH0018'),('H00000091_KH0019','H00000091','KH0019',2000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000091_KH0019'),('H00000092_KH0019','H00000092','KH0019',2000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000092_KH0019'),('H00000093_KH0019','H00000093','KH0019',2000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000093_KH0019'),('H00000094_KH0019','H00000094','KH0019',2000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000094_KH0019'),('H00000095_KH0019','H00000095','KH0019',2000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000095_KH0019'),('H00000096_KH0020','H00000096','KH0020',2000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000096_KH0020'),('H00000097_KH0020','H00000097','KH0020',2000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000097_KH0020'),('H00000098_KH0020','H00000098','KH0020',2000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000098_KH0020'),('H00000099_KH0020','H00000099','KH0020',2000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000099_KH0020'),('H00000100_KH0020','H00000100','KH0020',2000000,'Đã thanh toán','2025-04-30 00:00:00','Chuyển khoản','QR_H00000100_KH0020');
/*!40000 ALTER TABLE `HocPhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HocVien`
--

DROP TABLE IF EXISTS `HocVien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HocVien` (
  `MaHV` varchar(45) NOT NULL,
  `TenHV` varchar(45) DEFAULT NULL,
  `HoTenDemHV` varchar(45) DEFAULT NULL,
  `Tuoi` int DEFAULT NULL,
  `GioiTinh` varchar(45) DEFAULT NULL,
  `SoDT` varchar(45) DEFAULT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MaHV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HocVien`
--

LOCK TABLES `HocVien` WRITE;
/*!40000 ALTER TABLE `HocVien` DISABLE KEYS */;
INSERT INTO `HocVien` VALUES ('H00000001','Ý','Nguyễn Kim Vương ',22,'Nữ','0353994536','Quận Bình Tân, Thành phố Hồ Chí Minh '),('H00000002','Yến','Hà Vân ',22,'Nữ','0923038379','Quận 2, Thành phố Hồ Chí Minh '),('H00000003','Lan','Đặng Phương ',16,'Nữ','0994763725','Quận 12, Thành phố Hồ Chí Minh'),('H00000004','Ngân','Huỳnh Hồ Kim ',21,'Nữ','0348775661','Quận 3, Thành phố Hồ Chí Minh'),('H00000005','Hà','Trần Thị Ngọc ',27,'Nữ','0386851184','Quận Phú Nhuận, Thành phố Hồ Chí Minh'),('H00000006','Nam ','Đặng Phương ',22,'Nam ','0359649891','Quận 12, Thành phố Hồ Chí Minh'),('H00000007','Huy','Huỳnh Minh ',28,'Nam ','0304026797','Quận Bình Thạnh, Thành phố Hồ Chí Minh'),('H00000008','Dũng ','Nguyễn Anh ',21,'Nam ','0343474138','Huyện Nhà Bè, Thành phố Hồ Chí Minh'),('H00000009','Hiếu','Phan Trung',21,'Nam ','0364372069','Quận 1, Thành phố Hồ Chí Minh'),('H00000010','Tú','Nguyễn Minh ',19,'Nam ','0335090776','Quận 3, Thành phố Hồ Chí Minh'),('H00000011','Lan ','Đăng Thị Kim ',18,'Nữ','0967582896','Quận Tân Phú, Thành phố Hồ Chí Minh'),('H00000012','Vy ','Phan Thị Yến',19,'Nữ','0992683912','Quận Tân Bình, Thành phố Hồ Chí Minh'),('H00000013','Nam','Nguyễn Thành ',24,'Nam ','0344770417','Quận 12, Thành phố Hồ Chí Minh'),('H00000014','Nga','Hồ Kim ',22,'Nữ ','0353585585','Huyện Bình Chánh, Thành phố Hồ Chí Minh'),('H00000015','Thư','Phan Anh ',21,'Nữ','0931182073','Quận 3, Thành phố Hồ Chí Minh'),('H00000016','Hiếu','Hoàng Minh ',22,'Nam ','0905887357','Quận 1, Thành phố Hồ Chí Minh'),('H00000017','Hải','Đăng Trung ',21,'Nam ','0349557279','Quận 6, Thành phố Hồ Chí Minh'),('H00000018','Hà','Nguyễn Kim ',24,'Nữ','0307709196','Quận Bình Thạnh, Thành phố Hồ Chí Minh'),('H00000019','Dũng ','Trần Minh ',18,'Nam ','0320484867','Quận Phú Nhuận, Thành phố Hồ Chí Minh'),('H00000020','Hoa ','Hoàng Kim ',18,'Nữ','0353910858','Quận Gò Vấp, Thành phố Hồ Chí Minh'),('H00000021','Mai ','Nguyễn Thị ',18,'Nữ','0330336200','Quận 1, Thành phố Hồ Chí Minh'),('H00000022','Minh ','Huỳnh Quang ',20,'Nam ','0392709805','Quận Gò Vấp, Thành phố Hồ Chí Minh'),('H00000023','Đạt ','Trần Tiến ',26,'Nam ','0354955611','Quận 10, Thành phố Hồ Chí Minh'),('H00000024','Đức','Hồ Minh ',22,'Nam ','0979327572','Huyện Nhà Bè, Thành phố Hồ Chí Minh'),('H00000025','Mẫn ','Đặng Minh ',18,'Nam ','0327551681','Quận 5, Thành phố Hồ Chí Minh'),('H00000026','Phát ','Bùi Tiến ',24,'Nam ','0338817040','Quận 12, Thành phố Hồ Chí Minh'),('H00000027','Liên ','Hoàng Tân Ngọc ',20,'Nữ','0999908971','Quận Tân Phú, Thành phố Hồ Chí Minh'),('H00000028','Long ','Nguyễn Thanh Ngọc ',24,'Nam ','0306477676','Quận 5, Thành phố Hồ Chí Minh'),('H00000029','Linh ','Trần Võ Mai ',21,'Nữ','0373238972','Quận 1, Thành phố Hồ Chí Minh'),('H00000030','Lộc','Nguyễn Thành ',22,'Nam ','0331914337','Quận 4, Thành phố Hồ Chí Minh'),('H00000031','Vân ','Trần Tú',18,'Nữ','0917922741','Quận 10, Thành phố Hồ Chí Minh'),('H00000032','Vy ','Đặng Ngọc',18,'Nữ','0329828745','Quận Bình Tân, Thành phố Hồ Chí Minh '),('H00000033','Trường ','Nguyễn Công ',24,'Nam ','0372046956','Quận Bình Thạnh, Thành phố Hồ Chí Minh'),('H00000034','Sơn ','Bùi Trung ',20,'Nam ','0919807737','Quận 8, Thành phố Hồ Chí Minh'),('H00000035','Đào ','Lê Thanh Trúc ',22,'Nữ','0934941824','Quận 6, Thành phố Hồ Chí Minh'),('H00000036','Cúc ','Bùi Thu ',18,'Nữ','0925003769','Quận 1, Thành phố Hồ Chí Minh'),('H00000037','Trang ','Nguyễn Thuỳ',18,'Nữ','0956183374','Quận Tân Phú, Thành phố Hồ Chí Minh'),('H00000038','Anh ','Trần Trâm ',21,'Nữ','0335987161','Quận Tân Bình, Thành phố Hồ Chí Minh'),('H00000039','Hiền ','Lê Thị Thu ',18,'Nữ','0900247910','Quận Phú Nhuận, Thành phố Hồ Chí Minh'),('H00000040','Huệ ','Phan Minh ',20,'Nữ','0972929922','Quận 11, Thành phố Hồ Chí Minh'),('H00000041','Chính ','Lê Đức ',22,'Nam ','0997874120','Huyện Cần Giờ, Thành phố Hồ Chí Minh'),('H00000042','Khoa','Nguyễn Trần Minh ',19,'Nam ','0383794414','Quận 1, Thành phố Hồ Chí Minh'),('H00000043','Long ','Bùi Thanh ',19,'Nam ','0959847858','Huyện Nhà Bè, Thành phố Hồ Chí Minh'),('H00000044','Tuấn ','Lê Anh ',24,'Nam ','0360980412','Quận Bình Thạnh, Thành phố Hồ Chí Minh'),('H00000045','Tùng ','Phan Đình ',21,'Nam ','0337908599','Quận 3, Thành phố Hồ Chí Minh'),('H00000046','Tú ','Trần Ngọc ',22,'Nam ','0333927069','Quận 12, Thành phố Hồ Chí Minh'),('H00000047','Vy ','Huỳnh Tú',18,'Nữ','0379410523','Quận 11, Thành phố Hồ Chí Minh'),('H00000048','Hà ','Trần Thị Thu ',16,'Nữ','0984016144','Quận 1, Thành phố Hồ Chí Minh'),('H00000049','Quân ','Lê Việt Hải ',20,'Nam ','0955712139','Quận Tân Bình, Thành phố Hồ Chí Minh'),('H00000050','Quang ','Huỳnh Minh ',18,'Nam ','0908030926','Huyện Nhà Bè, Thành phố Hồ Chí Minh'),('H00000051','Đạt ','Trần Quang ',22,'Nam ','0935919125','Quận 8, Thành phố Hồ Chí Minh'),('H00000052','Nam ','Lê Đức ',19,'Nam ','0967947150','Quận 1, Thành phố Hồ Chí Minh'),('H00000053','Lan ','Huỳnh Thị Kim ',18,'Nữ','0349430123','Quận 1, Thành phố Hồ Chí Minh'),('H00000054','Đào ','Phan Anh',21,'Nữ','0962236767','Quận 10, Thành phố Hồ Chí Minh'),('H00000055','Hoà','Nguyễn Thị Ngọc ',18,'Nữ','0979913838','Quận Bình Thạnh, Thành phố Hồ Chí Minh'),('H00000056','Chi ','Lê Thu ',22,'Nữ','0351226298','Quận 3, Thành phố Hồ Chí Minh'),('H00000057','Bích','Nguyễn Thị Ngọc ',18,'Nữ','0372512955','Quận 11, Thành phố Hồ Chí Minh'),('H00000058','Phượng ','Lê Kim ',18,'Nữ','0913101573','Quận 4, Thành phố Hồ Chí Minh'),('H00000059','Thái ','Trần Quốc ',20,'Nam ','0986691692','Huyện Cần Giờ, Thành phố Hồ Chí Minh'),('H00000060','Hữu ','Lương Bích ',24,'Nữ','0925848449','Quận 4, Thành phố Hồ Chí Minh'),('H00000061','Linh ','Nguyễn Phương ',22,'Nữ','0958963534','Quận 4, Thành phố Hồ Chí Minh'),('H00000062','Bình ','Lê Hoà ',18,'Nam ','0928716246','Quận Phú Nhuận, Thành phố Hồ Chí Minh'),('H00000063','Phước','Đặng Hoàng ',24,'Nam ','0379969844','Quận Tân Bình, Thành phố Hồ Chí Minh'),('H00000064','Nhi ','Trần Thu ',18,'Nữ','0357451647','Huyện Nhà Bè, Thành phố Hồ Chí Minh'),('H00000065','Thắng ','Lê Minh ',21,'Nam ','0927502189','Quận 5, Thành phố Hồ Chí Minh'),('H00000066','Phong ','Trần Thanh ',18,'Nam ','0921822294','Quận 3, Thành phố Hồ Chí Minh'),('H00000067','Bằng ','Lương Thanh ',22,'Nam ','0972928278','Quận 10, Thành phố Hồ Chí Minh'),('H00000068','Bình ','Nguyễn Đức',17,'Nam ','0905765221','Quận Tân Phú, Thành phố Hồ Chí Minh'),('H00000069','Trọng ','Trần Thanh ',18,'Nam ','0368598737','Quận Bình Thạnh, Thành phố Hồ Chí Minh'),('H00000070','Nguyệt','Lê Mai Thư',18,'Nữ','0935314351','Quận Phú Nhuận, Thành phố Hồ Chí Minh'),('H00000071','Nguyên ','Huỳnh Đức ',20,'Nam ','0989172065','Quận 11, Thành phố Hồ Chí Minh'),('H00000072','Thư ','Nguyễn Minh ',16,'Nữ','0951072599','Huyện Nhà Bè, Thành phố Hồ Chí Minh'),('H00000073','Thương ','Lê Nguyễn Ngọc ',21,'Nữ','0308199661','Quận 8, Thành phố Hồ Chí Minh'),('H00000074','Kha','Trần Hoàng ',18,'Nam ','0387491944','Quận Tân Bình, Thành phố Hồ Chí Minh'),('H00000075','Khương ','Huỳnh Minh ',17,'Nam ','0374922113','Quận 12, Thành phố Hồ Chí Minh'),('H00000076','Quang ','Nguyễn Huỳnh ',18,'Nam ','0362081822','Quận 4, Thành phố Hồ Chí Minh'),('H00000077','Hiếu ','Trần Lê ',20,'Nam ','0327545994','Quận Bình Thạnh, Thành phố Hồ Chí Minh'),('H00000078','Hải ','Lý Đức',18,'Nam ','0326346513','Huyện Hóc Môn, Thành phố Hồ Chí Minh'),('H00000079','Hằng ','Phan Nguyễn Ngọc ',18,'Nữ','0301983926','Quận 3, Thành phố Hồ Chí Minh'),('H00000080','Nga ','Nguyễn Huỳnh ',21,'Nữ','0397084240','Quận 1, Thành phố Hồ Chí Minh'),('H00000081','Diệp','Trần Ngọc ',18,'Nữ','0999139156','Quận 4, Thành phố Hồ Chí Minh'),('H00000082','Đăng ','Lê Minh Hải ',20,'Nam ','0314159305','Huyện Hóc Môn, Thành phố Hồ Chí Minh'),('H00000083','Hạnh ','Nguyễn Đức ',18,'Nữ','0968932754','Quận Bình Thạnh, Thành phố Hồ Chí Minh'),('H00000084','Danh ','Trần Ngọc Thành ',24,'Nam ','0955906947','Quận 4, Thành phố Hồ Chí Minh'),('H00000085','Công ','Huỳnh Thành ',18,'Nam ','0993318304','Huyện Nhà Bè, Thành phố Hồ Chí Minh'),('H00000086','Thành ','Nguyễn Minh ',21,'Nam ','0399385569','Quận 8, Thành phố Hồ Chí Minh'),('H00000087','Anh ','Huỳnh ',18,'Nam ','0344846265','Quận 1, Thành phố Hồ Chí Minh'),('H00000088','Hưng ','Phan Nguyễn Gia ',18,'Nam ','0326538332','Quận 5, Thành phố Hồ Chí Minh'),('H00000089','Dương ','Nguyễn Ngọc Ánh ',20,'Nữ','0355056395','Quận Tân Bình, Thành phố Hồ Chí Minh'),('H00000090','Giang ','Lê Hương ',19,'Nữ','0367372618','Quận 3, Thành phố Hồ Chí Minh'),('H00000091','Diệp','Trương Ngọc ',22,'Nữ','0310295976','Quận Tân Phú, Thành phố Hồ Chí Minh'),('H00000092','Yến ','Mạc Hoàng ',22,'Nữ','0797854226','Quận 10, Thành phố Hồ Chí Minh'),('H00000093','Vy ','Đặng Nguyễn Xuân ',19,'Nữ','0384314876','Quận 1, Thành phố Hồ Chí Minh'),('H00000094','An ','Trịnh Xuân ',25,'Nữ','0389047010','Quận Tân Bình, Thành phố Hồ Chí Minh'),('H00000095','Hải','Phan Ngọc ',21,'Nam ','0388718845','Quận Bình Thạnh, Thành phố Hồ Chí Minh'),('H00000096','Ân','Nguyễn Kim Thiên ',20,'Nữ','0362811156','Huyện Bình Chánh, Thành phố Hồ Chí Minh'),('H00000097','Thiên ','Lê Nguyễn Minh ',22,'Nam ','0391112858','Huyện Nhà Bè, Thành phố Hồ Chí Minh'),('H00000098','Dũng ','Trần Ngọc ',17,'Nam ','0362023925','Quận 1, Thành phố Hồ Chí Minh'),('H00000099','Tuệ ','Nguyễn Đức Thiên ',19,'Nam ','0338535928','Quận Phú Nhuận, Thành phố Hồ Chí Minh'),('H00000100','Tâm ','Đặng Nguyễn Minh ',20,'Nam ','0323502748','Quận Gò Vấp, Thành phố Hồ Chí Minh');
/*!40000 ALTER TABLE `HocVien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KetQuaHT`
--

DROP TABLE IF EXISTS `KetQuaHT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `KetQuaHT` (
  `MaHV` varchar(45) NOT NULL,
  `MaLH` varchar(45) NOT NULL,
  `DiemTK` float DEFAULT NULL,
  `XepLoai` varchar(45) DEFAULT NULL,
  `TrangThaiHT` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaHV`,`MaLH`),
  KEY `MaLH_idx` (`MaLH`),
  CONSTRAINT `KetQuaHT_MaHV` FOREIGN KEY (`MaHV`) REFERENCES `HocVien` (`MaHV`),
  CONSTRAINT `KetQuaHT_MaLH` FOREIGN KEY (`MaLH`) REFERENCES `LopHoc` (`MaLH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KetQuaHT`
--

LOCK TABLES `KetQuaHT` WRITE;
/*!40000 ALTER TABLE `KetQuaHT` DISABLE KEYS */;
INSERT INTO `KetQuaHT` VALUES ('H00000011','LH003',9.5,'Xuất sắc','Đủ điều kiện thi'),('H00000012','LH003',8,'Giỏi','Đủ điều kiện thi'),('H00000013','LH003',7.5,'Khá','Đủ điều kiện thi'),('H00000014','LH003',6.2,'Trung bình','Chưa đủ điều kiện thi'),('H00000015','LH003',5.8,'Trung bình','Chưa đủ điều kiện thi'),('H00000091','LH019',10,'Xuất sắc','Đủ điều kiện thi'),('H00000092','LH019',7.4,'Khá','Đủ điều kiện thi'),('H00000093','LH019',8.7,'Giỏi','Đủ điều kiện thi'),('H00000094','LH019',8.9,'Giỏi','Đủ điều kiện thi'),('H00000095','LH019',7.7,'Khá','Đủ điều kiện thi');
/*!40000 ALTER TABLE `KetQuaHT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KhoaHoc`
--

DROP TABLE IF EXISTS `KhoaHoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `KhoaHoc` (
  `MaKH` varchar(45) NOT NULL,
  `TenKH` varchar(45) DEFAULT NULL,
  `NgayBD` datetime DEFAULT NULL,
  `NgayKT` datetime DEFAULT NULL,
  `HinhThuc` varchar(45) DEFAULT NULL,
  `DiaDiem` varchar(45) DEFAULT NULL,
  `SoLop` int DEFAULT NULL,
  `TinhTrangKH` varchar(45) DEFAULT NULL,
  `MoTa` varchar(255) DEFAULT NULL,
  `HinhAnh` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KhoaHoc`
--

LOCK TABLES `KhoaHoc` WRITE;
/*!40000 ALTER TABLE `KhoaHoc` DISABLE KEYS */;
INSERT INTO `KhoaHoc` VALUES ('KH0001','CAMBRIDGE B1','2025-01-01 00:00:00','2025-06-01 00:00:00','ONLINE ','ZOOM',1,'Đang diễn ra ','Kỹ năng: Nghe - nói - đọc - viết ','Chưa có '),('KH0002','CAMBRIDGE B2','2025-05-01 00:00:00','2025-10-01 00:00:00','ONLINE ','ZOOM',1,'Đang mở đăng ký ','Kỹ năng: Nghe - nói - đọc - viết ','Chưa có '),('KH0003','IELTS 6.0','2024-11-01 00:00:00','2025-04-01 00:00:00','ONLINE ','ZOOM',1,'Đã kết thúc ','Kỹ năng: Nghe - nói - đọc - viết ','Chưa có '),('KH0004','IELTS 6.0','2025-01-01 00:00:00','2025-06-01 00:00:00','ONLINE','ZOOM',1,'Đang diễn ra ','Kỹ năng: Nghe - nói - đọc ','Chưa có'),('KH0005','IELTS 6.5','2025-05-01 00:00:00','2025-10-01 00:00:00','ONLINE ','ZOOM',1,'Đang mở đăng ký ','Kỹ năng: Nghe - nói - đọc - viết','Chưa có'),('KH0006','IELTS 6.5','2025-07-01 00:00:00','2025-12-01 00:00:00','ONLINE ','ZOOM',1,'Dự kiến ','Kỹ năng: Nghe - nói - đọc - viết','Chưa có'),('KH0007','IELTS 7.0','2025-02-01 00:00:00','2025-07-01 00:00:00','ONLINE ','ZOOM',1,'Đang diễn ra ','Kỹ năng: Nghe - nói - đọc - viết ','Chưa có '),('KH0008','IELTS 7.5','2025-02-01 00:00:00','2025-07-01 00:00:00','ONLINE ','ZOOM',1,'Đang diễn ra','Kỹ năng: Nghe - nói - đọc - viết ','Chưa có'),('KH0009','TESOL','2025-05-01 00:00:00','2025-10-01 00:00:00','ONLINE ','ZOOM',1,'Đang mở đăng ký','Kỹ năng: Nghe - nói - đọc - viết','Chưa có'),('KH0010','TESOL','2025-08-01 00:00:00','2026-01-01 00:00:00','ONLINE ','ZOOM ',1,'Dự kiến ','Kỹ năng: Nghe - nói - đọc - viết ','Chưa có'),('KH0011','TOEFL 80+','2025-02-01 00:00:00','2025-07-01 00:00:00','ONLINE ','ZOOM ',1,'Đang diễn ra ','Kỹ năng: Nghe - nói - đọc - viết ','Chưa có'),('KH0012','TOEFL 100+','2025-03-01 00:00:00','2025-08-01 00:00:00','ONLINE ','ZOOM ',1,'Đang diễn ra','Kỹ năng: Nghe - nói - đọc - viết ','Chưa có'),('KH0013','TOEIC 450+','2025-03-01 00:00:00','2025-08-01 00:00:00','ONLINE ','ZOOM ',1,'Đang diễn ra ','Kỹ năng: Nghe - đọc ','Chưa có'),('KH0014','TOEIC 450+','2025-05-01 00:00:00','2025-10-01 00:00:00','ONLINE ','ZOOM ',1,'Đang mở đăng ký ','Kỹ năng: Nghe - đọc ','Chưa có'),('KH0015','TOEIC 600+','2025-03-01 00:00:00','2025-08-01 00:00:00','ONLINE ','ZOOM',1,'Đang diễn ra ','Kỹ năng: Nghe - đọc ','Chưa có '),('KH0016','TOEIC 600+','2025-07-01 00:00:00','2025-12-01 00:00:00','ONLINE ','ZOOM ',1,'Dự kiến ','Kỹ năng: Nghe - đọc','Chưa có'),('KH0017','TOEIC 700+','2025-04-01 00:00:00','2025-09-01 00:00:00','ONLINE ','ZOOM',1,'Đang diễn ra','Kỹ năng: Nghe - đọc','Chưa có'),('KH0018','TOEIC 750+','2025-08-01 00:00:00','2026-01-01 00:00:00','ONLINE ','ZOOM',1,'Dự kiến ','Kỹ năng: Nghe - đọc','Chưa có'),('KH0019','VSTEP Bậc 3','2025-01-01 00:00:00','2025-06-01 00:00:00','ONLINE ','ZOOM',1,'Đã kết thúc','Kỹ năng: Nghe - nói - đọc - viết ','Chưa có'),('KH0020','VSTEP Bậc 4','2025-04-01 00:00:00','2025-09-01 00:00:00','ONLINE ','ZOOM',1,'Đang diễn ra','Kỹ năng: Nghe - nói - đọc - viết ','Chưa có');
/*!40000 ALTER TABLE `KhoaHoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KiemTraDG`
--

DROP TABLE IF EXISTS `KiemTraDG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `KiemTraDG` (
  `MaKT` varchar(45) NOT NULL,
  `TenKT` varchar(45) DEFAULT NULL,
  `MoTa` varchar(45) DEFAULT NULL,
  `MaKH` varchar(45) DEFAULT NULL,
  `LoaiKT` varchar(45) DEFAULT NULL,
  `NgayMo` datetime DEFAULT NULL,
  `NgayDong` datetime DEFAULT NULL,
  `TrangThai` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaKT`),
  KEY `MaKH_idx` (`MaKH`),
  CONSTRAINT `KiemTraDG_MaKH` FOREIGN KEY (`MaKH`) REFERENCES `KhoaHoc` (`MaKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KiemTraDG`
--

LOCK TABLES `KiemTraDG` WRITE;
/*!40000 ALTER TABLE `KiemTraDG` DISABLE KEYS */;
INSERT INTO `KiemTraDG` VALUES ('KT001','CAMBRIDGE B1','Kỹ năng: Nghe - nói - đọc - viết','KH0001','ONLINE','2024-12-24 00:00:00','2024-12-31 00:00:00','Đã kết thúc'),('KT002','CAMBRIDGE','Kỹ năng: Nghe - nói - đọc - viết','KH0002','ONLINE','2025-04-23 00:00:00','2025-04-30 00:00:00','Đang diễn ra'),('KT003','IELTS','Kỹ năng: Nghe - nói - đọc - viết','KH0003','ONLINE','2024-10-24 00:00:00','2024-10-31 00:00:00','Đã kết thúc'),('KT004','IELTS','Kỹ năng: Nghe - nói - đọc - viết','KH0004','ONLINE','2024-12-24 00:00:00','2024-12-31 00:00:00','Đã kết thúc'),('KT005','IELTS','Kỹ năng: Nghe - nói - đọc - viết','KH0005','ONLINE','2025-04-23 00:00:00','2025-04-30 00:00:00','Đang diễn ra'),('KT006','IELTS','Kỹ năng: Nghe - nói - đọc - viết','KH0006','ONLINE','2025-06-23 00:00:00','2025-06-30 00:00:00','Chưa diễn ra'),('KT007','IELTS','Kỹ năng: Nghe - nói - đọc - viết','KH0007','ONLINE','2025-01-24 00:00:00','2025-01-31 00:00:00','Đã kết thúc'),('KT008','IELTS','Kỹ năng: Nghe - nói - đọc - viết','KH0008','ONLINE','2025-01-24 00:00:00','2025-01-31 00:00:00','Đã kết thúc'),('KT009','TESOL','Kỹ năng: Nghe - nói - đọc - viết','KH0009','ONLINE','2025-04-23 00:00:00','2025-04-30 00:00:00','Đang diễn ra'),('KT010','TESOL','Kỹ năng: Nghe - nói - đọc - viết','KH0010','ONLINE','2025-07-24 00:00:00','2025-07-31 00:00:00','Chưa diễn ra'),('KT011','TOEFL','Kỹ năng: Nghe - nói - đọc - viết','KH0011','ONLINE','2025-01-24 00:00:00','2025-01-31 00:00:00','Đã kết thúc'),('KT012','TOEFL','Kỹ năng: Nghe - nói - đọc - viết','KH0012','ONLINE','2025-02-21 00:00:00','2025-02-28 00:00:00','Đã kết thúc'),('KT013','TOEIC','Kỹ năng: Nghe - đọc','KH0013','ONLINE','2025-02-21 00:00:00','2025-02-28 00:00:00','Đã kết thúc'),('KT014','TOEIC','Kỹ năng: Nghe - đọc','KH0014','ONLINE','2025-04-23 00:00:00','2025-04-30 00:00:00','Đang diễn ra'),('KT015','TOEIC','Kỹ năng: Nghe - đọc','KH0015','ONLINE','2025-02-21 00:00:00','2025-02-28 00:00:00','Đã kết thúc'),('KT016','TOEIC','Kỹ năng: Nghe - đọc','KH0016','ONLINE','2025-06-23 00:00:00','2025-06-30 00:00:00','Chưa diễn ra'),('KT017','TOEIC','Kỹ năng: Nghe - đọc','KH0017','ONLINE','2025-03-24 00:00:00','2025-03-31 00:00:00','Đã kết thúc'),('KT018','TOEIC','Kỹ năng: Nghe - đọc','KH0018','ONLINE','2025-07-24 00:00:00','2025-07-31 00:00:00','Chưa diễn ra'),('KT019','VSTEP','Kỹ năng: Nghe - nói - đọc - viết','KH0019','ONLINE','2024-12-24 00:00:00','2024-12-31 00:00:00','Đã kết thúc'),('KT020','VSTEP','Kỹ năng: Nghe - nói - đọc - viết','KH0020','ONLINE','2025-03-24 00:00:00','2025-03-31 00:00:00','Đã kết thúc');
/*!40000 ALTER TABLE `KiemTraDG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LichDay`
--

DROP TABLE IF EXISTS `LichDay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LichDay` (
  `MaLich` varchar(45) NOT NULL,
  `MaGV` varchar(45) DEFAULT NULL,
  `MaKH` varchar(45) DEFAULT NULL,
  `NgayDay` varchar(45) DEFAULT NULL,
  `CaHoc` varchar(45) DEFAULT NULL,
  `PhongHoc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaLich`),
  KEY `LichDay_MaGV_idx` (`MaGV`),
  KEY `LichDay_MaKH_idx` (`MaKH`),
  CONSTRAINT `LichDay_MaGV` FOREIGN KEY (`MaGV`) REFERENCES `GiangVien` (`MaGV`),
  CONSTRAINT `LichDay_MaKH` FOREIGN KEY (`MaKH`) REFERENCES `KhoaHoc` (`MaKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LichDay`
--

LOCK TABLES `LichDay` WRITE;
/*!40000 ALTER TABLE `LichDay` DISABLE KEYS */;
INSERT INTO `LichDay` VALUES ('L0001','GV0008','KH0001','2025-01-07 09:00','Ca 1','Zoom'),('L0002','GV0008','KH0002','2025-05-07 14:00','Ca 2','Zoom'),('L0003','GV0001','KH0003','2024-11-07 16:00','Ca 2','Zoom'),('L0004','GV0001','KH0004','2025-01-08 14:00','Ca 2','Zoom'),('L0005','GV0002','KH0005','2025-05-08 16:00','Ca 2','Zoom'),('L0006','GV0002','KH0006','2025-07-07 18:00','Ca 2','Zoom'),('L0007','GV0003','KH0007','2025-02-05 14:00','Ca 2','Zoom'),('L0008','GV0003','KH0008','2025-02-04 09:00','Ca 1','Zoom'),('L0009','GV0010','KH0009','2025-05-06 09:00','Ca 1','Zoom'),('L0010','GV0010','KH0010','2025-08-06 14:00','Ca 2','Zoom'),('L0011','GV0007','KH0011','2025-02-05 14:00','Ca 2','Zoom'),('L0012','GV0007','KH0012','2025-03-07 10:00','Ca 1','Zoom'),('L0013','GV0004','KH0013','2025-03-04 09:00','Ca 1','Zoom'),('L0014','GV0004','KH0014','2025-05-08 16:00','Ca 2','Zoom'),('L0015','GV0005','KH0015','2025-03-07 10:00','Ca 1','Zoom'),('L0016','GV0005','KH0016','2025-07-04 10:00','Ca 1','Zoom'),('L0017','GV0006','KH0017','2025-04-02 14:00','Ca 2','Zoom'),('L0018','GV0006','KH0018','2025-08-05 09:00','Ca 1','Zoom'),('L0019','GV0009','KH0019','2025-01-08 14:00','Ca 2','Zoom'),('L0020','GV0009','KH0020','2025-04-02 14:00','Ca 2','Zoom');
/*!40000 ALTER TABLE `LichDay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LopHoc`
--

DROP TABLE IF EXISTS `LopHoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LopHoc` (
  `MaLH` varchar(45) NOT NULL,
  `TenLH` varchar(45) DEFAULT NULL,
  `MaKH` varchar(45) DEFAULT NULL,
  `MaGV` varchar(45) DEFAULT NULL,
  `LichHoc` varchar(45) DEFAULT NULL,
  `PhongHoc` varchar(45) DEFAULT NULL,
  `SoLuongHV` int DEFAULT NULL,
  `TinhTrangLH` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaLH`),
  KEY `MaKH_idx` (`MaKH`),
  KEY `MaGV_idx` (`MaGV`),
  CONSTRAINT `LopHoc_MaGV` FOREIGN KEY (`MaGV`) REFERENCES `GiangVien` (`MaGV`),
  CONSTRAINT `LopHoc_MaKH` FOREIGN KEY (`MaKH`) REFERENCES `KhoaHoc` (`MaKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LopHoc`
--

LOCK TABLES `LopHoc` WRITE;
/*!40000 ALTER TABLE `LopHoc` DISABLE KEYS */;
INSERT INTO `LopHoc` VALUES ('LH001','Lớp CAMBRIDGE B1','KH0001','GV0001','Thứ 3, 09:00','Zoom',10,'Đang diễn ra '),('LH002','Lớp CAMBRIDGE B2','KH0002','GV0002','Thứ 4, 14:00','Zoom',10,'Đang mở đăng ký '),('LH003','Lớp IELTS 6.0','KH0003','GV0003','Thứ 5, 16:00','Zoom',10,'Đã kết thúc '),('LH004','Lớp IELTS 6.0','KH0004','GV0001','Thứ 4, 14:00','Zoom',10,'Đang diễn ra '),('LH005','Lớp IELTS 6.5','KH0005','GV0002','Thứ 5, 16:00','Zoom',10,'Đang mở đăng ký '),('LH006','Lớp IELTS 6.5','KH0006','GV0003','Thứ 2, 18:00','Zoom',10,'Dự kiến '),('LH007','Lớp IELTS 7.0','KH0007','GV0001','Thứ 4, 14:00','Zoom',10,'Đang diễn ra '),('LH008','Lớp IELTS 7.5','KH0008','GV0002','Thứ 3, 09:00','Zoom',10,'Đang diễn ra'),('LH009','Lớp TESOL','KH0009','GV0010','Thứ 3, 09:00','Zoom',10,'Đang mở đăng ký'),('LH010','Lớp TESOL','KH0010','GV0010','Thứ 4, 14:00','Zoom',10,'Dự kiến '),('LH011','Lớp TOEFL 80+','KH0011','GV0007','Thứ 4, 14:00','Zoom',10,'Đang diễn ra '),('LH012','Lớp TOEFL 100+','KH0012','GV0007','Thứ 6, 10:00','Zoom',10,'Đang diễn ra'),('LH013','Lớp TOEIC 450+','KH0013','GV0004','Thứ 3, 09:00','Zoom',10,'Đang diễn ra '),('LH014','Lớp TOEIC 450+','KH0014','GV0005','Thứ 5, 16:00','Zoom',10,'Đang mở đăng ký '),('LH015','Lớp TOEIC 600+','KH0015','GV0006','Thứ 6, 10:00','Zoom',10,'Đang diễn ra '),('LH016','Lớp TOEIC 600+','KH0016','GV0004','Thứ 6, 10:00','Zoom',10,'Dự kiến '),('LH017','Lớp TOEIC 700+','KH0017','GV0005','Thứ 4, 14:00','Zoom',10,'Đang diễn ra'),('LH018','Lớp TOEIC 750+','KH0018','GV0006','Thứ 3, 09:00','Zoom',10,'Dự kiến '),('LH019','Lớp VSTEP Bậc 3','KH0019','GV0009','Thứ 4, 14:00','Zoom',10,'Đã kết thúc'),('LH020','Lớp VSTEP Bậc 4','KH0020','GV0009','Thứ 4, 14:00','Zoom',10,'Đang diễn ra');
/*!40000 ALTER TABLE `LopHoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TaiLieu`
--

DROP TABLE IF EXISTS `TaiLieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TaiLieu` (
  `MaTL` varchar(45) NOT NULL,
  `MaKH` varchar(45) DEFAULT NULL,
  `TenTL` varchar(45) DEFAULT NULL,
  `LoaiTL` varchar(45) DEFAULT NULL,
  `MoTa` varchar(255) DEFAULT NULL,
  `NamXB` int DEFAULT NULL,
  `TacGia` varchar(45) DEFAULT NULL,
  `NgayCapNhat` datetime DEFAULT NULL,
  `HinhAnh` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaTL`),
  KEY `MaKH_idx` (`MaKH`),
  CONSTRAINT `TaiLieu_MaKH` FOREIGN KEY (`MaKH`) REFERENCES `KhoaHoc` (`MaKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TaiLieu`
--

LOCK TABLES `TaiLieu` WRITE;
/*!40000 ALTER TABLE `TaiLieu` DISABLE KEYS */;
INSERT INTO `TaiLieu` VALUES ('TL001_1','KH0001','Tài liệu 1 của CAMBRIDGE B1','Sách','Sách học tiếng Anh CAMBRIDGE B1, bao gồm các bài tập từ vựng, ngữ pháp, và các bài kiểm tra kỹ năng để cải thiện khả năng nghe và nói.',2013,'Nguyễn Văn Minh','2025-06-01 00:00:00','Chưa có'),('TL001_2','KH0001','Tài liệu 2 của CAMBRIDGE B1','Bài giảng','Bài giảng lý thuyết và các chiến lược ôn thi CAMBRIDGE B1, giúp học viên ôn tập và làm quen với cấu trúc đề thi chính thức.',2015,'Trần Thị Lan','2025-06-02 00:00:00','Chưa có'),('TL001_3','KH0001','Tài liệu 3 của CAMBRIDGE B1','Tài liệu tham khảo','Bộ tài liệu tham khảo với các bài tập bổ sung giúp học viên làm quen với các tình huống thực tế trong giao tiếp tiếng Anh.',2018,'Lê Minh Tú','2025-06-03 00:00:00','Chưa có'),('TL002_1','KH0002','Tài liệu 1 của CAMBRIDGE B2','Sách','Cuốn sách nâng cao kỹ năng nghe và nói tiếng Anh CAMBRIDGE B2, với các bài tập khó, thử thách người học với các tình huống thực tế.',2016,'Nguyễn Thị Mai','2025-06-01 00:00:00','Chưa có'),('TL002_2','KH0002','Tài liệu 2 của CAMBRIDGE B2','Bài giảng','Bài giảng nâng cao, chi tiết các chiến lược và kỹ thuật thi cho bài thi CAMBRIDGE B2, giúp học viên luyện tập các kỹ năng cần thiết để đạt điểm cao.',2017,'Phan Thanh Tùng','2025-06-02 00:00:00','Chưa có'),('TL002_3','KH0002','Tài liệu 3 của CAMBRIDGE B2','Tài liệu tham khảo','Tài liệu tham khảo bổ sung về các cấu trúc ngữ pháp phức tạp và bài tập thực hành cho các phần thi đọc và viết.',2019,'Hoàng Thị Lan','2025-06-03 00:00:00','Chưa có'),('TL003_1','KH0003','Tài liệu 1 của IELTS 6.0','Sách','Sách luyện thi IELTS 6.0 với các bài tập giúp cải thiện kỹ năng đọc, viết, nghe và nói, phù hợp cho các học viên có trình độ trung cấp.',2014,'Nguyễn Minh Tuấn','2025-06-01 00:00:00','Chưa có'),('TL003_2','KH0003','Tài liệu 2 của IELTS 6.0','Bài giảng','Bài giảng chi tiết các chiến lược làm bài thi IELTS, đặc biệt là phần Speaking và Listening, cung cấp các mẹo thi và lời khuyên từ các chuyên gia.',2016,'Trần Thị Ngọc','2025-06-02 00:00:00','Chưa có'),('TL003_3','KH0003','Tài liệu 3 của IELTS 6.0','Tài liệu tham khảo','Bộ tài liệu tham khảo với các bài kiểm tra mẫu IELTS, giúp học viên luyện tập các kỹ năng và làm quen với các câu hỏi thi thực tế.',2018,'Lê Minh Nhật','2025-06-03 00:00:00','Chưa có'),('TL004_1','KH0004','Tài liệu 1 của IELTS 6.0','Sách','Cuốn sách luyện thi IELTS với các bài tập ngữ pháp, từ vựng và kỹ năng viết, giúp học viên chuẩn bị tốt cho các bài thi IELTS 6.0.',2014,'Nguyễn Thị Bích','2025-06-01 00:00:00','Chưa có'),('TL004_2','KH0004','Tài liệu 2 của IELTS 6.0','Bài giảng','Bài giảng chuyên sâu về cách tiếp cận các bài thi IELTS, đặc biệt là phần Listening và Speaking, với các chiến lược và mẹo để đạt điểm cao.',2015,'Phan Thanh Khoa','2025-06-02 00:00:00','Chưa có'),('TL004_3','KH0004','Tài liệu 3 của IELTS 6.0','Tài liệu tham khảo','Tài liệu tham khảo với các bài kiểm tra mẫu IELTS, giúp học viên luyện tập các kỹ năng và làm quen với các câu hỏi thi thực tế.',2017,'Hoàng Thị Linh','2025-06-03 00:00:00','Chưa có'),('TL005_1','KH0005','Tài liệu 1 của IELTS 6.5','Sách','Sách học IELTS 6.5 với các bài tập ngữ pháp và từ vựng giúp học viên nâng cao kỹ năng tiếng Anh của mình ở mức độ cao hơn.',2015,'Nguyễn Thị Lan','2025-06-01 00:00:00','Chưa có'),('TL005_2','KH0005','Tài liệu 2 của IELTS 6.5','Bài giảng','Bài giảng giúp học viên nắm vững các kỹ thuật làm bài thi IELTS 6.5, đặc biệt là cách phát triển kỹ năng Speaking và Writing.',2016,'Trần Thị Quỳnh','2025-06-02 00:00:00','Chưa có'),('TL005_3','KH0005','Tài liệu 3 của IELTS 6.5','Tài liệu tham khảo','Tài liệu tham khảo giúp học viên giải quyết các bài thi IELTS mẫu, cải thiện khả năng làm bài của học viên.',2018,'Lê Minh Tuấn','2025-06-03 00:00:00','Chưa có'),('TL006_1','KH0006','Tài liệu 1 của TOEIC 600','Sách','Sách luyện thi TOEIC 600, bao gồm các bài tập ngữ pháp, từ vựng, và kỹ năng làm bài thi TOEIC từ cơ bản đến nâng cao.',2014,'Nguyễn Thị Thùy','2025-06-01 00:00:00','Chưa có'),('TL006_2','KH0006','Tài liệu 2 của TOEIC 600','Bài giảng','Bài giảng chi tiết cách làm bài thi TOEIC, đặc biệt là phần Listening và Reading, với các chiến lược và mẹo giúp tăng điểm nhanh.',2015,'Trần Minh Hòa','2025-06-02 00:00:00','Chưa có'),('TL006_3','KH0006','Tài liệu 3 của TOEIC 600','Tài liệu tham khảo','Tài liệu tham khảo với các bài thi mẫu TOEIC 600 giúp học viên làm quen với dạng câu hỏi và cấu trúc của đề thi.',2017,'Lê Quang Trung','2025-06-03 00:00:00','Chưa có'),('TL007_1','KH0007','Tài liệu 1 của TOEIC 650','Sách','Sách luyện thi TOEIC 650 với các bài tập khó, thử thách học viên với các bài nghe và đọc phức tạp hơn, giúp cải thiện điểm số nhanh chóng.',2015,'Nguyễn Thị Lan','2025-06-01 00:00:00','Chưa có'),('TL007_2','KH0007','Tài liệu 2 của TOEIC 650','Bài giảng','Bài giảng hướng dẫn các chiến lược làm bài thi TOEIC 650, với các ví dụ thực tế và lời khuyên về các kỹ năng làm bài hiệu quả.',2016,'Trần Thị Hương','2025-06-02 00:00:00','Chưa có'),('TL007_3','KH0007','Tài liệu 3 của TOEIC 650','Tài liệu tham khảo','Tài liệu tham khảo với các bài thi mẫu TOEIC 650 và các bài kiểm tra kỹ năng giúp học viên luyện tập theo định dạng chính thức của TOEIC.',2018,'Lê Minh Quân','2025-06-03 00:00:00','Chưa có'),('TL008_1','KH0008','Tài liệu 1 của VSTEP Bậc 1','Sách','Sách luyện thi VSTEP Bậc 1, bao gồm các bài tập ngữ pháp và từ vựng cơ bản, giúp học viên làm quen với cấu trúc bài thi VSTEP.',2016,'Nguyễn Thị Thu','2025-06-01 00:00:00','Chưa có'),('TL008_2','KH0008','Tài liệu 2 của VSTEP Bậc 1','Bài giảng','Bài giảng lý thuyết về kỹ năng làm bài thi VSTEP Bậc 1, giúp học viên hiểu rõ các phần thi và các mẹo để đạt điểm cao.',2017,'Trần Thiết Duy','2025-06-02 00:00:00','Chưa có'),('TL008_3','KH0008','Tài liệu 3 của VSTEP Bậc 1','Tài liệu tham khảo','Tài liệu tham khảo giúp học viên luyện tập và làm quen với các bài thi VSTEP Bậc 1, cải thiện kỹ năng làm bài.',2018,'Lê Quang Hòa','2025-06-03 00:00:00','Chưa có'),('TL009_1','KH0009','Tài liệu 1 của VSTEP Bậc 2','Sách','Sách luyện thi VSTEP Bậc 2, với các bài tập ngữ pháp và từ vựng nâng cao, giúp học viên hoàn thiện kỹ năng tiếng Anh ở mức độ trung cấp.',2017,'Nguyễn Thị Thiên','2025-06-01 00:00:00','Chưa có'),('TL009_2','KH0009','Tài liệu 2 của VSTEP Bậc 2','Bài giảng','Bài giảng chuyên sâu về các chiến lược làm bài thi VSTEP Bậc 2, với các mẹo và chiến lược giúp học viên đạt kết quả cao trong bài thi.',2018,'Trần Lương Minh','2025-06-02 00:00:00','Chưa có'),('TL009_3','KH0009','Tài liệu 3 của VSTEP Bậc 2','Tài liệu tham khảo','Tài liệu tham khảo với các bài thi mẫu VSTEP Bậc 2, giúp học viên làm quen với bài thi thực tế và các dạng câu hỏi.',2019,'Lê Minh Khánh','2025-06-03 00:00:00','Chưa có'),('TL010_1','KH0010','Tài liệu 1 của VSTEP Bậc 3','Sách','Sách luyện thi VSTEP Bậc 3 với các bài tập phức tạp, giúp học viên ôn luyện các kỹ năng đọc, viết, nói và nghe để đạt điểm cao trong bài thi.',2018,'Nguyễn Thị Thanh','2025-06-01 00:00:00','Chưa có'),('TL010_2','KH0010','Tài liệu 2 của VSTEP Bậc 3','Bài giảng','Bài giảng cung cấp chiến lược làm bài thi VSTEP Bậc 3, giúp học viên cải thiện kỹ năng viết và nghe của mình.',2019,'Trần Thi Mai','2025-06-02 00:00:00','Chưa có'),('TL010_3','KH0010','Tài liệu 3 của VSTEP Bậc 3','Tài liệu tham khảo','Tài liệu tham khảo giúp học viên luyện tập với các bài thi mẫu VSTEP Bậc 3, giúp nâng cao hiệu quả ôn luyện và chuẩn bị tốt cho kỳ thi.',2021,'Lê Minh Châu','2025-06-03 00:00:00','Chưa có'),('TL011_1','KH0011','Tài liệu 1 của TOEIC 700','Sách','Sách luyện thi TOEIC 700, bao gồm các bài tập nâng cao cho phần đọc và nghe, giúp học viên cải thiện kỹ năng để đạt điểm cao trong kỳ thi TOEIC.',2017,'Nguyễn Thị Mai','2025-06-01 00:00:00','Chưa có'),('TL011_2','KH0011','Tài liệu 2 của TOEIC 700','Bài giảng','Bài giảng với các chiến lược làm bài thi TOEIC, đặc biệt là phần Speaking và Writing, giúp học viên nắm vững cấu trúc và kỹ thuật làm bài.',2018,'Trần Thanh Tâm','2025-06-02 00:00:00','Chưa có'),('TL011_3','KH0011','Tài liệu 3 của TOEIC 700','Tài liệu tham khảo','Tài liệu tham khảo với các bài thi mẫu TOEIC 700 giúp học viên luyện tập và làm quen với các dạng câu hỏi trong kỳ thi chính thức.',2019,'Lê Minh Hiền','2025-06-03 00:00:00','Chưa có'),('TL012_1','KH0012','Tài liệu 1 của TOEIC 750','Sách','Sách luyện thi TOEIC 750 giúp học viên luyện tập các bài thi Listening và Reading để nâng cao điểm số.',2018,'Nguyễn Minh Tuấn','2025-06-01 00:00:00','Chưa có'),('TL012_2','KH0012','Tài liệu 2 của TOEIC 750','Bài giảng','Bài giảng hướng dẫn các chiến lược để đạt điểm cao trong phần Speaking và Writing, giúp học viên tự tin khi thi TOEIC.',2019,'Trần Thị Bích','2025-06-02 00:00:00','Chưa có'),('TL012_3','KH0012','Tài liệu 3 của TOEIC 750','Tài liệu tham khảo','Tài liệu tham khảo với các đề thi mẫu TOEIC 750, giúp học viên cải thiện các kỹ năng làm bài và làm quen với các câu hỏi thực tế.',2020,'Lê Thị Lan','2025-06-03 00:00:00','Chưa có'),('TL013_1','KH0013','Tài liệu 1 của VSTEP Bậc 2','Sách','Sách luyện thi VSTEP Bậc 2 với các bài tập ngữ pháp và từ vựng nâng cao, giúp học viên cải thiện kỹ năng tiếng Anh của mình.',2017,'Nguyễn Thị Bích','2025-06-01 00:00:00','Chưa có'),('TL013_2','KH0013','Tài liệu 2 của VSTEP Bậc 2','Bài giảng','Bài giảng chi tiết về các chiến lược và phương pháp làm bài VSTEP Bậc 2, giúp học viên đạt điểm cao trong kỳ thi.',2018,'Trần Minh Tú','2025-06-02 00:00:00','Chưa có'),('TL013_3','KH0013','Tài liệu 3 của VSTEP Bậc 2','Tài liệu tham khảo','Tài liệu tham khảo giúp học viên luyện tập các bài thi mẫu VSTEP Bậc 2, nâng cao khả năng làm bài thi thực tế.',2019,'Lê Quang Hải','2025-06-03 00:00:00','Chưa có'),('TL014_1','KH0014','Tài liệu 1 của VSTEP Bậc 3','Sách','Sách luyện thi VSTEP Bậc 3 với các bài tập phức tạp giúp học viên nâng cao các kỹ năng cần thiết để đạt điểm cao trong kỳ thi.',2018,'Nguyễn Minh Phương','2025-06-01 00:00:00','Chưa có'),('TL014_2','KH0014','Tài liệu 2 của VSTEP Bậc 3','Bài giảng','Bài giảng chuyên sâu về cách làm bài thi VSTEP Bậc 3, giúp học viên cải thiện kỹ năng viết và nói.',2019,'Trần Thị Mai','2025-06-02 00:00:00','Chưa có'),('TL014_3','KH0014','Tài liệu 3 của VSTEP Bậc 3','Tài liệu tham khảo','Tài liệu tham khảo với các đề thi mẫu VSTEP Bậc 3 giúp học viên luyện tập và chuẩn bị cho kỳ thi VSTEP Bậc 3.',2021,'Lê Minh Thùy','2025-06-03 00:00:00','Chưa có'),('TL015_1','KH0015','Tài liệu 1 của TOEIC 800','Sách','Sách luyện thi TOEIC 800, giúp học viên đạt điểm cao trong các phần thi Listening và Reading của TOEIC.',2019,'Nguyễn Thị Tuyết','2025-06-01 00:00:00','Chưa có'),('TL015_2','KH0015','Tài liệu 2 của TOEIC 800','Bài giảng','Bài giảng chi tiết về các chiến lược làm bài thi TOEIC 800, giúp học viên cải thiện khả năng Speaking và Writing.',2020,'Trần Thiện An','2025-06-02 00:00:00','Chưa có'),('TL015_3','KH0015','Tài liệu 3 của TOEIC 800','Tài liệu tham khảo','Tài liệu tham khảo giúp học viên luyện tập với các bài thi mẫu TOEIC 800, giúp cải thiện điểm số.',2021,'Lê Minh Duy','2025-06-03 00:00:00','Chưa có'),('TL016_1','KH0016','Tài liệu 1 của VSTEP Bậc 4','Sách','Sách luyện thi VSTEP Bậc 4 với các bài tập ngữ pháp và từ vựng nâng cao, giúp học viên chuẩn bị tốt cho các phần thi nghe, nói, đọc và viết.',2020,'Nguyễn Thị Hương','2025-06-01 00:00:00','Chưa có'),('TL016_2','KH0016','Tài liệu 2 của VSTEP Bậc 4','Bài giảng','Bài giảng chi tiết về các chiến lược làm bài thi VSTEP Bậc 4, cung cấp phương pháp và mẹo thi cho học viên.',2021,'Trần Lương Minh','2025-06-02 00:00:00','Chưa có'),('TL016_3','KH0016','Tài liệu 3 của VSTEP Bậc 4','Tài liệu tham khảo','Tài liệu tham khảo với các bài thi mẫu VSTEP Bậc 4 giúp học viên luyện tập và nâng cao kỹ năng làm bài.',2022,'Lê Quang Huy','2025-06-03 00:00:00','Chưa có'),('TL017_1','KH0017','Tài liệu 1 của TOEIC 850','Sách','Sách luyện thi TOEIC 850 giúp học viên cải thiện kỹ năng đọc, nghe và viết để đạt điểm cao trong kỳ thi TOEIC.',2021,'Nguyễn Thị Lan','2025-06-01 00:00:00','Chưa có'),('TL017_2','KH0017','Tài liệu 2 của TOEIC 850','Bài giảng','Bài giảng về cách phát triển kỹ năng Speaking và Listening để đạt điểm cao trong TOEIC 850.',2022,'Trần Thị Lan','2025-06-02 00:00:00','Chưa có'),('TL017_3','KH0017','Tài liệu 3 của TOEIC 850','Tài liệu tham khảo','Tài liệu tham khảo giúp học viên luyện tập với các đề thi mẫu TOEIC 850, nâng cao hiệu quả ôn luyện.',2023,'Lê Minh Quân','2025-06-03 00:00:00','Chưa có'),('TL018_1','KH0018','Tài liệu 1 của IELTS 7.0','Sách','Sách luyện thi IELTS 7.0, bao gồm các bài tập nâng cao kỹ năng nghe, nói, đọc và viết, giúp học viên đạt điểm cao trong kỳ thi IELTS.',2021,'Nguyễn Văn Hoàng','2025-06-01 00:00:00','Chưa có'),('TL018_2','KH0018','Tài liệu 2 của IELTS 7.0','Bài giảng','Bài giảng chuyên sâu về kỹ năng Speaking và Writing trong kỳ thi IELTS 7.0, với các bài tập thực tế giúp học viên tự tin thi IELTS.',2022,'Trần Minh Tâm','2025-06-02 00:00:00','Chưa có'),('TL018_3','KH0018','Tài liệu 3 của IELTS 7.0','Tài liệu tham khảo','Tài liệu tham khảo giúp học viên luyện tập và làm quen với các bài thi mẫu IELTS 7.0, cải thiện kỹ năng viết và nói.',2023,'Lê Minh Nhật','2025-06-03 00:00:00','Chưa có'),('TL019_1','KH0019','Tài liệu 1 của VSTEP Bậc 5','Sách','Sách luyện thi VSTEP Bậc 5 với các bài tập ngữ pháp và từ vựng nâng cao, giúp học viên làm quen với cấu trúc đề thi VSTEP cao cấp.',2022,'Nguyễn Thi Thảo','2025-06-01 00:00:00','Chưa có'),('TL019_2','KH0019','Tài liệu 2 của VSTEP Bậc 5','Bài giảng','Bài giảng chuyên sâu giúp học viên nắm vững kỹ thuật làm bài VSTEP Bậc 5, đặc biệt là kỹ năng Speaking và Writing.',2023,'Trần Minh Ngọc','2025-06-02 00:00:00','Chưa có'),('TL019_3','KH0019','Tài liệu 3 của VSTEP Bậc 5','Tài liệu tham khảo','Tài liệu tham khảo giúp học viên luyện tập với các đề thi mẫu VSTEP Bậc 5, giúp chuẩn bị cho kỳ thi đạt điểm cao.',2024,'Lê Minh Phát','2025-06-03 00:00:00','Chưa có'),('TL020_1','KH0020','Tài liệu 1 của VSTEP Bậc 6','Sách','Sách luyện thi VSTEP Bậc 6 với các bài tập thực tế giúp học viên làm quen với cấu trúc bài thi VSTEP cao cấp và đạt điểm tốt.',2023,'Nguyễn Thị Bích','2025-06-01 00:00:00','Chưa có'),('TL020_2','KH0020','Tài liệu 2 của VSTEP Bậc 6','Bài giảng','Bài giảng lý thuyết và chiến lược ôn thi VSTEP Bậc 6, giúp học viên hiểu rõ cách thức làm bài thi đạt hiệu quả cao.',2024,'Trần Thanh Tùng','2025-06-02 00:00:00','Chưa có'),('TL020_3','KH0020','Tài liệu 3 của VSTEP Bậc 6','Tài liệu tham khảo','Tài liệu tham khảo bổ sung giúp học viên luyện tập bài thi mẫu VSTEP Bậc 6, cải thiện kỹ năng viết và nói.',2025,'Lê Minh Tâm','2025-06-03 00:00:00','Chưa có');
/*!40000 ALTER TABLE `TaiLieu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ThamGiaKT`
--

DROP TABLE IF EXISTS `ThamGiaKT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ThamGiaKT` (
  `MaHV` varchar(45) NOT NULL,
  `MaKT` varchar(45) NOT NULL,
  `NgayNopBai` datetime DEFAULT NULL,
  `TrangThaiNop` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaHV`,`MaKT`),
  KEY `ThamGiaKT_MaKT_idx` (`MaKT`),
  CONSTRAINT `ThamGiaKT_MaHV` FOREIGN KEY (`MaHV`) REFERENCES `HocVien` (`MaHV`),
  CONSTRAINT `ThamGiaKT_MaKT` FOREIGN KEY (`MaKT`) REFERENCES `KiemTraDG` (`MaKT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ThamGiaKT`
--

LOCK TABLES `ThamGiaKT` WRITE;
/*!40000 ALTER TABLE `ThamGiaKT` DISABLE KEYS */;
INSERT INTO `ThamGiaKT` VALUES ('H00000001','KT001','2024-12-30 00:00:00','Nộp thành công'),('H00000002','KT001','2024-12-30 00:00:00','Nộp thành công'),('H00000003','KT001','2024-12-30 00:00:00','Nộp thành công'),('H00000004','KT001','2024-12-30 00:00:00','Nộp thành công'),('H00000005','KT001','2024-12-30 00:00:00','Nộp thành công'),('H00000006','KT002','2025-04-29 00:00:00','Nộp thành công'),('H00000007','KT002','2025-04-29 00:00:00','Nộp thành công'),('H00000008','KT002','2025-04-29 00:00:00','Nộp thành công'),('H00000009','KT002','2025-04-29 00:00:00','Nộp thành công'),('H00000010','KT002','2025-04-29 00:00:00','Nộp thành công'),('H00000011','KT003','2024-10-30 00:00:00','Nộp thành công'),('H00000012','KT003','2024-10-30 00:00:00','Nộp thành công'),('H00000013','KT003','2024-10-30 00:00:00','Nộp thành công'),('H00000014','KT003','2024-10-30 00:00:00','Nộp thành công'),('H00000015','KT003','2024-10-30 00:00:00','Nộp thành công'),('H00000016','KT004','2024-12-30 00:00:00','Nộp thành công'),('H00000017','KT004','2024-12-30 00:00:00','Nộp thành công'),('H00000018','KT004','2024-12-30 00:00:00','Nộp thành công'),('H00000019','KT004','2024-12-30 00:00:00','Nộp thành công'),('H00000020','KT004','2024-12-30 00:00:00','Nộp thành công'),('H00000021','KT005','2025-04-29 00:00:00','Nộp thành công'),('H00000022','KT005','2025-04-29 00:00:00','Nộp thành công'),('H00000023','KT005','2025-04-29 00:00:00','Nộp thành công'),('H00000024','KT005','2025-04-29 00:00:00','Nộp thành công'),('H00000025','KT005','2025-04-29 00:00:00','Nộp thành công'),('H00000026','KT006','2025-06-29 00:00:00','Nộp thành công'),('H00000027','KT006','2025-06-29 00:00:00','Nộp thành công'),('H00000028','KT006','2025-06-29 00:00:00','Nộp thành công'),('H00000029','KT006','2025-06-29 00:00:00','Nộp thành công'),('H00000030','KT006','2025-06-29 00:00:00','Nộp thành công'),('H00000031','KT007','2025-01-30 00:00:00','Nộp thành công'),('H00000032','KT007','2025-01-30 00:00:00','Nộp thành công'),('H00000033','KT007','2025-01-30 00:00:00','Nộp thành công'),('H00000034','KT007','2025-01-30 00:00:00','Nộp thành công'),('H00000035','KT007','2025-01-30 00:00:00','Nộp thành công'),('H00000036','KT008','2025-01-30 00:00:00','Nộp thành công'),('H00000037','KT008','2025-01-30 00:00:00','Nộp thành công'),('H00000038','KT008','2025-01-30 00:00:00','Nộp thành công'),('H00000039','KT008','2025-01-30 00:00:00','Nộp thành công'),('H00000040','KT008','2025-01-30 00:00:00','Nộp thành công'),('H00000041','KT009','2025-04-29 00:00:00','Nộp thành công'),('H00000042','KT009','2025-04-29 00:00:00','Nộp thành công'),('H00000043','KT009','2025-04-29 00:00:00','Nộp thành công'),('H00000044','KT009','2025-04-29 00:00:00','Nộp thành công'),('H00000045','KT009','2025-04-29 00:00:00','Nộp thành công'),('H00000046','KT010','2025-07-30 00:00:00','Nộp thành công'),('H00000047','KT010','2025-07-30 00:00:00','Nộp thành công'),('H00000048','KT010','2025-07-30 00:00:00','Nộp thành công'),('H00000049','KT010','2025-07-30 00:00:00','Nộp thành công'),('H00000050','KT010','2025-07-30 00:00:00','Nộp thành công'),('H00000051','KT011','2025-01-30 00:00:00','Nộp thành công'),('H00000052','KT011','2025-01-30 00:00:00','Nộp thành công'),('H00000053','KT011','2025-01-30 00:00:00','Nộp thành công'),('H00000054','KT011','2025-01-30 00:00:00','Nộp thành công'),('H00000055','KT011','2025-01-30 00:00:00','Nộp thành công'),('H00000056','KT012','2025-02-27 00:00:00','Nộp thành công'),('H00000057','KT012','2025-02-27 00:00:00','Nộp thành công'),('H00000058','KT012','2025-02-27 00:00:00','Nộp thành công'),('H00000059','KT012','2025-02-27 00:00:00','Nộp thành công'),('H00000060','KT012','2025-02-27 00:00:00','Nộp thành công'),('H00000061','KT013','2025-02-27 00:00:00','Nộp thành công'),('H00000062','KT013','2025-02-27 00:00:00','Nộp thành công'),('H00000063','KT013','2025-02-27 00:00:00','Nộp thành công'),('H00000064','KT013','2025-02-27 00:00:00','Nộp thành công'),('H00000065','KT013','2025-02-27 00:00:00','Nộp thành công'),('H00000066','KT014','2025-04-29 00:00:00','Nộp thành công'),('H00000067','KT014','2025-04-29 00:00:00','Nộp thành công'),('H00000068','KT014','2025-04-29 00:00:00','Nộp thành công'),('H00000069','KT014','2025-04-29 00:00:00','Nộp thành công'),('H00000070','KT014','2025-04-29 00:00:00','Nộp thành công'),('H00000071','KT015','2025-02-27 00:00:00','Nộp thành công'),('H00000072','KT015','2025-02-27 00:00:00','Nộp thành công'),('H00000073','KT015','2025-02-27 00:00:00','Nộp thành công'),('H00000074','KT015','2025-02-27 00:00:00','Nộp thành công'),('H00000075','KT015','2025-02-27 00:00:00','Nộp thành công'),('H00000076','KT016','2025-06-29 00:00:00','Nộp thành công'),('H00000077','KT016','2025-06-29 00:00:00','Nộp thành công'),('H00000078','KT016','2025-06-29 00:00:00','Nộp thành công'),('H00000079','KT016','2025-06-29 00:00:00','Nộp thành công'),('H00000080','KT016','2025-06-29 00:00:00','Nộp thành công'),('H00000081','KT017','2025-03-30 00:00:00','Nộp thành công'),('H00000082','KT017','2025-03-30 00:00:00','Nộp thành công'),('H00000083','KT017','2025-03-30 00:00:00','Nộp thành công'),('H00000084','KT017','2025-03-30 00:00:00','Nộp thành công'),('H00000085','KT017','2025-03-30 00:00:00','Nộp thành công'),('H00000086','KT018','2025-07-30 00:00:00','Nộp thành công'),('H00000087','KT018','2025-07-30 00:00:00','Nộp thành công'),('H00000088','KT018','2025-07-30 00:00:00','Nộp thành công'),('H00000089','KT018','2025-07-30 00:00:00','Nộp thành công'),('H00000090','KT018','2025-07-30 00:00:00','Nộp thành công'),('H00000091','KT019','2024-12-30 00:00:00','Nộp thành công'),('H00000092','KT019','2024-12-30 00:00:00','Nộp thành công'),('H00000093','KT019','2024-12-30 00:00:00','Nộp thành công'),('H00000094','KT019','2024-12-30 00:00:00','Nộp thành công'),('H00000095','KT019','2024-12-30 00:00:00','Nộp thành công'),('H00000096','KT020','2025-03-30 00:00:00','Nộp thành công'),('H00000097','KT020','2025-03-30 00:00:00','Nộp thành công'),('H00000098','KT020','2025-03-30 00:00:00','Nộp thành công'),('H00000099','KT020','2025-03-30 00:00:00','Nộp thành công'),('H00000100','KT020','2025-03-30 00:00:00','Nộp thành công');
/*!40000 ALTER TABLE `ThamGiaKT` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-02 22:05:01

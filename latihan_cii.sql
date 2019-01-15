-- MySQL dump 10.16  Distrib 10.1.29-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: latihan_cii
-- ------------------------------------------------------
-- Server version	10.1.29-MariaDB

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id_admin` int(3) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anggota`
--

DROP TABLE IF EXISTS `anggota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anggota` (
  `id_anggota` int(10) NOT NULL,
  `nim` char(8) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `no_hp` char(12) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_anggota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anggota`
--

LOCK TABLES `anggota` WRITE;
/*!40000 ALTER TABLE `anggota` DISABLE KEYS */;
INSERT INTO `anggota` VALUES (20001,'12177764','budi santosa','89608960896',NULL,'cilebut'),(20002,'12177765','yuda','89608960897',NULL,'bogor'),(20003,'12177766','aldi','89608960898',NULL,'dramaga'),(20004,'12177767','rahma','89608960899',NULL,'ciampea'),(20005,'12177768','wati','89608960900',NULL,'ciomas'),(20006,'12177769','adnin','89608960901',NULL,'kebon pedes'),(20007,'12177770','rizal','89608960902',NULL,'ciluar'),(20008,'12177771','yazid','89608960903',NULL,'cilebut'),(20009,'12177772','yuyun','89608960904',NULL,'bogor');
/*!40000 ALTER TABLE `anggota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anggotabelum`
--

DROP TABLE IF EXISTS `anggotabelum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anggotabelum` (
  `id_anggota` int(5) NOT NULL AUTO_INCREMENT,
  `nama_depan` varchar(20) NOT NULL,
  `nama_belakang` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_kontak` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  PRIMARY KEY (`id_anggota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anggotabelum`
--

LOCK TABLES `anggotabelum` WRITE;
/*!40000 ALTER TABLE `anggotabelum` DISABLE KEYS */;
/*!40000 ALTER TABLE `anggotabelum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anggotasudah`
--

DROP TABLE IF EXISTS `anggotasudah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anggotasudah` (
  `id_anggota` int(5) NOT NULL AUTO_INCREMENT,
  `nama_depan` varchar(20) NOT NULL,
  `nama_belakang` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_kontak` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  PRIMARY KEY (`id_anggota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anggotasudah`
--

LOCK TABLES `anggotasudah` WRITE;
/*!40000 ALTER TABLE `anggotasudah` DISABLE KEYS */;
/*!40000 ALTER TABLE `anggotasudah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buku`
--

DROP TABLE IF EXISTS `buku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buku` (
  `kd_buku` int(10) NOT NULL,
  `jd_buku` varchar(50) DEFAULT NULL,
  `pengarang` varchar(50) DEFAULT NULL,
  `penerbit` varchar(50) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `th_terbit` date DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `noid` int(8) DEFAULT NULL,
  PRIMARY KEY (`kd_buku`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buku`
--

LOCK TABLES `buku` WRITE;
/*!40000 ALTER TABLE `buku` DISABLE KEYS */;
INSERT INTO `buku` VALUES (111,'BERANAK DALAM KUBUR','AGUNG','AGUNG',3,'2019-01-15',NULL,NULL);
/*!40000 ALTER TABLE `buku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bukuto`
--

DROP TABLE IF EXISTS `bukuto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bukuto` (
  `kd_buku` int(10) NOT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `pengarang` varchar(50) DEFAULT NULL,
  `penerbit` varchar(50) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `th_terbit` int(11) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  PRIMARY KEY (`kd_buku`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bukuto`
--

LOCK TABLES `bukuto` WRITE;
/*!40000 ALTER TABLE `bukuto` DISABLE KEYS */;
INSERT INTO `bukuto` VALUES (10001,'pemograman visual','tatang sutarbi','abdi jaya',10,2017,1),(10002,'pemograman visual','tatang sutarbi','abdi jaya',10,2017,1),(10003,'pemograman visual','tatang sutarbi','abdi jaya',10,2017,1),(10004,'pemograman visual','tatang sutarbi ','abdi jaya',10,2017,1),(10005,'pemograman visual','tatang sutarbi','abdi jaya',10,2017,1),(10006,'pemograman visual','jonsen','abdi jaya',10,2017,1),(10007,'pemograman visual','jonsen','abdi jaya',10,2017,1),(10008,'pemograman visual','jonsen','abdi jaya',10,2017,1);
/*!40000 ALTER TABLE `bukuto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daftar`
--

DROP TABLE IF EXISTS `daftar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daftar` (
  `id_akun` int(10) NOT NULL AUTO_INCREMENT,
  `nama_depan` varchar(40) NOT NULL,
  `nama_belakang` varchar(50) NOT NULL,
  `alamat_email` varchar(50) NOT NULL,
  `kat_sandi` varchar(50) NOT NULL,
  `konfirmasi_kata-sandi` varchar(50) NOT NULL,
  PRIMARY KEY (`id_akun`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daftar`
--

LOCK TABLES `daftar` WRITE;
/*!40000 ALTER TABLE `daftar` DISABLE KEYS */;
/*!40000 ALTER TABLE `daftar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laporan`
--

DROP TABLE IF EXISTS `laporan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laporan` (
  `noid` int(5) NOT NULL AUTO_INCREMENT,
  `kodos` varchar(10) NOT NULL,
  `nama_dosen` varchar(10) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL DEFAULT '0000-00-00',
  `time` time NOT NULL,
  `matkul` varchar(10) NOT NULL,
  `paraf` tinytext,
  PRIMARY KEY (`noid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laporan`
--

LOCK TABLES `laporan` WRITE;
/*!40000 ALTER TABLE `laporan` DISABLE KEYS */;
INSERT INTO `laporan` VALUES (6,'020296','ari ramdan','1996-02-02','14:02:00','NGOPI','KECE BANGET');
/*!40000 ALTER TABLE `laporan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pinjam`
--

DROP TABLE IF EXISTS `pinjam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pinjam` (
  `kd_transaksi` int(10) NOT NULL,
  `id_anggota` int(10) DEFAULT NULL,
  `kd_buku` int(10) DEFAULT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `jml_pinjam` int(11) DEFAULT NULL,
  `denda` int(11) DEFAULT NULL,
  PRIMARY KEY (`kd_transaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pinjam`
--

LOCK TABLES `pinjam` WRITE;
/*!40000 ALTER TABLE `pinjam` DISABLE KEYS */;
INSERT INTO `pinjam` VALUES (30001,20001,10001,NULL,NULL,2,0),(30002,20002,10002,NULL,NULL,2,0),(30003,20003,10003,NULL,NULL,2,0),(30004,20004,10004,NULL,NULL,2,0),(30005,20005,10005,NULL,NULL,2,0),(30006,20006,10006,NULL,NULL,2,0),(30007,20007,10007,NULL,NULL,2,0),(30008,20008,10008,NULL,NULL,2,0),(30009,20009,10009,NULL,NULL,2,0);
/*!40000 ALTER TABLE `pinjam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `v_userpinjam`
--

DROP TABLE IF EXISTS `v_userpinjam`;

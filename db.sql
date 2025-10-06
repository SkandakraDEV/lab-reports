-- MySQL dump 10.13  Distrib 8.0.42, for Linux (x86_64)
--
-- Host: localhost    Database: ceklab
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_laporan_labs`
--

DROP TABLE IF EXISTS `detail_laporan_labs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_laporan_labs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `laporan_lab_id` bigint unsigned NOT NULL,
  `lab_id` bigint unsigned NOT NULL,
  `pc_id` bigint unsigned NOT NULL,
  `has_monitor` tinyint(1) NOT NULL DEFAULT '1',
  `has_keyboard` tinyint(1) NOT NULL DEFAULT '1',
  `has_mouse` tinyint(1) NOT NULL DEFAULT '1',
  `has_pc` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `detail_laporan_labs_laporan_lab_id_foreign` (`laporan_lab_id`),
  KEY `detail_laporan_labs_lab_id_foreign` (`lab_id`),
  KEY `detail_laporan_labs_pc_id_foreign` (`pc_id`),
  CONSTRAINT `detail_laporan_labs_lab_id_foreign` FOREIGN KEY (`lab_id`) REFERENCES `labs` (`id`) ON DELETE CASCADE,
  CONSTRAINT `detail_laporan_labs_laporan_lab_id_foreign` FOREIGN KEY (`laporan_lab_id`) REFERENCES `laporan_labs` (`id`) ON DELETE CASCADE,
  CONSTRAINT `detail_laporan_labs_pc_id_foreign` FOREIGN KEY (`pc_id`) REFERENCES `pcs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_laporan_labs`
--

LOCK TABLES `detail_laporan_labs` WRITE;
/*!40000 ALTER TABLE `detail_laporan_labs` DISABLE KEYS */;
/*!40000 ALTER TABLE `detail_laporan_labs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gurus`
--

DROP TABLE IF EXISTS `gurus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gurus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gurus`
--

LOCK TABLES `gurus` WRITE;
/*!40000 ALTER TABLE `gurus` DISABLE KEYS */;
INSERT INTO `gurus` VALUES (1,'Arief Kurniawan, ST.','2025-07-12 16:09:57','2025-07-12 16:09:57'),(2,'Budi Sulistiyo, S.Kom., M.Kom.','2025-07-12 16:09:57','2025-07-12 16:09:57'),(3,'Atik Retnoningsih, S.Kom.','2025-07-12 16:09:57','2025-07-12 16:09:57'),(4,'Dwi Nuryani, S.Kom.','2025-07-12 16:09:57','2025-07-12 16:09:57'),(5,'Carolin Windiasri, S.Pd.','2025-07-12 16:09:57','2025-07-12 16:09:57'),(6,'Agung Wiratmo, S.Pd.','2025-07-12 16:09:57','2025-07-12 16:09:57'),(7,'Teguh Priyanto, S.Pd.T.','2025-07-12 16:09:57','2025-07-12 16:09:57'),(8,'Tri Ani Sulistyo Wardani, S.Kom.','2025-07-12 16:09:57','2025-07-12 16:09:57'),(9,'Tina Fajrin, S.Pd., S.Kom.','2025-07-12 16:09:57','2025-07-12 16:09:57'),(10,'Liana Masitoh, S.Kom.','2025-07-12 16:09:57','2025-07-12 16:09:57'),(11,'Afif Nuruddin Maisaroh, S.Pd.','2025-07-12 16:09:57','2025-07-12 16:09:57');
/*!40000 ALTER TABLE `gurus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labs`
--

DROP TABLE IF EXISTS `labs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `labs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `used` tinyint(1) NOT NULL,
  `network` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `time_usage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `labs_user_id_foreign` (`user_id`),
  CONSTRAINT `labs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labs`
--

LOCK TABLES `labs` WRITE;
/*!40000 ALTER TABLE `labs` DISABLE KEYS */;
INSERT INTO `labs` VALUES (1,'Lab 1',1,0,1,NULL,'2025-07-12 16:09:45','2025-10-03 09:54:09',NULL),(2,'Lab 2',1,0,1,NULL,'2025-07-12 16:09:45','2025-07-12 16:09:45',NULL),(3,'Lab 3',1,0,1,NULL,'2025-07-12 16:09:45','2025-07-12 16:09:45',NULL),(4,'Lab 4',1,0,1,NULL,'2025-07-12 16:09:45','2025-10-03 09:54:09',NULL),(5,'Lab 5',1,0,1,NULL,'2025-07-12 16:09:45','2025-07-12 16:09:45',NULL),(6,'Lab 6',1,0,1,NULL,'2025-07-12 16:09:45','2025-10-03 09:54:09',NULL),(7,'Lab Informatika',1,0,1,NULL,'2025-07-12 16:09:45','2025-07-12 16:09:45',NULL);
/*!40000 ALTER TABLE `labs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laporan_labs`
--

DROP TABLE IF EXISTS `laporan_labs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laporan_labs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lab_id` bigint unsigned NOT NULL,
  `guru_id` bigint unsigned NOT NULL,
  `mapel_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `network` tinyint(1) NOT NULL DEFAULT '1',
  `exp` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `laporan_labs_lab_id_foreign` (`lab_id`),
  KEY `laporan_labs_guru_id_foreign` (`guru_id`),
  KEY `laporan_labs_mapel_id_foreign` (`mapel_id`),
  KEY `laporan_labs_user_id_foreign` (`user_id`),
  CONSTRAINT `laporan_labs_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `gurus` (`id`) ON DELETE CASCADE,
  CONSTRAINT `laporan_labs_lab_id_foreign` FOREIGN KEY (`lab_id`) REFERENCES `labs` (`id`) ON DELETE CASCADE,
  CONSTRAINT `laporan_labs_mapel_id_foreign` FOREIGN KEY (`mapel_id`) REFERENCES `mapels` (`id`) ON DELETE CASCADE,
  CONSTRAINT `laporan_labs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laporan_labs`
--

LOCK TABLES `laporan_labs` WRITE;
/*!40000 ALTER TABLE `laporan_labs` DISABLE KEYS */;
/*!40000 ALTER TABLE `laporan_labs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapels`
--

DROP TABLE IF EXISTS `mapels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mapels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guru_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mapels_guru_id_foreign` (`guru_id`),
  CONSTRAINT `mapels_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `gurus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapels`
--

LOCK TABLES `mapels` WRITE;
/*!40000 ALTER TABLE `mapels` DISABLE KEYS */;
INSERT INTO `mapels` VALUES (2,'Mapel Pilihan (Sistem Informasi)',2,'2025-07-12 16:09:57','2025-07-12 16:09:57'),(6,'Pemrograman Perangkat Bergerak',5,'2025-07-12 16:09:57','2025-07-12 16:09:57'),(7,'Dasar-Dasar Program Keahlian PPLG',6,'2025-07-12 16:09:57','2025-07-12 16:09:57'),(18,'Dasar-Dasar Program Keahlian PPLG',1,'2025-10-03 05:49:43','2025-10-03 05:49:43'),(19,'Database - Konsentrasi RPL',1,'2025-10-03 05:49:43','2025-10-03 05:49:43'),(20,'Project Kreatif dan Kewirausahaan',3,'2025-10-03 05:50:43','2025-10-03 05:50:43'),(21,'Pemrograman Web - Konsentrasi RPL',4,'2025-10-03 05:51:12','2025-10-03 05:51:12'),(27,'Informatika',7,'2025-10-03 05:53:50','2025-10-03 05:53:50'),(28,'Pemrograman Berbasis Teks, Grafis dan Multimedia',7,'2025-10-03 05:53:50','2025-10-03 05:53:50'),(29,'Koding dan Kecerdasan Artifisial',7,'2025-10-03 05:53:50','2025-10-03 05:53:50'),(30,'Proyek Kreatif dan Kewirausahaan',7,'2025-10-03 05:53:50','2025-10-03 05:53:50'),(31,'Informatika',8,'2025-10-03 05:54:38','2025-10-03 05:54:38'),(32,'Koding dan Kecerdasan Artifisial',8,'2025-10-03 05:54:38','2025-10-03 05:54:38'),(33,'Pemrograman Berbasis Teks, Grafis dan Multimedia',8,'2025-10-03 05:54:38','2025-10-03 05:54:38'),(34,'Informatika',9,'2025-10-03 05:55:30','2025-10-03 05:55:30'),(35,'Koding dan Kecerdasan Artifisial',9,'2025-10-03 05:55:30','2025-10-03 05:55:30'),(36,'Pemrograman Berbasis Teks, Grafis dan Multimedia',9,'2025-10-03 05:55:30','2025-10-03 05:55:30'),(37,'Informatika',10,'2025-10-03 05:56:21','2025-10-03 05:56:21'),(38,'Koding dan Kecerdasan Artifisial',10,'2025-10-03 05:56:21','2025-10-03 05:56:21'),(39,'Database - Konsentrasi RPL',10,'2025-10-03 05:56:21','2025-10-03 05:56:21'),(45,'Informatika',11,'2025-10-03 05:57:43','2025-10-03 05:57:43'),(46,'Pemrograman Web - Konsentrasi RPL',11,'2025-10-03 05:57:43','2025-10-03 05:57:43'),(47,'Koding dan Kecerdasan Artifisial',11,'2025-10-03 05:57:43','2025-10-03 05:57:43'),(48,'Pemrograman Backend dan Frontend - Mapel Pilihan',11,'2025-10-03 05:57:43','2025-10-03 05:57:43');
/*!40000 ALTER TABLE `mapels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2024_11_22_091120_create_labs_table',1),(5,'2024_11_22_091125_create_pcs_table',1),(6,'2024_11_27_114327_create_gurus_table',1),(7,'2024_11_27_114437_create_mapels_table',1),(8,'2024_11_28_042013_create_laporan_labs_table',1),(9,'2024_11_28_213352_create_detail_laporan_labs_table',1),(10,'2025_02_20_073434_add_time_usege_to_labs',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pcs`
--

DROP TABLE IF EXISTS `pcs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pcs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_monitor` tinyint(1) NOT NULL DEFAULT '1',
  `has_keyboard` tinyint(1) NOT NULL DEFAULT '1',
  `has_mouse` tinyint(1) NOT NULL DEFAULT '1',
  `has_pc` tinyint(1) NOT NULL DEFAULT '1',
  `lab_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pcs_lab_id_foreign` (`lab_id`),
  CONSTRAINT `pcs_lab_id_foreign` FOREIGN KEY (`lab_id`) REFERENCES `labs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pcs`
--

LOCK TABLES `pcs` WRITE;
/*!40000 ALTER TABLE `pcs` DISABLE KEYS */;
INSERT INTO `pcs` VALUES (1,'PC 1',1,1,1,1,1,'2025-07-12 16:09:45','2025-07-12 16:09:45'),(2,'PC 2',1,1,1,1,1,'2025-07-12 16:09:45','2025-07-12 16:09:45'),(3,'PC 3',1,1,1,1,1,'2025-07-12 16:09:45','2025-07-12 16:09:45'),(4,'PC 4',1,1,1,1,1,'2025-07-12 16:09:45','2025-07-12 16:09:45'),(5,'PC 5',1,1,1,1,1,'2025-07-12 16:09:45','2025-07-12 16:09:45'),(6,'PC 6',1,1,1,1,1,'2025-07-12 16:09:45','2025-07-12 16:09:45'),(7,'PC 7',1,1,1,1,1,'2025-07-12 16:09:45','2025-07-12 16:09:45'),(8,'PC 8',1,1,1,1,1,'2025-07-12 16:09:45','2025-07-12 16:09:45'),(9,'PC 9',1,1,1,1,1,'2025-07-12 16:09:45','2025-07-12 16:09:45'),(10,'PC 10',1,1,1,1,1,'2025-07-12 16:09:45','2025-07-12 16:09:45'),(11,'PC 11',1,1,1,1,1,'2025-07-12 16:09:45','2025-07-12 16:09:45'),(12,'PC 12',1,1,1,1,1,'2025-07-12 16:09:45','2025-07-12 16:09:45'),(13,'PC 13',1,1,1,1,1,'2025-07-12 16:09:46','2025-07-12 16:09:46'),(14,'PC 14',1,1,1,1,1,'2025-07-12 16:09:46','2025-07-12 16:09:46'),(15,'PC 15',1,1,1,1,1,'2025-07-12 16:09:46','2025-07-12 16:09:46'),(16,'PC 16',1,1,1,1,1,'2025-07-12 16:09:46','2025-07-12 16:09:46'),(17,'PC 17',1,1,1,1,1,'2025-07-12 16:09:46','2025-07-12 16:09:46'),(18,'PC 18',1,1,1,1,1,'2025-07-12 16:09:46','2025-07-12 16:09:46'),(19,'PC 19',1,1,1,1,1,'2025-07-12 16:09:46','2025-07-12 16:09:46'),(20,'PC 20',1,1,1,1,1,'2025-07-12 16:09:46','2025-07-12 16:09:46'),(21,'PC 21',1,1,1,1,1,'2025-07-12 16:09:46','2025-07-12 16:09:46'),(22,'PC 22',1,1,1,1,1,'2025-07-12 16:09:46','2025-07-12 16:09:46'),(23,'PC 23',1,1,1,1,1,'2025-07-12 16:09:46','2025-07-12 16:09:46'),(24,'PC 24',1,1,1,1,1,'2025-07-12 16:09:46','2025-07-12 16:09:46'),(25,'PC 25',1,1,1,1,1,'2025-07-12 16:09:46','2025-07-12 16:09:46'),(26,'PC 26',1,1,1,1,1,'2025-07-12 16:09:46','2025-07-12 16:09:46'),(27,'PC 27',1,1,1,1,1,'2025-07-12 16:09:46','2025-07-12 16:09:46'),(28,'PC 28',1,1,1,1,1,'2025-07-12 16:09:46','2025-07-12 16:09:46'),(29,'PC 29',1,1,1,1,1,'2025-07-12 16:09:46','2025-07-12 16:09:46'),(30,'PC 30',1,1,1,1,1,'2025-07-12 16:09:46','2025-07-12 16:09:46'),(31,'PC 31',1,1,1,1,1,'2025-07-12 16:09:46','2025-07-12 16:09:46'),(32,'PC 32',1,1,1,1,1,'2025-07-12 16:09:46','2025-07-12 16:09:46'),(33,'PC 33',1,1,1,1,1,'2025-07-12 16:09:46','2025-07-12 16:09:46'),(34,'PC 34',1,1,1,1,1,'2025-07-12 16:09:46','2025-07-12 16:09:46'),(35,'PC 35',1,1,1,1,1,'2025-07-12 16:09:46','2025-07-12 16:09:46'),(36,'PC 36',1,1,1,1,1,'2025-07-12 16:09:47','2025-07-12 16:09:47'),(37,'PC 1',1,1,1,1,2,'2025-07-12 16:09:47','2025-07-12 16:09:47'),(38,'PC 2',1,1,1,1,2,'2025-07-12 16:09:47','2025-07-12 16:09:47'),(39,'PC 3',1,1,1,1,2,'2025-07-12 16:09:47','2025-07-12 16:09:47'),(40,'PC 4',1,1,1,1,2,'2025-07-12 16:09:47','2025-07-12 16:09:47'),(41,'PC 5',1,1,1,1,2,'2025-07-12 16:09:47','2025-07-12 16:09:47'),(42,'PC 6',1,1,1,1,2,'2025-07-12 16:09:47','2025-07-12 16:09:47'),(43,'PC 7',1,1,1,1,2,'2025-07-12 16:09:47','2025-07-12 16:09:47'),(44,'PC 8',1,1,1,1,2,'2025-07-12 16:09:47','2025-07-12 16:09:47'),(45,'PC 9',1,1,1,1,2,'2025-07-12 16:09:47','2025-07-12 16:09:47'),(46,'PC 10',1,1,1,1,2,'2025-07-12 16:09:47','2025-07-12 16:09:47'),(47,'PC 11',1,1,1,1,2,'2025-07-12 16:09:47','2025-07-12 16:09:47'),(48,'PC 12',1,1,1,1,2,'2025-07-12 16:09:47','2025-07-12 16:09:47'),(49,'PC 13',1,1,1,1,2,'2025-07-12 16:09:47','2025-07-12 16:09:47'),(50,'PC 14',1,1,1,1,2,'2025-07-12 16:09:47','2025-07-12 16:09:47'),(51,'PC 15',1,1,1,1,2,'2025-07-12 16:09:47','2025-07-12 16:09:47'),(52,'PC 16',1,1,1,1,2,'2025-07-12 16:09:47','2025-07-12 16:09:47'),(53,'PC 17',1,1,1,1,2,'2025-07-12 16:09:47','2025-07-12 16:09:47'),(54,'PC 18',1,1,1,1,2,'2025-07-12 16:09:47','2025-07-12 16:09:47'),(55,'PC 19',1,1,1,1,2,'2025-07-12 16:09:47','2025-07-12 16:09:47'),(56,'PC 20',1,1,1,1,2,'2025-07-12 16:09:47','2025-07-12 16:09:47'),(57,'PC 21',1,1,1,1,2,'2025-07-12 16:09:47','2025-07-12 16:09:47'),(58,'PC 22',1,1,1,1,2,'2025-07-12 16:09:48','2025-07-12 16:09:48'),(59,'PC 23',1,1,1,1,2,'2025-07-12 16:09:48','2025-07-12 16:09:48'),(60,'PC 24',1,1,1,1,2,'2025-07-12 16:09:48','2025-07-12 16:09:48'),(61,'PC 25',1,1,1,1,2,'2025-07-12 16:09:48','2025-07-12 16:09:48'),(62,'PC 26',1,1,1,1,2,'2025-07-12 16:09:48','2025-07-12 16:09:48'),(63,'PC 27',1,1,1,1,2,'2025-07-12 16:09:48','2025-07-12 16:09:48'),(64,'PC 28',1,1,1,1,2,'2025-07-12 16:09:48','2025-07-12 16:09:48'),(65,'PC 29',1,1,1,1,2,'2025-07-12 16:09:48','2025-07-12 16:09:48'),(66,'PC 30',1,1,1,1,2,'2025-07-12 16:09:48','2025-07-12 16:09:48'),(67,'PC 31',1,1,1,1,2,'2025-07-12 16:09:48','2025-07-12 16:09:48'),(68,'PC 32',1,1,1,1,2,'2025-07-12 16:09:48','2025-07-12 16:09:48'),(69,'PC 33',1,1,1,1,2,'2025-07-12 16:09:48','2025-07-12 16:09:48'),(70,'PC 34',1,1,1,1,2,'2025-07-12 16:09:48','2025-07-12 16:09:48'),(71,'PC 35',1,1,1,1,2,'2025-07-12 16:09:48','2025-07-12 16:09:48'),(72,'PC 36',1,1,1,1,2,'2025-07-12 16:09:48','2025-07-12 16:09:48'),(73,'PC 1',1,1,1,1,3,'2025-07-12 16:09:48','2025-07-12 16:09:48'),(74,'PC 2',1,1,1,1,3,'2025-07-12 16:09:48','2025-07-12 16:09:48'),(75,'PC 3',1,1,1,1,3,'2025-07-12 16:09:48','2025-07-12 16:09:48'),(76,'PC 4',1,1,1,1,3,'2025-07-12 16:09:48','2025-07-12 16:09:48'),(77,'PC 5',1,1,1,1,3,'2025-07-12 16:09:48','2025-07-12 16:09:48'),(78,'PC 6',1,1,1,1,3,'2025-07-12 16:09:48','2025-07-12 16:09:48'),(79,'PC 7',1,1,1,1,3,'2025-07-12 16:09:48','2025-07-12 16:09:48'),(80,'PC 8',1,1,1,1,3,'2025-07-12 16:09:48','2025-07-12 16:09:48'),(81,'PC 9',1,1,1,1,3,'2025-07-12 16:09:48','2025-07-12 16:09:48'),(82,'PC 10',1,1,1,1,3,'2025-07-12 16:09:49','2025-07-12 16:09:49'),(83,'PC 11',1,1,1,1,3,'2025-07-12 16:09:49','2025-07-12 16:09:49'),(84,'PC 12',1,1,1,1,3,'2025-07-12 16:09:49','2025-07-12 16:09:49'),(85,'PC 13',1,1,1,1,3,'2025-07-12 16:09:49','2025-07-12 16:09:49'),(86,'PC 14',1,1,1,1,3,'2025-07-12 16:09:49','2025-07-12 16:09:49'),(87,'PC 15',1,1,1,1,3,'2025-07-12 16:09:49','2025-07-12 16:09:49'),(88,'PC 16',1,1,1,1,3,'2025-07-12 16:09:49','2025-07-12 16:09:49'),(89,'PC 17',1,1,1,1,3,'2025-07-12 16:09:49','2025-07-12 16:09:49'),(90,'PC 18',1,1,1,1,3,'2025-07-12 16:09:49','2025-07-12 16:09:49'),(91,'PC 19',1,1,1,1,3,'2025-07-12 16:09:49','2025-07-12 16:09:49'),(92,'PC 20',1,1,1,1,3,'2025-07-12 16:09:49','2025-07-12 16:09:49'),(93,'PC 21',1,1,1,1,3,'2025-07-12 16:09:49','2025-07-12 16:09:49'),(94,'PC 22',1,1,1,1,3,'2025-07-12 16:09:49','2025-07-12 16:09:49'),(95,'PC 23',1,1,1,1,3,'2025-07-12 16:09:49','2025-07-12 16:09:49'),(96,'PC 24',1,1,1,1,3,'2025-07-12 16:09:49','2025-07-12 16:09:49'),(97,'PC 25',1,1,1,1,3,'2025-07-12 16:09:49','2025-07-12 16:09:49'),(98,'PC 26',1,1,1,1,3,'2025-07-12 16:09:49','2025-07-12 16:09:49'),(99,'PC 27',1,1,1,1,3,'2025-07-12 16:09:49','2025-07-12 16:09:49'),(100,'PC 28',1,1,1,1,3,'2025-07-12 16:09:49','2025-07-12 16:09:49'),(101,'PC 29',1,1,1,1,3,'2025-07-12 16:09:49','2025-07-12 16:09:49'),(102,'PC 30',1,1,1,1,3,'2025-07-12 16:09:50','2025-07-12 16:09:50'),(103,'PC 31',1,1,1,1,3,'2025-07-12 16:09:50','2025-07-12 16:09:50'),(104,'PC 32',1,1,1,1,3,'2025-07-12 16:09:50','2025-07-12 16:09:50'),(105,'PC 33',1,1,1,1,3,'2025-07-12 16:09:50','2025-07-12 16:09:50'),(106,'PC 34',1,1,1,1,3,'2025-07-12 16:09:50','2025-07-12 16:09:50'),(107,'PC 35',1,1,1,1,3,'2025-07-12 16:09:50','2025-07-12 16:09:50'),(108,'PC 36',1,1,1,1,3,'2025-07-12 16:09:50','2025-07-12 16:09:50'),(109,'PC 1',1,1,1,1,4,'2025-07-12 16:09:50','2025-07-12 16:09:50'),(110,'PC 2',1,1,1,1,4,'2025-07-12 16:09:50','2025-07-12 16:09:50'),(111,'PC 3',1,1,1,1,4,'2025-07-12 16:09:50','2025-07-12 16:09:50'),(112,'PC 4',1,1,1,1,4,'2025-07-12 16:09:50','2025-07-12 16:09:50'),(113,'PC 5',1,1,1,1,4,'2025-07-12 16:09:50','2025-07-12 16:09:50'),(114,'PC 6',1,1,1,1,4,'2025-07-12 16:09:50','2025-07-12 16:09:50'),(115,'PC 7',1,1,1,1,4,'2025-07-12 16:09:50','2025-07-12 16:09:50'),(116,'PC 8',1,1,1,1,4,'2025-07-12 16:09:50','2025-07-12 16:09:50'),(117,'PC 9',1,1,1,1,4,'2025-07-12 16:09:50','2025-07-12 16:09:50'),(118,'PC 10',1,1,1,1,4,'2025-07-12 16:09:50','2025-07-12 16:09:50'),(119,'PC 11',1,1,1,1,4,'2025-07-12 16:09:50','2025-07-12 16:09:50'),(120,'PC 12',1,1,1,1,4,'2025-07-12 16:09:50','2025-07-12 16:09:50'),(121,'PC 13',1,1,1,1,4,'2025-07-12 16:09:50','2025-07-12 16:09:50'),(122,'PC 14',1,1,1,1,4,'2025-07-12 16:09:50','2025-07-12 16:09:50'),(123,'PC 15',1,1,1,1,4,'2025-07-12 16:09:50','2025-07-12 16:09:50'),(124,'PC 16',1,1,1,1,4,'2025-07-12 16:09:50','2025-07-12 16:09:50'),(125,'PC 17',1,1,1,1,4,'2025-07-12 16:09:51','2025-07-12 16:09:51'),(126,'PC 18',1,1,1,1,4,'2025-07-12 16:09:51','2025-07-12 16:09:51'),(127,'PC 19',1,1,1,1,4,'2025-07-12 16:09:51','2025-07-12 16:09:51'),(128,'PC 20',1,1,1,1,4,'2025-07-12 16:09:51','2025-07-12 16:09:51'),(129,'PC 21',1,1,1,1,4,'2025-07-12 16:09:51','2025-07-12 16:09:51'),(130,'PC 22',1,1,1,1,4,'2025-07-12 16:09:51','2025-07-12 16:09:51'),(131,'PC 23',1,1,1,1,4,'2025-07-12 16:09:51','2025-07-12 16:09:51'),(132,'PC 24',1,1,1,1,4,'2025-07-12 16:09:51','2025-07-12 16:09:51'),(133,'PC 25',1,1,1,1,4,'2025-07-12 16:09:51','2025-07-12 16:09:51'),(134,'PC 26',1,1,1,1,4,'2025-07-12 16:09:51','2025-07-12 16:09:51'),(135,'PC 27',1,1,1,1,4,'2025-07-12 16:09:51','2025-07-12 16:09:51'),(136,'PC 28',1,1,1,1,4,'2025-07-12 16:09:51','2025-07-12 16:09:51'),(137,'PC 29',1,1,1,1,4,'2025-07-12 16:09:51','2025-07-12 16:09:51'),(138,'PC 30',1,1,1,1,4,'2025-07-12 16:09:51','2025-07-12 16:09:51'),(139,'PC 31',1,1,1,1,4,'2025-07-12 16:09:51','2025-07-12 16:09:51'),(140,'PC 32',1,1,1,1,4,'2025-07-12 16:09:51','2025-07-12 16:09:51'),(141,'PC 33',1,1,1,1,4,'2025-07-12 16:09:51','2025-07-12 16:09:51'),(142,'PC 34',1,1,1,1,4,'2025-07-12 16:09:51','2025-07-12 16:09:51'),(143,'PC 35',1,1,1,1,4,'2025-07-12 16:09:51','2025-07-12 16:09:51'),(144,'PC 36',1,1,1,1,4,'2025-07-12 16:09:51','2025-07-12 16:09:51'),(145,'PC 1',1,1,1,1,5,'2025-07-12 16:09:51','2025-07-12 16:09:51'),(146,'PC 2',1,1,1,1,5,'2025-07-12 16:09:52','2025-07-12 16:09:52'),(147,'PC 3',1,1,1,1,5,'2025-07-12 16:09:52','2025-07-12 16:09:52'),(148,'PC 4',1,1,1,1,5,'2025-07-12 16:09:52','2025-07-12 16:09:52'),(149,'PC 5',1,1,1,1,5,'2025-07-12 16:09:52','2025-07-12 16:09:52'),(150,'PC 6',1,1,1,1,5,'2025-07-12 16:09:52','2025-07-12 16:09:52'),(151,'PC 7',1,1,1,1,5,'2025-07-12 16:09:52','2025-07-12 16:09:52'),(152,'PC 8',1,1,1,1,5,'2025-07-12 16:09:52','2025-07-12 16:09:52'),(153,'PC 9',1,1,1,1,5,'2025-07-12 16:09:52','2025-07-12 16:09:52'),(154,'PC 10',1,1,1,1,5,'2025-07-12 16:09:52','2025-07-12 16:09:52'),(155,'PC 11',1,1,1,1,5,'2025-07-12 16:09:52','2025-07-12 16:09:52'),(156,'PC 12',1,1,1,1,5,'2025-07-12 16:09:52','2025-07-12 16:09:52'),(157,'PC 13',1,1,1,1,5,'2025-07-12 16:09:52','2025-07-12 16:09:52'),(158,'PC 14',1,1,1,1,5,'2025-07-12 16:09:52','2025-07-12 16:09:52'),(159,'PC 15',1,1,1,1,5,'2025-07-12 16:09:52','2025-07-12 16:09:52'),(160,'PC 16',1,1,1,1,5,'2025-07-12 16:09:52','2025-07-12 16:09:52'),(161,'PC 17',1,1,1,1,5,'2025-07-12 16:09:52','2025-07-12 16:09:52'),(162,'PC 18',1,1,1,1,5,'2025-07-12 16:09:52','2025-07-12 16:09:52'),(163,'PC 19',1,1,1,1,5,'2025-07-12 16:09:52','2025-07-12 16:09:52'),(164,'PC 20',1,1,1,1,5,'2025-07-12 16:09:52','2025-07-12 16:09:52'),(165,'PC 21',1,1,1,1,5,'2025-07-12 16:09:53','2025-07-12 16:09:53'),(166,'PC 22',1,1,1,1,5,'2025-07-12 16:09:53','2025-07-12 16:09:53'),(167,'PC 23',1,1,1,1,5,'2025-07-12 16:09:53','2025-07-12 16:09:53'),(168,'PC 24',1,1,1,1,5,'2025-07-12 16:09:53','2025-07-12 16:09:53'),(169,'PC 25',1,1,1,1,5,'2025-07-12 16:09:53','2025-07-12 16:09:53'),(170,'PC 26',1,1,1,1,5,'2025-07-12 16:09:53','2025-07-12 16:09:53'),(171,'PC 27',1,1,1,1,5,'2025-07-12 16:09:53','2025-07-12 16:09:53'),(172,'PC 28',1,1,1,1,5,'2025-07-12 16:09:53','2025-07-12 16:09:53'),(173,'PC 29',1,1,1,1,5,'2025-07-12 16:09:53','2025-07-12 16:09:53'),(174,'PC 30',1,1,1,1,5,'2025-07-12 16:09:53','2025-07-12 16:09:53'),(175,'PC 31',1,1,1,1,5,'2025-07-12 16:09:53','2025-07-12 16:09:53'),(176,'PC 32',1,1,1,1,5,'2025-07-12 16:09:53','2025-07-12 16:09:53'),(177,'PC 33',1,1,1,1,5,'2025-07-12 16:09:53','2025-07-12 16:09:53'),(178,'PC 34',1,1,1,1,5,'2025-07-12 16:09:53','2025-07-12 16:09:53'),(179,'PC 35',1,1,1,1,5,'2025-07-12 16:09:53','2025-07-12 16:09:53'),(180,'PC 36',1,1,1,1,5,'2025-07-12 16:09:53','2025-07-12 16:09:53'),(181,'PC 1',1,1,1,1,6,'2025-07-12 16:09:53','2025-07-12 16:09:53'),(182,'PC 2',1,1,1,1,6,'2025-07-12 16:09:53','2025-07-12 16:09:53'),(183,'PC 3',1,1,1,1,6,'2025-07-12 16:09:53','2025-07-12 16:09:53'),(184,'PC 4',1,1,1,1,6,'2025-07-12 16:09:53','2025-07-12 16:09:53'),(185,'PC 5',1,1,1,1,6,'2025-07-12 16:09:54','2025-07-12 16:09:54'),(186,'PC 6',1,1,1,1,6,'2025-07-12 16:09:54','2025-07-12 16:09:54'),(187,'PC 7',1,1,1,1,6,'2025-07-12 16:09:54','2025-07-12 16:09:54'),(188,'PC 8',1,1,1,1,6,'2025-07-12 16:09:54','2025-07-12 16:09:54'),(189,'PC 9',1,1,1,1,6,'2025-07-12 16:09:54','2025-07-12 16:09:54'),(190,'PC 10',1,1,1,1,6,'2025-07-12 16:09:54','2025-07-12 16:09:54'),(191,'PC 11',1,1,1,1,6,'2025-07-12 16:09:54','2025-07-12 16:09:54'),(192,'PC 12',1,1,1,1,6,'2025-07-12 16:09:54','2025-07-12 16:09:54'),(193,'PC 13',1,1,1,1,6,'2025-07-12 16:09:54','2025-07-12 16:09:54'),(194,'PC 14',1,1,1,1,6,'2025-07-12 16:09:54','2025-07-12 16:09:54'),(195,'PC 15',1,1,1,1,6,'2025-07-12 16:09:54','2025-07-12 16:09:54'),(196,'PC 16',1,1,1,1,6,'2025-07-12 16:09:54','2025-07-12 16:09:54'),(197,'PC 17',1,1,1,1,6,'2025-07-12 16:09:54','2025-07-12 16:09:54'),(198,'PC 18',1,1,1,1,6,'2025-07-12 16:09:54','2025-07-12 16:09:54'),(199,'PC 19',1,1,1,1,6,'2025-07-12 16:09:54','2025-07-12 16:09:54'),(200,'PC 20',1,1,1,1,6,'2025-07-12 16:09:54','2025-07-12 16:09:54'),(201,'PC 21',1,1,1,1,6,'2025-07-12 16:09:54','2025-07-12 16:09:54'),(202,'PC 22',1,1,1,1,6,'2025-07-12 16:09:54','2025-07-12 16:09:54'),(203,'PC 23',1,1,1,1,6,'2025-07-12 16:09:54','2025-07-12 16:09:54'),(204,'PC 24',1,1,1,1,6,'2025-07-12 16:09:54','2025-07-12 16:09:54'),(205,'PC 25',1,1,1,1,6,'2025-07-12 16:09:55','2025-07-12 16:09:55'),(206,'PC 26',1,1,1,1,6,'2025-07-12 16:09:55','2025-07-12 16:09:55'),(207,'PC 27',1,1,1,1,6,'2025-07-12 16:09:55','2025-07-12 16:09:55'),(208,'PC 28',1,1,1,1,6,'2025-07-12 16:09:55','2025-07-12 16:09:55'),(209,'PC 29',1,1,1,1,6,'2025-07-12 16:09:55','2025-07-12 16:09:55'),(210,'PC 30',1,1,1,1,6,'2025-07-12 16:09:55','2025-07-12 16:09:55'),(211,'PC 31',1,1,1,1,6,'2025-07-12 16:09:55','2025-07-12 16:09:55'),(212,'PC 32',1,1,1,1,6,'2025-07-12 16:09:55','2025-07-12 16:09:55'),(213,'PC 33',1,1,1,1,6,'2025-07-12 16:09:55','2025-07-12 16:09:55'),(214,'PC 34',1,1,1,1,6,'2025-07-12 16:09:55','2025-07-12 16:09:55'),(215,'PC 35',1,1,1,1,6,'2025-07-12 16:09:55','2025-07-12 16:09:55'),(216,'PC 36',1,1,1,1,6,'2025-07-12 16:09:55','2025-07-12 16:09:55'),(217,'PC 1',1,1,1,1,7,'2025-07-12 16:09:55','2025-07-12 16:09:55'),(218,'PC 2',1,1,1,1,7,'2025-07-12 16:09:55','2025-07-12 16:09:55'),(219,'PC 3',1,1,1,1,7,'2025-07-12 16:09:55','2025-07-12 16:09:55'),(220,'PC 4',1,1,1,1,7,'2025-07-12 16:09:55','2025-07-12 16:09:55'),(221,'PC 5',1,1,1,1,7,'2025-07-12 16:09:55','2025-07-12 16:09:55'),(222,'PC 6',1,1,1,1,7,'2025-07-12 16:09:55','2025-07-12 16:09:55'),(223,'PC 7',1,1,1,1,7,'2025-07-12 16:09:55','2025-07-12 16:09:55'),(224,'PC 8',1,1,1,1,7,'2025-07-12 16:09:56','2025-07-12 16:09:56'),(225,'PC 9',1,1,1,1,7,'2025-07-12 16:09:56','2025-07-12 16:09:56'),(226,'PC 10',1,1,1,1,7,'2025-07-12 16:09:56','2025-07-12 16:09:56'),(227,'PC 11',1,1,1,1,7,'2025-07-12 16:09:56','2025-07-12 16:09:56'),(228,'PC 12',1,1,1,1,7,'2025-07-12 16:09:56','2025-07-12 16:09:56'),(229,'PC 13',1,1,1,1,7,'2025-07-12 16:09:56','2025-07-12 16:09:56'),(230,'PC 14',1,1,1,1,7,'2025-07-12 16:09:56','2025-07-12 16:09:56'),(231,'PC 15',1,1,1,1,7,'2025-07-12 16:09:56','2025-07-12 16:09:56'),(232,'PC 16',1,1,1,1,7,'2025-07-12 16:09:56','2025-07-12 16:09:56'),(233,'PC 17',1,1,1,1,7,'2025-07-12 16:09:56','2025-07-12 16:09:56'),(234,'PC 18',1,1,1,1,7,'2025-07-12 16:09:56','2025-07-12 16:09:56'),(235,'PC 19',1,1,1,1,7,'2025-07-12 16:09:56','2025-07-12 16:09:56'),(236,'PC 20',1,1,1,1,7,'2025-07-12 16:09:56','2025-07-12 16:09:56'),(237,'PC 21',1,1,1,1,7,'2025-07-12 16:09:56','2025-07-12 16:09:56'),(238,'PC 22',1,1,1,1,7,'2025-07-12 16:09:56','2025-07-12 16:09:56'),(239,'PC 23',1,1,1,1,7,'2025-07-12 16:09:56','2025-07-12 16:09:56'),(240,'PC 24',1,1,1,1,7,'2025-07-12 16:09:56','2025-07-12 16:09:56'),(241,'PC 25',1,1,1,1,7,'2025-07-12 16:09:56','2025-07-12 16:09:56'),(242,'PC 26',1,1,1,1,7,'2025-07-12 16:09:56','2025-07-12 16:09:56'),(243,'PC 27',1,1,1,1,7,'2025-07-12 16:09:56','2025-07-12 16:09:56'),(244,'PC 28',1,1,1,1,7,'2025-07-12 16:09:56','2025-07-12 16:09:56'),(245,'PC 29',1,1,1,1,7,'2025-07-12 16:09:57','2025-07-12 16:09:57'),(246,'PC 30',1,1,1,1,7,'2025-07-12 16:09:57','2025-07-12 16:09:57'),(247,'PC 31',1,1,1,1,7,'2025-07-12 16:09:57','2025-07-12 16:09:57'),(248,'PC 32',1,1,1,1,7,'2025-07-12 16:09:57','2025-07-12 16:09:57'),(249,'PC 33',1,1,1,1,7,'2025-07-12 16:09:57','2025-07-12 16:09:57'),(250,'PC 34',1,1,1,1,7,'2025-07-12 16:09:57','2025-07-12 16:09:57'),(251,'PC 35',1,1,1,1,7,'2025-07-12 16:09:57','2025-07-12 16:09:57'),(252,'PC 36',1,1,1,1,7,'2025-07-12 16:09:57','2025-07-12 16:09:57');
/*!40000 ALTER TABLE `pcs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('0lJbkr1X7AX9lKXztc7GrqZAm0zt9ah6Z2nzGa35',NULL,'172.18.0.2','Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.4 Mobile/15E148 Safari/604.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoib2NydE8weFZIMUlnSHMxdm8wRmZqRDZTUEpUVFJlb0doaXZLT3NOQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9jZWtsYWIuc21rbjJrcmEuc2NoLmlkL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1758967338),('0lZsZGfh1FijWyR0dRDR8fhaTsrkewgKVR6mx0j8',3,'172.18.0.2','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36','YToxMDp7czo2OiJfdG9rZW4iO3M6NDA6Im9wTW9lZ2JkQndpcDRBczhZeXczcmpTdU1ZaGFZWURON3o5TU9zQVAiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQzOiJodHRwOi8vY2VrbGFiLnNta24ya3JhLnNjaC5pZC9sYWIvMy9sYXBvcmFuIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MztzOjY6ImxhYl9pZCI7czoxOiIzIjtzOjc6Imd1cnVfaWQiO3M6MToiOSI7czo4OiJtYXBlbF9pZCI7czoyOiIxMyI7czo5OiJqYW1fbXVsYWkiO3M6NToiMDg6MTUiO3M6MTE6ImphbV9zZWxlc2FpIjtzOjU6IjExOjQ1IjtzOjc6Im5ldHdvcmsiO047fQ==',1759127664),('2vAjiwZnOhbC8ChwZuVPDT7biOZLo45uT9PjY8A7',4,'172.18.0.2','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoic2Q2UzFKd1VONlBuMTcyOWtsejB3ankyUlQxS1dLckowWWhZcVVuRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly9jZWtsYWIuc21rbjJrcmEuc2NoLmlkL2xhcG9yYW4tbGFiIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NDt9',1758852159),('3FqYKdL23SRNtPlJhQfdIfg2d131Q2gVluzQo0Rl',NULL,'172.18.0.2','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiM1VZZ0lPQnI0ejJtU0x0WkhIYWljVXFwNjZDZXR0N1JEM2VkdnYxTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9jZWtsYWIuc21rbjJrcmEuc2NoLmlkL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1759211640),('40AWfBe4UQ0bl0CygfGqtKrCUoaDVCwjrluIpFL4',4,'172.18.0.2','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoibVlWaExPbmFLbng0a0ZVTHJvZFQ0MXdTS2ZoakMwcWtGMzVOdGg5eiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly9jZWtsYWIuc21rbjJrcmEuc2NoLmlkL2xhcG9yYW4tbGFiIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NDt9',1759459643),('93TpoesRAeAxOWFioIL25srQhrjbUoNcXLmjIgPx',NULL,'172.18.0.2','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiem9pUnlKMVA2THhNWGlZWUxDSllCS21LencxdXVHVEZEZzRFQ0V6ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9jZWtsYWIuc21rbjJrcmEuc2NoLmlkL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1759459164),('9n04oEo0JPTrb5LuQhyhemVYSuyO5qsCJM4FwcTQ',3,'172.18.0.2','Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.4 Mobile/15E148 Safari/604.1','YTo1OntzOjY6Il90b2tlbiI7czo0MDoidk5ZaGU3UE4wN3BKMGtlNzBFdGtRUGFERUtHYmh0S0gxRGdJQVZSSCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MToiaHR0cDovL2Nla2xhYi5zbWtuMmtyYS5zY2guaWQvbGFwb3Jhbi1sYWIiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0MToiaHR0cDovL2Nla2xhYi5zbWtuMmtyYS5zY2guaWQvYXBpL21hcGVsLzUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO30=',1759283363),('aAoD1M6btq70N9UxUmO56fmBiosWYQaFK0GyNqh3',NULL,'172.18.0.2','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.1.25 (KHTML, like Gecko) Version/8.0 Safari/600.1.25','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZkZCR0x4b3d2Ulg5Wjl5Z0h1NHI3cFFDTlRVa3BYVFFTQmRpa3JpQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9jZWtsYWIuc21rbjJrcmEuc2NoLmlkL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1759328220),('BpuWBJ49E9fVZ6QppEusPl19UWTBk7fz0nmuPn59',NULL,'172.18.0.2','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoidTBwbnU5dWpINU54OTc2eWpLRDlDbUVkbDY4Snk5WENFT1NPSlVhViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9jZWtsYWIuc21rbjJrcmEuc2NoLmlkL2xvZ2luIjt9fQ==',1759211857),('BrmXXg4gi1N1S5f11kjQZtf5avQv4vFLcYZ29fS4',NULL,'172.18.0.2','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVklmZ1I4b3ZDNGxJTVBJV3BoRTZacHVwS0ZEM1ZoNDg5M0N6ckpjYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9jZWtsYWIuc21rbjJrcmEuc2NoLmlkL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1758949354),('btMvkm77khifuB7yDRUv90aAC6HmNuPKEXEUmPnK',NULL,'172.18.0.2','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.1.25 (KHTML, like Gecko) Version/8.0 Safari/600.1.25','YTo0OntzOjY6Il90b2tlbiI7czo0MDoieXZFOE5aWWhRa1NiSklEWkZnZW9SSDNiRUhjcFhkckdCMWMyYkhxcCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNDoiaHR0cDovL2Nla2xhYi5zbWtuMmtyYS5zY2guaWQvbGFicyI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM0OiJodHRwOi8vY2VrbGFiLnNta24ya3JhLnNjaC5pZC9sYWJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1759328219),('bU54lvRYVqvxenmUuFsezHwV3avkcDibIfGMeOek',NULL,'172.18.0.2','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.1.25 (KHTML, like Gecko) Version/8.0 Safari/600.1.25','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQjNoNHZqeDdHVE9WMExQMlFEcG5kTE04NmVGSG9RRjlraTlINnJhcCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo1MzoiaHR0cDovL2Nla2xhYi5zbWtuMmtyYS5zY2guaWQvbGFwb3Jhbj9kYXRlPTIwMjUtMDktMjkiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo1MzoiaHR0cDovL2Nla2xhYi5zbWtuMmtyYS5zY2guaWQvbGFwb3Jhbj9kYXRlPTIwMjUtMDktMjkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1759327699),('Fc5bH7xV2Wt4p7bryZYSnlH7x20IeCEQb3MsJatO',2,'172.18.0.2','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Mobile Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUHltY3BWQUxkSnRhZGpvNnhlcVBDeEtxcXBWOUFIdkR0eXFzaDN6MiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly9jZWtsYWIuc21rbjJrcmEuc2NoLmlkL2xhcG9yYW4tbGFiIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9',1759212074),('FDBX7qfnTCe1khqKJPsrPXbSyOEbtWEYUNxRNOMm',2,'172.18.0.2','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaGdac0xyWE51YUhMcU9mck1mTUxlQUlNQTZPMU9wNHpRcXlXTnFZUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly9jZWtsYWIuc21rbjJrcmEuc2NoLmlkL2xhcG9yYW4tbGFiIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9',1759281510),('Fp0Wdo5ThRZ0pH3fJfmdC1V9zK6slqVzwLH9mpHm',6,'172.18.0.2','Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.4 Mobile/15E148 Safari/604.1','YTo0OntzOjY6Il90b2tlbiI7czo0MDoibU9YUzczOTVidkh1OGd6NWVTYVJQQzBmS3REM2dYbTBuNlBlOGRqQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly9jZWtsYWIuc21rbjJrcmEuc2NoLmlkL2xhcG9yYW4tbGFiIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Njt9',1759193177),('FQET6wD4xvi5jIw2D3hmTlJ3sXUzvKOja0U7w7ye',2,'172.18.0.2','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoibFZqZmx5SkpDWWZxWDFtenpZbDZqVHM3ZGpZQjNOWVJTaW80UGtKYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly9jZWtsYWIuc21rbjJrcmEuc2NoLmlkL2xhcG9yYW4tbGFiIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9',1759378174),('FwBIh7bEHBUv2jxWb1uBHRusTW1roRAw8QkrRVVE',NULL,'172.18.0.2','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUVCTVBpWWlqRVQ4enQwQ2pXa0M2MXFMR0I4VTZVYmt0UGVhRjBwdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9jZWtsYWIuc21rbjJrcmEuc2NoLmlkL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1759287394),('ggITVDG0crKKrEnSL1OL11GrlTOQKqTTXxMq5Uob',NULL,'172.18.0.2','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiS09WMlNlRnY2YTVyVmVDU0hqN0h4dkdIUHlzdWRTeEpuZFFUcDljRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9jZWtsYWIuc21rbjJrcmEuc2NoLmlkL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1758930457),('GLbnrIlL6D6MGBV0HR6JhMuzHIFXi6KciL1VCU1h',2,'172.18.0.2','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTk9CczdXT05TZlR3YmZKdjB2QjV6VHpEZG5Ka3kzTDdpWERJZ1dJZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly9jZWtsYWIuc21rbjJrcmEuc2NoLmlkL2xhcG9yYW4tbGFiIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9',1759365272),('IvnyJWsZ6eoVQypCIcsSAZsKOGDuBoJy07UaHiDS',1,'172.18.0.2','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoicmhhZzZYQkNLWlY4VExHdFFWVTJkREdMalpLVmc5bElGR1RXbFRKQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9jZWtsYWIuc21rbjJrcmEuc2NoLmlkL2JlcnNpaGthbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==',1759113347),('JnHAAB7CcqW8DIsMCm6n08I3OmhztvsXrRx6OPVl',NULL,'172.18.0.2','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVpBdDZCTzZUNVQwV3pzbVZLZmhnck04V0lDeGxGV0RBRlpNNnJ4eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9jZWtsYWIuc21rbjJrcmEuc2NoLmlkL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1759127429),('jTo0dr4P6rbCjxN2sCUFrgg5pAgjEBVQNOIfBYJJ',NULL,'172.18.0.2','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0ZsODZkdEpaUE5rT0V5RkRkbUlZZW9BYkdybW9EYzI5UjJBUmQyNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9jZWtsYWIuc21rbjJrcmEuc2NoLmlkL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1759131729),('k4W9tHA1kR9sjkFCVaE0ybrKbReTDUUolLaHI9Pk',NULL,'172.18.0.2','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Mobile Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoicHRYTmJlSWs2THRsdElwdUNYYU5NR2QydjZiRkY0b1lLTHl0QTV1bCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MToiaHR0cDovL2Nla2xhYi5zbWtuMmtyYS5zY2guaWQvbGFwb3Jhbi1sYWIiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozNToiaHR0cDovL2Nla2xhYi5zbWtuMmtyYS5zY2guaWQvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1759220145),('KHpLey7ot77wDmbAYfmow1Q6dR8Xqt51n4VoVObc',1,'172.18.0.2','Mozilla/5.0 (X11; Linux x86_64; rv:143.0) Gecko/20100101 Firefox/143.0','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiR0x2dU1obDhRcGxkMGxuSHYyWU40QlRrRUJxQmkzWjRWaEtpdFVPYSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNDoiaHR0cDovL2Nla2xhYi5zbWtuMmtyYS5zY2guaWQvbGFicyI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM0OiJodHRwOi8vY2VrbGFiLnNta24ya3JhLnNjaC5pZC9sYWJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9',1759471434),('lrWm9Xyke1Z8CNHHyBbgcqyaz3wvIKMRm221D1Oh',NULL,'172.18.0.2','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWkpLYmRrd0hMbXV0RHJvUlJ6U2lxQks1YldtVXJ4WkpRV05WVGRiVyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MToiaHR0cDovL2Nla2xhYi5zbWtuMmtyYS5zY2guaWQvbGFwb3Jhbi1sYWIiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0MToiaHR0cDovL2Nla2xhYi5zbWtuMmtyYS5zY2guaWQvbGFwb3Jhbi1sYWIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1759459164),('NaZslWNfcTxWwrS5tKkrDGIjtZtoZkpfadTWJXzi',1,'172.18.0.2','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoianB6eDFzNnlCRmV4ckdkUzYxY1Q0Z0E5dEV0NlhkS2s1aUkwMEt5VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9jZWtsYWIuc21rbjJrcmEuc2NoLmlkL2xhcG9yYW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=',1759460133),('NirNL0ZBXIUyKy4WEfrolSQcqVpDxjYqnbVXPRYQ',NULL,'172.18.0.2','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.1.25 (KHTML, like Gecko) Version/8.0 Safari/600.1.25','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUDh3Q2s1ZjZIWUZOdUxTck5JVjd3WFlTc0xPc01nRE02eUk3OHlVRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9jZWtsYWIuc21rbjJrcmEuc2NoLmlkL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1759414343),('OFFhr6KkX71l2PezscBHhlXW6MSQBMF3pZGoUA0C',NULL,'172.18.0.2','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.1.25 (KHTML, like Gecko) Version/8.0 Safari/600.1.25','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMFZ4TFpIM2J5YVQ5T2plNGppRmFFVTNWc3VxczNRNFNQcFNvcE5FeiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cDovL2Nla2xhYi5zbWtuMmtyYS5zY2guaWQvbGFwb3JhbiI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vY2VrbGFiLnNta24ya3JhLnNjaC5pZC9sYXBvcmFuIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1759327853),('PjvUMwY4QJ6cQVLTeuMo8FwFl8GiV7e0FqaRecVz',NULL,'172.18.0.2','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.1.25 (KHTML, like Gecko) Version/8.0 Safari/600.1.25','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMjUxN2RUcW85c0dmc3dDakVNcjNGWHExRDhoUjM5ZGdUUTNaT05hRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9jZWtsYWIuc21rbjJrcmEuc2NoLmlkL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1759327854),('Q22R6kSROZT2N0ScQrkGnmtaA8SZZT2mn1xvTCWu',NULL,'172.18.0.2','Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiREF4ZmttQUNwWVNMRUxQbmdNY3VoaVJWbjlOa1lwVXRRcTJBRjZENSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9jZWtsYWIuc21rbjJrcmEuc2NoLmlkL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1759191423),('RUrLq5xP0uFdsFBIydOGwum5D0JCESBzvkAx5EdU',NULL,'172.18.0.2','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.1.25 (KHTML, like Gecko) Version/8.0 Safari/600.1.25','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRGFRNXpoMklOczlYeTBnWUVjUzdjWjBRNXNJZXNDZ1BCV2VyUnBmRCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozODoiaHR0cDovL2Nla2xhYi5zbWtuMmtyYS5zY2guaWQvcGVuZ2d1bmEiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozODoiaHR0cDovL2Nla2xhYi5zbWtuMmtyYS5zY2guaWQvcGVuZ2d1bmEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1759414342),('rWxGDUU5DSZK59bC9o3BlAxYGEElM5bvyD5G6V1D',NULL,'172.18.0.2','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.1.25 (KHTML, like Gecko) Version/8.0 Safari/600.1.25','YTo0OntzOjY6Il90b2tlbiI7czo0MDoialFkNUpJOGpENUJhU3BoSDBkUjBtOHhkNkY4OXZMY3hMT0QwQk5PRSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozOToiaHR0cDovL2Nla2xhYi5zbWtuMmtyYS5zY2guaWQvYmVyc2loa2FuIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9jZWtsYWIuc21rbjJrcmEuc2NoLmlkL2JlcnNpaGthbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1759328859),('tNNtjro77v0KxsGXW75IX72b6BE78e0R92PjmWlT',1,'172.18.0.2','Mozilla/5.0 (X11; Linux x86_64; rv:143.0) Gecko/20100101 Firefox/143.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWm9YV3R5MFJWTnptU0x3cXFNN2hwSnRzclV1OEVKdzVGYTM4VUo3ZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9jZWtsYWIuc21rbjJrcmEuc2NoLmlkL2xhcG9yYW4iO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=',1759460150),('utPS89nOeGSkQjSUjkADx7rz4L8Z0SQfNJctQWHd',3,'172.18.0.2','Mozilla/5.0 (iPhone; CPU iPhone OS 18_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.4 Mobile/15E148 Safari/604.1','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiamZqMXJQTzExeEF5MGtOVk5ZYUp6cnZOUHlobTZXTW5KeE9xNnNVNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly9jZWtsYWIuc21rbjJrcmEuc2NoLmlkL2FwaS9tYXBlbC81Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mzt9',1759220019),('Vlhb5gWYGGhlk5ITF3xojsegiGvWLSiTbeLH80UR',NULL,'172.18.0.2','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.1.25 (KHTML, like Gecko) Version/8.0 Safari/600.1.25','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQXBaTzVSMm00d0dXOEV2YkhRNzYzY1drUkF1a0lwWVdKYkU0MjRaNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9jZWtsYWIuc21rbjJrcmEuc2NoLmlkL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1759328860),('WNtNQsoa3pGMbdyoiNPmf1EfaVGKQinDRl9YXOHB',2,'172.18.0.2','Mozilla/5.0 (Linux; Android 12; V2111) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/123.0.6312.118 Mobile Safari/537.36 VivoBrowser/14.6.3.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoicEhobzcxdFlla1dGd1RldnFDcWdxRVp2WFNDNzB1Mng1MWhXSTVWdyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly9jZWtsYWIuc21rbjJrcmEuc2NoLmlkL2xhcG9yYW4tbGFiIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9',1759113129),('ZUDNVtaBj05N7Pfq9MVBwBXBclRZgNJK8YELAzw5',NULL,'172.18.0.2','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/600.1.25 (KHTML, like Gecko) Version/8.0 Safari/600.1.25','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2JDUHp6c3gxMmI1NEZMOVZNUGJVbVJvbm5VS1Z4cHE1SnZtN3NTUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9jZWtsYWIuc21rbjJrcmEuc2NoLmlkL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1759327700);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@rpl.com','2025-07-12 16:09:41','$2y$12$epNHPHrip1dQEiWp9rsdiu0ZhfGg5bbnrKCJfaLx62i7Lq0FPvbW2','admin',NULL,'2025-07-12 16:09:41','2025-07-12 16:09:41'),(2,'XI RPL A','11ra@rpl.com','2025-07-12 16:09:41','$2y$12$hqHPVZCQwDKdYHaFDyhb1u0KySVuik8x.B6OlwvrY2slPEy1.SyIy','user',NULL,'2025-07-12 16:09:42','2025-07-12 16:09:42'),(3,'XI RPL B','11rb@rpl.com','2025-07-12 16:09:42','$2y$12$b2NOeqwsfyYEOzxMjZW8bObd0Q.FZ0tUY6Xp.IMa5WTNaGtK6JSda','user',NULL,'2025-07-12 16:09:42','2025-07-12 16:09:42'),(4,'XI RPL C','11rc@rpl.com','2025-07-12 16:09:42','$2y$12$.8BZ48Peot76rbqmBO4hleUt//sRzyt2ZtdszKRK6GsbSYeZsI2om','user',NULL,'2025-07-12 16:09:42','2025-07-12 16:09:42'),(5,'X RPL A','10ra@rpl.com','2025-07-12 16:09:42','$2y$12$uKt3f33Vc6SnrfhiI4tKIO38.uqjho7MlMrK930e552QwGEd/tRIm','user',NULL,'2025-07-12 16:09:42','2025-07-12 16:09:42'),(6,'X RPL B','10rb@rpl.com','2025-07-12 16:09:42','$2y$12$JTgOmAbZGHi0tHWJRAREqO3I3BTyGjsN.7bo4Sg5ADyseudmAAXmu','user',NULL,'2025-07-12 16:09:42','2025-07-12 16:09:42'),(7,'X RPL C','10rc@rpl.com','2025-07-12 16:09:42','$2y$12$SE3jDWnAaktLfDsKsCT44.2dutqur7YiLBlgnIdPvmjL8bVh2xuoK','user',NULL,'2025-07-12 16:09:43','2025-07-12 16:09:43'),(8,'X OTO A','10oa@oto.com','2025-07-12 16:09:43','$2y$12$gQvqkweFkS.HveB8u1h2r.p9Pk/.Ph7z/ji1xtn7xSFp4Ap67hGdS','user',NULL,'2025-07-12 16:09:43','2025-07-12 16:09:43'),(9,'X OTO B','10ob@oto.com','2025-07-12 16:09:43','$2y$12$mt9H.Oy8F2FhyS3vVveMau11rZlCDEUWs.3nW29BHAnL1GK/xVPSW','user',NULL,'2025-07-12 16:09:43','2025-07-12 16:09:43'),(10,'X OTO C','10oc@oto.com','2025-07-12 16:09:43','$2y$12$AzfddQ26X6v5AJG7x4rhE.CgpFDOGmEsNH1nAVPrB5b7jThshV6I6','user',NULL,'2025-07-12 16:09:43','2025-07-12 16:09:43'),(11,'X TEKSTIL A','10ta@tekstil.com','2025-07-12 16:09:43','$2y$12$pMBx8E8joOT6/WvDFIz6MOiECeeOgOcqOe.xt5ky5bjeXJpJ7oslO','user',NULL,'2025-07-12 16:09:43','2025-07-12 16:09:43'),(12,'X TEKSTIL B','10tb@tekstil.com','2025-07-12 16:09:43','$2y$12$HpJabgVuU//Fi0uaTAFwiuupCrRLsDpS3V4fmdJ8YqC.XGA0eDgnq','user',NULL,'2025-07-12 16:09:44','2025-07-12 16:09:44'),(13,'X TEKSTIL C','10tc@tekstil.com','2025-07-12 16:09:44','$2y$12$bwGsRPbofYJJknVStIUPeODjcOH3tmddinExn5yeICzhX2bD09P1.','user',NULL,'2025-07-12 16:09:44','2025-07-12 16:09:44'),(14,'X Mesin A','10ma@mesin.com','2025-07-12 16:09:44','$2y$12$p1Y5nsY6l4OJlUc59zgBIOq4MPh0J760KfNkCnaDFxwNSxwhZFrWC','user',NULL,'2025-07-12 16:09:44','2025-07-12 16:09:44'),(15,'X Mesin B','10mb@mesin.com','2025-07-12 16:09:44','$2y$12$qiSL7ijHqm5KZbJRG2pOcu2kqPhRR9XMce3Mskc1OF/T.nUrt03s6','user',NULL,'2025-07-12 16:09:44','2025-07-12 16:09:44'),(16,'X Mesin C','10mc@mesin.com','2025-07-12 16:09:44','$2y$12$LHpOx30BHhYUCf/m9MDHbOZoqSzuOpwgaWeXE1laYq3siV2bVsCtK','user',NULL,'2025-07-12 16:09:44','2025-07-12 16:09:44');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-03  6:55:41

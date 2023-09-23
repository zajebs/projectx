-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: 2lifedb
-- ------------------------------------------------------
-- Server version	10.4.27-MariaDB

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
-- Table structure for table `ad_features`
--

DROP TABLE IF EXISTS `ad_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_features` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ad_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ad_features_ad_id_foreign` (`ad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_features`
--

LOCK TABLES `ad_features` WRITE;
/*!40000 ALTER TABLE `ad_features` DISABLE KEYS */;
/*!40000 ALTER TABLE `ad_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_galleries`
--

DROP TABLE IF EXISTS `ad_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_galleries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ad_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_galleries`
--

LOCK TABLES `ad_galleries` WRITE;
/*!40000 ALTER TABLE `ad_galleries` DISABLE KEYS */;
INSERT INTO `ad_galleries` VALUES (1,2,'uploads/adds_multiple/1672932207_63b6eb6f4e4e7.jpg','2023-01-05 13:23:27','2023-01-05 13:23:27'),(2,2,'uploads/adds_multiple/1672932207_63b6eb6f55e21.jpg','2023-01-05 13:23:27','2023-01-05 13:23:27'),(3,2,'uploads/adds_multiple/1672932207_63b6eb6f5c0c9.jpg','2023-01-05 13:23:27','2023-01-05 13:23:27'),(4,2,'uploads/adds_multiple/1672932207_63b6eb6f618f6.jpg','2023-01-05 13:23:27','2023-01-05 13:23:27'),(5,2,'uploads/adds_multiple/1672932207_63b6eb6f69213.jpg','2023-01-05 13:23:27','2023-01-05 13:23:27'),(7,12,'uploads/adds_multiple/1675662273_63e093c17fa54.jpg','2023-02-06 05:44:33','2023-02-06 05:44:33'),(8,7,'uploads/adds_multiple/1675662289_63e093d14e3f9.png','2023-02-06 05:44:49','2023-02-06 05:44:49'),(9,19,'uploads/adds_multiple/1675686699_63e0f32b85800.jpg','2023-02-06 12:31:39','2023-02-06 12:31:39'),(10,19,'uploads/adds_multiple/1675686699_63e0f32ba1a90.jpg','2023-02-06 12:31:39','2023-02-06 12:31:39'),(11,16,'uploads/adds_multiple/1675687734_63e0f736edfb8.jpg','2023-02-06 12:48:55','2023-02-06 12:48:55'),(12,16,'uploads/adds_multiple/1675687735_63e0f73719073.jpg','2023-02-06 12:48:55','2023-02-06 12:48:55'),(13,16,'uploads/adds_multiple/1675687735_63e0f7373594b.jpg','2023-02-06 12:48:55','2023-02-06 12:48:55'),(14,16,'uploads/adds_multiple/1675687735_63e0f7373e238.jpg','2023-02-06 12:48:55','2023-02-06 12:48:55'),(15,16,'uploads/adds_multiple/1675687735_63e0f737449af.jpg','2023-02-06 12:48:55','2023-02-06 12:48:55'),(16,16,'uploads/adds_multiple/1675687735_63e0f7374dc60.jpg','2023-02-06 12:48:55','2023-02-06 12:48:55'),(17,16,'uploads/adds_multiple/1675687735_63e0f73757430.jpg','2023-02-06 12:48:55','2023-02-06 12:48:55'),(18,16,'uploads/adds_multiple/1675687735_63e0f7376071d.jpg','2023-02-06 12:48:55','2023-02-06 12:48:55'),(19,17,'uploads/adds_multiple/1675687771_63e0f75b5ec21.jpg','2023-02-06 12:49:31','2023-02-06 12:49:31'),(20,17,'uploads/adds_multiple/1675687771_63e0f75b66acf.jpg','2023-02-06 12:49:31','2023-02-06 12:49:31'),(21,17,'uploads/adds_multiple/1675687771_63e0f75b70b3d.jpg','2023-02-06 12:49:31','2023-02-06 12:49:31'),(22,17,'uploads/adds_multiple/1675687771_63e0f75b7a3e8.jpg','2023-02-06 12:49:31','2023-02-06 12:49:31'),(23,17,'uploads/adds_multiple/1675687771_63e0f75b837db.jpg','2023-02-06 12:49:31','2023-02-06 12:49:31'),(24,12,'uploads/adds_multiple/1675755146_63e1fe8a065fe.jpg','2023-02-07 07:32:26','2023-02-07 07:32:26'),(25,20,'uploads/adds_multiple/1675756852_63e20534811ae.jpg','2023-02-07 08:00:52','2023-02-07 08:00:52'),(26,20,'uploads/adds_multiple/1675756852_63e205349aa8a.jpg','2023-02-07 08:00:52','2023-02-07 08:00:52'),(27,21,'uploads/adds_multiple/1675757810_63e208f26377e.jpg','2023-02-07 08:16:50','2023-02-07 08:16:50'),(28,21,'uploads/adds_multiple/1675757810_63e208f27c5a9.jpg','2023-02-07 08:16:50','2023-02-07 08:16:50'),(29,25,'uploads/adds_multiple/1679292174_6417f70e2ca69.png','2023-03-20 06:02:54','2023-03-20 06:02:54'),(30,25,'uploads/adds_multiple/1679292174_6417f70e40bc8.png','2023-03-20 06:02:54','2023-03-20 06:02:54'),(31,26,'uploads/adds_multiple/1679292588_6417f8ac99353.jpg','2023-03-20 06:09:48','2023-03-20 06:09:48'),(32,26,'uploads/adds_multiple/1679292588_6417f8aca2997.jpg','2023-03-20 06:09:48','2023-03-20 06:09:48'),(33,27,'uploads/adds_multiple/1679376649_64194109a6f10.png','2023-03-21 05:30:49','2023-03-21 05:30:49'),(34,28,'uploads/adds_multiple/1679392125_64197d7d44542.png','2023-03-21 09:48:45','2023-03-21 09:48:45'),(35,28,'uploads/adds_multiple/1679392125_64197d7d6d00c.jpg','2023-03-21 09:48:45','2023-03-21 09:48:45'),(36,29,'uploads/adds_multiple/1680324354_6427b702795d6.jpg','2023-04-01 04:45:54','2023-04-01 04:45:54'),(37,30,'uploads/adds_multiple/1680324468_6427b774affbe.jpg','2023-04-01 04:47:49','2023-04-01 04:47:49');
/*!40000 ALTER TABLE `ad_galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_searches`
--

DROP TABLE IF EXISTS `admin_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_searches` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `page_title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_searches`
--

LOCK TABLES `admin_searches` WRITE;
/*!40000 ALTER TABLE `admin_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'backend/image/default-user.png',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Admin','ricards@gmail.com','2022-07-25 05:09:47','$2y$10$YdA.qC1H69hQeItWhL378OT6ysr8zG7MLZKx5JRKOVeLWVKdZetz.','uploads/user/1666182388_634fecf4e5dbe.jpg','oBiIdAzAohYhJwKtooJ6Zd8bM1wnsZ6PdB3EgRLZI8adyBac8jWVmcnnJLdA','2022-07-25 05:09:47','2022-12-10 10:43:55'),(2,'Superadmin','mucenieksricards@gmail.com','2022-07-25 05:09:47','$2y$10$YdA.qC1H69hQeItWhL378OT6ysr8zG7MLZKx5JRKOVeLWVKdZetz.','uploads/user/1666182388_634fecf4e5dbe.jpg','Au1WOUohoL2xwdvUuRR9lUrHVBxmLJFKeyzHBAvAITIypUh4xrT0zVspwE3k','2022-07-25 05:09:47','2023-02-09 14:01:34');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `subcategory_id` bigint(20) unsigned DEFAULT NULL,
  `child_category_id` bigint(255) unsigned NOT NULL,
  `size_id` int(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `condition` varchar(255) NOT NULL,
  `brand_id` int(20) DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `is_accept_offer` tinyint(4) DEFAULT 0,
  `is_smart_price` tinyint(4) DEFAULT 0,
  `smart_price` int(255) DEFAULT NULL,
  `min_price` int(11) DEFAULT NULL,
  `description` longtext NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `show_phone` tinyint(1) NOT NULL DEFAULT 1,
  `phone_2` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `status` enum('active','sold','pending','declined') NOT NULL DEFAULT 'active',
  `validity` timestamp NOT NULL DEFAULT current_timestamp(),
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `trending` tinyint(4) NOT NULL DEFAULT 0,
  `total_reports` int(11) NOT NULL DEFAULT 0,
  `total_views` int(11) NOT NULL DEFAULT 0,
  `is_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `drafted_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `apartment` varchar(150) DEFAULT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `long` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `measure_scale` varchar(20) DEFAULT NULL,
  `measurements` text DEFAULT NULL,
  `shipping_region` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ads_user_id_foreign` (`user_id`),
  KEY `ads_category_id_foreign` (`category_id`),
  KEY `ads_child_category_id_foreign` (`child_category_id`),
  CONSTRAINT `ads_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (23,'I want to sell my tops','i-want-to-sell-my-tops',56,1,2,1,37,'7','new',5,250.00,0,1,230,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',NULL,1,NULL,'uploads/addss_image/1678077329_64056d9179bb3.jpg','active','2023-04-13 04:35:29',0,0,0,0,46,0,NULL,'2023-03-06 04:35:29','2023-04-03 16:20:43','dhaka, banani','dhaka','ANDHRA PRADESH','Chittoor','1213','18',NULL,NULL,NULL,NULL,'in','{\"Bust\":\"10\",\"Length\":\"10\",\"Shoulders\":\"10\",\"Waist\":\"10\"}','{\"Latvia\":\"55\",\"Lithuania\":\"55\",\"Estonia\":\"55\",\"Others\":\"50\"}'),(24,'Phone','phone',56,1,2,1,37,'7','Gently Used',6,100.00,0,1,50,NULL,'Another post added',NULL,1,NULL,'uploads/addss_image/1678178360_6406f838dcb16.jpg','active','2023-04-14 08:39:20',0,0,0,0,43,0,NULL,'2023-03-07 08:39:20','2023-04-13 05:22:03','dhaka, banani','dhaka','ANDHRA PRADESH','Chittoor','1213','18',NULL,NULL,NULL,NULL,'in','{\"Bust\":null,\"Length\":null,\"Shoulders\":null,\"Waist\":null}','{\"Latvia\":\"55\"}'),(26,'New and needed item','new-and-needed-item',70,1,3,64,47,'8','New',3,2302.00,0,NULL,NULL,NULL,'Good and best',NULL,1,NULL,'uploads/addss_image/1679292588_6417f8ac3f7da.jpg','active','2023-05-04 06:19:44',0,0,0,0,34,0,NULL,'2023-03-20 06:09:48','2023-04-16 12:01:20','Dhaka','Dhaka','Bangladesh','Dhaka','1212','18',0,0,NULL,'[{\"value\":\"work\"},{\"value\":\"best\"},{\"value\":\"new\"}]','','[]','{\"Latvia\":\"55\",\"Lithuania\":\"55\",\"Estonia\":\"55\",\"Others\":\"50\"}'),(27,'New send product','new-send-product',69,1,3,62,47,'9','Used',5,123.00,0,0,NULL,NULL,'yewjsdak fj',NULL,1,NULL,'uploads/addss_image/1679376649_6419410991adb.png','pending','2023-03-21 05:30:49',0,0,0,0,0,0,NULL,'2023-03-21 05:30:49','2023-03-21 05:30:49','Dhaka','Dhaka','Dhaka','Dhaka','12345','18',NULL,NULL,NULL,NULL,'','[]','{\"Lithuania\":\"55\",\"Estonia\":\"55\"}'),(28,'New footwerar','new-footwerar',70,1,5,16,78,'9','Used',4,231.00,0,1,200,NULL,'New and footwere',NULL,1,NULL,'uploads/addss_image/1679392125_64197d7d2d93e.png','pending','2023-03-21 09:48:45',0,0,0,0,0,0,NULL,'2023-03-21 09:48:45','2023-03-21 09:48:45','Dhaka','Dhaka','Bangladesh','Dhaka','1212','18',NULL,NULL,NULL,NULL,'','[]','{\"Latvia\":\"55\",\"Others\":\"50\"}'),(29,'New top showing','new-top-showing',75,1,2,3,38,'7','Gently Used',5,121.00,0,NULL,NULL,NULL,'A coupon fee will be applied for posting an ad, and the ad will be active for 40 days after it\'s posted. After this period, you can reactivate the ad by purchasing another coupon.',NULL,1,NULL,'uploads/addss_image/1680324354_6427b7026ecfb.jpg','active','2023-05-11 04:49:12',0,0,0,0,14,0,NULL,'2023-04-01 04:45:54','2023-04-16 12:01:02','Dhaka','dhaka','Bangladesh','dhaka','1231','18',NULL,NULL,NULL,NULL,'in','{\"Bust\":\"12\",\"Length\":\"12\",\"Shoulders\":\"12\",\"Waist\":\"12\"}','{\"Latvia\":\"55\",\"Others\":\"50\"}'),(30,'Only for men','only-for-men',75,1,4,67,69,'7','new',2,232.00,0,0,NULL,NULL,'A coupon fee will be applied for posting an ad, and the ad will be active for 40 days after it\'s posted. After this period, you can reactivate the ad by purchasing another coupon.',NULL,1,NULL,'uploads/addss_image/1680324468_6427b77488b63.png','active','2023-05-11 04:49:17',0,0,0,0,23,0,NULL,'2023-04-01 04:47:48','2023-04-16 12:01:34','Dhaka','dhaka','Bangladesh','dhaka','1231','18',NULL,NULL,NULL,NULL,'','[]','{\"Lithuania\":\"55\",\"Estonia\":\"55\"}');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_sizes`
--

DROP TABLE IF EXISTS `ads_sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads_sizes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `size` varchar(255) NOT NULL,
  `category_id` int(255) NOT NULL,
  `sub_category_id` int(255) NOT NULL,
  `child_category_id` int(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_sizes`
--

LOCK TABLES `ads_sizes` WRITE;
/*!40000 ALTER TABLE `ads_sizes` DISABLE KEYS */;
INSERT INTO `ads_sizes` VALUES (37,'XXS/40',1,2,NULL,1,'2023-01-30 20:36:32','2023-01-30 20:36:32'),(38,'XS/42',1,2,NULL,1,'2023-01-30 20:36:43','2023-01-30 20:36:43'),(39,'S/44-46',1,2,NULL,1,'2023-01-30 20:36:55','2023-01-30 20:36:55'),(40,'M/48-50',1,2,NULL,1,'2023-01-30 20:37:13','2023-01-30 20:37:13'),(41,'L/52-54',1,2,NULL,1,'2023-01-30 20:37:36','2023-01-30 20:37:36'),(42,'XL/56',1,2,NULL,1,'2023-01-30 20:37:48','2023-01-30 20:37:48'),(43,'XXL/58',1,2,NULL,1,'2023-01-30 20:38:09','2023-01-30 20:38:09'),(44,'3XL/58',1,2,NULL,1,'2023-01-30 20:38:47','2023-01-30 20:38:47'),(45,'4XL/60',1,2,NULL,1,'2023-01-30 20:38:59','2023-01-30 20:38:59'),(46,'26',1,3,NULL,1,'2023-01-30 20:48:28','2023-01-30 20:48:28'),(47,'27',1,3,NULL,1,'2023-01-30 20:48:36','2023-01-30 20:48:36'),(48,'28',1,3,NULL,1,'2023-01-30 20:48:44','2023-01-30 20:48:44'),(49,'29',1,3,NULL,1,'2023-01-30 20:48:53','2023-01-30 20:48:53'),(50,'30',1,3,NULL,1,'2023-01-30 20:58:36','2023-01-30 20:58:36'),(51,'31',1,3,NULL,1,'2023-01-30 20:58:43','2023-01-30 20:58:43'),(52,'32',1,3,NULL,1,'2023-01-30 20:58:53','2023-01-30 20:58:53'),(53,'33',1,3,NULL,1,'2023-01-30 20:59:01','2023-01-30 20:59:01'),(54,'34',1,3,NULL,1,'2023-01-30 20:59:07','2023-01-30 20:59:07'),(55,'35',1,3,NULL,1,'2023-01-30 20:59:20','2023-01-30 20:59:20'),(56,'36',1,2,NULL,1,'2023-01-30 20:59:38','2023-01-30 20:59:38'),(57,'37',1,3,NULL,1,'2023-01-30 20:59:45','2023-01-30 20:59:45'),(58,'38',1,3,NULL,1,'2023-01-30 20:59:56','2023-01-30 20:59:56'),(59,'39',1,3,NULL,1,'2023-01-30 21:00:04','2023-01-30 21:00:04'),(60,'40',1,3,NULL,1,'2023-01-30 21:00:11','2023-01-30 21:00:11'),(61,'41',1,3,NULL,1,'2023-01-30 21:00:43','2023-01-30 21:00:43'),(62,'42',1,3,NULL,1,'2023-01-30 21:00:50','2023-01-30 21:00:50'),(63,'43',1,3,NULL,1,'2023-01-30 21:00:58','2023-03-20 11:14:02'),(64,'44',1,3,NULL,1,'2023-01-30 21:01:21','2023-01-30 21:01:21'),(65,'45',1,3,NULL,1,'2023-01-30 21:01:30','2023-01-30 21:01:30'),(66,'46',1,3,NULL,1,'2023-01-30 21:01:37','2023-01-30 21:01:37'),(67,'47',1,3,NULL,1,'2023-01-30 21:01:45','2023-01-30 21:01:45'),(68,'XXS/40',1,4,NULL,1,'2023-01-30 21:09:13','2023-01-30 21:09:13'),(69,'XS/42',1,4,NULL,1,'2023-01-30 21:09:22','2023-01-30 21:09:22'),(70,'S/44-46',1,4,NULL,1,'2023-01-30 21:09:31','2023-01-30 21:09:31'),(71,'M/48-50',1,4,NULL,1,'2023-01-30 21:09:49','2023-01-30 21:09:49'),(72,'L/52-54',1,4,NULL,1,'2023-01-30 21:10:00','2023-01-30 21:10:00'),(73,'XL/56',1,4,NULL,1,'2023-01-30 21:10:32','2023-01-30 21:10:32'),(74,'XXL/58',1,4,NULL,1,'2023-01-30 21:10:42','2023-01-30 21:10:42'),(75,'3XL/58',1,4,NULL,1,'2023-01-30 21:10:52','2023-01-30 21:10:52'),(76,'4XL/60',1,4,NULL,1,'2023-01-30 21:11:05','2023-01-30 21:11:05'),(77,'5/40',1,5,NULL,1,'2023-01-30 21:34:56','2023-01-30 21:34:56'),(78,'5.5/41',1,5,NULL,1,'2023-01-30 21:35:22','2023-01-30 21:35:22'),(79,'6/42',1,5,NULL,1,'2023-01-30 21:35:37','2023-01-30 21:35:37'),(81,'36',1,3,NULL,1,'2023-02-09 13:32:20','2023-02-09 13:32:20'),(82,'36',1,3,NULL,1,'2023-02-09 13:33:09','2023-02-09 13:33:09'),(83,'36',1,3,NULL,1,'2023-02-14 11:24:01','2023-02-14 11:24:01');
/*!40000 ALTER TABLE `ads_sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_tags`
--

DROP TABLE IF EXISTS `ads_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad_id` int(255) DEFAULT NULL,
  `tag_name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_tags`
--

LOCK TABLES `ads_tags` WRITE;
/*!40000 ALTER TABLE `ads_tags` DISABLE KEYS */;
INSERT INTO `ads_tags` VALUES (1,1,'tes',1,'2023-01-05 11:28:09','2023-01-05 11:28:09'),(2,3,'pure',1,'2023-01-08 06:10:29','2023-01-08 06:10:29'),(3,3,'brand',1,'2023-01-08 06:10:29','2023-01-08 06:10:29'),(4,4,'test',1,'2023-01-08 08:29:03','2023-01-08 08:29:03'),(14,19,'new',1,'2023-02-06 12:40:44','2023-02-06 12:40:44'),(15,19,'good',1,'2023-02-06 12:40:44','2023-02-06 12:40:44'),(16,19,'best',1,'2023-02-06 12:40:44','2023-02-06 12:40:44'),(17,21,'test',1,'2023-02-07 08:41:04','2023-02-07 08:41:04'),(18,23,'tops',1,'2023-03-06 04:35:29','2023-03-06 04:35:29'),(19,24,'tops',1,'2023-03-07 08:39:21','2023-03-07 08:39:21'),(29,27,'dsajfdsa f',1,'2023-03-21 05:30:49','2023-03-21 05:30:49'),(30,26,'work',1,'2023-03-21 09:43:47','2023-03-21 09:43:47'),(31,26,'best',1,'2023-03-21 09:43:47','2023-03-21 09:43:47'),(32,26,'new',1,'2023-03-21 09:43:47','2023-03-21 09:43:47'),(33,28,'New',1,'2023-03-21 09:48:45','2023-03-21 09:48:45'),(34,28,'old',1,'2023-03-21 09:48:45','2023-03-21 09:48:45'),(35,28,'best',1,'2023-03-21 09:48:45','2023-03-21 09:48:45'),(40,29,'New',1,'2023-04-01 04:46:28','2023-04-01 04:46:28'),(41,29,'best',1,'2023-04-01 04:46:28','2023-04-01 04:46:28');
/*!40000 ALTER TABLE `ads_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_comments`
--

DROP TABLE IF EXISTS `blog_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `body` varchar(255) NOT NULL,
  `image` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_comments_post_id_foreign` (`post_id`),
  CONSTRAINT `blog_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_comments`
--

LOCK TABLES `blog_comments` WRITE;
/*!40000 ALTER TABLE `blog_comments` DISABLE KEYS */;
INSERT INTO `blog_comments` VALUES (1,1,'Masud','masudrana.tapu1998@gmail.com','dsfsdf',1,'2023-03-20 09:37:24','2023-03-20 09:37:24');
/*!40000 ALTER TABLE `blog_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brands` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Puma','puma','2022-10-19 06:07:35','2022-10-19 06:07:35'),(2,'Bata','bata','2022-10-19 06:07:39','2022-10-19 06:07:39'),(3,'Apex','apex','2022-10-19 06:07:55','2022-10-19 06:07:55'),(4,'Adidas','adidas','2022-10-19 06:07:59','2022-10-19 06:07:59'),(5,'Nike','nike','2022-10-19 06:08:05','2022-10-19 06:08:05'),(6,'La Coste','la-coste','2022-10-19 06:08:11','2022-10-19 06:08:11');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `icon` longtext DEFAULT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'MENSWEAR','uploads/category/o1vk0AGUf1u64PijVOYAZeKI7DOVww9vzIWcHEfi.jpg','menswear','fas fa-ad',4,1,'2022-10-19 06:09:06','2022-12-29 10:31:31'),(2,'WOMENSWEAR','uploads/category/nGaKkDQs6RNcZKQyPBzAZ87Vkk8lkrbslO3X6vQE.jpg','womenswear','fas fa-audio-description',3,1,'2022-10-19 06:09:56','2023-01-05 15:35:07'),(6,'KIDS','uploads/category/HmXOW9YZ3WdOGam7r9vUZj261aR9jdHgg4kKbPMX.jpg','kids','fas fa-bars',1,1,'2023-01-10 13:27:44','2023-01-10 13:27:45'),(7,'HOME','uploads/category/I5FnRdFnhhTC3LURl9hcJpB3RR0Uc8P72hRhrXt0.jpg','home','fas fa-bars',2,1,'2023-01-10 13:30:15','2023-01-10 13:30:15');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_custom_field`
--

DROP TABLE IF EXISTS `category_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_custom_field` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL,
  `custom_field_id` bigint(20) unsigned NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_custom_field_category_id_foreign` (`category_id`),
  KEY `category_custom_field_custom_field_id_foreign` (`custom_field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_custom_field`
--

LOCK TABLES `category_custom_field` WRITE;
/*!40000 ALTER TABLE `category_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child_categories`
--

DROP TABLE IF EXISTS `child_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `child_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sub_category_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `child_categories_sub_category_id_foreign` (`sub_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_categories`
--

LOCK TABLES `child_categories` WRITE;
/*!40000 ALTER TABLE `child_categories` DISABLE KEYS */;
INSERT INTO `child_categories` VALUES (1,2,'LONG SLEEVE TSHIRTS','long-sleeve-tshirts',1,'2022-10-19 06:57:29','2023-03-21 11:59:49'),(3,2,'SHIRTS (BUTTON UPS)','shirts-button-ups',1,'2022-10-19 06:58:11','2022-10-19 06:58:11'),(4,3,'CASUAL PANTS','casual-pants',1,'2022-10-19 08:00:41','2022-10-19 08:00:41'),(5,3,'CROPPED PANTS','cropped-pants',1,'2022-10-19 08:00:53','2022-10-19 08:00:53'),(6,3,'DENIM','denim',1,'2022-10-19 08:01:06','2022-10-19 08:01:06'),(8,4,'BOMBERS','bombers',1,'2022-10-19 08:01:27','2022-10-19 08:01:27'),(9,4,'CLOAK CAPES','cloak-capes',1,'2022-10-19 08:01:42','2022-10-19 08:01:42'),(10,4,'DENIM JACKETS','denim-jackets',1,'2022-10-19 08:01:57','2022-10-19 08:01:57'),(11,4,'HEAVY COATS','heavy-coats',1,'2022-10-19 08:02:05','2022-10-19 08:02:05'),(12,5,'BOOTS','boots',1,'2022-10-19 08:02:18','2022-10-19 08:02:18'),(13,5,'CASUAL LEATHERS','casual-leathers',1,'2022-10-19 08:02:26','2022-10-19 08:02:26'),(14,5,'FORMAL SHOES','formal-shoes',1,'2022-10-19 08:02:38','2022-10-19 08:02:38'),(15,12,'HI-TOP SNEAKERS','hi-top-sneakers',1,'2022-10-19 08:02:50','2023-03-06 14:09:08'),(16,5,'LOW-TOP SNEAKERS','low-top-sneakers',1,'2022-10-19 08:03:17','2023-01-28 14:21:18'),(17,5,'SANDALS','sandals',1,'2022-10-19 08:03:24','2022-10-19 08:03:24'),(18,6,'BLAZERS','blazers',1,'2022-10-19 08:03:38','2022-10-19 08:03:38'),(19,6,'FORMAL SHIRTING','formal-shirting',1,'2022-10-19 08:03:56','2022-10-19 08:03:56'),(20,6,'FORMAL TROUSERS','formal-trousers',1,'2022-10-19 08:04:04','2022-10-19 08:04:04'),(21,6,'SUITS','suits',1,'2022-10-19 08:04:20','2022-10-19 08:04:20'),(22,6,'TUXEDOS','tuxedos',1,'2022-10-19 08:04:27','2022-10-19 08:04:27'),(23,6,'VESTS','vests',1,'2022-10-19 08:04:32','2022-10-19 08:04:32'),(24,7,'BAGS & LUGGAGE','bags-luggage',1,'2022-10-19 08:05:10','2022-10-19 08:05:10'),(25,7,'GLASSES','glasses',1,'2022-10-19 08:05:35','2022-10-19 08:05:35'),(26,7,'HATS','hats',1,'2022-10-19 08:05:56','2022-10-19 08:05:56'),(27,7,'WALLETS','wallets',1,'2022-10-19 08:06:01','2022-10-19 08:06:01'),(28,7,'SUNGLASSES','sunglasses',1,'2022-10-19 08:06:19','2022-10-19 08:06:19'),(29,8,'BLOUSES','blouses',1,'2022-10-19 08:06:54','2022-10-19 08:06:54'),(30,8,'BODY SUITS','body-suits',1,'2022-10-19 08:07:05','2022-10-19 08:07:05'),(31,8,'BUTTON UPS','button-ups',1,'2022-10-19 08:07:33','2022-10-19 08:07:33'),(32,8,'CROP TOPS','crop-tops',1,'2022-10-19 08:07:39','2022-10-19 08:07:39'),(33,11,'MINI DRESSES','mini-dresses',1,'2022-10-19 08:42:13','2022-10-19 08:42:13'),(34,11,'MAXI DRESSES','maxi-dresses',1,'2022-10-19 08:42:27','2022-10-19 08:42:27'),(35,11,'MIDI DRESSES','midi-dresses',1,'2022-10-19 08:42:42','2022-10-19 08:42:42'),(36,11,'GOWNS','gowns',1,'2022-10-19 08:42:52','2022-10-19 08:42:52'),(37,5,'HEELS','heels',1,'2022-10-19 08:48:49','2022-10-19 08:48:49'),(38,9,'JEANS','jeans',1,'2022-10-19 11:24:04','2022-10-19 11:24:04'),(39,9,'JOGGERS','joggers',1,'2022-10-19 11:24:12','2022-10-19 11:24:12'),(40,9,'JUMPSUITS','jumpsuits',1,'2022-10-19 11:24:31','2022-10-19 11:24:31'),(42,13,'BELT BAGS','belt-bags',1,'2022-10-19 11:34:43','2022-10-19 11:34:43'),(43,13,'MINI BAGS','mini-bags',1,'2022-10-19 11:35:06','2022-10-19 11:35:06'),(44,13,'BUCKET BAGS','bucket-bags',1,'2022-10-19 11:35:15','2022-10-19 11:35:15'),(45,13,'HOBO BAGS','hobo-bags',1,'2022-10-19 11:35:29','2022-10-19 11:35:29'),(46,12,'HEELS','heels',1,'2022-10-20 04:25:36','2022-10-20 04:25:36'),(52,18,'BAGS & LUGGAGE','bags-luggage',1,'2023-01-28 10:08:32','2023-01-28 10:08:32'),(53,18,'GLASSES','glasses',1,'2023-01-28 10:08:55','2023-01-28 10:08:55'),(54,18,'HATS','hats',1,'2023-01-28 10:09:15','2023-01-28 10:09:15'),(55,18,'WALLETS','wallets',1,'2023-01-28 10:10:06','2023-01-28 10:10:06'),(56,18,'SUNGLASSES','sunglasses',1,'2023-01-28 10:10:22','2023-01-28 10:10:22'),(57,2,'SHORT SLEEVE T-SHIRTS','short-sleeve-t-shirts',1,'2023-01-28 14:02:01','2023-01-28 14:02:01'),(58,2,'SWEATERS & KNITWEAR','sweaters-knitwear',1,'2023-01-28 14:02:43','2023-01-28 14:02:43'),(59,2,'SWEATSHIRTS & HOODIES','sweatshirts-hoodies',1,'2023-01-28 14:03:06','2023-01-28 14:03:06'),(60,2,'TANK TOPS & SLEEVELESS','tank-tops-sleeveless',1,'2023-01-28 14:03:36','2023-01-28 14:03:36'),(61,2,'JERSEYS','jerseys',1,'2023-01-28 14:03:51','2023-01-28 14:03:51'),(62,3,'LEGGINGS','leggings',1,'2023-01-28 14:16:18','2023-01-28 14:16:18'),(63,3,'OVERALLS & JUMPSUITS','overalls-jumpsuits',1,'2023-01-28 14:16:43','2023-01-28 14:16:43'),(64,3,'SHORTS','shorts',1,'2023-01-28 14:16:52','2023-01-28 14:16:52'),(65,3,'SWEATPANTS & JOGGERS','sweatpants-joggers',1,'2023-01-28 14:17:15','2023-01-28 14:17:15'),(66,3,'SWIMWEAR','swimwear',1,'2023-01-28 14:17:27','2023-01-28 14:17:27'),(67,4,'LEATHER JACKETS','leather-jackets',1,'2023-01-28 14:19:48','2023-01-28 14:19:48'),(68,4,'LIGHT JACKETS','light-jackets',1,'2023-01-28 14:19:59','2023-01-28 14:19:59'),(69,4,'PARKAS','parkas',1,'2023-01-28 14:20:09','2023-01-28 14:20:09'),(70,4,'RAINCOATS','raincoats',1,'2023-01-28 14:20:22','2023-01-28 14:20:22'),(71,4,'VESTS','vests',1,'2023-01-28 14:20:34','2023-01-28 14:20:34'),(72,5,'HI-TOP SNEAKERS','hi-top-sneakers',1,'2023-01-28 14:22:57','2023-01-28 14:22:57'),(73,5,'SLIP ONS','slip-ons',1,'2023-01-28 14:24:10','2023-01-28 14:24:10'),(74,7,'BELTS','belts',1,'2023-01-28 14:25:30','2023-01-28 14:25:30'),(75,7,'GLOVES & SCARVES','gloves-scarves',1,'2023-01-28 14:28:14','2023-01-28 14:28:14'),(76,7,'JEWELRY & WATCHES','jewelry-watches',1,'2023-01-28 14:28:54','2023-01-28 14:28:54'),(77,19,'SHOES','shoes',1,'2023-01-29 10:05:39','2023-01-29 10:05:39'),(78,19,'SWEATERS & HOODIES','sweaters-hoodies',1,'2023-01-29 10:06:12','2023-01-29 10:06:12'),(79,19,'DRESSES','dresses',1,'2023-01-29 10:06:21','2023-01-29 10:06:21'),(80,19,'PANTS & SHORTS','pants-shorts',1,'2023-01-29 10:06:34','2023-01-29 10:06:34'),(81,19,'ACCESSORIES','accessories',1,'2023-01-29 10:07:22','2023-01-29 10:07:22'),(82,19,'UNDERWEAR & SOCKS','underwear-socks',1,'2023-01-29 10:07:37','2023-01-29 10:07:37'),(83,19,'SPORTSWEAR','sportswear',1,'2023-01-29 10:07:47','2023-01-29 10:07:47'),(84,19,'BABY CLOTHING','baby-clothing',1,'2023-01-29 10:08:02','2023-01-29 10:08:02'),(85,19,'OUTERWEAR','outerwear',1,'2023-01-29 10:08:13','2023-01-29 10:08:13'),(86,19,'TOPS & T-SHIRTS','tops-t-shirts',1,'2023-01-29 10:08:32','2023-01-29 10:08:32'),(87,19,'SKIRTS','skirts',1,'2023-01-29 10:08:41','2023-01-29 10:08:41'),(88,19,'SWIMWEAR','swimwear',1,'2023-01-29 10:09:26','2023-01-29 10:09:26'),(89,19,'SLEEPWEAR','sleepwear',1,'2023-01-29 10:09:41','2023-01-29 10:09:41'),(90,20,'SHOES','shoes',1,'2023-01-29 10:10:08','2023-01-29 10:10:08'),(91,20,'SWEATERS & HOODIES','sweaters-hoodies',1,'2023-01-29 10:10:18','2023-01-29 10:10:18'),(92,20,'PANTS & SHORTS','pants-shorts',1,'2023-01-29 10:11:20','2023-01-29 10:11:20'),(93,20,'ACCESSORIES','accessories',1,'2023-01-29 10:11:34','2023-01-29 10:11:34'),(94,20,'UNDERWEAR & SOCKS','underwear-socks',1,'2023-01-29 10:11:43','2023-01-29 10:11:43'),(95,20,'SPORTSWEAR','sportswear',1,'2023-01-29 10:11:51','2023-01-29 10:11:51'),(96,20,'BABY CLOTHING','baby-clothing',1,'2023-01-29 10:12:26','2023-01-29 10:12:26'),(97,20,'OUTERWEAR','outerwear',1,'2023-01-29 10:12:36','2023-01-29 10:12:36'),(98,20,'TOPS & T-SHIRTS','tops-t-shirts',1,'2023-01-29 10:12:56','2023-01-29 10:12:56'),(99,20,'BAGS & LUGGAGE','bags-luggage',1,'2023-01-29 10:13:16','2023-01-29 10:13:16'),(100,20,'SWIMWEAR','swimwear',1,'2023-01-29 10:14:09','2023-01-29 10:14:09'),(101,20,'SLEEPWEAR','sleepwear',1,'2023-01-29 10:14:19','2023-01-29 10:14:19'),(102,21,'DOLLS','dolls',1,'2023-01-29 10:15:46','2023-01-29 10:15:46'),(103,21,'EDUCATIONAL TOYS','educational-toys',1,'2023-01-29 10:16:00','2023-01-29 10:16:00'),(104,21,'MUSICAL TOYS','musical-toys',1,'2023-01-29 10:16:10','2023-01-29 10:16:10'),(105,21,'WOODEN TOYS','wooden-toys',1,'2023-01-29 10:16:18','2023-01-29 10:16:18'),(106,21,'KITCHEN TOYS','kitchen-toys',1,'2023-01-29 10:16:27','2023-01-29 10:16:27'),(107,21,'ACTION FIGURES','action-figures',1,'2023-01-29 10:16:37','2023-01-29 10:16:37'),(108,21,'ELECTRONIC GAMES','electronic-games',1,'2023-01-29 10:16:50','2023-01-29 10:16:50'),(109,21,'SOFT TOYS','soft-toys',1,'2023-01-29 10:17:01','2023-01-29 10:17:01'),(110,21,'CONSTRUCTION TOYS','construction-toys',1,'2023-01-29 10:17:14','2023-01-29 10:17:14'),(111,21,'OUTDOOR TOYS','outdoor-toys',1,'2023-01-29 10:17:27','2023-01-29 10:17:27'),(112,21,'SLEEPING TOYS','sleeping-toys',1,'2023-01-29 10:17:38','2023-01-29 10:17:38'),(113,22,'NURSING & FEEDING','nursing-feeding',1,'2023-01-29 10:18:41','2023-01-29 10:18:41'),(114,22,'CHILDCARE ACCESSORIES','childcare-accessories',1,'2023-01-29 10:19:05','2023-01-29 10:19:05'),(115,22,'POTTIES','potties',1,'2023-01-29 10:19:16','2023-01-29 10:19:16'),(116,22,'SLEEP ACCESSORIES','sleep-accessories',1,'2023-01-29 10:19:31','2023-01-29 10:19:31'),(117,22,'DIAPERS & SKINCARE','diapers-skincare',1,'2023-01-29 10:19:51','2023-01-29 10:19:51'),(118,22,'SAFETY','safety',1,'2023-01-29 10:20:43','2023-01-29 10:20:43'),(119,23,'SPORT STROLLERS','sport-strollers',1,'2023-01-29 10:25:17','2023-01-29 10:25:17'),(120,23,'STROLLERS FOR TWINS','strollers-for-twins',1,'2023-01-29 10:25:30','2023-01-29 10:25:30'),(121,23,'UMBRELLA STROLLERS','umbrella-strollers',1,'2023-01-29 10:25:51','2023-01-29 10:25:51'),(122,23,'UNIVERSAL STROLLERS','universal-strollers',1,'2023-01-29 10:26:05','2023-01-29 10:26:05'),(124,23,'STROLLER ACCESSORIES','stroller-accessories',1,'2023-01-29 10:28:21','2023-01-29 10:28:21'),(125,23,'STROLLER PARTS','stroller-parts',1,'2023-01-29 10:29:54','2023-01-29 10:29:54'),(126,24,'PUSH & PULL TOYS','push-pull-toys',1,'2023-01-29 10:30:47','2023-01-29 10:30:47'),(127,24,'SCOOTERS','scooters',1,'2023-01-29 10:30:56','2023-01-29 10:30:56'),(128,24,'BICYCLES','bicycles',1,'2023-01-29 10:31:12','2023-01-29 10:31:12'),(129,24,'SLEDS, SKIS & SNOWBOARDS','sleds-skis-snowboards',1,'2023-01-29 10:31:33','2023-01-29 10:31:33'),(130,24,'BABY WALKERS','baby-walkers',1,'2023-01-29 10:31:43','2023-01-29 10:31:43'),(131,24,'BIKE SEATS & TRAILERS','bike-seats-trailers',1,'2023-01-29 10:32:39','2023-01-29 10:32:39'),(132,24,'OUTDOOR VEHICLES','outdoor-vehicles',1,'2023-01-29 10:32:53','2023-01-29 10:32:53'),(133,24,'ROLLER SKATES','roller-skates',1,'2023-01-29 10:33:10','2023-01-29 10:33:10'),(134,27,'CLOCKS','clocks',1,'2023-01-29 10:35:48','2023-01-29 10:35:48'),(135,27,'MIRRORS','mirrors',1,'2023-01-29 10:35:54','2023-01-29 10:35:54'),(136,27,'STORAGE','storage',1,'2023-01-29 10:36:03','2023-01-29 10:36:03'),(137,27,'CANDLE & CANDLE HOLDERS','candle-candle-holders',1,'2023-01-29 10:36:20','2023-01-29 10:36:20'),(138,27,'DISPLAY SHELVES','display-shelves',1,'2023-01-29 10:36:31','2023-01-29 10:36:31'),(139,27,'PICTURE & PHOTO FRAMES','picture-photo-frames',1,'2023-01-29 10:36:42','2023-01-29 10:36:42'),(140,27,'VASES','vases',1,'2023-01-29 10:36:47','2023-01-29 10:36:47'),(141,28,'BLANKETS','blankets',1,'2023-01-29 10:36:55','2023-01-29 10:36:55'),(142,28,'THROW PILLOWS','throw-pillows',1,'2023-01-29 10:37:06','2023-01-29 10:37:06'),(143,28,'TABLE LINEN','table-linen',1,'2023-01-29 10:37:17','2023-01-29 10:37:17'),(144,28,'TOWELS','towels',1,'2023-01-29 10:37:24','2023-01-29 10:37:24'),(145,28,'BEDDING','bedding',1,'2023-01-29 10:37:36','2023-01-29 10:37:36'),(146,28,'CURTAINS & DRAPES','curtains-drapes',1,'2023-01-29 10:37:49','2023-01-29 10:37:49'),(147,28,'RUGS & MATS','rugs-mats',1,'2023-01-29 10:37:58','2023-01-29 10:37:58'),(148,28,'TAPESTRIES & WALL HANGINGS','tapestries-wall-hangings',1,'2023-01-29 10:38:17','2023-01-29 10:38:17'),(149,27,'DINNERWARE','dinnerware',1,'2023-01-29 10:38:49','2023-01-29 10:38:49'),(150,27,'DRINKWARE','drinkware',1,'2023-01-29 10:38:58','2023-01-29 10:38:58'),(151,27,'CUTLERY','cutlery',1,'2023-01-29 10:39:09','2023-01-29 10:39:09'),(152,8,'HOODIES','hoodies',1,'2023-01-29 10:41:22','2023-01-29 10:41:22'),(154,8,'POLOS','polos',1,'2023-01-29 10:41:58','2023-01-29 10:41:58'),(155,8,'SHORT SLEEVE T-SHIRTS','short-sleeve-t-shirts',1,'2023-01-29 10:42:20','2023-01-29 10:42:20'),(156,8,'SWEATERS','sweaters',1,'2023-01-29 10:42:48','2023-01-29 10:42:48'),(157,8,'SWEATSHIRTS','sweatshirts',1,'2023-01-29 10:43:07','2023-01-29 10:43:07'),(158,8,'TANK TOPS','tank-tops',1,'2023-01-29 10:43:30','2023-01-29 10:43:30'),(159,9,'LEGGINGS','leggings',1,'2023-01-29 10:44:07','2023-01-29 10:44:07'),(160,9,'MAXI SKIRTS','maxi-skirts',1,'2023-01-29 10:44:22','2023-01-29 10:44:22'),(161,9,'MIDI SKIRTS','midi-skirts',1,'2023-01-29 10:44:32','2023-01-29 10:44:32'),(162,9,'MINI SKIRTS','mini-skirts',1,'2023-01-29 10:44:50','2023-01-29 10:44:50'),(163,9,'PANTS','pants',1,'2023-01-29 10:45:09','2023-01-29 10:45:09'),(164,9,'SHORTS','shorts',1,'2023-01-29 10:45:33','2023-01-29 10:45:33'),(165,9,'SWEATPANTS','sweatpants',1,'2023-01-29 10:46:23','2023-01-29 10:46:23'),(166,10,'BLAZERS','blazers',1,'2023-01-29 14:15:49','2023-01-29 14:15:49'),(167,10,'BOMBERS','bombers',1,'2023-01-29 14:15:59','2023-01-29 14:15:59'),(168,10,'COATS','coats',1,'2023-01-29 14:16:09','2023-01-29 14:16:09'),(169,10,'DENIM JACKETS','denim-jackets',1,'2023-01-29 14:16:44','2023-01-29 14:16:44'),(170,10,'DOWN JACKETS','down-jackets',1,'2023-01-29 14:16:55','2023-01-29 14:16:55'),(171,10,'JACKETS','jackets',1,'2023-01-29 14:17:54','2023-01-29 14:17:54'),(172,10,'FUR & FAUX FUR','fur-faux-fur',1,'2023-01-29 14:18:39','2023-01-29 14:18:39'),(173,10,'LEATHER JACKETS','leather-jackets',1,'2023-01-29 14:19:07','2023-01-29 14:19:07'),(174,10,'RAIN JACKETS','rain-jackets',1,'2023-01-29 14:19:22','2023-01-29 14:19:22'),(175,10,'VESTS','vests',1,'2023-01-29 14:19:34','2023-01-29 14:19:34'),(176,11,'CREATIVE DRESSES','creative-dresses',1,'2023-01-29 14:20:40','2023-01-29 14:20:40'),(177,12,'BOOTS','boots',1,'2023-01-29 14:21:04','2023-01-29 14:21:04'),(178,12,'PLATFORMS','platforms',1,'2023-01-29 14:21:31','2023-01-29 14:21:31'),(179,12,'MULES','mules',1,'2023-01-29 14:22:14','2023-01-29 14:22:14'),(180,12,'FLATS','flats',1,'2023-01-29 14:22:24','2023-01-29 14:22:24'),(182,12,'LOW-TOP SNEAKERS','low-top-sneakers',1,'2023-01-29 14:22:49','2023-01-29 14:22:49'),(183,12,'SANDALS','sandals',1,'2023-01-29 14:23:05','2023-01-29 14:23:05'),(184,12,'SLIP ONS','slip-ons',1,'2023-01-29 14:23:20','2023-01-29 14:23:20'),(185,13,'BACKPACKS','backpacks',1,'2023-01-29 14:24:29','2023-01-29 14:24:29'),(187,13,'CLUTCHES','clutches',1,'2023-01-29 14:24:57','2023-01-29 14:24:57'),(188,13,'SHOULDER BAGS','shoulder-bags',1,'2023-01-29 14:25:29','2023-01-29 14:25:29'),(190,13,'OTHER','other',1,'2023-01-29 14:26:18','2023-01-29 14:26:18'),(191,14,'BODY JEWELRY','body-jewelry',1,'2023-01-29 14:27:26','2023-01-29 14:27:26'),(192,14,'BRACELETS','bracelets',1,'2023-01-29 14:27:40','2023-01-29 14:27:40'),(193,14,'BROOCHES','brooches',1,'2023-01-29 14:27:59','2023-01-29 14:27:59'),(194,14,'CHARMS','charms',1,'2023-01-29 14:28:59','2023-01-29 14:28:59'),(195,14,'CUFFLINKS','cufflinks',1,'2023-01-29 14:29:11','2023-01-29 14:29:11'),(196,14,'EARRINGS','earrings',1,'2023-01-29 14:29:26','2023-01-29 14:29:26'),(197,14,'NECKLACES','necklaces',1,'2023-01-29 14:29:41','2023-01-29 14:29:41'),(198,14,'RINGS','rings',1,'2023-01-29 14:29:52','2023-01-29 14:29:52'),(199,18,'BELTS','belts',1,'2023-01-29 14:30:17','2023-01-29 14:30:17'),(200,18,'HAIR ACCESSORIES','hair-accessories',1,'2023-01-29 14:31:00','2023-01-29 14:31:00'),(204,18,'MISCELLANEOUS','miscellaneous',1,'2023-01-29 14:34:04','2023-01-29 14:34:04'),(205,18,'SCARVES','scarves',1,'2023-01-29 14:34:18','2023-01-29 14:34:18'),(206,18,'SOCKS & INTIMATES','socks-intimates',1,'2023-01-29 14:34:37','2023-01-29 14:34:37'),(207,18,'WATCHES','watches',1,'2023-01-29 14:35:33','2023-01-29 14:35:33');
/*!40000 ALTER TABLE `child_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms`
--

DROP TABLE IF EXISTS `cms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `home_main_banner` varchar(255) DEFAULT NULL,
  `home_counter_background` varchar(255) DEFAULT NULL,
  `home_mobile_app_banner` varchar(255) DEFAULT NULL,
  `home_title` varchar(255) DEFAULT NULL,
  `home_description` varchar(255) DEFAULT NULL,
  `download_app` varchar(255) DEFAULT NULL,
  `newsletter_content` varchar(255) DEFAULT NULL,
  `membership_content` varchar(255) DEFAULT NULL,
  `create_account` varchar(255) DEFAULT NULL,
  `post_ads` varchar(255) DEFAULT NULL,
  `start_earning` varchar(255) DEFAULT NULL,
  `terms_background` varchar(255) DEFAULT NULL,
  `terms_body` text DEFAULT NULL,
  `terms_body_lt` longtext DEFAULT NULL,
  `about_background` varchar(255) DEFAULT NULL,
  `about_video_thumb` varchar(255) DEFAULT NULL,
  `about_body` text DEFAULT NULL,
  `about_body_lt` longtext DEFAULT NULL,
  `privacy_background` varchar(255) DEFAULT NULL,
  `privacy_body` text DEFAULT NULL,
  `privacy_body_lt` longtext DEFAULT NULL,
  `contact_background` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_address` varchar(255) DEFAULT NULL,
  `get_membership_background` varchar(255) DEFAULT NULL,
  `get_membership_image` varchar(255) DEFAULT NULL,
  `pricing_plan_background` varchar(255) DEFAULT NULL,
  `faq_background` varchar(255) DEFAULT NULL,
  `faq_content` varchar(255) DEFAULT NULL,
  `manage_ads_content` varchar(255) DEFAULT NULL,
  `chat_content` varchar(255) DEFAULT NULL,
  `verified_user_content` varchar(255) DEFAULT NULL,
  `data_deletion` longtext DEFAULT NULL,
  `data_deletion_lt` longtext DEFAULT NULL,
  `dashboard_overview_background` varchar(255) DEFAULT NULL,
  `dashboard_post_ads_background` varchar(255) DEFAULT NULL,
  `dashboard_my_ads_background` varchar(255) DEFAULT NULL,
  `dashboard_plan_background` varchar(255) DEFAULT NULL,
  `dashboard_account_setting_background` varchar(255) DEFAULT NULL,
  `dashboard_favorite_ads_background` varchar(255) DEFAULT NULL,
  `dashboard_messenger_background` varchar(255) DEFAULT NULL,
  `posting_rules_background` varchar(255) DEFAULT NULL,
  `posting_rules_body` text DEFAULT NULL,
  `rules_body_lt` longtext DEFAULT NULL,
  `blog_background` varchar(255) DEFAULT NULL,
  `ads_background` varchar(255) DEFAULT NULL,
  `coming_soon_title` varchar(255) DEFAULT NULL,
  `coming_soon_subtitle` varchar(255) DEFAULT NULL,
  `maintenance_title` varchar(255) DEFAULT NULL,
  `maintenance_subtitle` varchar(255) DEFAULT NULL,
  `e404_title` varchar(255) DEFAULT NULL,
  `e404_subtitle` varchar(255) DEFAULT NULL,
  `e404_image` varchar(255) DEFAULT NULL,
  `e500_title` varchar(255) DEFAULT NULL,
  `e500_subtitle` varchar(255) DEFAULT NULL,
  `e500_image` varchar(255) DEFAULT NULL,
  `e503_title` varchar(255) DEFAULT NULL,
  `e503_subtitle` varchar(255) DEFAULT NULL,
  `e503_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms`
--

LOCK TABLES `cms` WRITE;
/*!40000 ALTER TABLE `cms` DISABLE KEYS */;
INSERT INTO `cms` VALUES (1,NULL,NULL,NULL,'Buy, Sell And Find Just About Anythink.','Buy And Sell Everything From Used Cars To Mobile Phones And Computers, Or Search For Property And More All Over The World!','Sed Luctus Nibh At Consectetur Tempor. Proin Et Ipsum Tincidunt, Maximus Turpis Id, Mollis Lacus. Maecenas Nec Risus A Urna Sollicitudin Aliquet. Maecenas Pretium Tristique Sapien','Vestibulum Consectetur Placerat Tellus. Sed Faucibus Fermentum Purus, At Facilisis.','Vestibulum Consectetur Placerat Tellus. Sed Faucibus Fermentum Purus, At Facilisis Neque Auctor.','Vestibulum Ante Ipsum Primis In Faucibus Orci Luctus Et Ultrices Posuere Cubilia Curae. Donec Non Lorem Erat. Sed Vitae Vene.','Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit. Mauris Eu Aliquet Odio. Nulla Pretium Congue Eros, Nec Rhoncus Mi.','Vestibulum Quis Consectetur Est. Fusce Hendrerit Neque At Facilisis Facilisis. Praesent A Pretium Elit. Nulla Aliquam Puru.',NULL,'<h4><strong>2LIFE, SIA. Terms &amp; Conditions</strong></h4><p>Welcome to&nbsp;2LIFE! We love having you here and cannot wait for you to discover all the treasures, we have to offer. What follows are some ground rules all&nbsp;2LIFE&nbsp;users must agree to:</p><p>We want these terms to be easy to understand, so we added some simple summaries throughout.<strong>Disclaimer: The summaries are not a part of the Terms &amp; Conditions. They are simply a user-friendly reference to the legal language of our Terms.</strong></p><p>If you have any questions about or suggestions to these Terms, please contact us at&nbsp;<strong>atbalsts@2life.lv</strong>. For information about how we collect, use, share and otherwise process information about you, please see our&nbsp;<strong>Privacy Policy</strong>.&nbsp;</p><p><strong>1.What is 2LIFE?</strong><br>Intro. You are entering into these Terms &amp; Conditions (the&nbsp;\"<strong>Terms&amp;Conditions</strong>\") with&nbsp;2LIFE SIA. with its principal office located at&nbsp;Limbaži county, Limbaži, Turaidas street 2, LV-4001</p><p>(\"<strong>2LIFE,</strong>\"&nbsp;\"<strong>we</strong>\",&nbsp;\"<strong>us</strong>\"&nbsp;or&nbsp;\"<strong>our</strong>\").</p><p>The&nbsp;2LIFE&nbsp;services, including the website located at www.2life.lv and the&nbsp;2LIFE&nbsp;mobile apps (collectively, the&nbsp;\"<strong>Services</strong>\") are a marketplace where users can offer, sell, buy, and discover products (\"<strong>Products</strong>\"). Users who purchase Products are called&nbsp;\"<strong>Buyers</strong>\", and users who sell Products are called&nbsp;\"<strong>Sellers</strong>\". When using the Services, Buyers and Sellers enter into a contract for the sale and purchase of Products directly between themselves, and&nbsp;2LIFE&nbsp;is not a party to such sale or purchase.</p><ol><li>Accepting the Terms of Service<br>Agreement. These Terms are a legally binding contract between you and&nbsp;2LIFE&nbsp;and apply to your use of all Services. By creating an account or by using our Services in any manner, you agree to these Terms and any other policies that we may publish from time to time, each is incorporated by reference, and each may be updated from time to time.</li></ol><p>Buying, selling, or just browsing is how you agree to be bound by these terms. You can only use&nbsp;2LIFE&nbsp;if you agree to these terms. These terms protect&nbsp;2LIFE&nbsp;from legal risk but also provide protection for you and set out ground rules that help&nbsp;2LIFE&nbsp;stay a safe and friendly place.</p><p><strong>IF YOU DO NOT AGREE TO THESE TERMS IN THEIR ENTIRETY, DO NOT USE OUR SERVICES.</strong></p><p>This is a heads up that these Terms &amp; Conditions have a provision where you agree to resolve all disputes with&nbsp;2LIFE&nbsp;through binding individual arbitration, which means that you waive any right to have those disputes decided by a judge or jury, and that you waive your right to participate in class actions, class arbitrations, or representative actions. Who Can Use&nbsp;2LIFE?<br>Minimum Age. You must be at least 16 years of age to use our Services. If you are under 18 years of age (or the age of legal majority where you live), you may use our Services only under the supervision of a legal guardian who agrees to be bound by these Terms&amp;Conditions. If you are a legal guardian of a user under the age of 18 (or the age of legal majority), you agree to be fully responsible for the acts or omissions of such user in relation to our Services.</p><p>You cannot use&nbsp;2LIFE&nbsp;if you\'re under 16 (or older in some countries). If you\'re under 18 — your parent is responsible for your actions on&nbsp;2LIFE&nbsp;and is legally bound by these terms.</p><p>Use on Behalf of Another. If you use our Services on behalf of another person or entity, (a) all references to \"you\" throughout these Terms will include that person or entity, (b) you represent that you are authorized to accept these Terms on that person\'s or entity\'s behalf, and (c) in the event you or the person or entity violates these Terms, the person or entity agrees to be responsible to us.</p><p>You cannot use 2LIFE&nbsp;if you or your country are prohibited from doing business with the Latvia.</p><ol><li>Accounts and Account Security<br>You may need to register for an account to access our Services. You must provide accurate account information and update your email address and physical address if it changes. You also must maintain the security of your account and notify us if you discover or suspect that someone has accessed your account without your permission(<strong>atbalsts@2life.lv</strong>) If you permit others to use your account credentials, you are responsible for the activities of such users. We reserve the right to reclaim usernames, including on behalf of businesses or individuals that hold legal claims in those usernames.</li></ol><p>It is important that the information associated with your&nbsp;2LIFE&nbsp;account is accurate. If you ever forget your password, are victim to cyber-attack, or have any other issues with your account — updated account information helps us recover accounts and contact you.We also ask you to help us fight bad actors by letting us know of suspicious activity</p><ol><li>Additional Terms and Modifications<br>We may change or update these Terms&amp;Conditions from time to time. We will notify you of material changes. We reserve the right to determine the form and means of providing notification to you and you agree to receive legal notices electronically. Changes will be effective upon the posting of the changes unless otherwise specified. Your use of the Services following the changes constitutes your acceptance of the updated Terms. If you do not agree to the amended Terms, you must stop using our Services.</li></ol><p>As&nbsp;2LIFE&nbsp;grows and evolves, we might have to make changes to these Terms&amp;Conditions. When we make major changes, we will let you know. If you do not agree to the new Terms&amp;Conditions, please stop using&nbsp;2LIFE.</p><ol><li>Services Generally</li></ol><p>Off-Site Activity. For your safety, we discourage off-site transactions and the sharing of contact information, including email addresses and phone numbers, prior to completing a transaction through the Services. Initiating conversations regarding a Product purchase outside of the Services, completing purchases outside of the Services, and soliciting users to&nbsp;2LIFE&nbsp;competitors or attempting to circumvent&nbsp;2LIFE&nbsp;fees by completing transactions initiated on&nbsp;2LIFE&nbsp;off-site, are considered off-site activities. If you choose to engage in off-site activities,&nbsp;2LIFE&nbsp;makes no representations or warranties of any kind, express or implied, about the reliability, accuracy, suitability, safety, or authenticity of communications or transactions performed off-site or the individuals involved in such transactions. All off-site activity is strictly at your own risk. Moreover, transactions conducted outside of the Services are not eligible for any protection provided by&nbsp;2LIFE or the&nbsp;2LIFE Purchase Protection (defined below).&nbsp;2LIFE&nbsp;reserves the right to suspend or terminate your access to the Services for any reason in accordance with these Terms, including in the event of unsafe off-site activity, as determined solely by&nbsp;2LIFE.</p><p>Unfortunately, we cannot control all user conduct on a marketplace like&nbsp;2LIFE. We take all issues seriously, but you still might run into bad things before we have a chance to address them.</p><ol><li>Seller Specific Terms<br>When you sell Products through the Services, you are considered a Seller and you agree to the terms in the following provisions.</li></ol><p>Product Listings. To sell a Product through the Services, Sellers must publish pictures and information about the Products (\"<strong>Product Listing</strong>\"). To list a Product for sale on&nbsp;2LIFE, Sellers must first buy coupouns from 2LIFE via PayPal or Stripe.</p><p>As a Seller, you agree that: (a) you are solely responsible for the accuracy and content of any Product Listing, including its lawfulness; (b) you agree that you have all rights necessary to sell your Products; (c) you will not list or sell any counterfeit Products; (d) we cannot guarantee exact Product Listing durations; (e) we may modify Product Listings at our sole discretion; (f) we reserve the right to delete any Product Listings for any reason upon notice to you; and (g) a Product Listing is not guaranteed to appear or not appear in any particular search and browse results.</p><p>We ask sellers to be responsible for their items, follow the law, and not mislead buyers. Unfortunately, issues with listings come up, so we need to be able to remove problematic listings.We do our best to market items sold on&nbsp;2LIFE&nbsp;and to ensure search results turn up what buyers want to see. But we cannot guarantee specific advertising or search result placement to our users.</p><p>The Services may include functionality for suggesting more effective selling, such as discounting Products and Product price suggestions, but Sellers have sole discretion to set prices.</p><p>Offer and Acceptance. Buyers can buy Products from you immediately at the listed price. You cannot accept further offers on Products sold through the \"Purchase\" option. Alternatively, Buyers can negotiate the price of a Product with you. We will notify you if a potential Buyer makes an offer on your Product Listings. If you receive an offer, you can accept, counter, or decline that offer. Non-binding offers are offers made through PayPal guest checkout, Stripe (\"<strong>2LIFE PAYMENTS</strong>\"), or if both you and the Buyer are located in the E.U. or another jurisdiction that does not allow automatically binding transactions. Binding offers are all other offers. If you accept a binding offer, you enter into a legally binding contract with the applicable Buyer, pursuant to which the Buyer has to initiate funds transmission and you agree to ship the applicable Product (as it is described in the Product Listing) to such Buyer for the price that you accepted. If you accept a non-binding offer, the Buyer must initiate fund transmission to you. Once funds transmission is initiated, you enter into a legally binding contract with the applicable Buyer to ship the Product. If you counter or decline an offer, we will notify the Buyer.</p><p>For a summary of the offer and purchase process, including details about what makes offers binding please visit the&nbsp;<a href=\"https://help.grailed.com/hc/en-us/categories/115000222634-Selling\">Selling and Buying sections</a>&nbsp;in our Help Center.</p><p>Shipping. Eligible Sellers may use our \"2LIFE&nbsp;Labels\" service to select a shipping rate, download a shipping label, and track their package; see&nbsp;<a href=\"https://www.grailed.com/about/grailed-labels\">here</a>&nbsp;for more details and applicable terms.&nbsp;2LIFE&nbsp;reserves the right to discontinue providing&nbsp;2LIFE&nbsp;Labels to any or all users at any time and for any reason. All Sellers must ship Products within seven (7) calendar days after a binding offer for a Product is accepted or after fund transfer is initiated by the Buyer for non-binding offers. If Seller does not ship the Product within the provided timeline, the order will be automatically canceled, and the Buyer refunded. Seller is responsible for the contents of their parcels and must comply with all terms and conditions of the shipping carrier. Once Seller ships and attaches applicable tracking information to the Product Listing or when the Product is delivered (in&nbsp;2LIFE\'s sole discretion), Seller\'s account will be credited with the amount equal to the purchase price, minus taxes,&nbsp;2LIFE\'s commission,&nbsp;2LIFE&nbsp;Labels costs, and any applicable fees. The remitted amount may be redeemed by Seller through&nbsp;2LIFE\'s permitted third party Payment Processor. Notwithstanding, in the event&nbsp;2LIFE&nbsp;determines that a shipment was not fulfilled (including if the tracking information provided appears to have been fraudulent), Seller is required to refund the applicable Buyer, regardless of Seller return policies. If Seller is unable to timely refund the Buyer,&nbsp;2LIFE&nbsp;may refund the Buyer on the Seller\'s behalf in which event Sellers\' accounts located in jurisdictions that allow automatic debits will be automatically debited by&nbsp;2LIFE&nbsp;for the refund amount. Seller hereby agrees to such automatic debiting. If Seller is not eligible for automatic debits, Seller is required to promptly repay&nbsp;2LIFE&nbsp;for this amount and a debt will be created for the amount that Seller owes us for the refund. Whilst the debt remains outstanding,&nbsp;2LIFE&nbsp;may suspend or terminate your access to the Services in accordance with these Terms.</p><p>If you sell through&nbsp;2LIFE, you are responsible for shipping the products. Sellers must ship and provide tracking information within 7 days of when buyer submits payment, otherwise the order will be canceled, and buyer refunded. Once shipped or delivered (depending on the current&nbsp;2LIFE&nbsp;shipping policy), we will release the payment to you minus taxes, commission, and any other fees.Details about when a buyer is obligated to transfer funds can be found in the&nbsp;<a href=\"https://help.grailed.com/hc/en-us/categories/115000222634-Selling\">Selling and Buying sections in our Help Center.</a>More info on shipping timelines can be found&nbsp;<a href=\"https://help.grailed.com/hc/en-us/articles/4412164742939-Shipment-Policy-Updates-\">here</a>.</p><p>Seller Promotions and Seller Generated Offers.&nbsp;2LIFE&nbsp;may grant certain Sellers the ability to choose to offer promotions specifically for their own shops and/or Product Listings through Seller-generated discounts on the listing price(s) by a percentage or an amount. Sellers may be able to discount a single Product Listing or multiple Product Listings at once. Discounted prices are public and will be displayed to all Buyers.&nbsp;2LIFE&nbsp;may also grant certain Sellers the ability to offer a discounted price on Product Listings that is only sent to the users that have favorited a specific Product Listing. On occasion,&nbsp;2LIFE&nbsp;may (in its sole discretion) aggregate Seller discounts and promote them through our websites, apps, and emails. When a Seller runs a promotion or discount, Seller is obliged to follow all laws (including consumer protection rules) that apply. Sales and coupons may not be used for fee avoidance.</p><p>Sometimes sellers will be given the ability to offer discounts and promotions in their shops.</p><p>Seller Initiated Refunds. Sellers may choose to reimburse or refund a Buyer. If a Seller agrees to reimburse or refund payment to Buyer, Seller must do so through their PayPal account for transactions completed through PayPal. For payments completed through means other than a Seller PayPal account,&nbsp;2LIFE&nbsp;will refund the Buyer and then the Seller must reimburse&nbsp;2LIFE. Sellers\' accounts located in jurisdictions that allow automatic debits, will be automatically debited by&nbsp;2LIFE&nbsp;for the reimbursement amount. Seller hereby agrees to such automatic debiting. If Seller is not eligible for automatic debits, Seller is required to promptly repay&nbsp;2LIFE&nbsp;for this amount and a debt will be created for the amount that Seller owes us for the refund. Whilst the debt remains outstanding,&nbsp;2LIFE&nbsp;may suspend or terminate your access to the Services in accordance with these Terms.</p><p>We want our sellers to build their own customer service experience, so we let you be the first point of contact with dissatisfied buyers and choose to issue refunds. If a seller does not have an eligible account connected to their&nbsp;2LIFE&nbsp;shop, we will process a refund on the seller\'s behalf. If we can\'t automatically debit a seller for the refund we issued, the seller must pay us back.</p><p>Seller Protection. If a Buyer (1) falsely claims that they did not receive a Product Seller shipped or the Product they receive is not as described on the Services, and (2) the payment dispute claim they filed with the applicable Payment Processor is successful,&nbsp;2LIFE&nbsp;may reimburse the Seller. Seller may report the issue through the Services or by emailing&nbsp;<a href=\"mailto:help@grailed.com\">help@grailed.com</a>&nbsp;within ninety (90) days from the day of purchase. The seller protection program is only applicable to transactions through the Services, through PayPal, or&nbsp;2LIFE&nbsp;Payments.&nbsp;2LIFE&nbsp;will determine in its sole discretion whether to issue Seller a credit after an investigation. If the Seller\'s claim is eligible,&nbsp;2LIFE&nbsp;will reimburse the Seller the amount that the applicable Buyer was able to recover through the applicable Payment Processor.</p><p>For more information on the&nbsp;2LIFE&nbsp;Purchase Protection go&nbsp;<a href=\"https://www.grailed.com/trust/money-back-guarantee\">here</a>.</p><p>Buyer Data. You (as a Seller) and&nbsp;2LIFE&nbsp;are independent controllers of Buyer data. To the fullest extent permitted by the laws of the E.U. and United Kingdom, we are considered separate and independent data controllers of the personal information of Buyers. As such, we each independently determine the purposes and means of processing Buyer data and therefore are not responsible for your use of Buyer data. You must comply with the applicable data protection laws with respect to your use of Buyer data. If we are found to jointly control such Buyer data and we are held responsible in any way for its use by you, you agree to indemnify us.</p><ol><li>Buyer Specific Terms<br>When you buy Products through the Services, you are considered a Buyer and you agree to the terms in the following provisions.</li></ol><p>Buyer Responsibilities. Prior to purchasing products from a Seller, you are advised to independently verify the applicable information and read any applicable Seller\'s sales, legal and privacy policies. Although we may choose in our sole discretion to intervene or attempt to resolve a dispute between you and other&nbsp;2LIFE&nbsp;users, you agree that we have no obligation to do so and that all transactions are ultimately solely between you and the applicable&nbsp;2LIFE&nbsp;users. Any agreement for and/or purchase of a Product is made solely between Buyer and Seller. Complaints, questions, and claims related to a Product should be directed to the applicable Seller.</p><p>Purchase Conditions. You may submit an offer to buy Products included in a Product Listing through the Services. You hereby acknowledge and agree that: (a) you are solely responsible for reading the full Product Listing before offering a bid or commitment to buy; (b) when you use the Services to commit to pay a certain amount of money to an applicable Seller for a Product included in an applicable Product Listing and you are notified through the Services that such Seller accepts such offer, you agree to purchase such Product; and (c) we do not transfer legal ownership of Products from the Seller to the Buyer and have no responsibility or liability in connection therewith; and (d) we do not in any instances make any representations, warranties or guarantees as to whether an applicable Seller will choose to accept your offer, and we have no liability to you with respect to any such choice by Seller.</p><p>Do not make offers or attempt to buy something if you do not intend to pay the agreed-upon price.</p><p>Sellers choose the price and description of their products. We do our best to encourage sellers to follow our listing guidelines, but not everyone follows them. Sometimes items get sold before that can be reflected on our platform.</p><p>Shipping. Buyers are responsible for any shipping costs incurred with respect to their purchased Products. Sellers will initiate shipment of the applicable Products to the address of the Buyer (or their indicated recipient) within seven (7) calendar days after Buyer initiates funds transfer for a winning offer. If a Seller does not initiate shipment within seven (7) calendar days, the transaction will be automatically canceled, and the Buyer will be refunded for the applicable Product.</p><p>Returns/&nbsp;2LIFE&nbsp;Purchase Protection. All purchases are final, with no returns, refunds, cancellations, or retractions allowed, except where expressly allowed by Sellers, by us, or under applicable law. If the Product you receive is not as described on the Services, then you may request a return by first contacting the applicable Seller in accordance with their return policy. If the Seller is unwilling to return/ issue a refund for the Product, if you purchased through PayPal you may then contact PayPal to dispute a charge. Thereafter, if a Buyer is unable to get resolution from the applicable Seller and PayPal (if applicable),&nbsp;2LIFE&nbsp;may offer a buyer protection program for eligible purchases, to ensure that Buyers get their money back (\"<strong>Purchase Protection</strong>\"). For clarity, for purchases not made through PayPal, you may try to invoke Purchase Protection directly after failing to get resolution from the applicable Seller. You may report the issue through the Services or by emailing&nbsp;<strong>atbalsts@2life.lv</strong>&nbsp;within ninety (14) days from the day you got your purchase. The Purchase Protection is only applicable to Buyer transactions through the Services, through a Buyer PayPal account (PayPal guest checkout is not eligible for the Purchase Protection), or&nbsp;2LIFE&nbsp;Payments.&nbsp;2LIFE&nbsp;will determine in its sole discretion whether to refund a purchase under the Purchase Protection after an investigation. If the Buyer claim is eligible under the Purchase Protection,&nbsp;2LIFE&nbsp;will reimburse the Buyer the amount owed on the Seller\'s behalf.</p><ol><li>User Content<br>User Content. Our Services may allow you and other users to create, post, store and share content, including Product Listings, photos, comments, links, and other materials (collectively,&nbsp;\"<strong>User Content</strong>\"). Except for the license you grant below, as between you and&nbsp;2LIFE, you retain all rights in and to your User Content.</li></ol><p>If you post any content on&nbsp;2LIFE, it still belongs to you.</p><p>License to User Content. You grant&nbsp;2LIFE&nbsp;a perpetual, irrevocable, nonexclusive, royalty-free, worldwide, fully paid, and sublicensable license to use, reproduce, modify, adapt, publish, translate, create derivative works from, distribute, publicly perform, and display your User Content and any name, username or likeness provided with your User Content in all media formats and channels without compensation to you and to perform automated scanning of the User Content to improve targeted searching and advertising. You understand that your User Content and any associated information (such as your username or profile photo) may be visible to others.</p><p>If you post content on&nbsp;2LIFE, we can show it to other people (including through advertising), make it shareable, and use it in other ways to grow the business.</p><p>Right to Share Other\'s User Content. Occasionally, the Services will expressly allow you to “share,” your User Content and User Content of other users, for personal, non-commercial use, such as through your social network account, blog, or email. When User Content is authorized for sharing, we will clearly identify the User Content that you are authorized to share and the ways you may do so, usually by providing a \"share\" button. We may revoke this authorization at any time. Additionally, if you share User Content, you must be able to edit or delete it, and you must edit or delete it promptly upon our request.</p><ol><li>Feedback<br>You understand that we may use everything you post, submit, or otherwise communicate to us about&nbsp;2LIFE&nbsp;or our Services (collectively,&nbsp;\"<strong>Feedback</strong>\") for any purpose, commercial or otherwise, without acknowledgement or compensation to you. You understand that&nbsp;2LIFE&nbsp;may treat Feedback as non-confidential.</li></ol><p>We can use your suggestions to improve and change our services.</p><ol><li>Trademarks<br>The&nbsp;2LIFE&nbsp;name (in still and animated version), the&nbsp;2LIFE&nbsp;\"G\", and our logos, our product or service names, our slogans and the look and feel of the Services are trademarks of&nbsp;2LIFE&nbsp;and may not be copied, imitated, or used, in whole or in part, without our prior written permission. All other trademarks, registered trademarks, product names and company names or logos mentioned on the Services are the property of their respective owners. Reference to any products, services, processes or other information by trade name, trademark, manufacturer, supplier or otherwise does not constitute or imply endorsement, sponsorship, or recommendation by us.</li></ol><p>Please respect our trademarks and brands.</p><ol><li>Prohibited Conduct<br>Conduct Prohibitions. You will not (and will not permit any third party to) violate any applicable law, contract, intellectual property right or other third-party right or commit a tort. You will not (and will not permit any third party to):<ul><li>Engage in any harassing, threatening, intimidating, predatory or stalking conduct;</li><li>Use or attempt to use another user\'s account without authorization from that user and&nbsp;2LIFE;</li><li>Impersonate or post on behalf of any person or entity or otherwise misrepresent your affiliation with a person or entity;</li><li>Sell, resell or commercially use our Services, except as expressly permitted by us under these Terms;</li><li>Copy, reproduce, distribute, publicly perform or publicly display all or portions of our Services, except as expressly permitted by us or our licensors;</li><li>Modify our Services, remove any proprietary rights notices or markings, or otherwise make any derivative works based upon our Services;</li><li>Use our Services other than for their intended purpose and in any manner that could interfere with, disrupt, negatively affect or inhibit other users from fully enjoying our Services or that could damage, disable, overburden or impair the functioning of our Services in any manner;</li><li>Reverse engineer any aspect of our Services or do anything that might discover source code or bypass or circumvent measures employed to prevent or limit access to any part of our Services;</li><li>Use any data mining, robots or similar data gathering or extraction methods designed to scrape or extract data from our Services;</li><li>Develop or use any applications that interact with our Services without our prior written consent;</li><li>Send, distribute or post spam, unsolicited or bulk commercial electronic communications, chain letters, or pyramid schemes;</li><li>Bypass or ignore instructions contained in our robots.txt file; or</li><li>Use our Services for any illegal or unauthorized purpose, or engage in, encourage, or promote any activity that violates these Terms.</li></ul></li></ol><p>Be nice, be respectful to others and&nbsp;2LIFE, and be lawful as you use&nbsp;2LIFE. Do not do anything you would not want someone to do to you or to your business. For our Code of Conduct go&nbsp;<a href=\"https://help.grailed.com/hc/en-us/articles/115002002334\">here</a>.</p><p>User Content Prohibitions. You may also post or otherwise share only User Content that is non-confidential and that you have all necessary rights to disclose. You may not (and shall not permit any third party to) create, post, store or share any User Content that:</p><ul><li>Is unlawful, libelous, defamatory, obscene, pornographic, indecent, lewd, suggestive, harassing, threatening, invasive of privacy or publicity rights, abusive, inflammatory or fraudulent;</li><li>Would constitute, encourage or provide instructions for a criminal offense, violate the rights of any party or otherwise create liability or violate any local, state, national or international law;</li><li>May infringe any patent, trademark, trade secret, copyright or other intellectual or proprietary right of any party;</li><li>Contains or depicts any statements, remarks or claims that do not reflect your honest views and experiences;</li><li>Impersonates, or misrepresents your affiliation with, any person or entity;</li><li>Contains any unsolicited promotions, political campaigning, advertising or solicitations;</li><li>Contains any private or personal information of a third party without such third party\'s consent;</li><li>Contains any viruses, corrupted data or other harmful, disruptive or destructive files or content; or</li><li>In our sole judgment, is objectionable, restricts or inhibits any other person from using or enjoying our Services, or may expose&nbsp;2LIFE&nbsp;or others to any harm or liability of any type.</li></ul><p>Don\'t post porn, spam, offensive stuff, or unlawful stuff.</p><p>Enforcement. Enforcement of this Section is solely at&nbsp;2LIFE\'s discretion. In addition, this Section does not create any private right of action on the part of any third party or any reasonable expectation that the Services will not contain any content that is prohibited by such rules.</p><p>2LIFE&nbsp;will choose when to act based on the above rules. Enforcement can come in many forms such as a warning, taking down content, suspension of an account, or cancellation of an account.</p><p>Parental Controls. Please note that parental control protections (such as computer hardware, software, or filtering services) may be commercially available to assist you in limiting access to material that is harmful to minors. Information identifying current providers of such protections should be available&nbsp;<a href=\"https://en.wikipedia.org/wiki/Comparison_of_content-control_software_and_providers\">here</a>&nbsp;(last checked on August 16, 2022).</p><ol><li>Third-Party Content<br>We may provide information about third-party products, services, activities, or events, or we may allow third parties to make their content and information available on or through the Services (collectively,&nbsp;\"<strong>Third-Party Content</strong>\"). We provide Third-Party Content as a service to those interested in such content. Your dealings or correspondence with third parties and your use of or interaction with any Third-Party Content are solely between you and the third party.&nbsp;2LIFE&nbsp;does not control or endorse, and makes no representations or warranties regarding, any Third-Party Content, and your access to and use of such Third-Party Content is at your own risk.</li><li>Payments and Billing<br>Payment Processors. Payments for transactions will be processed by a third-party Payment Processor we have engaged for the Services, in accordance with their terms of service, and not by us. You hereby explicitly consent to our use of such third-party Payment Processors, the outsourcing of services to them, and the related transfer and processing of data. We reserve the right to add or change available Payment Processors from time to time. We will notify you of any new Payment Processors, and your continued use of any payment features upon receipt of such notice constitutes acceptance of such addition or change as well as your acceptance of the Payment Processors\' terms of service. We are not responsible for errors made by the Payment Processors.</li></ol><p>2LIFE&nbsp;does not process your payment transactions. We hire reputable third parties to process payments for transactions done through&nbsp;2LIFE. Please read the terms of service of the payment processor and comply with them.</p><p>Taxes. As a Seller you are responsible and agree to collect, pay, report, and remit any and all local, state, provincial, federal, or international taxes (including VAT and sales tax) that may be due by you, and as a Buyer you agree to pay any and all local, state, federal, or international taxes (including sales taxes) that may be due by you. You agree that&nbsp;2LIFE&nbsp;is not responsible for reporting, collection, or payment of any taxes on your behalf except for jurisdictions where&nbsp;2LIFE&nbsp;is required to as a marketplace facilitator. You agree to provide&nbsp;2LIFE&nbsp;with all relevant tax information which&nbsp;2LIFE&nbsp;may provide to any tax authority in connection with&nbsp;2LIFE\'s tax liability and where applicable further authorize&nbsp;2LIFE&nbsp;to release that information to such tax authority or other competent governmental body. Your account may be suspended for failure to provide&nbsp;2LIFE&nbsp;with all relevant tax information.</p><p>You are responsible for paying your own taxes. We do however collect taxes that we are required by law to collect. If we need any information from you to file our taxes, you agree to give it to us.</p><p>International Buying and Selling. The Services are accessible to certain international Sellers and Buyers.&nbsp;2LIFE&nbsp;may (but is not obligated to) provide access to certain features and tools to international Sellers and Buyers, such as estimated local currency conversion and integrated international shipping, customs, and tax tools. Sellers and Buyers are responsible for complying with all laws and regulations applicable to the international sale, purchase, and shipment of Products.</p><p>Modifications; Holds; and Maintenance. To the extent permitted by applicable law,&nbsp;2LIFE&nbsp;may (a) modify, update, suspend, or discontinue any aspect of a payment feature; (b) impose limits on certain features and services; or (c) restrict your access to or use of parts or all of the payment features, in each case at any time and without liability or other obligation to you. Further, to protect ourselves from risk of liability for your actions as a Seller, we may at times recommend that an applicable Payment Processor restrict a Seller\'s use of that Payment Processor\'s services based on certain factors, which may result in such Payment Processor imposing such restrictions.&nbsp;2LIFE&nbsp;will use reasonable commercial efforts to ensure that the payment features are available and functional. However,&nbsp;2LIFE&nbsp;is not obligated to provide any maintenance, technical support, or other support for the payment features.&nbsp;2LIFE&nbsp;makes no guarantees to you in relation to the availability or uptime of the payment features.</p><p>As&nbsp;2LIFE&nbsp;grows and evolves, our offering and features on the website may change too (including payment features), so we may get rid of some features or add new ones and make them available to a small population of users for testing.If we suspect you are doing bad things, we can report you to the payment processors.Since we are not the payment processors, we cannot provide payment support to you or guarantee payment features. Please reach out to the applicable payment processor with questions, concerns, or support issues.</p><p>Payment Disclaimers. In addition to the disclaimers listed in Section 15 below, you agree and acknowledge that with respect to any purchases of Products (a) the sale is solely between Buyer and Seller and&nbsp;2LIFE&nbsp;is not a party, unless&nbsp;2LIFE&nbsp;directly lists a Product Listing; (b) Buyers and Sellers are responsible for investigating and resolving disputes (including returns and refunds of any Products purchased); (c)&nbsp;2LIFE&nbsp;is not and will not be responsible for the acts or omissions of any Payment Processors, including any failure or refusal by them to process a transaction; and (d)&nbsp;2LIFE&nbsp;will not be liable for any unauthorized or failed transactions (2LIFE\'s enablement of a transaction does not mean that a Buyer has sufficient funds, or that the transaction will be authorized or processed).</p><p>YOUR USE OF THE SERVICES IS AT YOUR SOLE RISK. THE SERVICES ARE PROVIDED ON AN \"AS IS\" AND \"AS AVAILABLE\" BASIS. TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAWS, GRAILED EXPRESSLY DISCLAIMS ALL WARRANTIES OF ANY KIND, WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, TITLE, AND NON-INFRINGEMENT. TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAWS, GRAILED MAKES NO WARRANTY THAT (A) YOU WILL BE ABLE TO SELL OR PURCHASE ANY PRODUCTS THROUGH THE SERVICES OR THAT THE SERVICES WILL OTHERWISE MEET YOUR REQUIREMENTS, (B) THE SERVICES WILL BE UNINTERRUPTED, TIMELY, SECURE, OR ERROR-FREE, OR (C) THE QUALITY OF ANY PRODUCTS, SERVICES, INFORMATION, OR OTHER MATERIAL PURCHASED OR OBTAINED BY YOU THROUGH THE SERVICES WILL MEET YOUR EXPECTATIONS.</p><p>When you use the&nbsp;2LIFE&nbsp;iOS app, Apple asks us to let you know that it is not responsible for our app or what goes on with it.</p><p>&nbsp;</p>','<p>test</p>','uploads/banners/WSXSC0FInMPjuLLsS5FdprFHu3XGTWbkm7JXE17y.png','https://youtu.be/s7wmiS2mSXY','<p><strong>UPGRADE YOUR WARDROBE WITH SUSTAINABLE FASHION TODAY!</strong></p><p><strong>We’ve all heard the saying “One man’s trash, another man’s treasure”. With 92 million tonnes of TEXTILE WASTE produced every year, it’s time we started acting on that saying and reconsidering the way we dispose of our UNWANTED CLOTHING.</strong></p><p><strong>It’s normal to fall out of love with your wardrobe. You grow older, develop new interests, and suddenly, the outfits you loved suddenly don’t fit you, both physically and sentimentally.</strong></p><p><strong>Instead of THROWING CLOTHES AWAY and turning them into a landfill, 2 life allows you to sell them for the money you can use to upgrade your wardrobe, and give someone else the chance to experience the outfits you once loved.</strong></p><p><strong>Our love for nature and SUSTAINABLE CLOTHING drives our platform, as we know that TEXTILE WASTE is one of the most difficult materials to degrade and turn into biomatter. However, we also know that we can be part of the solution.</strong></p><p><strong>That’s how 2life came to life, as it serves as a meeting ground for lovers of SUSTAINABLE FASHION&nbsp;all over the world to escape the overpriced reselling markets and join a community where high-quality clothing lives forever!</strong></p><p><strong>You’ll be able to BUY, SELL, AND EXCHANGE THE PIECES you no longer have any use for, and find a wide range of clothing items that’s guaranteed to include something for you listed by another passionate seller!</strong></p><p><strong>With your help, we’ll be able to minimize our CARBON FOOTPRINT and enjoy SUSTAINABLE FASHION in an eco-friendly light that never turns into something that hurts our planet and damages our future.</strong></p>','<p><strong>Instead of THROWING CLOTHES AWAY and turning them into a landfill, 2 life allows you to sell them for the money you can use to upgrade your wardrobe, and give someone else the chance to experience the outfits you once loved.</strong></p><p><strong>Our love for nature and SUSTAINABLE CLOTHING drives our platform, as we know that TEXTILE WASTE is one of the most difficult materials to degrade and turn into biomatter. However, we also know that we can be part of the solution.</strong></p><p><strong>That’s how 2life came to life, as it serves as a meeting ground for lovers of SUSTAINABLE FASHION&nbsp;all over the world to escape the overpriced reselling markets and join a community where high-quality clothing lives forever!</strong></p><p><strong>You’ll be able to BUY, SELL, AND EXCHANGE THE PIECES you no longer have any use for, and find a wide range of clothing items that’s guaranteed to include something for you listed by another passionate seller!</strong></p><p><strong>With your help, we’ll be able to minimize our CARBON FOOTPRINT and enjoy SUSTAINABLE FASHION in an eco-friendly light that never turns into something that hurts our planet and damages our future.</strong></p>',NULL,'<h4><strong>1. GENERAL TERMS.</strong></h4><p>1.1. This Privacy Policy describes how SIA \"2LIFE\", reg. no. 44103036888, address Limbaži county, Limbaži, Turaidas street 2, LV-4001 (hereinafter also referred to as \"Data Controller\", \"Controller\") obtains, processes and stores personal data that <strong>2life.Lv</strong> online store obtains from its customers and individuals (hereinafter referred to as \"Data Subject\" or \"You\") who visit the website.</p><p>1.2. Personal data is any information relating to an identified or identifiable physical person, i.e., the Data Subject. Processing is any activity related to personal data, such as obtaining, recording, modifying, using, viewing, erasing or destroying.</p><p>1.3. The Data Controller complies with the data processing principles provided for in the legislation and is able to confirm that personal data is processed in accordance with the applicable legislation.</p><h4><strong>2. ACQUISTION, PROCESSING AND STORAGE OF PERSONAL DATA.</strong></h4><p>2.1. Personally identifiable information is obtained, processed and stored by the Data Controller, mainly through the website of the online store and e-mail.</p><p>2.2. By visiting and using the services provided in the online store, you agree that any information provided is used and managed in accordance with the purposes set out in the Privacy Policy.</p><p>2.3. The Data Subject is responsible for ensuring that the submitted personal data is correct, accurate and complete. Knowingly providing false information is considered a violation of our Privacy Policy. The Data Subject is obliged to immediately notify the Data Controller of any changes in the submitted personal data.</p><p>2.4. The Data Controller is not responsible for damages caused to the Data Subject or third parties, if they are caused by falsely submitted personal data.</p><h4><strong>3. PROCESSING OF PERSONAL DATA OF CUSTOMERS.</strong></h4><p>3.1. The Data Controller may process the following personal data:</p><p>3.1.1. Name and surname</p><p>3.1.2. Date of birth</p><p>3.1.3. Contact information (email address and/or phone number)</p><p>3.1.4. Transaction data (purchased goods, delivery address, price, payment information, etc.)</p><p>3.1.5. Any other information submitted to us during the purchase of services and goods offered by the website or when communicating with us.</p><p>3.2. In addition to the above, the Data Controller has the right to verify the accuracy of the submitted data using publicly available registers.</p><p>3.3. The legal basis for personal data processing is Article 6, Paragraph 1, Subparagraphs a), b), c) and f) of the General Data Protection Regulation:</p><p>a) the Data Subject has given consent to the processing of his personal data for one or more specific purposes;</p><p>b) processing is necessary for the performance of a contract (where the contracting party is the data subject) or for the performance of measures at the request of the Data Subject before the conclusion of the contract;</p><p>c) processing is necessary to fulfill a legal obligation applicable to the Data Controller;</p><p>f) processing is necessary to meet the legitimate interests of the Controller or a third party, except if the interests of the Data Subject or the fundamental rights and fundamental freedoms that require the protection of personal data are more important than such interests, especially if the data subject is a child.</p><p>3.4. The Data Controller stores and processes the personal data of the Data Subject as long as at least one of the following criteria is met:</p><p>3.4.1. Personal data are necessary for the purposes for which they were received;</p><p>3.4.2. As long as the Data Controller and/or the Data Subject can realize their legitimate interests, such as submitting objections, or bringing or lead a lawsuit to court, in accordance with the procedures set forth in external regulatory acts;</p><p>3.4.3. As long as there is a legal obligation to store data, such as under the Accounting Act;</p><p>3.4.4. As long as the Data Subject\'s consent to the relevant personal data processing is valid, if there is no other legal basis for personal data processing.</p><p>Upon termination of the conditions mentioned in this paragraph, the term of storage of the personal data of the Data Subject also expires, and all relevant personal data are permanently deleted from computer systems and electronic and/or paper documents that contain the relevant personal data, or these documents are anonymized.</p><p>3.5. In order to fulfill its obligations to you, the Data Controller has the right to transfer your personal data to cooperation partners, data processors who carry out the necessary data processing on our behalf, for example, accountants, courier services, etc. The data processor is also the person\'s Data Controller. Payment processing is provided by the payment platforms Paypal and Stripe, therefore our company transfers the personal data necessary for payment execution to the owners of the platform.</p><p>Upon request, we can transfer your personal data to state and law enforcement authorities in order to defend our legal interests, if necessary, by drafting, submitting and defending legal claims.</p><p>3.6. When processing and storing personal data, the Data Controller implements organizational and technical measures to ensure the protection of personal data against accidental or illegal destruction, alteration, disclosure and any other illegal processing.</p><h4>&nbsp;<strong>4. RIGHTS OF THE DATA SUBJECT.</strong></h4><p>4.1. In accordance with the General Data Protection Regulation and the laws of the Republic of Latvia, you have the right to:</p><p>4.1.1. Access your personal data, receive information about their processing, as well as request a copy of your personal data in electronic format and the right to transfer this data to another Controller (data portability);</p><p>4.1.2. Request correction of incorrect, inaccurate or incomplete personal data;</p><p>4.1.3. Delete your personal data (\"be forgotten\"), except in cases where the law requires data retention;</p><p>4.1.4. Withdraw your previously given consent to the processing of personal data;</p><p>4.1.5. Limit the processing of your data - the right to request that we temporarily stop processing all your personal data;</p><p>4.1.6. Contact the Data State Inspectorate.</p><p>You can submit a request for the exercise of your rights by filling out the form in person in Limbaži, Turaidas Street 2, or by sending the request electronically by writing to the customer support service <a href=\"mailto:atbalsts@2life.lv\">atbalsts@2life.lv</a> .</p><h4><strong>5. FINAL TERMS</strong></h4><p>5.1. This Privacy Policy has been developed in accordance with Regulation (EU) 2016/679 of the European Parliament and of the Council of 27 April 2016 on the protection of natural persons with regard to the processing of personal data and on the free movement of such data, and repealing Directive 95/46/EC (General Data Protection Regulation), as well as the laws of the Republic of Latvia and the European Union in force.</p><p>5.2. The data controller has the right to make changes or additions to the Privacy Policy at any time and without prior notice. An email will be sent to customers about changes in the Privacy Policy. Corrections come into effect after they are published on the website <a href=\"https://www.2life.lv/\">https://www.2life.lv/</a> .</p>','<h4><strong>1. VISPĀRĪGIE NOTEIKUMI.</strong></h4><p>1.1. Šī Privātuma politika apraksta, kā SIA&nbsp;“2LIFE”, reģ.nr. 44103036888, adrese Limbažu nov., Limbaži, Turaidas iela 2, LV-4001 (turpmāk saukts arī&nbsp;“Datu pārzinis”,&nbsp;“pārzinis”) iegūst, apstrādā un glabā personas datus, ko 2life.Lv internetveikals iegūst no saviem klientiem un personām &nbsp;(turpmāk saukti&nbsp;–&nbsp;“Datu subjekts” vai&nbsp;“Jūs”), kas apmeklē mājaslapu.</p><p>1.2. Personas dati ir jebkura informācija attiecībā uz identificētu vai identificējamu fizisku personu, t. i., Datu subjektu. Apstrāde ir jebkura ar personas datiem saistīta darbība, piemēram, iegūšana, ierakstīšana, pārveidošana, izmantošana, skatīšana, dzēšana vai iznīcināšana.</p><p>1.3. Datu pārzinis ievēro likumdošanā paredzētos datu apstrādes principus un spēj apstiprināt, ka personas dati tiek apstrādāti saskaņā ar spēkā esošo likumdošanu.</p><h4><strong>2. PERSONAS DATU IEGŪŠANA, APSTRĀDE UN GLABĀŠANA.</strong></h4><p>2.1. Personu identificējošu informāciju Datu pārzinis iegūst, apstrādā un glabā, galvenokārt izmantojot internetveikala vietni un e-pastu.&nbsp;</p><p>2.2. Apmeklējot un izmantojot internetveikalā sniegtos pakalpojumus, Jūs piekrītat, ka jebkura sniegtā informācija tiek izmantota un pārvaldīta atbilstoši Privātuma politikā noteiktajiem mērķiem.</p><p>2.3. Datu subjekts ir atbildīgs par to, lai iesniegtie personas dati būtu pareizi, precīzi un pilnīgi. Apzināta nepatiesas informācijas sniegšana tiek uzskatīta par mūsu Privātuma politikas pārkāpumu. Datu subjektam ir pienākums nekavējoties paziņot Datu pārzinim par jebkurām izmaiņām iesniegtajos personas datos.</p><p>2.4. Datu pārzinis nav atbildīgs par zaudējumiem, kas nodarīti Datu subjektam vai trešajām personām, ja tie radušies nepatiesi iesniegtu personas datu dēļ.</p><h4><strong>3. KLIENTU PERSONAS DATU APSTRĀDE.</strong></h4><p>3.1. Datu pārzinis var apstrādāt&nbsp;šādus personas datus:</p><p>3.1.1. Vārds, uzvārds</p><p>3.1.2. Dzimšanas datums</p><p>3.1.3. Kontaktinformācija (e-pasta adrese un/vai tālruņa numurs)</p><p>3.1.4. Darījuma dati (iegādātās preces, piegādes adrese, cena, maksājuma informācija u.t.t.)</p><p>3.1.5. Jebkuru citu informāciju, kura iesniegta mums vietnes piedāvāto pakalpojumu un preču iegādes laikā vai sazinoties ar mums.</p><p>3.2. Papildus iepriekšminētajam, Datu pārzinim ir tiesības pārbaudīt iesniegto datu precizitāti, izmantojot publiski pieejamos reģistrus.</p><p>3.3. Personas datu apstrādes juridiskais pamats ir Vispārīgās datu aizsardzības regulas 6.panta 1.punkta a), b), c) un f) apakšpunkts:</p><p>a) datu subjekts ir devis piekrišanu savu personas datu apstrādei vienam vai vairākiem konkrētiem nolūkiem;</p><p>b) apstrāde ir vajadzīga līguma (kurā līgumslēdzēja puse ir datu subjekts) izpildei vai pasākumu veikšanai pēc datu subjekta pieprasījuma pirms līguma noslēgšanas;</p><p>c) apstrāde ir vajadzīga, lai izpildītu uz Datu pārzini attiecināmu juridisku pienākumu;</p><p>f) apstrāde ir vajadzīga pārziņa vai trešās personas leģitīmo interešu ievērošanai, izņemot, ja datu subjekta intereses vai pamattiesības un pamatbrīvības, kurām nepieciešama personas datu aizsardzība, ir svarīgākas par&nbsp;šādām interesēm, jo&nbsp;īpaši, ja datu subjekts ir bērns.</p><p>3.4. Datu pārzinis glabā un apstrādā Datu subjekta personas datus, kamēr pastāv vismaz viens no zemāk norādītajiem kritērijiem:</p><p>3.4.1. Personas dati nepieciešami tiem nolūkiem, kam tie saņemti;</p><p>3.4.2. Kamēr&nbsp;ārējos normatīvajos aktos noteiktajā kārtībā Datu pārzinis un/vai Datu subjekts var realizēt savas leģitīmās intereses, kā piemēram, iesniegt iebildumus, vai celt vai vest prasību tiesā;</p><p>3.4.3. Kamēr pastāv juridisks pienākums datus glabāt, kā piemēram, saskaņā ar Grāmatvedības likumu;</p><p>3.4.4. Kamēr ir spēkā Datu subjekta piekrišana attiecīgajai personas datu apstrādei, ja nepastāv cits personas datu apstrādes likumīgs pamats.</p><p>Izbeidzoties šajā punktā minētajiem apstākļiem, izbeidzas arī Datu subjekta personas datu glabāšanas termiņš, un visi attiecīgie personas dati tiek neatgriezeniski izdzēsti no datoru sistēmām un elektroniskajiem un/vai papīra dokumentiem, kas saturējuši attiecīgos personas datus, vai arī&nbsp;šie dokumenti tiek anonimizēti.</p><p>3.5. Lai pildītu savas saistības pret Jums, Datu pārzinim ir tiesības nodot Jūsu personas datus sadarbības partneriem, datu apstrādātājiem, kas veic nepieciešamo datu apstrādi mūsu uzdevumā, piemēram, grāmatvežiem, kurjerdienestiem u.c. Datu apstrādātājs arī ir personas Datu pārzinis. Maksājumu apstrādi nodrošina maksājumu platformas Paypal un Stripe, tāpēc mūsu uzņēmums maksājumu izpildei nepieciešamos personas datus nodod platformas&nbsp;īpašniekiem.</p><p>Pēc pieprasījuma mēs varam nodot Jūsu personas datus valsts un tiesībsargājošajām iestādēm, lai nepieciešamības gadījumā aizstāvētu savas juridiskās intereses, sastādot, iesniedzot un aizstāvot juridiskas prasības.</p><p>3.6. Apstrādājot un glabājot personas datus, Datu pārzinis&nbsp;īsteno organizatoriskos un tehniskos pasākumus, lai nodrošinātu personas datu aizsardzību pret nejaušu vai nelikumīgu iznīcināšanu, mainīšanu, izpaušanu un jebkādu citu nelikumīgu apstrādi.</p><h4><strong>4. DATU SUBJEKTA TIESĪBAS.</strong></h4><p>4.1. Saskaņā ar Vispārīgo datu aizsardzības regulu un Latvijas Republikas tiesību aktiem, Jums ir tiesības:</p><p>4.1.1. Piekļūt saviem personas datiem, saņemt informāciju par to apstrādi, kā arī pieprasīt Jūsu personas datu kopiju elektroniskā formātā un tiesības uz&nbsp;šo datu nodošanu citam pārzinim (datu pārnesamība);</p><p>4.1.2. Pieprasīt labot nepareizus, neprecīzus vai nepilnīgus personas datus;</p><p>4.1.3. Dzēst savus personas datus (“tikt aizmirstam”), izņemot gadījumus, kad likums pieprasa saglabāt datus;</p><p>4.1.4. Atsaukt savu iepriekš sniegto piekrišanu personas datu apstrādei;</p><p>4.1.5. Ierobežot savu datu apstrādi&nbsp;– tiesības pieprasīt, lai mēs&nbsp;īslaicīgi pavisam pārtraucam apstrādāt visus Jūsu personas datus;</p><p>4.1.6. Vērsties Datu valsts inspekcijā.</p><p>Pieprasījumu par savu tiesību&nbsp;īstenošanu varat iesniegt, aizpildot formu klātienē Limbažos, Turaidas ielā 2, vai arī iesūtot pieprasījumu elektroniski, rakstot uz klientu atbalsta dienestu&nbsp;<a href=\"mailto:atbalsts@2life.lv\">atbalsts@2life.lv</a>&nbsp;.</p><h4><strong>5. NOBEIGUMA NOTEIKUMI.</strong></h4><p>5.1. Šī Privātuma politika izstrādāta saskaņā ar Eiropas Parlamenta un Padomes regulu (ES) 2016/679 (2016. gada 27. aprīlis) par fizisku personu aizsardzību attiecībā uz personas datu apstrādi un&nbsp;šādu datu brīvu apriti un ar ko atceļ Direktīvu 95/46/EK (Vispārīgā datu aizsardzības regula), kā arī Latvijas Republikas un Eiropas Savienības spēkā esošajiem likumiem.</p><p>5.2. Datu pārzinim ir tiesības veikt izmaiņas vai papildinājumus Privātuma politikā jebkurā brīdī un bez iepriekšēja brīdinājuma. Par izmaiņām privātuma politikā klientiem tiks nosūtīta e-vēstule.&nbsp;Labojumi stājas spēkā pēc to publicēšanas mājas lapā&nbsp;<a href=\"https://www.2life.lv/\">https://www.2life.lv/</a> .</p>',NULL,'+371 27013565','info@2life.lv','Latvia',NULL,NULL,NULL,NULL,'Praesent Finibus Dictum Nisl Sit Amet Vulputate. Fusce A Metus Eu Velit Posuere Semper A Bibendum Ante. Donec Eu Tellus Dapibus, Semper Orci Eget, Commodo Lacu Praesent Ullamcorper.','Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit. Etiam Commodo Vel Ligula.','Class Aptent Taciti Sociosqu Ad Litora Torquent Per Conubia Nostra, Per Inceptos Himenaeos.','Class Aptent Taciti Sociosqu Ad Litora Torquent Per Conubia Nostra, Per Inceptos Himenaeos.','<p>Data Deletion&nbsp;</p><p>1. RIGHTS OF THE DATA SUBJECT.<br>2. In accordance with the General Data Protection Regulation and the laws of the Republic of Latvia, you have the right to:<br>3. Access your personal data, receive information about their processing, as well as request a copy of your personal data in electronic format and the right to transfer this data to another Controller (data portability);<br>4. Request correction of incorrect, inaccurate or incomplete personal data;<br>5. Delete your personal data (\"be forgotten\"), except in cases where the law requires data retention;</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<p>herllo</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Opps! Page Not Found!','We didn\'t find the page you are looking. Please back to home page.','frontend/images/bg/error.png','Opps! Page Not Found!','We didn\'t find the page you are looking. Please back to home page.','frontend/default_images/error-banner.png','Opps! Page Not Found!','We didn\'t find the page you are looking. Please back to home page.','frontend/default_images/error-banner.png','2022-07-25 05:09:47','2023-04-13 13:53:29');
/*!40000 ALTER TABLE `cms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (6,'Red',1,'2023-02-09 13:28:17','2023-02-09 13:28:17'),(7,'Orange',1,'2023-02-09 13:28:23','2023-02-09 13:28:23'),(8,'Yellow',1,'2023-02-09 13:28:30','2023-02-09 13:28:30'),(9,'Green',1,'2023-02-09 13:28:35','2023-02-09 13:28:35'),(10,'Blue',1,'2023-02-09 13:28:41','2023-02-09 13:28:41'),(11,'Purple',1,'2023-02-09 13:28:47','2023-02-09 13:28:47'),(12,'Pink',1,'2023-02-09 13:28:53','2023-02-09 13:28:53'),(13,'Brown',1,'2023-02-09 13:28:59','2023-02-09 13:28:59'),(14,'Black',1,'2023-02-09 13:29:06','2023-02-09 13:29:06'),(15,'White',1,'2023-02-09 13:29:12','2023-02-09 13:29:12'),(16,'Gray',1,'2023-02-09 13:29:19','2023-02-09 13:29:19'),(17,'Maroon',1,'2023-02-09 13:29:25','2023-02-09 13:29:25'),(18,'Olive',1,'2023-02-09 13:29:42','2023-02-09 13:29:42'),(19,'Lime',1,'2023-02-09 13:29:48','2023-02-09 13:29:48'),(20,'Aqua',1,'2023-02-09 13:29:54','2023-02-09 13:29:54'),(21,'Teal',1,'2023-02-09 13:30:00','2023-02-09 13:30:00'),(22,'Navy',1,'2023-02-09 13:30:06','2023-02-09 13:30:06'),(23,'Indigo',1,'2023-02-09 13:30:14','2023-02-09 13:30:14'),(24,'Lavender',1,'2023-02-09 13:30:20','2023-02-09 13:30:20'),(25,'Violet',1,'2023-02-09 13:30:26','2023-02-09 13:30:26'),(26,'Bronze',1,'2023-02-09 13:30:31','2023-02-09 13:30:31'),(27,'Gold',1,'2023-02-09 13:30:37','2023-02-09 13:30:37'),(28,'Silver',1,'2023-02-09 13:30:42','2023-02-09 13:30:42'),(29,'Rust',1,'2023-02-09 13:30:49','2023-02-09 13:30:49'),(30,'Burgundy',1,'2023-02-09 13:31:05','2023-02-09 13:31:05');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_helps`
--

DROP TABLE IF EXISTS `contact_helps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_helps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_helps`
--

LOCK TABLES `contact_helps` WRITE;
/*!40000 ALTER TABLE `contact_helps` DISABLE KEYS */;
INSERT INTO `contact_helps` VALUES (1,'Something I sold','2022-11-12 07:14:33','2022-11-12 07:14:33'),(2,'Something I purchased','2022-11-12 07:14:33','2022-11-12 07:14:33'),(3,'My account','2022-11-12 07:14:33','2022-11-12 07:14:33'),(4,'Something else','2022-11-12 07:14:33','2022-11-12 07:14:33');
/*!40000 ALTER TABLE `contact_helps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject_id` int(255) NOT NULL,
  `reason_id` int(255) NOT NULL,
  `listing_url` varchar(255) NOT NULL,
  `screenshot` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Carl E','pat@aneesho.com',4,0,'--------','','Do you need help with graphic design - brochures, banners, flyers, advertisements, social media posts, logos etc? \r\n\r\nWe charge a low fixed monthly fee. Let me know if you\'re interested and would like to see our portfolio.','2023-02-21 06:15:15','2023-02-21 06:15:15');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cookies`
--

DROP TABLE IF EXISTS `cookies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cookies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `allow_cookies` tinyint(1) NOT NULL DEFAULT 1,
  `cookie_name` varchar(255) NOT NULL DEFAULT 'gdpr_cookie',
  `cookie_expiration` tinyint(4) NOT NULL DEFAULT 30,
  `force_consent` tinyint(1) NOT NULL DEFAULT 0,
  `darkmode` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(255) NOT NULL DEFAULT 'en',
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `approve_button_text` varchar(255) NOT NULL,
  `decline_button_text` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cookies`
--

LOCK TABLES `cookies` WRITE;
/*!40000 ALTER TABLE `cookies` DISABLE KEYS */;
INSERT INTO `cookies` VALUES (1,1,'gdpr_cookie',30,0,0,'en','We use cookies!','Hi, this website uses essential cookies to ensure its proper operation and tracking cookies to understand how you interact with it. The latter will be set only after consent. <button type=\"button\" data-cc=\"c-settings\" class=\"cc-link\">Let me choose</button>','Allow all Cookies','Reject all Cookies','2022-07-25 05:09:47','2022-07-25 05:09:47');
/*!40000 ALTER TABLE `cookies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `coupons` int(11) DEFAULT NULL,
  `price` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` VALUES (5,'Single',1,'0.67',1,'2023-01-05 15:49:38','2023-01-05 15:49:38'),(6,'Triple',3,'1.77',1,'2023-01-05 15:51:18','2023-01-05 15:51:18'),(7,'Five',5,'2.99',1,'2023-01-05 15:52:20','2023-01-05 15:52:20');
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `default_currencies` int(2) DEFAULT 0 COMMENT '1=Default currencies; 0=Absence currencies, ',
  `symbol_position` varchar(255) NOT NULL DEFAULT 'left',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'European Union Currency','EUR','€',1,'left','2022-07-25 05:09:47','2023-03-23 13:42:21'),(2,'Dollar','USD','$',0,'left','2023-02-01 05:02:40','2023-03-23 13:42:21');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_groups`
--

DROP TABLE IF EXISTS `custom_field_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_field_groups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_groups`
--

LOCK TABLES `custom_field_groups` WRITE;
/*!40000 ALTER TABLE `custom_field_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_field_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_values`
--

DROP TABLE IF EXISTS `custom_field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_field_values` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint(20) unsigned NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `custom_field_values_custom_field_id_foreign` (`custom_field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_values`
--

LOCK TABLES `custom_field_values` WRITE;
/*!40000 ALTER TABLE `custom_field_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_field_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_group_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `type` enum('text','textarea','select','radio','file','url','number','date','checkbox','checkbox_multiple') NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `filterable` tinyint(1) NOT NULL DEFAULT 0,
  `listable` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(255) NOT NULL DEFAULT 'fas fa-cube',
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `custom_fields_custom_field_group_id_foreign` (`custom_field_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `database_backups`
--

DROP TABLE IF EXISTS `database_backups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `database_backups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_backups`
--

LOCK TABLES `database_backups` WRITE;
/*!40000 ALTER TABLE `database_backups` DISABLE KEYS */;
/*!40000 ALTER TABLE `database_backups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emails_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` VALUES (1,'ronymia.tech@gmail.com','2022-12-27 10:16:03','2022-12-27 10:16:03'),(2,'user@gmail.com','2022-12-27 10:16:11','2022-12-27 10:16:11'),(3,'rony@gmail.com','2022-12-27 11:49:52','2022-12-27 11:49:52'),(4,'admin@gmail.com','2022-12-28 06:29:07','2022-12-28 06:29:07'),(6,'mucenieksricards@gmail.com','2023-03-10 08:27:01','2023-03-10 08:27:01'),(7,'testbot123@gmail.com','2023-03-10 08:32:38','2023-03-10 08:32:38');
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
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
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `faq_categories_name_unique` (`name`),
  UNIQUE KEY `faq_categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Buying','buying','fab fa-autoprefixer',0,'2022-10-19 09:22:45','2022-10-19 09:22:45'),(2,'Selling','selling','fas fa-award',0,'2022-10-19 09:22:55','2022-10-19 09:22:55'),(3,'2LIFE Protection','2life-protection','fas fa-bug',0,'2022-10-19 09:23:16','2023-02-07 10:36:20'),(4,'2LIFE 101','2life-101','fab fa-autoprefixer',0,'2022-10-19 09:23:28','2023-02-07 10:36:30');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `faq_category_id` bigint(20) unsigned NOT NULL,
  `question` text NOT NULL,
  `answer` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `faqs_faq_category_id_foreign` (`faq_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,1,'How much does it cost to place an ad?','It\'s completely free.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','2022-10-19 09:23:53','2022-10-19 09:29:00'),(2,3,'How to protect my account?','It\'s completely free.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','2022-10-19 09:24:41','2022-10-19 09:29:58'),(3,2,'How owner will get his payment?','It\'s completely free.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','2022-10-19 09:25:28','2022-10-19 09:29:44'),(4,1,'How to buy some product?','It\'s completely free.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','2022-10-19 09:30:55','2022-10-19 09:30:55'),(5,1,'How to get my product?','It\'s completely free.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','2022-10-19 09:31:20','2022-10-19 09:31:20'),(6,1,'What if I don\'t receive a product?','It\'s completely free.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','2022-10-19 09:31:57','2022-10-19 09:31:57'),(7,2,'What if my product is stock-out?','It\'s completely free.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','2022-10-19 09:32:31','2022-10-19 09:32:31'),(8,2,'How to increase my product price?','It\'s completely free.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','2022-10-19 09:32:53','2022-10-19 09:32:53'),(9,2,'How to list my ad as a featured one?','It\'s completely free.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','2022-10-19 09:33:16','2022-10-19 09:33:16'),(11,3,'Where to complain against frauds?','It\'s completely free.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','2022-10-19 09:34:03','2022-10-19 09:34:03'),(12,3,'How will you handle frauds?','It\'s completely free.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','2022-10-19 09:34:16','2022-10-19 09:34:16'),(13,4,'Is there any membership procedure?','It\'s completely free.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','2022-10-19 09:34:35','2022-10-19 09:34:35'),(14,4,'Zero-Tolerance Fraud Policy','We take fraud very seriously. In order to keep the community safe for all 2LIFE users, the 2LIFE team constantly monitors the marketplace for fraudulent items and dishonest buyers/sellers. Our Zero-Tolerance Policy means that anyone posting counterfeit goods, posting items they do not own, or engaging in any other duplicitous behavior will be immediately banned from 2LIFE platform.','2023-04-14 09:17:56','2023-04-14 09:17:56');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_reasons`
--

DROP TABLE IF EXISTS `help_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_reasons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `contact_helps_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_reasons`
--

LOCK TABLES `help_reasons` WRITE;
/*!40000 ALTER TABLE `help_reasons` DISABLE KEYS */;
INSERT INTO `help_reasons` VALUES (1,'I’d like to receive my funds',1,'2022-10-15 05:11:32','2022-10-15 05:11:32'),(2,'My shipment is still in transit',1,'2022-10-15 05:11:32','2022-10-15 05:11:32'),(3,'My shipment is still in transit',1,'2022-10-15 05:11:32','2022-10-15 05:11:32'),(4,'I’d like to refund the buyer',1,'2022-10-15 05:11:32','2022-10-15 05:11:32'),(5,'The buyer has opened a claim',1,'2022-10-15 05:11:32','2022-10-15 05:11:32'),(6,'I refunded the buyer but haven’t received a fee refund',1,'2022-10-15 05:11:32','2022-10-15 05:11:32'),(7,'I need help getting/using my Grailed Label',1,'2022-10-15 05:11:32','2022-10-15 05:11:32'),(8,'Problem with tracking or delivery',1,'2022-10-15 05:11:32','2022-10-15 05:11:32'),(9,'My shipment is still in transit',1,'2022-10-15 11:11:32','2022-10-15 11:11:32'),(10,'I’d like to refund the buyer',1,'2022-10-15 11:11:32','2022-10-15 11:11:32'),(11,'The buyer has opened a claim',1,'2022-10-15 11:11:32','2022-10-15 11:11:32'),(12,'I refunded the buyer but haven’t received a fee refund',1,'2022-10-15 11:11:32','2022-10-15 11:11:32'),(13,'I need help getting/using my Grailed Label',1,'2022-10-15 11:11:32','2022-10-15 11:11:32'),(14,'Problem with tracking or delivery',1,'2022-10-15 11:11:32','2022-10-15 11:11:32');
/*!40000 ALTER TABLE `help_reasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_purchases`
--

DROP TABLE IF EXISTS `item_purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_purchases` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ad_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `unit_price` float(14,2) NOT NULL DEFAULT 0.00,
  `units` int(11) DEFAULT 0,
  `total_price` float(14,2) NOT NULL,
  `total_dicount` float(14,2) DEFAULT 0.00,
  `grand_total` float(14,2) NOT NULL DEFAULT 0.00,
  `status` int(2) NOT NULL DEFAULT 0 COMMENT '0=ordered but due, \r\n1= ordered and paid \r\n2= seller delivered \r\n3= buyer got the item \r\n4= buyer got the item and not accepted \r\n5 = buyer got the item and accepted ',
  `shiping_to` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `created_by` int(10) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_by` int(10) DEFAULT NULL,
  `admin_commission_percent` float(14,2) NOT NULL DEFAULT 0.00,
  `admin_commission` float(14,2) NOT NULL DEFAULT 0.00,
  `seller_amount` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_purchases`
--

LOCK TABLES `item_purchases` WRITE;
/*!40000 ALTER TABLE `item_purchases` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_purchases` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_item_purchases_insert` BEFORE INSERT ON `item_purchases` FOR EACH ROW begin
 set new.seller_amount = new.grand_total-new.admin_commission;


end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_item_purchases_insert` AFTER INSERT ON `item_purchases` FOR EACH ROW begin

	declare var_total_seller_amount float default 0;
 	select sum(seller_amount) into var_total_seller_amount from item_purchases where user_id = new.user_id;

 	update users set total_seller_amount = var_total_seller_amount where id = new.user_id;
 	


end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
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
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `direction` varchar(3) NOT NULL DEFAULT 'ltr',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `languages_name_unique` (`name`),
  UNIQUE KEY `languages_code_unique` (`code`),
  UNIQUE KEY `languages_icon_unique` (`icon`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','flag-icon-gb','ltr','2022-07-25 05:09:47','2022-07-25 05:09:47'),(2,'Latvian','lv','flag-icon-lv','ltr','2023-01-01 06:20:34','2023-01-01 06:20:34'),(3,'Estonian','et','flag-icon-ee','ltr','2023-01-01 06:22:03','2023-01-01 06:22:03'),(4,'Lithuanian','lt','flag-icon-lt','ltr','2023-01-01 06:23:10','2023-01-06 11:41:27');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measurements_points`
--

DROP TABLE IF EXISTS `measurements_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measurements_points` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '1=active,0=inactive',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measurements_points`
--

LOCK TABLES `measurements_points` WRITE;
/*!40000 ALTER TABLE `measurements_points` DISABLE KEYS */;
INSERT INTO `measurements_points` VALUES (1,'Bust',NULL,NULL,1),(2,'Length',NULL,NULL,1),(3,'Shoulders',NULL,NULL,1),(4,'Waist',NULL,NULL,1),(5,'Sleeve_Length',NULL,'2023-01-12 09:20:02',1),(6,'Hip',NULL,NULL,1),(7,'Inseam_Length',NULL,NULL,1),(8,'Leg_Opening',NULL,'2023-01-12 09:19:57',1),(9,'Front_Rise',NULL,'2023-01-12 09:19:52',1);
/*!40000 ALTER TABLE `measurements_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messengers`
--

DROP TABLE IF EXISTS `messengers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messengers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_id` bigint(20) unsigned NOT NULL,
  `to_id` bigint(20) unsigned NOT NULL,
  `body` text NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messengers`
--

LOCK TABLES `messengers` WRITE;
/*!40000 ALTER TABLE `messengers` DISABLE KEYS */;
INSERT INTO `messengers` VALUES (1,57,56,'.',0,'2023-02-02 12:00:51','2023-02-02 12:00:51');
/*!40000 ALTER TABLE `messengers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2012_07_14_154223_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2020_11_12_184107_create_permission_tables',1),(5,'2020_12_20_161857_create_brands_table',1),(6,'2020_12_23_122556_create_contacts_table',1),(7,'2021_02_17_110211_create_testimonials_table',1),(8,'2021_02_18_112239_create_admins_table',1),(9,'2021_08_22_051131_create_categories_table',1),(10,'2021_08_22_051134_create_sub_categories_table',1),(11,'2021_08_22_051135_create_ads_table',1),(12,'2021_08_22_051198_create_post_categories_table',1),(13,'2021_08_22_051199_create_posts_table',1),(14,'2021_08_23_115402_create_settings_table',1),(15,'2021_08_25_061331_create_languages_table',1),(16,'2021_09_04_105120_create_blog_comments_table',1),(17,'2021_09_05_120235_create_ad_features_table',1),(18,'2021_09_05_120248_create_ad_galleries_table',1),(19,'2021_09_19_141812_create_plans_table',1),(20,'2021_11_13_114825_create_messengers_table',1),(21,'2021_11_15_112417_create_user_plans_table',1),(22,'2021_11_15_112949_create_transactions_table',1),(23,'2021_12_14_142236_create_emails_table',1),(24,'2021_12_15_161624_create_module_settings_table',1),(25,'2021_12_19_101413_create_cms_table',1),(26,'2021_12_19_152529_create_faq_categories_table',1),(27,'2021_12_21_105713_create_faqs_table',1),(28,'2022_01_25_131111_add_fields_to_settings_table',1),(29,'2022_01_26_091457_add_social_login_fields_to_users_table',1),(30,'2022_02_16_152704_add_loader_fields_to_settings_table',1),(31,'2022_03_05_125615_create_currencies_table',1),(32,'2022_03_08_110749_add_website_configuration_to_settings_table',1),(33,'2022_03_27_175435_create_orders_table',1),(34,'2022_03_28_093629_add_socialite_column_to_users_table',1),(35,'2022_03_29_100616_create_timezones_table',1),(36,'2022_03_29_121851_create_admin_searches_table',1),(37,'2022_03_30_082959_create_cookies_table',1),(38,'2022_03_30_114924_create_seos_table',1),(39,'2022_03_30_121200_create_database_backups_table',1),(40,'2022_04_25_132657_create_setup_guides_table',1),(41,'2022_04_28_134721_create_mobile_app_configs_table',1),(42,'2022_04_28_142433_create_mobile_app_sliders_table',1),(43,'2022_06_06_041744_add_field_to_users_table',1),(44,'2022_06_06_052533_create_notifications_table',1),(45,'2022_06_06_092421_create_themes_table',1),(46,'2022_06_08_053638_create_custom_field_groups_table',1),(47,'2022_06_08_060821_create_custom_fields_table',1),(48,'2022_06_08_061216_create_custom_field_values_table',1),(49,'2022_06_08_061928_create_category_custom_field_table',1),(50,'2022_06_08_091126_create_product_custom_fields_table',1),(51,'2022_06_14_051918_add_fields_to_user_plans_table',1),(52,'2022_06_14_095728_add_fields_to_plans_table',1),(53,'2022_06_18_031525_add_full_address_to_ads_table',1),(54,'2022_06_27_050337_add_map_to_settings_table',1),(55,'2022_07_03_030110_add_whatsapp_field_to_ads_table',1),(56,'2022_07_04_042533_create_jobs_table',1),(57,'2022_07_05_081552_create_reports_table',1),(58,'2022_07_05_112407_create_social_media_table',1),(59,'2022_07_14_151623_create_wishlists_table',1),(60,'2022_07_14_155901_create_reviews_table',1),(61,'2022_07_24_110337_create_user_device_token_tbale',1),(62,'2022_07_25_024244_add_push_notification_settings_table',1),(63,'2022_09_17_120551_childcategory',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobile_app_configs`
--

DROP TABLE IF EXISTS `mobile_app_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mobile_app_configs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `android_download_url` varchar(255) DEFAULT NULL,
  `ios_download_url` varchar(255) DEFAULT NULL,
  `privacy_url` varchar(255) DEFAULT NULL,
  `support_url` varchar(255) DEFAULT NULL,
  `terms_and_condition_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobile_app_configs`
--

LOCK TABLES `mobile_app_configs` WRITE;
/*!40000 ALTER TABLE `mobile_app_configs` DISABLE KEYS */;
INSERT INTO `mobile_app_configs` VALUES (1,'https://play.google.com/store/apps/details?id=com.app.appname','https://apps.apple.com/us/app/app-name/id1440990079','https://www.appname.com/privacy-policy','https://www.appname.com/support','https://www.appname.com/terms-and-conditions','2022-07-25 05:09:47','2022-07-25 05:09:47');
/*!40000 ALTER TABLE `mobile_app_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobile_app_sliders`
--

DROP TABLE IF EXISTS `mobile_app_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mobile_app_sliders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT 0,
  `background` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobile_app_sliders`
--

LOCK TABLES `mobile_app_sliders` WRITE;
/*!40000 ALTER TABLE `mobile_app_sliders` DISABLE KEYS */;
/*!40000 ALTER TABLE `mobile_app_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\Models\\Admin',1),(1,'App\\Models\\Admin',2);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_settings`
--

DROP TABLE IF EXISTS `module_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `blog` tinyint(1) NOT NULL DEFAULT 1,
  `newsletter` tinyint(1) NOT NULL DEFAULT 1,
  `language` tinyint(1) NOT NULL DEFAULT 1,
  `contact` tinyint(1) NOT NULL DEFAULT 1,
  `faq` tinyint(1) NOT NULL DEFAULT 1,
  `testimonial` tinyint(1) NOT NULL DEFAULT 1,
  `price_plan` tinyint(1) NOT NULL DEFAULT 1,
  `appearance` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_settings`
--

LOCK TABLES `module_settings` WRITE;
/*!40000 ALTER TABLE `module_settings` DISABLE KEYS */;
INSERT INTO `module_settings` VALUES (1,1,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `module_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES ('003bbe8d-0dad-47a2-9700-7566811c34cf','App\\Notifications\\MembershipUpgradeNotification','App\\Models\\User',25,'{\"msg\":\"Purchased  10 Coupons\",\"type\":\"coupon_purchased\"}',NULL,'2023-01-05 09:42:04','2023-01-05 09:42:04'),('0046f997-950a-4e8e-a228-f959d35f5f2e','App\\Notifications\\AdCreateNotification','App\\Models\\User',2,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/mens-regular-fit-bomber-jacket\"}',NULL,'2022-10-19 12:46:33','2022-10-19 12:46:33'),('005c246d-e345-4e3e-8f40-542bb1b800bf','App\\Notifications\\LoginNotification','App\\Models\\User',24,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-28 11:40:12','2022-12-28 11:40:12'),('01c499f6-04ba-4d5a-9635-fe74832ea180','App\\Notifications\\LoginNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-29 12:13:36','2022-12-29 12:13:36'),('01e60306-8eda-42d0-a319-dd3f7719633a','App\\Notifications\\AdApprovedNotification','App\\Models\\User',20,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/nautica-mens-zip-up-windbreaker-bomber-jacket-water-and-wind-resistant\"}',NULL,'2022-11-05 06:39:33','2022-11-05 06:39:33'),('020af7bb-7bc8-4442-81f0-c27dc8a2b5aa','App\\Notifications\\LogoutNotification','App\\Models\\User',1,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-11-23 06:51:30','2022-11-23 06:51:30'),('022c1c1b-628c-4a9e-8438-876e5f8ac87e','App\\Notifications\\AdDeleteNotification','App\\Models\\User',20,'{\"msg\":\"You\'re just deleted a ad\",\"type\":\"addelete\"}',NULL,'2022-10-31 06:11:47','2022-10-31 06:11:47'),('026394c0-44ec-4e6f-b340-c5d2f9f4114f','App\\Notifications\\LogoutNotification','App\\Models\\User',2,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-10-25 10:58:44','2022-10-25 10:58:44'),('029f39ba-f6f1-4c36-abee-495700d82382','App\\Notifications\\LoginNotification','App\\Models\\User',6,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-04 03:17:56','2022-12-04 03:17:56'),('02fa7ce9-03b5-40d7-96bb-030ea315c4d9','App\\Notifications\\LoginNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-12 09:36:07','2022-11-12 09:36:07'),('061d9c4f-c788-4c35-b437-1d9b2f067187','App\\Notifications\\LoginNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-12 11:03:36','2022-11-12 11:03:36'),('072ee71a-90b3-49db-86af-39e8bf91588e','App\\Notifications\\LoginNotification','App\\Models\\User',1,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-05 13:02:45','2022-11-05 13:02:45'),('07826374-c491-47fa-9553-d2c12024a13a','App\\Notifications\\LoginNotification','App\\Models\\User',6,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-03 11:00:07','2022-12-03 11:00:07'),('07ac1eb8-74e5-4c7a-8793-02c8a95630ef','App\\Notifications\\AdApprovedNotification','App\\Models\\User',25,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/2life.lv\\/ad\\/details\\/test-fake-item-2\"}',NULL,'2022-12-27 10:27:21','2022-12-27 10:27:21'),('0808d866-e277-4113-bca9-8913453cf4b3','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-02-04 12:04:11','2023-02-04 12:04:11'),('088d4611-c5c6-4637-a9c3-9273bc3ec9b6','App\\Notifications\\LoginNotification','App\\Models\\User',38,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-04 09:30:24','2022-12-04 09:30:24'),('09443e3a-a15d-4b35-ad31-b6c9ac1f7280','App\\Notifications\\LogoutNotification','App\\Models\\User',70,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-03-20 05:48:50','2023-03-20 05:48:50'),('095452da-3f1b-4007-b1bd-05e3694dae13','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-03-19 11:59:50','2023-03-19 11:59:50'),('098e3e14-2d2c-4a83-9816-d0adb078c03c','App\\Notifications\\LogoutNotification','App\\Models\\User',38,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-12-04 09:32:18','2022-12-04 09:32:18'),('0a5f2dd5-ba66-4c6c-b91b-23cf88567349','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-03-19 12:00:30','2023-03-19 12:00:30'),('0b04b6a3-bdb1-4c7e-a906-c69f54673814','App\\Notifications\\LogoutNotification','App\\Models\\User',46,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-09 04:18:56','2023-01-09 04:18:56'),('0b085f17-9745-4582-9c6d-492e40367173','App\\Notifications\\LogoutNotification','App\\Models\\User',7,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-10-25 11:14:38','2022-10-25 11:14:38'),('0ba128a7-bce2-4f0e-8fce-f8158976188e','App\\Notifications\\AdCreateNotification','App\\Models\\User',5,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/test-item\"}',NULL,'2022-11-05 06:39:41','2022-11-05 06:39:41'),('0c1b4ced-42f0-41ef-8878-c8840993e4e0','App\\Notifications\\AdApprovedNotification','App\\Models\\User',21,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-nike-acg-techwear-jacket-rare\"}',NULL,'2022-11-05 06:38:27','2022-11-05 06:38:27'),('0ca136ad-cee4-4eaf-9d84-8dbdfc868e0b','App\\Notifications\\LoginNotification','App\\Models\\User',1,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-12 05:14:01','2022-11-12 05:14:01'),('0d63e347-205e-4db6-8d71-e3fed6c03345','App\\Notifications\\LoginNotification','App\\Models\\User',27,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-13 06:27:53','2022-12-13 06:27:53'),('0d72fc88-c575-4749-b6b6-ccb51c78830c','App\\Notifications\\LogoutNotification','App\\Models\\User',53,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-24 04:57:07','2023-01-24 04:57:07'),('0d9eedce-b3cc-419f-ab27-3084be1f6d07','App\\Notifications\\AdCreateNotification','App\\Models\\User',75,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.2life.lv\\/ad\\/details\\/new-top-showing\"}',NULL,'2023-04-01 04:49:12','2023-04-01 04:49:12'),('0f1857eb-f80a-415c-bbb0-1356d649e66d','App\\Notifications\\LoginNotification','App\\Models\\User',5,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-14 00:08:17','2022-12-14 00:08:17'),('0fbe9064-c3da-4f16-9f46-d1ef26d063fe','App\\Notifications\\LogoutNotification','App\\Models\\User',35,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-24 05:43:06','2023-01-24 05:43:06'),('0ff28e95-cf65-4a8f-8972-a56163bd6651','App\\Notifications\\MembershipUpgradeNotification','App\\Models\\User',67,'{\"msg\":\"Purchased  1 Coupons\",\"type\":\"coupon_purchased\"}',NULL,'2023-03-19 06:06:40','2023-03-19 06:06:40'),('10312018-1b2e-4e9b-9618-58d5b0b4bdc6','App\\Notifications\\LoginNotification','App\\Models\\User',6,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-03 14:15:30','2022-12-03 14:15:30'),('10d98fd0-490d-4c77-a396-3ae6c60ee8af','App\\Notifications\\AdApprovedNotification','App\\Models\\User',25,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/lee-vintage-yee\"}',NULL,'2022-11-12 10:21:29','2022-11-12 10:21:29'),('111693c9-a99c-44a9-b2c4-c3e767137d31','App\\Notifications\\MembershipUpgradeNotification','App\\Models\\User',69,'{\"msg\":\"Purchased  5 Coupons\",\"type\":\"coupon_purchased\"}',NULL,'2023-03-21 05:29:25','2023-03-21 05:29:25'),('11c3791f-5782-4ad9-ae06-aa358648f34c','App\\Notifications\\AdApprovedNotification','App\\Models\\User',21,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-90s-rare-nirvana-sliver-1992-giant-tag-t-shirt-l\"}',NULL,'2022-11-05 06:38:27','2022-11-05 06:38:27'),('121116f6-9d20-4527-a0cf-441ed32c9f3c','App\\Notifications\\LogoutNotification','App\\Models\\User',66,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-03-11 09:12:29','2023-03-11 09:12:29'),('122618b9-aff8-4b31-afa8-e693041f02b7','App\\Notifications\\LoginNotification','App\\Models\\User',2,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-10-25 11:10:47','2022-10-25 11:10:47'),('124aee8a-e98a-44c3-9f2c-bda280340803','App\\Notifications\\AdCreateNotification','App\\Models\\User',25,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/japanese-vintage\"}',NULL,'2022-11-12 10:17:43','2022-11-12 10:17:43'),('12599e33-0c75-4606-a348-e0dc74866324','App\\Notifications\\LogoutNotification','App\\Models\\User',5,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-11-05 07:02:25','2022-11-05 07:02:25'),('12df7bf4-d796-4531-8cd9-2ebbf60125a4','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-03-19 12:26:36','2023-03-19 12:26:36'),('130b53a0-f3ed-4efa-bc75-d2c8aae5a8ad','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-04-16 05:49:45','2023-04-16 05:49:45'),('1377e875-5a99-4178-9299-4cf7888280c9','App\\Notifications\\LogoutNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-11-12 13:12:40','2022-11-12 13:12:40'),('139881ae-dfc1-41de-b336-1c3a4cf8d0d9','App\\Notifications\\LoginNotification','App\\Models\\User',24,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-28 09:52:12','2022-12-28 09:52:12'),('1398c828-3cc3-4587-b4fe-af50dc2c28c1','App\\Notifications\\LoginNotification','App\\Models\\User',36,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-01-08 06:01:36','2023-01-08 06:01:36'),('13b64679-5bf8-4b47-a7e3-f78eec45b94e','App\\Notifications\\LogoutNotification','App\\Models\\User',47,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-09 04:33:51','2023-01-09 04:33:51'),('13dc489c-1672-4477-9271-8190cfa43f8d','App\\Notifications\\AdUpdateNotification','App\\Models\\User',2,'{\"msg\":\"You\'re just updated a ad\",\"type\":\"adupdate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/jugular-boys-dot-striped-full-sleeve-cotton-printed-t-shirt\"}',NULL,'2022-10-19 07:08:25','2022-10-19 07:08:25'),('13e3a95a-7672-400e-bab6-ee08ed7febf1','App\\Notifications\\MembershipUpgradeNotification','App\\Models\\User',36,'{\"msg\":\"Purchased  3 Coupons\",\"type\":\"coupon_purchased\"}',NULL,'2023-01-08 06:02:46','2023-01-08 06:02:46'),('144e8d07-c686-45df-b267-2b9913a512f1','App\\Notifications\\LogoutNotification','App\\Models\\User',48,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-09 10:05:54','2023-01-09 10:05:54'),('14794eca-e057-40b7-ac21-ee5d84682801','App\\Notifications\\LogoutNotification','App\\Models\\User',46,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-09 03:53:06','2023-01-09 03:53:06'),('14c74a4f-6cfd-4bf5-93bc-8d92b73c3fbb','App\\Notifications\\LoginNotification','App\\Models\\User',36,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-03 05:29:46','2022-12-03 05:29:46'),('14f61b24-05b7-4a38-aef9-76c388d6b1a0','App\\Notifications\\LoginNotification','App\\Models\\User',5,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-10-30 11:40:48','2022-10-30 11:40:48'),('1544ddde-b058-4d6f-866b-e6018491b2eb','App\\Notifications\\AdCreateNotification','App\\Models\\User',21,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-90s-letterman-jacket-lakers-magic-johnson-32\"}',NULL,'2022-11-05 06:39:02','2022-11-05 06:39:02'),('17526860-0a10-418e-a364-c54147da6d4c','App\\Notifications\\LoginNotification','App\\Models\\User',27,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-07 10:14:00','2022-12-07 10:14:00'),('184cbd6f-1806-43df-a64e-5ec984224c24','App\\Notifications\\AdApprovedNotification','App\\Models\\User',44,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"http:\\/\\/2life.lv\\/ad\\/details\\/consectetur-adipiscing-elit-integer-eget-nunc\"}',NULL,'2022-12-29 06:14:04','2022-12-29 06:14:04'),('18b1b882-ce2f-4e63-8f51-23ce822fdb6e','App\\Notifications\\LogoutNotification','App\\Models\\User',72,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-03-30 06:42:00','2023-03-30 06:42:00'),('19c7ca8e-c775-4ac0-82ea-f4431cd4a2d8','App\\Notifications\\LoginNotification','App\\Models\\User',1,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-10-30 07:27:18','2022-10-30 07:27:18'),('19f11302-8d32-41bf-82dc-f3db1322a10d','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-02-02 10:01:51','2023-02-02 10:01:51'),('1a9f1e0c-266b-44f9-b59d-efad7c43ac04','App\\Notifications\\AdCreateNotification','App\\Models\\User',21,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-90s-rare-nirvana-sliver-1992-giant-tag-t-shirt-l\"}',NULL,'2022-11-05 06:38:27','2022-11-05 06:38:27'),('1b449bd5-bdd1-41a3-a2fd-050846166920','App\\Notifications\\AdApprovedNotification','App\\Models\\User',44,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"http:\\/\\/2life.lv\\/ad\\/details\\/with-a-stretchy-blend-pockets-and-a-zipper-closure\"}',NULL,'2022-12-29 06:13:56','2022-12-29 06:13:56'),('1bb96b69-2e85-4dd1-8ee4-ffba00ce5e13','App\\Notifications\\LogoutNotification','App\\Models\\User',57,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-02-07 10:13:22','2023-02-07 10:13:22'),('1bbf604c-11d9-41b8-9c3e-ca0ad4bc7b2f','App\\Notifications\\AdWishlistNotification','App\\Models\\User',44,'{\"msg\":\"Removed a ad from favourite list\",\"type\":\"added_to_favourite\",\"url\":\"http:\\/\\/2life.lv\\/ad\\/details\\/as\"}',NULL,'2022-12-29 05:31:02','2022-12-29 05:31:02'),('1c949718-44c9-4817-8695-816a843454f4','App\\Notifications\\AdCreateNotification','App\\Models\\User',25,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/nike\"}',NULL,'2022-11-12 09:53:02','2022-11-12 09:53:02'),('1dc32b06-e2e2-412d-9a0b-9fa5754e8380','App\\Notifications\\AdCreateNotification','App\\Models\\User',21,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-mickey-mouse-member-70s-t-shirt-xl\"}',NULL,'2022-11-05 06:39:12','2022-11-05 06:39:12'),('1e2071c7-1d55-465b-825d-2a7c0b1189a8','App\\Notifications\\LogoutNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-05 14:11:43','2023-01-05 14:11:43'),('1eff04c2-d272-42d6-929f-a11382f121ec','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-02-01 14:01:59','2023-02-01 14:01:59'),('1f239b23-d289-4994-ae58-65b44caa5dcd','App\\Notifications\\LoginNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-01-19 20:51:42','2023-01-19 20:51:42'),('2122e1c8-b6e3-45cd-8d8e-67f2ea74f240','App\\Notifications\\AdCreateNotification','App\\Models\\User',24,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-90s-stussy-international-sweatshirt\"}',NULL,'2022-11-07 12:30:40','2022-11-07 12:30:40'),('213626c5-dbdd-4c6a-bc39-b695b2515849','App\\Notifications\\LogoutNotification','App\\Models\\User',31,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-11-12 11:46:05','2022-11-12 11:46:05'),('229d45d2-8116-4cfe-b6fa-78926f82de1a','App\\Notifications\\AdWishlistNotification','App\\Models\\User',44,'{\"msg\":\"Removed a ad from favourite list\",\"type\":\"added_to_favourite\",\"url\":\"http:\\/\\/2life.lv\\/ad\\/details\\/nautica-mens-zip-up-windbreaker-bomber-jacket-water-and-wind-resistant\"}',NULL,'2022-12-29 05:31:06','2022-12-29 05:31:06'),('22cc7ed7-cc31-45d9-b447-11041dbdbd3c','App\\Notifications\\LogoutNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-12-27 13:30:35','2022-12-27 13:30:35'),('22f2d4ae-8622-4863-9d81-0634d02220e0','App\\Notifications\\AdApprovedNotification','App\\Models\\User',36,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"http:\\/\\/2life.lv\\/ad\\/details\\/pureit-classic-23-liter\"}',NULL,'2023-01-08 06:14:29','2023-01-08 06:14:29'),('2406e130-7585-4ae3-95ce-5cb957c13942','App\\Notifications\\MembershipUpgradeNotification','App\\Models\\User',70,'{\"msg\":\"Purchased  5 Coupons\",\"type\":\"coupon_purchased\"}',NULL,'2023-03-20 05:57:46','2023-03-20 05:57:46'),('2527ace6-ec9f-46e2-a2e2-aee48b7f691d','App\\Notifications\\LoginNotification','App\\Models\\User',1,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-10-30 04:15:33','2022-10-30 04:15:33'),('25366fab-fc30-4394-89f5-90967c6da356','App\\Notifications\\LogoutNotification','App\\Models\\User',68,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-03-19 11:56:57','2023-03-19 11:56:57'),('259b62ee-4960-4591-8738-62f01aaeb372','App\\Notifications\\AdCreateNotification','App\\Models\\User',4,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/about-this-item-heavyweight-cotton-heathers-are-60-cotton40-polyester-pebblestone-is-75-cotton25-polyester-henley-sports-a-three-button-placket-famously-durable-beefy-t-fabric-soft-pure-cotton-feels-terrific-all-day-long-traditional-set-in-sleeves-for-sol\"}',NULL,'2022-10-25 13:42:05','2022-10-25 13:42:05'),('25d952dd-ef5b-44a4-985c-6b8acfe06220','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-02-25 13:38:57','2023-02-25 13:38:57'),('266c26c7-7065-48f7-be43-d58b9a264177','App\\Notifications\\LoginNotification','App\\Models\\User',5,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-13 04:05:56','2022-12-13 04:05:56'),('26f5aef0-0223-4e7e-a7a8-cbab7d90c968','App\\Notifications\\LogoutNotification','App\\Models\\User',1,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-12-07 10:16:07','2022-12-07 10:16:07'),('27411dd9-8d51-4d2a-a1da-684b55336131','App\\Notifications\\LogoutNotification','App\\Models\\User',63,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-03-11 09:13:34','2023-03-11 09:13:34'),('2776022b-008a-4236-8f33-e74a6d03a4f7','App\\Notifications\\AdCreateNotification','App\\Models\\User',57,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.2life.lv\\/ad\\/details\\/jeans\"}',NULL,'2023-02-02 08:57:26','2023-02-02 08:57:26'),('28446b67-6d69-43a9-a7c1-5c8835a9571a','App\\Notifications\\AdApprovedNotification','App\\Models\\User',25,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/nike\"}',NULL,'2022-11-12 09:57:58','2022-11-12 09:57:58'),('2923843c-e2c1-4fe5-ae77-2f66a5458b24','App\\Notifications\\LoginNotification','App\\Models\\User',1,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-10-20 11:08:54','2022-10-20 11:08:54'),('29b8ad21-9abd-454e-b625-5f16cfdabc5f','App\\Notifications\\LogoutNotification','App\\Models\\User',38,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-12-04 09:41:21','2022-12-04 09:41:21'),('2b0a5f09-1832-4ee9-b24e-3c6d4c199d40','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-02-04 10:17:13','2023-02-04 10:17:13'),('2b1093e9-9730-4d33-b52b-907f50f86373','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-03-06 04:31:48','2023-03-06 04:31:48'),('2c59821e-9386-4d5f-9f01-03fc4910656c','App\\Notifications\\LoginNotification','App\\Models\\User',27,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-13 04:57:44','2022-12-13 04:57:44'),('2cde3bae-5fca-4ea0-b2f9-bc9e8bd6961f','App\\Notifications\\AdApprovedNotification','App\\Models\\User',24,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-90s-adidas-equipment-brown-logo-t-shirt\"}',NULL,'2022-11-07 12:30:28','2022-11-07 12:30:28'),('2d20984d-aaa6-4ea4-aaaf-6f56e0d48f0c','App\\Notifications\\AdCreateNotification','App\\Models\\User',75,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.2life.lv\\/ad\\/details\\/only-for-men\"}',NULL,'2023-04-01 04:49:17','2023-04-01 04:49:17'),('2daf5235-8d21-4e7e-9695-ade86f436a50','App\\Notifications\\AdWishlistNotification','App\\Models\\User',56,'{\"msg\":\"Added a ad to favourite list\",\"type\":\"added_to_favourite\",\"url\":\"https:\\/\\/www.2life.lv\\/ad\\/details\\/i-want-to-sell-my-tops\"}',NULL,'2023-04-01 04:49:39','2023-04-01 04:49:39'),('2e0f19a1-2951-4df1-86b1-4427318d7f7e','App\\Notifications\\LoginNotification','App\\Models\\User',21,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-09 13:23:11','2022-11-09 13:23:11'),('2ef68712-9331-456b-ae1e-9b1a2f6d114e','App\\Notifications\\LogoutNotification','App\\Models\\User',31,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-12-04 09:37:26','2022-12-04 09:37:26'),('2f8055a7-3f61-4a3f-851d-1c87d7248f91','App\\Notifications\\LogoutNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-11-12 10:54:31','2022-11-12 10:54:31'),('315a6694-3547-4e24-9eba-4fa03f2e8e69','App\\Notifications\\LoginNotification','App\\Models\\User',1,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-09 12:36:44','2022-11-09 12:36:44'),('32d497da-7a7f-4014-ad28-01d4246b29e8','App\\Notifications\\LoginNotification','App\\Models\\User',27,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-07 05:10:00','2022-12-07 05:10:00'),('33a606de-2423-4176-a646-d1d49100420d','App\\Notifications\\AdWishlistNotification','App\\Models\\User',5,'{\"msg\":\"Removed a ad from favourite list\",\"type\":\"added_to_favourite\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/timberland-mens-leather-rfid-blocking-passcase-security-wallet\"}',NULL,'2022-10-20 10:32:17','2022-10-20 10:32:17'),('3425e8a0-7f57-467d-8733-6681f537bc70','App\\Notifications\\LogoutNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-11-27 08:42:54','2022-11-27 08:42:54'),('342fac71-05dd-4452-8c1a-52ab99eed924','App\\Notifications\\LoginNotification','App\\Models\\User',28,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-29 04:56:07','2022-12-29 04:56:07'),('34a13e68-bf85-4385-8ba9-a692b2ffa7f3','App\\Notifications\\LoginNotification','App\\Models\\User',31,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-04 09:33:07','2022-12-04 09:33:07'),('34b5f423-bb0d-4f62-ba54-195cba935580','App\\Notifications\\LoginNotification','App\\Models\\User',21,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-26 05:24:48','2022-11-26 05:24:48'),('3542ef5b-3b49-4e28-8a29-fe5730082f5d','App\\Notifications\\LogoutNotification','App\\Models\\User',47,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-24 05:24:37','2023-01-24 05:24:37'),('35f7d59d-24d2-4304-a128-bedd3af93e61','App\\Notifications\\LoginNotification','App\\Models\\User',21,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-17 03:59:09','2022-11-17 03:59:09'),('36aeadf8-43a4-414c-9236-17c112c238db','App\\Notifications\\LogoutNotification','App\\Models\\User',36,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-08 06:01:23','2023-01-08 06:01:23'),('36cbc728-3b93-459d-9bb4-d40b19d53632','App\\Notifications\\AdWishlistNotification','App\\Models\\User',56,'{\"msg\":\"Added a ad to favourite list\",\"type\":\"added_to_favourite\",\"url\":\"https:\\/\\/www.2life.lv\\/ad\\/details\\/phone\"}',NULL,'2023-04-01 04:49:42','2023-04-01 04:49:42'),('3751d8f2-5cab-4a06-8592-a8975ec0d630','App\\Notifications\\LoginNotification','App\\Models\\User',36,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-01-14 10:26:10','2023-01-14 10:26:10'),('39fc695d-85f9-4d1d-8298-5166c14095ee','App\\Notifications\\AdCreateNotification','App\\Models\\User',57,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.2life.lv\\/ad\\/details\\/nike-tshirt\"}',NULL,'2023-02-02 08:57:29','2023-02-02 08:57:29'),('3a7f67c9-5ae6-4095-9d2c-bd164e7a311d','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-02-04 08:26:38','2023-02-04 08:26:38'),('3c8f2611-6ec1-4a8c-8e78-eb23a1c58884','App\\Notifications\\LoginNotification','App\\Models\\User',22,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-07 12:39:46','2022-11-07 12:39:46'),('3ccb05d3-f3ed-4a1e-93c7-661350751cec','App\\Notifications\\LogoutNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-03-07 08:39:54','2023-03-07 08:39:54'),('3d2947e5-0290-44b5-96a9-c3b7bd766794','App\\Notifications\\LogoutNotification','App\\Models\\User',28,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-12-29 04:56:17','2022-12-29 04:56:17'),('3d575227-cd24-4e6d-803b-6cbcd44e9884','App\\Notifications\\LogoutNotification','App\\Models\\User',31,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-11-12 13:18:36','2022-11-12 13:18:36'),('3e31cc3b-0dc8-4893-ae63-5bfee7b88d03','App\\Notifications\\AdApprovedNotification','App\\Models\\User',25,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/champion-vintage\"}',NULL,'2022-11-12 09:53:03','2022-11-12 09:53:03'),('3ec70a5b-2ae2-49bf-a5bc-40f8e36d146f','App\\Notifications\\AdDeleteNotification','App\\Models\\User',21,'{\"msg\":\"You\'re just deleted a ad\",\"type\":\"addelete\"}',NULL,'2023-01-05 11:28:46','2023-01-05 11:28:46'),('3ee43cda-7cf5-4011-8d79-c69e57de75b5','App\\Notifications\\AdApprovedNotification','App\\Models\\User',25,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage\"}',NULL,'2022-11-12 10:17:47','2022-11-12 10:17:47'),('3f78a157-9839-4afa-8728-8f0dcd8c763b','App\\Notifications\\LogoutNotification','App\\Models\\User',40,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-24 09:01:06','2023-01-24 09:01:06'),('3f84d779-cbef-4cfa-b2b5-4074be42ddd1','App\\Notifications\\LoginNotification','App\\Models\\User',1,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-27 06:25:29','2022-11-27 06:25:29'),('414f5158-8339-4b05-9cc9-49966190088b','App\\Notifications\\AdCreateNotification','App\\Models\\User',4,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/hanes-mens-beefy-long-sleeve-three-button-henley\"}',NULL,'2022-10-25 13:40:14','2022-10-25 13:40:14'),('41df9fc7-04a1-48a9-992c-9722e4a90b03','App\\Notifications\\LogoutNotification','App\\Models\\User',1,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-11-16 09:37:12','2022-11-16 09:37:12'),('42a2568d-7631-413e-b72f-8783c414e9f8','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-02-04 06:53:11','2023-02-04 06:53:11'),('435d723e-3689-415f-8d39-9986dd6f3153','App\\Notifications\\LogoutNotification','App\\Models\\User',63,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-03-11 08:38:14','2023-03-11 08:38:14'),('43990ce5-30e2-47e4-8bf3-ec9a7277f24d','App\\Notifications\\LogoutNotification','App\\Models\\User',70,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-03-20 05:48:18','2023-03-20 05:48:18'),('4492b129-6264-4820-8feb-4413271a9fb4','App\\Notifications\\LoginNotification','App\\Models\\User',5,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-10-27 04:08:01','2022-10-27 04:08:01'),('449789bf-e1ce-419c-8be5-b20656f633a7','App\\Notifications\\LoginNotification','App\\Models\\User',21,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-12 14:32:18','2022-11-12 14:32:18'),('45974a54-23aa-46e1-85ab-2d4148fe9970','App\\Notifications\\LoginNotification','App\\Models\\User',5,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-05 06:57:52','2022-11-05 06:57:52'),('46ef4e5f-3b16-4f28-80ae-385248af0f25','App\\Notifications\\LoginNotification','App\\Models\\User',65,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-03-12 05:05:49','2023-03-12 05:05:49'),('475f0bf6-1cf3-4884-a265-b1e26028cef1','App\\Notifications\\AdCreateNotification','App\\Models\\User',56,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.2life.lv\\/ad\\/details\\/authentic-christian-dior-bag\"}',NULL,'2023-02-01 04:59:42','2023-02-01 04:59:42'),('47e31925-5a2b-4087-b402-132e15349e3f','App\\Notifications\\AdApprovedNotification','App\\Models\\User',25,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/2life.lv\\/ad\\/details\\/test-fake-item\"}',NULL,'2022-12-27 10:27:28','2022-12-27 10:27:28'),('482be016-50ba-4031-99dd-e10a05ef38a3','App\\Notifications\\LogoutNotification','App\\Models\\User',45,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-24 05:43:48','2023-01-24 05:43:48'),('488b512a-5088-4dc2-9f61-42afa99a620c','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-03-06 04:54:59','2023-03-06 04:54:59'),('48e23bda-9141-41f2-83e2-89ef364e56f7','App\\Notifications\\AdApprovedNotification','App\\Models\\User',25,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/lee-vintage\"}',NULL,'2022-11-12 10:21:37','2022-11-12 10:21:37'),('494f47e7-a3ae-41d5-8874-317d68b47474','App\\Notifications\\LoginNotification','App\\Models\\User',73,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-03-30 06:45:21','2023-03-30 06:45:21'),('49e07f36-7117-430e-81ec-d65bf7a3cc0e','App\\Notifications\\LoginNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-12 13:19:11','2022-11-12 13:19:11'),('4b42f414-96f3-4039-8ffa-daacd8a8efb4','App\\Notifications\\AdWishlistNotification','App\\Models\\User',75,'{\"msg\":\"Added a ad to favourite list\",\"type\":\"added_to_favourite\",\"url\":\"https:\\/\\/www.2life.lv\\/ad\\/details\\/new-top-showing\"}',NULL,'2023-04-16 05:50:23','2023-04-16 05:50:23'),('4b63e149-a1d8-4916-9694-04c9103fcddb','App\\Notifications\\AdApprovedNotification','App\\Models\\User',57,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.2life.lv\\/ad\\/details\\/jeans\"}',NULL,'2023-02-02 08:57:26','2023-02-02 08:57:26'),('4b6b6f56-57cf-4419-8bb5-db244b2ce476','App\\Notifications\\LoginNotification','App\\Models\\User',4,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-16 09:37:24','2022-11-16 09:37:24'),('4b828c9b-1d2b-4ae0-aed6-f88cbdf42238','App\\Notifications\\LogoutNotification','App\\Models\\User',22,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-11-07 13:16:50','2022-11-07 13:16:50'),('4c30339c-a1ef-4c8d-9f71-9472dd6868e5','App\\Notifications\\LogoutNotification','App\\Models\\User',38,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-12-04 08:36:10','2022-12-04 08:36:10'),('4d472c74-f1c4-43ff-92eb-847331f3c0a4','App\\Notifications\\LoginNotification','App\\Models\\User',1,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-23 06:39:26','2022-11-23 06:39:26'),('4d97ef04-7f1f-4373-8c0c-467428f96e92','App\\Notifications\\AdApprovedNotification','App\\Models\\User',46,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.2life.lv\\/ad\\/details\\/lorem-ipsum-is-simply-dummy-text\"}',NULL,'2023-01-09 13:25:47','2023-01-09 13:25:47'),('4deceb80-d71f-48ec-8981-167369d05d1e','App\\Notifications\\AdCreateNotification','App\\Models\\User',57,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.2life.lv\\/ad\\/details\\/long-sleeved-tshirt\"}',NULL,'2023-02-07 10:24:42','2023-02-07 10:24:42'),('4e49c3ae-92a4-4e32-9f13-657b06e9c9f5','App\\Notifications\\LoginNotification','App\\Models\\User',27,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-14 02:35:53','2022-12-14 02:35:53'),('4faed66f-b327-41fc-a09b-b89a4c05ebb0','App\\Notifications\\LoginNotification','App\\Models\\User',51,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-01-12 09:04:24','2023-01-12 09:04:24'),('5079618e-d100-4351-b540-6243d69d7b9b','App\\Notifications\\AdDeleteNotification','App\\Models\\User',57,'{\"msg\":\"You\'re just deleted a ad\",\"type\":\"addelete\"}',NULL,'2023-01-31 14:37:17','2023-01-31 14:37:17'),('50bdcf31-f5fe-4c94-bd67-89fb875419d9','App\\Notifications\\LoginNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-12 11:16:15','2022-11-12 11:16:15'),('513b44ac-5efd-42f1-8581-42cd531a948d','App\\Notifications\\LoginNotification','App\\Models\\User',31,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-13 04:15:57','2022-11-13 04:15:57'),('51d90744-156b-42f8-b8c1-bdbf165b83e4','App\\Notifications\\LoginNotification','App\\Models\\User',21,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-13 09:22:01','2022-11-13 09:22:01'),('5354bb17-e1ec-4fc9-86ec-e94092c9fc1c','App\\Notifications\\AdWishlistNotification','App\\Models\\User',75,'{\"msg\":\"Added a ad to favourite list\",\"type\":\"added_to_favourite\",\"url\":\"https:\\/\\/www.2life.lv\\/ad\\/details\\/only-for-men\"}',NULL,'2023-04-16 06:41:30','2023-04-16 06:41:30'),('53626c38-5c51-42c9-8c8d-656358da469d','App\\Notifications\\LogoutNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-03-11 08:36:42','2023-03-11 08:36:42'),('53ca3720-9949-433e-b8e2-37059c6b39d3','App\\Notifications\\AdApprovedNotification','App\\Models\\User',25,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/japanese-vintage\"}',NULL,'2022-11-12 10:17:42','2022-11-12 10:17:42'),('5408fc40-e879-4f3a-8008-49558611f0a7','App\\Notifications\\AdApprovedNotification','App\\Models\\User',6,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/as\"}',NULL,'2022-11-05 06:39:19','2022-11-05 06:39:19'),('54bee623-e9a2-47cc-a300-a668af416233','App\\Notifications\\AdApprovedNotification','App\\Models\\User',24,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/2life.lv\\/public\\/ad\\/details\\/fake-listing\"}',NULL,'2022-12-28 09:58:49','2022-12-28 09:58:49'),('55b0c859-935d-4de2-9c0a-a6617fc8c685','App\\Notifications\\LogoutNotification','App\\Models\\User',48,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-09 11:36:02','2023-01-09 11:36:02'),('56262803-80cd-4383-867d-92979d5eafdc','App\\Notifications\\LoginNotification','App\\Models\\User',21,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-19 13:08:35','2022-11-19 13:08:35'),('56b1fd44-0f97-4f1d-a343-7c72dbf07ee2','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-03-11 09:13:57','2023-03-11 09:13:57'),('57b13771-f585-462f-b027-2d385ed5ee66','App\\Notifications\\LogoutNotification','App\\Models\\User',31,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-12-04 09:39:32','2022-12-04 09:39:32'),('57baa229-8b5a-4e38-8193-6fb78eacc0ac','App\\Notifications\\LogoutNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-03-06 08:01:54','2023-03-06 08:01:54'),('58af94cd-5864-4333-8163-05d0783bb3a6','App\\Notifications\\AdApprovedNotification','App\\Models\\User',56,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.2life.lv\\/ad\\/details\\/authentic-christian-dior-bag\"}',NULL,'2023-02-01 04:59:42','2023-02-01 04:59:42'),('5982ab94-e748-47cf-aebd-e356add0ceec','App\\Notifications\\AdApprovedNotification','App\\Models\\User',57,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.2life.lv\\/ad\\/details\\/long-sleeved-tshirt\"}',NULL,'2023-02-07 10:24:42','2023-02-07 10:24:42'),('5a655c6d-f99b-4eb1-b3fd-37d10e4829c3','App\\Notifications\\AdApprovedNotification','App\\Models\\User',21,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-mickey-mouse-member-70s-t-shirt-xl\"}',NULL,'2022-11-05 06:39:11','2022-11-05 06:39:11'),('5b11accf-4ffa-4b63-9fa2-489ef6eec9bb','App\\Notifications\\LoginNotification','App\\Models\\User',27,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-07 09:56:05','2022-12-07 09:56:05'),('5cb8bf22-767b-440d-bd48-08f71ecb2a15','App\\Notifications\\AdApprovedNotification','App\\Models\\User',56,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.2life.lv\\/ad\\/details\\/alexander-mcqueen\"}',NULL,'2023-02-02 11:29:48','2023-02-02 11:29:48'),('5f0bb31d-8307-47f9-a9d4-03faa9fccc5a','App\\Notifications\\LoginNotification','App\\Models\\User',24,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-28 09:53:32','2022-12-28 09:53:32'),('5f11e2c9-8298-4f80-a43c-89c833d539b6','App\\Notifications\\LogoutNotification','App\\Models\\User',24,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-11-07 12:29:28','2022-11-07 12:29:28'),('5f22a4fd-2d8a-44b6-a18f-02a32b530288','App\\Notifications\\MembershipUpgradeNotification','App\\Models\\User',5,'{\"msg\":\"Purchased  3 Coupons\",\"type\":\"coupon_purchased\"}',NULL,'2023-01-08 06:03:21','2023-01-08 06:03:21'),('5f995f90-d7a8-42a8-b5e0-9d2c6cf63fb4','App\\Notifications\\LogoutNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-11-12 11:20:11','2022-11-12 11:20:11'),('5ff9dd5f-0225-416c-997c-9955747c58f2','App\\Notifications\\AdCreateNotification','App\\Models\\User',21,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-nike-acg-techwear-jacket-rare\"}',NULL,'2022-11-05 06:38:27','2022-11-05 06:38:27'),('6164e6e5-4b3d-4720-82d2-ee2222c0a452','App\\Notifications\\LoginNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-27 08:43:53','2022-11-27 08:43:53'),('638d6e1b-1eed-4b12-a12b-f62dfcb8fdbb','App\\Notifications\\LoginNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-30 08:31:49','2022-11-30 08:31:49'),('641726b1-cd4a-4d95-954f-6f54e77296c9','App\\Notifications\\LogoutNotification','App\\Models\\User',35,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-24 05:43:20','2023-01-24 05:43:20'),('650766f5-dcb2-4c8a-9e7b-b36b519be4af','App\\Notifications\\LoginNotification','App\\Models\\User',6,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-30 11:30:26','2022-11-30 11:30:26'),('6548b4e1-bb8e-4a28-84f9-e776f8a180f9','App\\Notifications\\LogoutNotification','App\\Models\\User',32,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-11-13 07:20:59','2022-11-13 07:20:59'),('664d2995-f0ce-4837-8201-22c481b2a67b','App\\Notifications\\MembershipUpgradeNotification','App\\Models\\User',44,'{\"msg\":\"Purchased  10 Coupons\",\"type\":\"coupon_purchased\"}',NULL,'2022-12-29 04:59:48','2022-12-29 04:59:48'),('6854bd65-beb3-45aa-ad0a-bafd9e0e1c2e','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-03-11 09:16:31','2023-03-11 09:16:31'),('68658bb9-bf7f-4676-8c8f-9aaaab115165','App\\Notifications\\LoginNotification','App\\Models\\User',27,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-08 05:19:13','2022-12-08 05:19:13'),('68c9b8fa-1943-4230-94df-cbe1a8553d63','App\\Notifications\\LoginNotification','App\\Models\\User',69,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-03-21 05:19:44','2023-03-21 05:19:44'),('68eb3ceb-e0b4-4cb6-be08-b187b19b9417','App\\Notifications\\LoginNotification','App\\Models\\User',5,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-01-08 06:02:42','2023-01-08 06:02:42'),('69158533-4f7c-4a95-9273-455378246a76','App\\Notifications\\LogoutNotification','App\\Models\\User',46,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-09 03:55:27','2023-01-09 03:55:27'),('6a63cc85-07c1-412e-9bfc-70333e81f904','App\\Notifications\\AdCreateNotification','App\\Models\\User',2,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/j-kara-womens-34-scallop-beaded-pop-over-gown\"}',NULL,'2022-10-19 08:46:03','2022-10-19 08:46:03'),('6a7ee06f-92c5-454f-8984-b7bfbd2feef7','App\\Notifications\\AdCreateNotification','App\\Models\\User',25,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/puma-t-shirt\"}',NULL,'2022-11-12 09:34:51','2022-11-12 09:34:51'),('6b214832-9e2a-47f8-bd5b-a78775b227fa','App\\Notifications\\LoginNotification','App\\Models\\User',31,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-05 08:10:40','2022-12-05 08:10:40'),('6c11562c-562a-4cdd-b495-89460f469095','App\\Notifications\\MembershipUpgradeNotification','App\\Models\\User',73,'{\"msg\":\"Purchased  1 Coupons\",\"type\":\"coupon_purchased\"}',NULL,'2023-03-30 06:47:10','2023-03-30 06:47:10'),('6d182754-5f12-40d8-8249-b971e529366b','App\\Notifications\\LoginNotification','App\\Models\\User',5,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-01-11 12:10:12','2023-01-11 12:10:12'),('6d820263-8d18-4213-8bb3-14e320b363e4','App\\Notifications\\LoginNotification','App\\Models\\User',31,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-04 08:37:02','2022-12-04 08:37:02'),('6da0007c-a797-4c85-b35a-3126680eb002','App\\Notifications\\LogoutNotification','App\\Models\\User',32,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-11-16 09:14:14','2022-11-16 09:14:14'),('6ece8e9d-a610-41e8-8203-c0c4a6edddcd','App\\Notifications\\LoginNotification','App\\Models\\User',6,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-04 03:16:08','2022-12-04 03:16:08'),('6f08ac1b-f440-4c62-9027-950c405bc4d0','App\\Notifications\\LoginNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-12 10:06:52','2022-11-12 10:06:52'),('6f911eb6-15fa-42ef-9202-ffea130c8449','App\\Notifications\\AdCreateNotification','App\\Models\\User',25,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/russian-belt-bag\"}',NULL,'2022-11-12 10:53:31','2022-11-12 10:53:31'),('7053e0dc-0981-4ffd-91ba-4627a08212d5','App\\Notifications\\AdCreateNotification','App\\Models\\User',25,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/2life.lv\\/ad\\/details\\/test-fake-item-2\"}',NULL,'2022-12-27 10:27:22','2022-12-27 10:27:22'),('709823a7-d98a-4cbd-a971-6bf670d7df57','App\\Notifications\\AdApprovedNotification','App\\Models\\User',21,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/nfl-starter-vintage\"}',NULL,'2022-11-17 04:07:32','2022-11-17 04:07:32'),('7138ced3-a525-4d67-bd1c-441ac9a08d5c','App\\Notifications\\LoginNotification','App\\Models\\User',1,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-12 05:14:01','2022-11-12 05:14:01'),('715fb741-b713-4b0d-ac5b-8125d4eb4887','App\\Notifications\\LoginNotification','App\\Models\\User',6,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-01 15:22:48','2022-11-01 15:22:48'),('723249d0-05b3-4771-abb9-f3f7c684d020','App\\Notifications\\AdApprovedNotification','App\\Models\\User',5,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/test-item\"}',NULL,'2022-11-05 06:39:40','2022-11-05 06:39:40'),('736a3249-fb18-4ed5-8627-36b48e27a9f6','App\\Notifications\\LogoutNotification','App\\Models\\User',62,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-03-01 07:27:04','2023-03-01 07:27:04'),('742d57dd-246b-4bb3-9e08-515f1de6dc2e','App\\Notifications\\MembershipUpgradeNotification','App\\Models\\User',43,'{\"msg\":\"Purchased  10 Coupons\",\"type\":\"coupon_purchased\"}',NULL,'2022-12-28 13:41:15','2022-12-28 13:41:15'),('743cea88-6ca5-4dec-aea4-dacafaa87a0e','App\\Notifications\\AdCreateNotification','App\\Models\\User',2,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/dress\"}',NULL,'2022-10-25 12:38:51','2022-10-25 12:38:51'),('743f9a75-671b-4858-b283-2094d8d31a64','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-02-04 08:44:44','2023-02-04 08:44:44'),('74d38e20-0e13-46be-bc66-550c5998a73a','App\\Notifications\\LogoutNotification','App\\Models\\User',36,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-08 06:00:56','2023-01-08 06:00:56'),('769fe023-33ec-417c-a943-88fa27dccef8','App\\Notifications\\LogoutNotification','App\\Models\\User',70,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-03-20 07:10:20','2023-03-20 07:10:20'),('76ffe733-bcbe-41ab-b431-c06b55ed5d4a','App\\Notifications\\AdApprovedNotification','App\\Models\\User',44,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"http:\\/\\/2life.lv\\/ad\\/details\\/lorem-ipsum-dolor-sit-amet\"}',NULL,'2022-12-29 06:15:09','2022-12-29 06:15:09'),('7747e4ac-7cad-422a-bd54-93f1f2eacfcd','App\\Notifications\\LogoutNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-03-19 12:59:46','2023-03-19 12:59:46'),('77c0fd12-4e89-4dec-9146-3d1b3e828ca3','App\\Notifications\\AdApprovedNotification','App\\Models\\User',27,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"http:\\/\\/localhost\\/webdevs\\/2life.lv\\/public\\/ad\\/details\\/45r3w4\"}',NULL,'2022-12-17 00:56:23','2022-12-17 00:56:23'),('786a0449-19cc-49ad-9dbe-a77dea5e9df4','App\\Notifications\\LoginNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-01-09 13:26:39','2023-01-09 13:26:39'),('79abe669-6584-4666-a630-ed18d701e2e3','App\\Notifications\\LoginNotification','App\\Models\\User',38,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-04 09:39:57','2022-12-04 09:39:57'),('79de0966-4a66-450c-b8fe-d2ddcaec16b1','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-02-04 08:22:26','2023-02-04 08:22:26'),('7a53301f-d313-42a5-a8c8-c4670752b6fc','App\\Notifications\\AdCreateNotification','App\\Models\\User',25,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/nike\"}',NULL,'2022-11-12 09:57:58','2022-11-12 09:57:58'),('7a6d4a35-a54d-468e-abdc-bf2c9a107f98','App\\Notifications\\LoginNotification','App\\Models\\User',1,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-10-29 06:43:11','2022-10-29 06:43:11'),('7c562f6f-dfc7-40f7-affc-50549536d773','App\\Notifications\\LogoutNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-11-12 11:59:37','2022-11-12 11:59:37'),('7deadb24-74f6-4ba7-8625-49cf9f19c37b','App\\Notifications\\LoginNotification','App\\Models\\User',1,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-13 06:39:27','2022-11-13 06:39:27'),('7e3023b4-cf97-4d42-9afa-24f4b134348f','App\\Notifications\\MembershipUpgradeNotification','App\\Models\\User',68,'{\"msg\":\"Purchased  5 Coupons\",\"type\":\"coupon_purchased\"}',NULL,'2023-03-19 11:45:14','2023-03-19 11:45:14'),('7e4def13-0519-4a6b-b3c3-3d2cbf95f69a','App\\Notifications\\LogoutNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-11-12 11:12:26','2022-11-12 11:12:26'),('7eda2b32-ef6f-4488-9aa1-dfaac25062ca','App\\Notifications\\LoginNotification','App\\Models\\User',4,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-12 05:41:22','2022-11-12 05:41:22'),('7f807cc2-84aa-414c-acfa-3fb8a3caed35','App\\Notifications\\LogoutNotification','App\\Models\\User',45,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-01 07:08:21','2023-01-01 07:08:21'),('7fe04113-07ab-412b-8f3c-220511247a23','App\\Notifications\\AdCreateNotification','App\\Models\\User',43,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.2life.lv\\/ad\\/details\\/cargy\"}',NULL,'2023-01-05 09:05:28','2023-01-05 09:05:28'),('7fef713f-2bb1-4898-aa84-d9ca85d95647','App\\Notifications\\LogoutNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-03-19 12:01:56','2023-03-19 12:01:56'),('8023a74e-34eb-4956-8da7-cfd606835359','App\\Notifications\\LoginNotification','App\\Models\\User',1,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-05 12:52:15','2022-11-05 12:52:15'),('8027bc9e-7f0d-4a86-92e2-867830a148af','App\\Notifications\\AdCreateNotification','App\\Models\\User',25,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/champion-vintage\"}',NULL,'2022-11-12 09:53:04','2022-11-12 09:53:04'),('81bad6ce-c8fc-4c3f-a38a-5c51bdce5469','App\\Notifications\\AdWishlistNotification','App\\Models\\User',70,'{\"msg\":\"Added a ad to favourite list\",\"type\":\"added_to_favourite\",\"url\":\"https:\\/\\/www.2life.lv\\/ad\\/details\\/new-and-needed-item\"}',NULL,'2023-04-16 06:41:35','2023-04-16 06:41:35'),('821a8ada-f94e-43ca-9642-9e05903367c9','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-02-02 14:17:52','2023-02-02 14:17:52'),('8298d8d7-5090-497f-9465-65615f934bf8','App\\Notifications\\LogoutNotification','App\\Models\\User',40,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-12-27 18:27:22','2022-12-27 18:27:22'),('83f873d6-6020-4d90-9b3b-f369b86f4b12','App\\Notifications\\LoginNotification','App\\Models\\User',21,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-01-05 09:11:41','2023-01-05 09:11:41'),('8420efb2-2b5f-4f90-aaee-2d55f3a7484b','App\\Notifications\\LogoutNotification','App\\Models\\User',31,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-11-12 11:02:55','2022-11-12 11:02:55'),('852ed4a0-920a-4e2e-a8c4-4db2b7cc7563','App\\Notifications\\LogoutNotification','App\\Models\\User',21,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-11-19 13:32:19','2022-11-19 13:32:19'),('85871a0a-9e29-492b-9507-4ff2c217dd2e','App\\Notifications\\MembershipUpgradeNotification','App\\Models\\User',56,'{\"msg\":\"Purchased  5 Coupons\",\"type\":\"coupon_purchased\"}',NULL,'2023-03-09 09:29:18','2023-03-09 09:29:18'),('85ecbdc8-938e-45af-b6b8-456abdf57a46','App\\Notifications\\AdApprovedNotification','App\\Models\\User',21,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-naruto-2002-shippuden-kakashi-story-anime-t-shirt-xl\"}',NULL,'2022-11-05 06:38:46','2022-11-05 06:38:46'),('866d04a8-0239-4b18-8256-6e6d439f6cf9','App\\Notifications\\AdCreateNotification','App\\Models\\User',2,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/timberland-mens-leather-rfid-blocking-passcase-security-wallet\"}',NULL,'2022-10-19 08:30:58','2022-10-19 08:30:58'),('87151864-2a2a-43b8-9406-3276e6c6bc91','App\\Notifications\\LogoutNotification','App\\Models\\User',22,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-11-05 06:57:42','2022-11-05 06:57:42'),('8719796f-719d-4e53-80aa-85cae256af2d','App\\Notifications\\LoginNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-27 08:36:58','2022-11-27 08:36:58'),('89483a0c-f9e6-41a6-b321-dc45cfb32b1e','App\\Notifications\\LoginNotification','App\\Models\\User',1,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-16 09:38:17','2022-11-16 09:38:17'),('89eba0f8-eaec-4479-9dba-1eaa1beb0c9a','App\\Notifications\\LogoutNotification','App\\Models\\User',24,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-01 07:04:10','2023-01-01 07:04:10'),('8ab2e82e-3438-4e89-ae23-2aa5259865d2','App\\Notifications\\LogoutNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-03-19 12:00:13','2023-03-19 12:00:13'),('8b161051-cd8f-4a2b-abe0-4787e163c5a2','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-03-07 04:21:07','2023-03-07 04:21:07'),('8b2ae0fa-49b3-452e-a0c7-f7319af1c984','App\\Notifications\\LoginNotification','App\\Models\\User',6,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-29 05:00:09','2022-11-29 05:00:09'),('8b3362a7-ab28-4c9c-af48-c59d152b8241','App\\Notifications\\AdWishlistNotification','App\\Models\\User',1,'{\"msg\":\"Removed a ad from favourite list\",\"type\":\"added_to_favourite\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-nike-acg-techwear-jacket-rare\"}',NULL,'2022-11-23 06:42:12','2022-11-23 06:42:12'),('8b3f8aa3-8c5b-4335-9b72-ac6359b85755','App\\Notifications\\LogoutNotification','App\\Models\\User',75,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-04-01 04:52:39','2023-04-01 04:52:39'),('8c30624e-672e-455e-aaba-53e61839b294','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-02-01 04:45:10','2023-02-01 04:45:10'),('8c32527b-9063-4d82-855c-59b327304e57','App\\Notifications\\AdCreateNotification','App\\Models\\User',39,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/2life.lv\\/ad\\/details\\/fake-ads\"}',NULL,'2022-12-27 10:32:25','2022-12-27 10:32:25'),('8c7de296-8f75-489c-899d-97f22e8f8d23','App\\Notifications\\LogoutNotification','App\\Models\\User',1,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-11-16 09:12:45','2022-11-16 09:12:45'),('8d76e3c1-d23c-45e3-b4ce-3a7ef52dd331','App\\Notifications\\LogoutNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-11-12 10:06:15','2022-11-12 10:06:15'),('8d885dea-2d39-48f6-8063-23418314cacd','App\\Notifications\\LogoutNotification','App\\Models\\User',36,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-24 05:26:33','2023-01-24 05:26:33'),('8dec8e7f-d2de-4108-a09e-d92853600fc0','App\\Notifications\\MembershipUpgradeNotification','App\\Models\\User',56,'{\"msg\":\"Purchased  5 Coupons\",\"type\":\"coupon_purchased\"}',NULL,'2023-02-01 04:46:13','2023-02-01 04:46:13'),('8f67a01a-7673-462c-84dd-e0f170d7cf79','App\\Notifications\\LoginNotification','App\\Models\\User',4,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-19 13:21:06','2022-11-19 13:21:06'),('8f9661ff-bc5a-4cb4-9ed8-2f64e225e1dc','App\\Notifications\\AdWishlistNotification','App\\Models\\User',5,'{\"msg\":\"Removed a ad from favourite list\",\"type\":\"added_to_favourite\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/wrangler-womens-34-sleeves-smocked-shoulder-knit-top\"}',NULL,'2022-10-23 07:54:09','2022-10-23 07:54:09'),('8fc9525b-1035-4f42-bad7-be8bcae41ab7','App\\Notifications\\LoginNotification','App\\Models\\User',5,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-10-23 07:53:32','2022-10-23 07:53:32'),('931a172f-4201-40d4-ba3e-58bfb5c11061','App\\Notifications\\LogoutNotification','App\\Models\\User',49,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-09 10:05:04','2023-01-09 10:05:04'),('93929f9f-69f0-4680-adc1-984d5f646a55','App\\Notifications\\AdCreateNotification','App\\Models\\User',3,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/allons-y-lets-go-full-sleeve-solid-men-women-bomber-jacket\"}',NULL,'2022-10-19 08:16:03','2022-10-19 08:16:03'),('93b7f39e-45d4-4487-b730-3b904a9fc1b9','App\\Notifications\\LoginNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-01-14 13:23:40','2023-01-14 13:23:40'),('93efea02-ca2d-4cda-b99e-dab028f73c65','App\\Notifications\\LoginNotification','App\\Models\\User',5,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-10-22 07:57:05','2022-10-22 07:57:05'),('94b67d15-4e31-4696-91a1-518daec37a8d','App\\Notifications\\LogoutNotification','App\\Models\\User',45,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-01 07:02:18','2023-01-01 07:02:18'),('955b4d69-a574-4a6f-ad2e-1ff1a5df2260','App\\Notifications\\AdCreateNotification','App\\Models\\User',25,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/2life.lv\\/ad\\/details\\/test-fake-item\"}',NULL,'2022-12-27 10:27:29','2022-12-27 10:27:29'),('9572985c-befe-4874-9b19-1902c19ffb16','App\\Notifications\\AdApprovedNotification','App\\Models\\User',25,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/nike\"}',NULL,'2022-11-12 09:53:01','2022-11-12 09:53:01'),('95a4b324-2102-45d4-90ed-02a27e30eb15','App\\Notifications\\AdCreateNotification','App\\Models\\User',44,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"http:\\/\\/2life.lv\\/ad\\/details\\/with-a-stretchy-blend-pockets-and-a-zipper-closure\"}',NULL,'2022-12-29 06:13:57','2022-12-29 06:13:57'),('969b40f3-b69c-4821-9cb9-933b26b43626','App\\Notifications\\LoginNotification','App\\Models\\User',27,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-13 05:07:50','2022-12-13 05:07:50'),('9878b803-f351-4a9f-a9e5-15960bd5a444','App\\Notifications\\LogoutNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-03-06 11:44:57','2023-03-06 11:44:57'),('98ae924d-a9bd-425b-98cd-a085135443ab','App\\Notifications\\LogoutNotification','App\\Models\\User',51,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-12 09:02:55','2023-01-12 09:02:55'),('9a0cfb42-54df-4daa-90f8-f22e69ec402b','App\\Notifications\\AdCreateNotification','App\\Models\\User',2,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/symbol-mens-regular-casual-trousers\"}',NULL,'2022-10-19 12:43:34','2022-10-19 12:43:34'),('9b04d62f-5a3d-4404-a114-13d2fd42629d','App\\Notifications\\MembershipUpgradeNotification','App\\Models\\User',56,'{\"msg\":\"Purchased  3 Coupons\",\"type\":\"coupon_purchased\"}',NULL,'2023-03-09 09:28:51','2023-03-09 09:28:51'),('9b1c2725-cade-4063-aa0c-5cd09d8445e6','App\\Notifications\\LogoutNotification','App\\Models\\User',46,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-08 08:37:06','2023-01-08 08:37:06'),('9b5e4dbd-dceb-4557-a08b-032bdcb5612c','App\\Notifications\\AdApprovedNotification','App\\Models\\User',57,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.2life.lv\\/ad\\/details\\/tshirt\"}',NULL,'2023-01-31 13:12:41','2023-01-31 13:12:41'),('9cdebaf5-23ae-4e5b-809a-de1f137eae86','App\\Notifications\\AdApprovedNotification','App\\Models\\User',39,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/2life.lv\\/ad\\/details\\/fake-ads\"}',NULL,'2022-12-27 10:32:24','2022-12-27 10:32:24'),('9da0a154-d10f-4b34-b715-a388f57daf75','App\\Notifications\\LogoutNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-10 13:36:15','2023-01-10 13:36:15'),('9e60eb0a-c09c-4336-a532-b71c5aef7d96','App\\Notifications\\LogoutNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-11-12 12:38:30','2022-11-12 12:38:30'),('9fe0ec4f-d08f-4aa3-9292-a55a770bf213','App\\Notifications\\LoginNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-27 08:36:37','2022-11-27 08:36:37'),('a026524c-8fd6-4ed2-8dfe-12ab387fc76b','App\\Notifications\\LogoutNotification','App\\Models\\User',31,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-11-12 12:05:00','2022-11-12 12:05:00'),('a102299e-ea4a-42aa-83f2-a0d15feeac89','App\\Notifications\\LoginNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-01-05 14:11:55','2023-01-05 14:11:55'),('a28a9f99-9ca8-443f-a851-a858f87d8bd3','App\\Notifications\\AdCreateNotification','App\\Models\\User',57,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.2life.lv\\/ad\\/details\\/tshirt\"}',NULL,'2023-01-31 13:12:41','2023-01-31 13:12:41'),('a2bbbfb3-2f60-4c0f-9332-5dfac4d7680a','App\\Notifications\\LoginNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-28 14:21:21','2022-11-28 14:21:21'),('a3ee5ea5-490a-4555-9953-d81d14b08f2f','App\\Notifications\\AdDeleteNotification','App\\Models\\User',20,'{\"msg\":\"You\'re just deleted a ad\",\"type\":\"addelete\"}',NULL,'2022-10-31 06:11:54','2022-10-31 06:11:54'),('a43b358c-8a6c-4a90-bf0c-afa963351c55','App\\Notifications\\LoginNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-27 10:20:03','2022-12-27 10:20:03'),('a444a5c4-009e-4f55-82ac-f9f28d9110d9','App\\Notifications\\LogoutNotification','App\\Models\\User',31,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-12-04 09:29:50','2022-12-04 09:29:50'),('a4479423-4032-4a22-ba99-3540a6c8c2cb','App\\Notifications\\LoginNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-27 06:27:03','2022-11-27 06:27:03'),('a449c1f1-e1f0-4c55-a353-1afe371e5524','App\\Notifications\\LogoutNotification','App\\Models\\User',23,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-11-07 11:19:15','2022-11-07 11:19:15'),('a46de139-4ff5-4e87-8c9b-c37bfe57f6a6','App\\Notifications\\LogoutNotification','App\\Models\\User',77,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-04-13 05:27:03','2023-04-13 05:27:03'),('a5bbb10b-1749-4d44-b6bb-6f1cdcbad5d5','App\\Notifications\\LogoutNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-03-20 05:38:32','2023-03-20 05:38:32'),('a5bee1c8-a72d-430c-9526-517c273773f9','App\\Notifications\\LogoutNotification','App\\Models\\User',46,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-09 04:23:46','2023-01-09 04:23:46'),('a6618676-7260-4f31-a408-5d8db1b47ad7','App\\Notifications\\LoginNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-01 14:18:50','2022-12-01 14:18:50'),('a689dd2a-1125-4f45-a0e3-2b1933a1355c','App\\Notifications\\LoginNotification','App\\Models\\User',27,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-07 10:14:00','2022-12-07 10:14:00'),('a7f99ffa-c02d-4798-acad-0ea139cd26fb','App\\Notifications\\LoginNotification','App\\Models\\User',5,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-05 13:27:54','2022-11-05 13:27:54'),('a8613bfa-937c-4564-b867-3b32d0ba96ff','App\\Notifications\\AdApprovedNotification','App\\Models\\User',25,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/mini-heels\"}',NULL,'2022-11-12 10:53:17','2022-11-12 10:53:17'),('a8aa0350-888b-419f-9c1c-db8b6c348d64','App\\Notifications\\AdApprovedNotification','App\\Models\\User',38,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/japanese-gowns\"}',NULL,'2022-12-04 08:35:12','2022-12-04 08:35:12'),('a914a4b1-6780-4d20-a792-5b24cd6ac53f','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-03-06 11:41:53','2023-03-06 11:41:53'),('a93a1ec6-4817-45eb-814b-acd355928bf6','App\\Notifications\\LoginNotification','App\\Models\\User',31,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-12 12:00:03','2022-11-12 12:00:03'),('a9586e5a-5c66-4dd9-a406-138c0816b347','App\\Notifications\\AdApprovedNotification','App\\Models\\User',4,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/quick-saledior-by-hedi-slimane-white-help-me-hoodie\"}',NULL,'2022-11-19 13:29:44','2022-11-19 13:29:44'),('a98623a4-6bdb-45ff-b5b2-2cdd0c2cb364','App\\Notifications\\LoginNotification','App\\Models\\User',6,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-13 01:47:45','2022-11-13 01:47:45'),('a98a125f-623b-4596-8652-8e392d4993c2','App\\Notifications\\LoginNotification','App\\Models\\User',31,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-04 09:38:56','2022-12-04 09:38:56'),('aae7782e-b5a4-4533-bfa2-2a64aa878570','App\\Notifications\\LoginNotification','App\\Models\\User',1,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-07 10:06:40','2022-12-07 10:06:40'),('ac5efa78-9cc3-4ff4-995d-2aa93c29bc85','App\\Notifications\\LoginNotification','App\\Models\\User',1,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-16 09:14:25','2022-11-16 09:14:25'),('ad87f37b-c9bd-459a-9a2b-ebcaaf938a4f','App\\Notifications\\LoginNotification','App\\Models\\User',1,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-16 09:11:59','2022-11-16 09:11:59'),('adf5034d-64f7-483f-a99e-e859be30770c','App\\Notifications\\LogoutNotification','App\\Models\\User',36,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-09 04:26:03','2023-01-09 04:26:03'),('aeaee0f9-c9a9-4c5c-88f4-0042bee5dbd7','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-01-29 12:30:43','2023-01-29 12:30:43'),('aeca1103-d703-4393-9e4a-2a6e8f0d8294','App\\Notifications\\LogoutNotification','App\\Models\\User',46,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-09 04:35:46','2023-01-09 04:35:46'),('af1aa04d-7aa3-47f2-9441-1c0ec670e599','App\\Notifications\\LogoutNotification','App\\Models\\User',40,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-24 09:22:22','2023-01-24 09:22:22'),('b0033d06-3951-40c4-b540-e10ea9ac1351','App\\Notifications\\LoginNotification','App\\Models\\User',24,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-26 09:29:45','2022-12-26 09:29:45'),('b1b7c710-4f3a-45aa-8438-2b6efb136883','App\\Notifications\\AdCreateNotification','App\\Models\\User',2,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/large-capacity-womens-bag-generation-backpack\"}',NULL,'2022-10-19 11:40:42','2022-10-19 11:40:42'),('b1c4ada7-2a8f-4425-9e65-2f6df1c1a03c','App\\Notifications\\LoginNotification','App\\Models\\User',36,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-28 12:12:35','2022-11-28 12:12:35'),('b1d28529-e453-4331-8eb3-e9e2c255085f','App\\Notifications\\AdApprovedNotification','App\\Models\\User',57,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.2life.lv\\/ad\\/details\\/nike-tshirt\"}',NULL,'2023-02-02 08:57:29','2023-02-02 08:57:29'),('b1d2c3a5-9459-4b9c-a77c-a34e79b5a6bf','App\\Notifications\\MembershipUpgradeNotification','App\\Models\\User',75,'{\"msg\":\"Purchased  5 Coupons\",\"type\":\"coupon_purchased\"}',NULL,'2023-04-01 04:43:08','2023-04-01 04:43:08'),('b2507f08-c7e5-47d9-a2be-444b68bbd396','App\\Notifications\\LogoutNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-02-04 10:26:30','2023-02-04 10:26:30'),('b2b3d310-7b1c-4a88-805a-b3723ab8dd51','App\\Notifications\\LogoutNotification','App\\Models\\User',49,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-09 11:26:16','2023-01-09 11:26:16'),('b48542cf-3fa8-4679-a687-e4574ac8ebd3','App\\Notifications\\LogoutNotification','App\\Models\\User',36,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-24 05:05:53','2023-01-24 05:05:53'),('b63ac22d-c7a5-4a5c-943a-ecb0c003f121','App\\Notifications\\AdApprovedNotification','App\\Models\\User',21,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-90s-letterman-jacket-lakers-magic-johnson-32\"}',NULL,'2022-11-05 06:39:01','2022-11-05 06:39:01'),('b663fbfb-80c9-46fe-b4c8-f57f24f052dd','App\\Notifications\\MembershipUpgradeNotification','App\\Models\\User',58,'{\"msg\":\"Purchased  5 Coupons\",\"type\":\"coupon_purchased\"}',NULL,'2023-02-04 05:11:11','2023-02-04 05:11:11'),('b67e12e6-b1af-4eb8-9d97-458958c09de2','App\\Notifications\\LoginNotification','App\\Models\\User',31,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-04 09:41:50','2022-12-04 09:41:50'),('b79f6aed-af01-4da2-8ddd-5e99536b5a77','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-03-20 05:36:57','2023-03-20 05:36:57'),('b8701890-a9c1-4f36-ab93-7f6d0cda92c1','App\\Notifications\\LogoutNotification','App\\Models\\User',54,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-24 05:24:00','2023-01-24 05:24:00'),('b89fa4c4-08fd-41f8-bc7e-2ab33ffe3161','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-03-11 04:10:18','2023-03-11 04:10:18'),('b97688cf-f3fc-44b9-8fdd-9d78b4b67c2a','App\\Notifications\\AdCreateNotification','App\\Models\\User',24,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-90s-adidas-equipment-brown-logo-t-shirt\"}',NULL,'2022-11-07 12:30:28','2022-11-07 12:30:28'),('b9f27418-54c5-40e2-828f-0344fda3cb91','App\\Notifications\\LoginNotification','App\\Models\\User',31,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-12 13:16:18','2022-11-12 13:16:18'),('ba125ce3-7d1d-429a-b8f2-25078a63ba05','App\\Notifications\\LogoutNotification','App\\Models\\User',36,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-24 04:49:43','2023-01-24 04:49:43'),('ba728f53-9596-4058-8067-c6bfca903edf','App\\Notifications\\LoginNotification','App\\Models\\User',1,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-10-30 04:22:35','2022-10-30 04:22:35'),('baf272b3-9b63-4ed4-864e-33bac9cd4e9e','App\\Notifications\\LoginNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-01-10 11:57:31','2023-01-10 11:57:31'),('bd664770-063a-4608-9308-af99a11eef73','App\\Notifications\\AdDeleteNotification','App\\Models\\User',37,'{\"msg\":\"You\'re just deleted a ad\",\"type\":\"addelete\"}',NULL,'2022-12-03 12:48:41','2022-12-03 12:48:41'),('bd807928-884d-4618-9b11-3b4493384c63','App\\Notifications\\LogoutNotification','App\\Models\\User',27,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-11-12 10:26:12','2022-11-12 10:26:12'),('bd9efacd-9106-4b36-8b75-b4eae1e26c30','App\\Notifications\\LogoutNotification','App\\Models\\User',24,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-12-28 09:52:50','2022-12-28 09:52:50'),('be25456d-2918-42cb-9e96-5eeb2ca3064a','App\\Notifications\\LoginNotification','App\\Models\\User',70,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-03-21 09:43:30','2023-03-21 09:43:30'),('beb0b7d9-6918-4527-a425-b00b06b4c307','App\\Notifications\\LoginNotification','App\\Models\\User',6,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-08 08:50:33','2022-11-08 08:50:33'),('befa0904-de0f-4c6c-b225-949762f42955','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-02-04 10:15:44','2023-02-04 10:15:44'),('c07031fb-616f-484b-bb89-2799dca5f5e4','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-02-04 10:37:14','2023-02-04 10:37:14'),('c0a910fe-aa14-4b44-b228-6b65d418796f','App\\Notifications\\MembershipUpgradeNotification','App\\Models\\User',56,'{\"msg\":\"Purchased  3 Coupons\",\"type\":\"coupon_purchased\"}',NULL,'2023-02-04 10:56:37','2023-02-04 10:56:37'),('c138de46-cfe8-4d90-8f7b-fb3e296fc8c4','App\\Notifications\\AdCreateNotification','App\\Models\\User',36,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"http:\\/\\/2life.lv\\/ad\\/details\\/pureit-classic-23-liter\"}',NULL,'2023-01-08 06:14:30','2023-01-08 06:14:30'),('c21a187e-2e99-4805-a72a-fe4590400834','App\\Notifications\\LogoutNotification','App\\Models\\User',63,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-03-07 08:41:49','2023-03-07 08:41:49'),('c241fddd-7464-4f7f-92c4-fd031266beab','App\\Notifications\\LoginNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-01-05 09:39:34','2023-01-05 09:39:34'),('c27873b0-737d-435a-ae85-116ac0ba07a7','App\\Notifications\\AdCreateNotification','App\\Models\\User',4,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/quick-saledior-by-hedi-slimane-white-help-me-hoodie\"}',NULL,'2022-11-19 13:29:44','2022-11-19 13:29:44'),('c2d84c0a-3b67-44bb-8e5c-4cc16b897cfd','App\\Notifications\\LoginNotification','App\\Models\\User',21,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-14 06:01:36','2022-11-14 06:01:36'),('c2e55a42-bcf4-4b75-a99c-83cc21f544e6','App\\Notifications\\AdCreateNotification','App\\Models\\User',21,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/nfl-starter-vintage\"}',NULL,'2022-11-17 04:07:32','2022-11-17 04:07:32'),('c30487d5-a03b-4cba-bfea-9e59bc9f44f2','App\\Notifications\\AdCreateNotification','App\\Models\\User',25,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage\"}',NULL,'2022-11-12 10:17:48','2022-11-12 10:17:48'),('c31e738d-2edb-4d91-8790-224b47cd90e8','App\\Notifications\\AdCreateNotification','App\\Models\\User',3,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/kenneth-cole-leather-slip-on-loafers-for-men\"}',NULL,'2022-10-19 08:19:55','2022-10-19 08:19:55'),('c42d620a-e838-4b70-8625-e9d185cbee67','App\\Notifications\\LoginNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-27 13:04:37','2022-12-27 13:04:37'),('c43912cf-3cd0-4a10-8418-71b71f5573d9','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-02-07 11:09:21','2023-02-07 11:09:21'),('c5667b38-dcb1-4371-ab1f-8808ddc4caa5','App\\Notifications\\AdApprovedNotification','App\\Models\\User',43,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.2life.lv\\/ad\\/details\\/cargy\"}',NULL,'2023-01-05 09:05:26','2023-01-05 09:05:26'),('c59ce47a-00e1-400c-922a-87ebbb28b09c','App\\Notifications\\LogoutNotification','App\\Models\\User',6,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-10-22 08:16:32','2022-10-22 08:16:32'),('c6fd9d18-bc34-4b46-9761-de21d8ec01ea','App\\Notifications\\LogoutNotification','App\\Models\\User',45,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-24 04:50:48','2023-01-24 04:50:48'),('c7104771-fcaa-4b8a-a7ea-4620f44175e2','App\\Notifications\\AdCreateNotification','App\\Models\\User',70,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.2life.lv\\/ad\\/details\\/new-and-needed-item\"}',NULL,'2023-03-20 06:19:45','2023-03-20 06:19:45'),('c728cd3b-9a88-4af9-8389-c10ad2c6444e','App\\Notifications\\AdCreateNotification','App\\Models\\User',21,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-naruto-2002-shippuden-kakashi-story-anime-t-shirt-xl\"}',NULL,'2022-11-05 06:38:46','2022-11-05 06:38:46'),('c74138c4-612e-42a1-a957-2324f6fbe12d','App\\Notifications\\AdCreateNotification','App\\Models\\User',56,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.2life.lv\\/ad\\/details\\/alexander-mcqueen\"}',NULL,'2023-02-02 11:29:48','2023-02-02 11:29:48'),('c764e0c3-42d8-4e6b-bc94-2eead6c1733f','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-03-07 09:50:53','2023-03-07 09:50:53'),('c8a940c9-f48d-4ea9-a989-f557bb669faa','App\\Notifications\\AdCreateNotification','App\\Models\\User',46,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.2life.lv\\/ad\\/details\\/lorem-ipsum-is-simply-dummy-text\"}',NULL,'2023-01-09 13:25:47','2023-01-09 13:25:47'),('c8aa4a39-d002-4a5f-a1e2-b08638fa38f4','App\\Notifications\\AdCreateNotification','App\\Models\\User',21,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-90s-stussy-pope-gold-is-still-dope-rare-t-shirt\"}',NULL,'2022-11-05 06:38:53','2022-11-05 06:38:53'),('c9838686-f1a1-4403-986b-113c28b3f5c6','App\\Notifications\\LoginNotification','App\\Models\\User',4,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-07 10:16:27','2022-12-07 10:16:27'),('ca58b7de-f54b-4b13-ae64-e0a155b8ebb2','App\\Notifications\\MembershipUpgradeNotification','App\\Models\\User',63,'{\"msg\":\"Purchased  5 Coupons\",\"type\":\"coupon_purchased\"}',NULL,'2023-03-11 08:46:39','2023-03-11 08:46:39'),('cb24c638-c85c-4ce4-8f80-e570ad759364','App\\Notifications\\LoginNotification','App\\Models\\User',4,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-19 13:12:52','2022-11-19 13:12:52'),('cbd5a314-d752-4f01-b420-527b1b21efb8','App\\Notifications\\LoginNotification','App\\Models\\User',1,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-12 11:26:54','2022-11-12 11:26:54'),('cc0b77e0-8126-4135-8948-6838bdc93ea1','App\\Notifications\\LogoutNotification','App\\Models\\User',46,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-09 03:55:07','2023-01-09 03:55:07'),('ccc20636-bc92-4dac-b83f-3962e6b6727e','App\\Notifications\\AdDeleteNotification','App\\Models\\User',70,'{\"msg\":\"You\'re just deleted a ad\",\"type\":\"addelete\"}',NULL,'2023-03-20 06:17:40','2023-03-20 06:17:40'),('cd3f194c-ab0c-4244-9901-cc752f17aaff','App\\Notifications\\MembershipUpgradeNotification','App\\Models\\User',70,'{\"msg\":\"Purchased  5 Coupons\",\"type\":\"coupon_purchased\"}',NULL,'2023-03-20 05:50:31','2023-03-20 05:50:31'),('ce66e824-ed83-4a12-9e4a-12d4a57d1a6e','App\\Notifications\\LoginNotification','App\\Models\\User',4,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-10-25 13:37:57','2022-10-25 13:37:57'),('cf79c638-1e71-442a-a7a3-03b4fbb8405f','App\\Notifications\\LoginNotification','App\\Models\\User',7,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-10-25 13:42:59','2022-10-25 13:42:59'),('cfc4c7c1-3590-4c36-ac10-5c0fdc110d55','App\\Notifications\\LoginNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-29 07:40:15','2022-12-29 07:40:15'),('d0469460-c5f8-4df0-b393-9f922e2dc695','App\\Notifications\\AdApprovedNotification','App\\Models\\User',21,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-90s-stussy-pope-gold-is-still-dope-rare-t-shirt\"}',NULL,'2022-11-05 06:38:52','2022-11-05 06:38:52'),('d0548ceb-6ff0-4ac2-8eb5-793819389367','App\\Notifications\\LogoutNotification','App\\Models\\User',67,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-03-19 06:20:11','2023-03-19 06:20:11'),('d0d055ae-bdf3-430c-a7e6-c4ebdf0a382a','App\\Notifications\\LoginNotification','App\\Models\\User',4,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-08 04:41:49','2022-12-08 04:41:49'),('d14b7ae2-a2aa-4fb8-9f20-ec18edf41fd1','App\\Notifications\\LogoutNotification','App\\Models\\User',39,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-12-27 11:42:26','2022-12-27 11:42:26'),('d1d7e77b-8113-439d-a844-7cbb04da1bd6','App\\Notifications\\AdApprovedNotification','App\\Models\\User',25,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/puma-t-shirt\"}',NULL,'2022-11-12 09:34:50','2022-11-12 09:34:50'),('d2b616da-6777-43d4-929d-1efa27ea75a1','App\\Notifications\\MembershipUpgradeNotification','App\\Models\\User',41,'{\"msg\":\"Purchased  10 Coupons\",\"type\":\"coupon_purchased\"}',NULL,'2022-12-28 07:09:26','2022-12-28 07:09:26'),('d39f9604-d252-400c-ae99-ad1f51e2acc1','App\\Notifications\\MembershipUpgradeNotification','App\\Models\\User',67,'{\"msg\":\"Purchased  1 Coupons\",\"type\":\"coupon_purchased\"}',NULL,'2023-03-19 06:12:54','2023-03-19 06:12:54'),('d7c03160-6b9f-4ba6-8f6b-e32c50ebac07','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-02-05 07:37:56','2023-02-05 07:37:56'),('d7c80585-a803-499d-8052-a9cfae112a75','App\\Notifications\\AdCreateNotification','App\\Models\\User',25,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/lee-vintage\"}',NULL,'2022-11-12 10:21:37','2022-11-12 10:21:37'),('d9999b1d-17ce-4f6a-9f86-3bbfaf6eec79','App\\Notifications\\AdCreateNotification','App\\Models\\User',44,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"http:\\/\\/2life.lv\\/ad\\/details\\/lorem-ipsum-dolor-sit-amet\"}',NULL,'2022-12-29 06:15:10','2022-12-29 06:15:10'),('da028454-ddb2-4ac7-b998-01533e94aebd','App\\Notifications\\AdWishlistNotification','App\\Models\\User',44,'{\"msg\":\"Removed a ad from favourite list\",\"type\":\"added_to_favourite\",\"url\":\"http:\\/\\/2life.lv\\/ad\\/details\\/hanes-mens-beefy-long-sleeve-three-button-henley\"}',NULL,'2022-12-29 06:02:58','2022-12-29 06:02:58'),('da39c00f-32b2-4919-b3c3-d27e3239b4a9','App\\Notifications\\LoginNotification','App\\Models\\User',24,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-07 12:29:49','2022-11-07 12:29:49'),('db2bf43c-2541-47bb-ae2f-5eaf99f63b76','App\\Notifications\\LogoutNotification','App\\Models\\User',70,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-03-20 07:11:32','2023-03-20 07:11:32'),('dcb4dcbc-5f38-4713-b814-b66fb93ebd49','App\\Notifications\\LoginNotification','App\\Models\\User',5,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-10-23 07:25:08','2022-10-23 07:25:08'),('dcc21d49-0b1d-4c6d-9321-03a835e6063a','App\\Notifications\\AdCreateNotification','App\\Models\\User',6,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/as\"}',NULL,'2022-11-05 06:39:20','2022-11-05 06:39:20'),('dd95c4b0-515f-4fe2-aaef-9c91defad854','App\\Notifications\\LoginNotification','App\\Models\\User',31,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-12 12:10:42','2022-11-12 12:10:42'),('dda43c92-aff2-4930-9360-bac9c859934d','App\\Notifications\\LoginNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-01-19 20:11:12','2023-01-19 20:11:12'),('de03b569-3a20-474f-a917-97e938b75fc6','App\\Notifications\\AdCreateNotification','App\\Models\\User',20,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/nautica-mens-zip-up-windbreaker-bomber-jacket-water-and-wind-resistant\"}',NULL,'2022-11-05 06:39:34','2022-11-05 06:39:34'),('deb6c696-2108-4b2a-879d-abc91514603a','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-03-09 04:19:15','2023-03-09 04:19:15'),('ded0f5ab-5f70-4087-9397-c541388da7ca','App\\Notifications\\LogoutNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-12-27 10:28:04','2022-12-27 10:28:04'),('df34046f-a460-4d72-9c87-83fad24353f6','App\\Notifications\\AdDeleteNotification','App\\Models\\User',28,'{\"msg\":\"You\'re just deleted a ad\",\"type\":\"addelete\"}',NULL,'2022-12-03 09:41:41','2022-12-03 09:41:41'),('df715f1a-1b79-4930-a3f3-5e0862caa6c5','App\\Notifications\\AdCreateNotification','App\\Models\\User',2,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/refulgent-mens-blazer-2-button\"}',NULL,'2022-10-19 08:27:41','2022-10-19 08:27:41'),('e018c2ce-c538-4103-aee3-04be2b3c9e47','App\\Notifications\\LoginNotification','App\\Models\\User',4,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-12 05:41:22','2022-11-12 05:41:22'),('e0684659-af25-4bd7-9cce-1647a3d546a8','App\\Notifications\\LoginNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-12 11:48:54','2022-11-12 11:48:54'),('e06ed05f-b5e5-4e2b-ad3e-380f341f2f83','App\\Notifications\\AdApprovedNotification','App\\Models\\User',75,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.2life.lv\\/ad\\/details\\/only-for-men\"}',NULL,'2023-04-01 04:49:17','2023-04-01 04:49:17'),('e0bc9934-346c-4b05-8e2a-cbf368e2cea3','App\\Notifications\\AdCreateNotification','App\\Models\\User',24,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/2life.lv\\/public\\/ad\\/details\\/fake-listing\"}',NULL,'2022-12-28 09:58:50','2022-12-28 09:58:50'),('e165ac8c-c3e5-4079-9e9f-f2ca2c9ea2ff','App\\Notifications\\LoginNotification','App\\Models\\User',32,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-16 09:13:14','2022-11-16 09:13:14'),('e1833f54-3383-4e24-a667-83298697a7e7','App\\Notifications\\AdCreateNotification','App\\Models\\User',25,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/mini-heels\"}',NULL,'2022-11-12 10:53:17','2022-11-12 10:53:17'),('e1f6403a-b8be-474b-ac62-bd7ed6d34557','App\\Notifications\\LoginNotification','App\\Models\\User',27,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-14 02:35:53','2022-12-14 02:35:53'),('e264fd1d-d0ab-4ecc-8e08-72f1f325aa77','App\\Notifications\\LogoutNotification','App\\Models\\User',74,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-04-01 04:32:29','2023-04-01 04:32:29'),('e2bb3307-0df1-49fe-afed-1e3550067e19','App\\Notifications\\LogoutNotification','App\\Models\\User',36,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-24 04:46:56','2023-01-24 04:46:56'),('e2f0d385-e5a8-4c25-a0a2-2d6fdae977c1','App\\Notifications\\LogoutNotification','App\\Models\\User',36,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-09 09:36:49','2023-01-09 09:36:49'),('e6bc1f37-e07c-4bfb-937a-7bad9f7cfdb3','App\\Notifications\\AdWishlistNotification','App\\Models\\User',75,'{\"msg\":\"Added a ad to favourite list\",\"type\":\"added_to_favourite\",\"url\":\"https:\\/\\/www.2life.lv\\/ad\\/details\\/new-top-showing\"}',NULL,'2023-04-16 06:41:33','2023-04-16 06:41:33'),('e8c6e303-7c42-44c2-b90c-78e95e2b2ab1','App\\Notifications\\LogoutNotification','App\\Models\\User',5,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-08 06:55:41','2023-01-08 06:55:41'),('e93b039c-d184-4910-b83a-886af0e03031','App\\Notifications\\LoginNotification','App\\Models\\User',27,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-07 04:58:11','2022-12-07 04:58:11'),('e9b37550-6685-4199-a705-18a729b06445','App\\Notifications\\LoginNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-03 10:59:29','2022-12-03 10:59:29'),('e9fa5335-c065-4c16-90b5-d775fa0d44aa','App\\Notifications\\AdApprovedNotification','App\\Models\\User',24,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/vintage-90s-stussy-international-sweatshirt\"}',NULL,'2022-11-07 12:30:40','2022-11-07 12:30:40'),('eb170c07-b900-44cd-a661-26cc1bda0053','App\\Notifications\\MembershipUpgradeNotification','App\\Models\\User',57,'{\"msg\":\"Purchased  5 Coupons\",\"type\":\"coupon_purchased\"}',NULL,'2023-01-31 12:56:33','2023-01-31 12:56:33'),('eb59c91c-49e9-4a8e-a60c-9da32760648e','App\\Notifications\\LoginNotification','App\\Models\\User',24,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-12-28 06:27:18','2022-12-28 06:27:18'),('eb94dad8-d599-4726-a2b7-8864aadba2c7','App\\Notifications\\LoginNotification','App\\Models\\User',5,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-01-25 10:21:58','2023-01-25 10:21:58'),('ebbfaf71-ce0e-4f70-a5cb-0d3ac8e2d5cf','App\\Notifications\\AdWishlistNotification','App\\Models\\User',44,'{\"msg\":\"Removed a ad from favourite list\",\"type\":\"added_to_favourite\",\"url\":\"http:\\/\\/2life.lv\\/ad\\/details\\/test-item\"}',NULL,'2022-12-29 05:31:13','2022-12-29 05:31:13'),('ebe71937-731c-4951-a2d7-ea58f7792998','App\\Notifications\\LogoutNotification','App\\Models\\User',1,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-11-05 13:02:29','2022-11-05 13:02:29'),('ebf22423-1e9a-4e33-b891-0f02d0eb6884','App\\Notifications\\AdCreateNotification','App\\Models\\User',44,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"http:\\/\\/2life.lv\\/ad\\/details\\/consectetur-adipiscing-elit-integer-eget-nunc\"}',NULL,'2022-12-29 06:14:05','2022-12-29 06:14:05'),('ecb48ec6-6859-4d32-a11a-00c3146e43e8','App\\Notifications\\LogoutNotification','App\\Models\\User',23,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-11-09 05:02:52','2022-11-09 05:02:52'),('ee0d4a4f-6cb7-42d5-9561-59c889fdcd77','App\\Notifications\\AdCreateNotification','App\\Models\\User',2,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/jugular-boys-dot-striped-full-sleeve-cotton-printed-t-shirt\"}',NULL,'2022-10-19 07:06:35','2022-10-19 07:06:35'),('ef3c7e83-c1fa-43c3-a138-7a2505c9a82a','App\\Notifications\\LoginNotification','App\\Models\\User',6,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-06 07:11:36','2022-11-06 07:11:36'),('efb9d9f3-2d5e-4821-82f7-d15c989cba0b','App\\Notifications\\MembershipUpgradeNotification','App\\Models\\User',24,'{\"msg\":\"Purchased  10 Coupons\",\"type\":\"coupon_purchased\"}',NULL,'2022-12-28 09:54:00','2022-12-28 09:54:00'),('efd36a0b-c8df-4f46-b9c7-d7972314b1ed','App\\Notifications\\LogoutNotification','App\\Models\\User',36,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-01-24 05:06:14','2023-01-24 05:06:14'),('eff7b0ca-d59b-462f-86e0-f544790414ee','App\\Notifications\\LogoutNotification','App\\Models\\User',69,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-03-20 05:45:24','2023-03-20 05:45:24'),('f00eac42-0042-45be-b7a0-ba11bb94ddc9','App\\Notifications\\LoginNotification','App\\Models\\User',5,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-10-23 07:25:10','2022-10-23 07:25:10'),('f09b0ce8-7cfb-453d-8bb6-896c6efe9940','App\\Notifications\\AdCreateNotification','App\\Models\\User',25,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/lee-vintage-yee\"}',NULL,'2022-11-12 10:21:30','2022-11-12 10:21:30'),('f170b32d-f9cb-434a-90d8-b9447752dff8','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-01-29 09:57:48','2023-01-29 09:57:48'),('f1d542c3-a5fd-448e-96c5-2ef8c1ad5966','App\\Notifications\\AdCreateNotification','App\\Models\\User',3,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/symbol-mens-regular-track-pants\"}',NULL,'2022-10-19 08:13:16','2022-10-19 08:13:16'),('f21a2fae-bc1a-4e81-a14f-899f574e5407','App\\Notifications\\LoginNotification','App\\Models\\User',21,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-09 05:03:03','2022-11-09 05:03:03'),('f25db844-98de-44d8-a81e-85a7f364610c','App\\Notifications\\MembershipUpgradeNotification','App\\Models\\User',46,'{\"msg\":\"Purchased  5 Coupons\",\"type\":\"coupon_purchased\"}',NULL,'2023-01-08 07:44:33','2023-01-08 07:44:33'),('f30628bc-198f-4141-9770-266c206bf7d2','App\\Notifications\\MembershipUpgradeNotification','App\\Models\\User',21,'{\"msg\":\"Purchased  10 Coupons\",\"type\":\"coupon_purchased\"}',NULL,'2023-01-05 10:57:37','2023-01-05 10:57:37'),('f32468ea-084d-4a26-a59d-9ad1b2e0130c','App\\Notifications\\AdCreateNotification','App\\Models\\User',2,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/grailed.webdevs4u.com\\/ad\\/details\\/wrangler-womens-34-sleeves-smocked-shoulder-knit-top\"}',NULL,'2022-10-19 08:38:18','2022-10-19 08:38:18'),('f3267cc4-1cc3-42c1-a337-cc096e5e030e','App\\Notifications\\LoginNotification','App\\Models\\User',1,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-16 13:12:11','2022-11-16 13:12:11'),('f3ecc3d3-41e5-49b8-890d-0abbd202c5eb','App\\Notifications\\AdWishlistNotification','App\\Models\\User',44,'{\"msg\":\"Removed a ad from favourite list\",\"type\":\"added_to_favourite\",\"url\":\"http:\\/\\/2life.lv\\/ad\\/details\\/about-this-item-heavyweight-cotton-heathers-are-60-cotton40-polyester-pebblestone-is-75-cotton25-polyester-henley-sports-a-three-button-placket-famously-durable-beefy-t-fabric-soft-pure-cotton-feels-terrific-all-day-long-traditional-set-in-sleeves-for-sol\"}',NULL,'2022-12-29 05:31:17','2022-12-29 05:31:17'),('f6c24585-287f-4e4f-a748-36c634d50ff3','App\\Notifications\\LoginNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-12 12:38:58','2022-11-12 12:38:58'),('f6ff2866-4d40-412e-ab72-59778852551f','App\\Notifications\\LoginNotification','App\\Models\\User',31,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-12 11:22:51','2022-11-12 11:22:51'),('f7af11c7-e5a3-40d0-ac21-364c85d52fa7','App\\Notifications\\LoginNotification','App\\Models\\User',7,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-10-25 11:03:52','2022-10-25 11:03:52'),('f843c5a9-a914-40f5-9a32-5a306d39254e','App\\Notifications\\AdApprovedNotification','App\\Models\\User',75,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.2life.lv\\/ad\\/details\\/new-top-showing\"}',NULL,'2023-04-01 04:49:12','2023-04-01 04:49:12'),('f8a0d4eb-381f-454c-b94e-2db12dc19915','App\\Notifications\\LogoutNotification','App\\Models\\User',63,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2023-03-11 08:55:55','2023-03-11 08:55:55'),('fb61191a-0b00-4d0b-a7d4-61710ae1d872','App\\Notifications\\LoginNotification','App\\Models\\User',21,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-17 14:45:56','2022-11-17 14:45:56'),('fbeff087-81ca-4de9-afc9-b1cc06411ebb','App\\Notifications\\LoginNotification','App\\Models\\User',25,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2022-11-12 12:06:41','2022-11-12 12:06:41'),('fbf1f878-d056-4234-8da4-ddf0cde45f63','App\\Notifications\\AdApprovedNotification','App\\Models\\User',25,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/russian-belt-bag\"}',NULL,'2022-11-12 10:53:31','2022-11-12 10:53:31'),('fc3667ad-5ebe-418b-b6f5-defda0d93e26','App\\Notifications\\LoginNotification','App\\Models\\User',56,'{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}',NULL,'2023-04-16 05:52:32','2023-04-16 05:52:32'),('fc9d91a3-a8c6-4ea0-b9eb-93bcc471faf2','App\\Notifications\\AdCreateNotification','App\\Models\\User',27,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"http:\\/\\/localhost\\/webdevs\\/2life.lv\\/public\\/ad\\/details\\/45r3w4\"}',NULL,'2022-12-17 00:56:27','2022-12-17 00:56:27'),('fcf5e98d-e01c-459d-9915-40c83a5dbd37','App\\Notifications\\AdWishlistNotification','App\\Models\\User',1,'{\"msg\":\"Removed a ad from favourite list\",\"type\":\"added_to_favourite\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/test\"}',NULL,'2022-11-23 06:49:28','2022-11-23 06:49:28'),('fdf279f7-2a18-446e-92a7-a7d60e04d770','App\\Notifications\\LogoutNotification','App\\Models\\User',1,'{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}',NULL,'2022-11-05 13:14:17','2022-11-05 13:14:17'),('fdfdb047-ba99-41d7-b08e-f6a4d4879983','App\\Notifications\\AdCreateNotification','App\\Models\\User',38,'{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"https:\\/\\/www.grailed.webdevs4u.com\\/ad\\/details\\/japanese-gowns\"}',NULL,'2022-12-04 08:35:12','2022-12-04 08:35:12'),('fea0550a-4182-447e-ac85-9fb7b0411df4','App\\Notifications\\AdApprovedNotification','App\\Models\\User',70,'{\"msg\":\"Ad Approved\",\"type\":\"adapproved\",\"url\":\"https:\\/\\/www.2life.lv\\/ad\\/details\\/new-and-needed-item\"}',NULL,'2023-03-20 06:19:45','2023-03-20 06:19:45');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `number` varchar(16) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `payment_status` enum('1','2','3') DEFAULT NULL COMMENT '1=Waiting for payment, 2=Already paid, 3=Expired',
  `snap_token` varchar(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('admin@gmail.com','$2y$10$1/Kj364m2mfIcTV/O1XRzupKNDB9NWEPjYJxKdzFaFou6nLQjqav2','2022-10-25 12:37:17'),('masudrana@gmail.com','$2y$10$DcZmYNwvoXCzaC5vP9EVMOZ/NLwhWR6l/J2lRG1uwPw8XPFQsdT7K','2023-03-20 05:33:23');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'dashboard.view','admin','dashboard','2022-07-25 05:09:44','2022-07-25 05:09:44'),(2,'admin.create','admin','admin','2022-07-25 05:09:44','2022-07-25 05:09:44'),(3,'admin.view','admin','admin','2022-07-25 05:09:44','2022-07-25 05:09:44'),(4,'admin.edit','admin','admin','2022-07-25 05:09:44','2022-07-25 05:09:44'),(5,'admin.delete','admin','admin','2022-07-25 05:09:44','2022-07-25 05:09:44'),(6,'role.create','admin','role','2022-07-25 05:09:44','2022-07-25 05:09:44'),(7,'role.view','admin','role','2022-07-25 05:09:44','2022-07-25 05:09:44'),(8,'role.edit','admin','role','2022-07-25 05:09:44','2022-07-25 05:09:44'),(9,'role.delete','admin','role','2022-07-25 05:09:44','2022-07-25 05:09:44'),(10,'map.create','admin','map','2022-07-25 05:09:44','2022-07-25 05:09:44'),(11,'map.view','admin','map','2022-07-25 05:09:44','2022-07-25 05:09:44'),(12,'map.edit','admin','map','2022-07-25 05:09:44','2022-07-25 05:09:44'),(13,'map.delete','admin','map','2022-07-25 05:09:44','2022-07-25 05:09:44'),(14,'profile.view','admin','profile','2022-07-25 05:09:44','2022-07-25 05:09:44'),(15,'profile.edit','admin','profile','2022-07-25 05:09:44','2022-07-25 05:09:44'),(16,'setting.view','admin','settings','2022-07-25 05:09:44','2022-07-25 05:09:44'),(17,'setting.update','admin','settings','2022-07-25 05:09:44','2022-07-25 05:09:44'),(18,'ad.create','admin','ad','2022-07-25 05:09:44','2022-07-25 05:09:44'),(19,'ad.view','admin','ad','2022-07-25 05:09:44','2022-07-25 05:09:44'),(20,'ad.update','admin','ad','2022-07-25 05:09:44','2022-07-25 05:09:44'),(21,'ad.delete','admin','ad','2022-07-25 05:09:44','2022-07-25 05:09:44'),(22,'category.create','admin','category','2022-07-25 05:09:44','2022-07-25 05:09:44'),(23,'category.view','admin','category','2022-07-25 05:09:44','2022-07-25 05:09:44'),(24,'category.update','admin','category','2022-07-25 05:09:44','2022-07-25 05:09:44'),(25,'category.delete','admin','category','2022-07-25 05:09:44','2022-07-25 05:09:44'),(26,'subcategory.create','admin','category','2022-07-25 05:09:44','2022-07-25 05:09:44'),(27,'subcategory.view','admin','category','2022-07-25 05:09:44','2022-07-25 05:09:44'),(28,'subcategory.update','admin','category','2022-07-25 05:09:44','2022-07-25 05:09:44'),(29,'subcategory.delete','admin','category','2022-07-25 05:09:44','2022-07-25 05:09:44'),(30,'custom-field.create','admin','custom-field','2022-07-25 05:09:44','2022-07-25 05:09:44'),(31,'custom-field.view','admin','custom-field','2022-07-25 05:09:44','2022-07-25 05:09:44'),(32,'custom-field.update','admin','custom-field','2022-07-25 05:09:44','2022-07-25 05:09:44'),(33,'custom-field.delete','admin','custom-field','2022-07-25 05:09:44','2022-07-25 05:09:44'),(34,'custom-field-group.create','admin','custom-field','2022-07-25 05:09:44','2022-07-25 05:09:44'),(35,'custom-field-group.view','admin','custom-field','2022-07-25 05:09:44','2022-07-25 05:09:44'),(36,'custom-field-group.update','admin','custom-field','2022-07-25 05:09:44','2022-07-25 05:09:44'),(37,'custom-field-group.delete','admin','custom-field','2022-07-25 05:09:44','2022-07-25 05:09:44'),(38,'newsletter.view','admin','newsletter','2022-07-25 05:09:44','2022-07-25 05:09:44'),(39,'newsletter.mailsend','admin','newsletter','2022-07-25 05:09:44','2022-07-25 05:09:44'),(40,'newsletter.delete','admin','newsletter','2022-07-25 05:09:44','2022-07-25 05:09:44'),(41,'brand.create','admin','brand','2022-07-25 05:09:45','2022-07-25 05:09:45'),(42,'brand.view','admin','brand','2022-07-25 05:09:45','2022-07-25 05:09:45'),(43,'brand.update','admin','brand','2022-07-25 05:09:45','2022-07-25 05:09:45'),(44,'brand.delete','admin','brand','2022-07-25 05:09:45','2022-07-25 05:09:45'),(45,'plan.create','admin','plan','2022-07-25 05:09:45','2022-07-25 05:09:45'),(46,'plan.view','admin','plan','2022-07-25 05:09:45','2022-07-25 05:09:45'),(47,'plan.update','admin','plan','2022-07-25 05:09:45','2022-07-25 05:09:45'),(48,'plan.delete','admin','plan','2022-07-25 05:09:45','2022-07-25 05:09:45'),(49,'postcategory.create','admin','Blog','2022-07-25 05:09:45','2022-07-25 05:09:45'),(50,'postcategory.view','admin','Blog','2022-07-25 05:09:45','2022-07-25 05:09:45'),(51,'postcategory.update','admin','Blog','2022-07-25 05:09:45','2022-07-25 05:09:45'),(52,'postcategory.delete','admin','Blog','2022-07-25 05:09:45','2022-07-25 05:09:45'),(53,'post.create','admin','Blog','2022-07-25 05:09:45','2022-07-25 05:09:45'),(54,'post.view','admin','Blog','2022-07-25 05:09:45','2022-07-25 05:09:45'),(55,'post.update','admin','Blog','2022-07-25 05:09:45','2022-07-25 05:09:45'),(56,'post.delete','admin','Blog','2022-07-25 05:09:45','2022-07-25 05:09:45'),(57,'tag.create','admin','Blog','2022-07-25 05:09:45','2022-07-25 05:09:45'),(58,'tag.view','admin','Blog','2022-07-25 05:09:45','2022-07-25 05:09:45'),(59,'tag.update','admin','Blog','2022-07-25 05:09:45','2022-07-25 05:09:45'),(60,'tag.delete','admin','Blog','2022-07-25 05:09:45','2022-07-25 05:09:45'),(61,'testimonial.create','admin','testimonial','2022-07-25 05:09:45','2022-07-25 05:09:45'),(62,'testimonial.view','admin','testimonial','2022-07-25 05:09:45','2022-07-25 05:09:45'),(63,'testimonial.update','admin','testimonial','2022-07-25 05:09:45','2022-07-25 05:09:45'),(64,'testimonial.delete','admin','testimonial','2022-07-25 05:09:45','2022-07-25 05:09:45'),(65,'faqcategory.create','admin','faq','2022-07-25 05:09:45','2022-07-25 05:09:45'),(66,'faqcategory.view','admin','faq','2022-07-25 05:09:45','2022-07-25 05:09:45'),(67,'faqcategory.update','admin','faq','2022-07-25 05:09:45','2022-07-25 05:09:45'),(68,'faqcategory.delete','admin','faq','2022-07-25 05:09:45','2022-07-25 05:09:45'),(69,'faq.create','admin','faq','2022-07-25 05:09:45','2022-07-25 05:09:45'),(70,'faq.view','admin','faq','2022-07-25 05:09:45','2022-07-25 05:09:45'),(71,'faq.update','admin','faq','2022-07-25 05:09:45','2022-07-25 05:09:45'),(72,'faq.delete','admin','faq','2022-07-25 05:09:45','2022-07-25 05:09:45'),(73,'customer.view','admin','others','2022-07-25 05:09:45','2022-07-25 05:09:45'),(74,'contact.view','admin','others','2022-07-25 05:09:45','2022-07-25 05:09:45'),(75,'color.destroy','admin','color','2022-07-25 05:09:45','2022-07-25 05:09:45'),(76,'color.update','admin','color','2022-07-25 05:09:45','2022-07-25 05:09:45'),(77,'color.create','admin','color','2022-07-25 05:09:45','2022-07-25 05:09:45'),(78,'size.create','admin','size','2022-07-25 05:09:45','2022-07-25 05:09:45'),(79,'size.destroy','admin','size','2022-07-25 05:09:45','2022-07-25 05:09:45'),(80,'size.update','admin','size','2022-07-25 05:09:45','2022-07-25 05:09:45'),(81,'report.index','admin','report','2022-07-25 05:09:45','2022-07-25 05:09:45'),(82,'report.view','admin','report','2022-07-25 05:09:45','2022-07-25 05:09:45'),(83,'color.index','admin','color','2022-07-25 05:09:45','2022-07-25 05:09:45'),(84,'module.coupon.index','admin','coupon','2022-07-25 05:09:45','2022-07-25 05:09:45'),(85,'module.coupon.create','admin','coupon','2022-07-25 05:09:45','2022-07-25 05:09:45'),(86,'module.coupon.edit','admin','coupon','2022-07-25 05:09:45','2022-07-25 05:09:45'),(87,'module.coupon.destroy','admin','coupon','2022-07-25 05:09:45','2022-07-25 05:09:45');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `ad_limit` int(11) NOT NULL,
  `featured_limit` int(11) NOT NULL,
  `badge` tinyint(1) NOT NULL,
  `recommended` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `interval` enum('monthly','yearly','custom_date') DEFAULT NULL,
  `custom_interval_days` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plans_label_unique` (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans`
--

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (3,'2023','2023','uploads/post/category/QajM0wwhR6GBcDSOlXdjdGRSSWobiPbvo9dd7XHN.jpg','2022-12-29 06:35:01','2023-02-07 10:39:13');
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL,
  `author_id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `short_description` text NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_category_id_foreign` (`category_id`),
  KEY `posts_author_id_foreign` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,1,'Welcome to our sales!','welcome-to-our-sales','uploads/post/IsORGKNfZlbBFdGT0rnvKYzQ3aGTcAYgnlyllc3K.jpg','From the early Clipse days and working with Pharrell to his successful solo career and seat as president of Kanye West’s G.O.O.D. Music','<p>From the early Clipse days and working with Pharrell to his successful solo career and seat as president of Kanye West’s G.O.O.D. Music, Pusha T has always maintained a style laced with nuance, vivid imagery and storytelling. His wardrobe echoes these themes, as the Virginia rapper consistently mixes emerging designers such as Craig Green and Noah with established names like Gucci. After offering up hundreds of pieces back in 2019, he’s returned to make room for new pick ups and pass more of his favorite pieces on to the community. Shop Pusha T’s closet, including picks from BAPE, Prada, Dries Van Noten, and much more.</p><p><br>From the early Clipse days and working with Pharrell to his successful solo career and seat as president of Kanye West’s G.O.O.D. Music, Pusha T has always maintained a style laced with nuance, vivid imagery and storytelling. His wardrobe echoes these themes, as the Virginia rapper consistently mixes emerging designers such as Craig Green and Noah with established names like Gucci. After offering up hundreds of pieces back in 2019, he’s returned to make room for new pick ups and pass more of his favorite pieces on to the community. Shop Pusha T’s closet, including picks from BAPE, Prada, Dries Van Noten, and much more.</p><p><br>From the early Clipse days and working with Pharrell to his successful solo career and seat as president of Kanye West’s G.O.O.D. Music, Pusha T has always maintained a style laced with nuance, vivid imagery and storytelling. His wardrobe echoes these themes, as the Virginia rapper consistently mixes emerging designers such as Craig Green and Noah with established names like Gucci. After offering up hundreds of pieces back in 2019, he’s returned to make room for new pick ups and pass more of his favorite pieces on to the community. Shop Pusha T’s closet, including picks from BAPE, Prada, Dries Van Noten, and much more.</p><p>&nbsp;</p>','2022-10-19 07:14:50','2022-10-19 07:22:21'),(2,1,1,'Our Creation','our-creation','uploads/post/95o9ZSC2CwNx7K301EAY3ziTZOkGKUkFrkI0JeT7.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text.','<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p><p>&nbsp;</p><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p><p>&nbsp;</p><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>','2022-10-19 07:25:48','2022-10-19 07:30:00'),(3,1,1,'Justify','justify','uploads/post/IG8zPsntRQuBiSqoJYaq6le6S5ASrWgKsdU6pDxs.jpg','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text','<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>','2022-10-19 07:26:17','2022-12-29 06:37:24');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_custom_fields`
--

DROP TABLE IF EXISTS `product_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_custom_fields` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ad_id` bigint(20) unsigned NOT NULL,
  `custom_field_id` bigint(20) unsigned NOT NULL,
  `custom_field_group_id` bigint(20) unsigned NOT NULL,
  `value` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_custom_fields_ad_id_foreign` (`ad_id`),
  KEY `product_custom_fields_custom_field_id_foreign` (`custom_field_id`),
  KEY `product_custom_fields_custom_field_group_id_foreign` (`custom_field_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_custom_fields`
--

LOCK TABLES `product_custom_fields` WRITE;
/*!40000 ALTER TABLE `product_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recent_view_ads`
--

DROP TABLE IF EXISTS `recent_view_ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recent_view_ads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(155) NOT NULL COMMENT 'session or user_id',
  `ad_id` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recent_view_ads`
--

LOCK TABLES `recent_view_ads` WRITE;
/*!40000 ALTER TABLE `recent_view_ads` DISABLE KEYS */;
INSERT INTO `recent_view_ads` VALUES (1,'54BcaMDSXv4qF5YKeLOmKIUPoj8JAyLYoqQSwX28',5,'2023-01-31 12:59:21',57,'2023-01-31 12:59:21',57),(2,'vV54x0Aia8uVcgrzzJI8gsWOfr52vgYJWHrJ75im',5,'2023-01-31 12:59:21',57,'2023-01-31 13:12:41',57),(3,'vV54x0Aia8uVcgrzzJI8gsWOfr52vgYJWHrJ75im',5,'2023-01-31 12:59:21',57,'2023-01-31 13:12:54',57),(4,'vV54x0Aia8uVcgrzzJI8gsWOfr52vgYJWHrJ75im',5,'2023-01-31 12:59:21',57,'2023-01-31 13:12:59',57),(5,'vV54x0Aia8uVcgrzzJI8gsWOfr52vgYJWHrJ75im',5,'2023-01-31 12:59:21',57,'2023-01-31 13:14:01',57),(6,'vV54x0Aia8uVcgrzzJI8gsWOfr52vgYJWHrJ75im',5,'2023-01-31 12:59:21',57,'2023-01-31 13:14:36',57),(7,'vV54x0Aia8uVcgrzzJI8gsWOfr52vgYJWHrJ75im',5,'2023-01-31 12:59:21',57,'2023-01-31 13:14:59',57),(8,'vV54x0Aia8uVcgrzzJI8gsWOfr52vgYJWHrJ75im',5,'2023-01-31 12:59:21',57,'2023-01-31 13:15:05',57),(9,'vV54x0Aia8uVcgrzzJI8gsWOfr52vgYJWHrJ75im',5,'2023-01-31 12:59:21',57,'2023-01-31 13:56:11',57),(10,'vV54x0Aia8uVcgrzzJI8gsWOfr52vgYJWHrJ75im',5,'2023-01-31 12:59:21',57,'2023-01-31 13:56:15',57),(11,'vV54x0Aia8uVcgrzzJI8gsWOfr52vgYJWHrJ75im',5,'2023-01-31 12:59:21',57,'2023-01-31 14:00:29',57),(12,'B2knWroCDmM8MQHCE6jujGyhgWgEBaIQWFXrryA0',7,'2023-02-01 04:56:54',56,'2023-02-01 04:56:54',56),(13,'B2knWroCDmM8MQHCE6jujGyhgWgEBaIQWFXrryA0',7,'2023-02-01 04:56:54',56,'2023-02-01 04:59:42',56),(14,'B2knWroCDmM8MQHCE6jujGyhgWgEBaIQWFXrryA0',7,'2023-02-01 04:56:54',56,'2023-02-01 04:59:46',56),(15,'B2knWroCDmM8MQHCE6jujGyhgWgEBaIQWFXrryA0',7,'2023-02-01 04:56:54',56,'2023-02-01 05:00:08',56),(16,'vMuYxSj9sRwAtY04waBofViXLHLyicGpYQwnvDxw',7,'2023-02-01 04:56:54',56,'2023-02-01 05:03:25',56),(17,'5cJF0jyDcfcgf1PWTi3fX6pWtouRyL2QNuP7Fnl5',7,'2023-02-01 04:56:54',56,'2023-02-01 11:02:07',56),(18,'z5FrAoFgtsdBwiuAGixGEjky4pgqFiMKxd91gKqE',7,'2023-02-01 04:56:54',56,'2023-02-01 11:12:13',56),(19,'z5FrAoFgtsdBwiuAGixGEjky4pgqFiMKxd91gKqE',7,'2023-02-01 04:56:54',56,'2023-02-01 13:55:24',56),(20,'ENUJacPdksHNMKsFaSAiQnz1d3rlspp9pVMITzBQ',7,'2023-02-01 04:56:54',56,'2023-02-01 14:04:21',56),(21,'fiF0U00gy7ta4CvVB4IWfUBK8hlyFA3oR31V0VG8',7,'2023-02-01 04:56:54',56,'2023-02-01 14:32:58',56),(22,'oM6x6wrTN2ix2fg0qRjiK8qbVx7H4epiv6DacHN7',7,'2023-02-01 04:56:54',56,'2023-02-01 15:25:54',56),(23,'QYwKu63uMTMUWdYrUYARsOagqiUEgrKK4J4w6HRn',7,'2023-02-01 04:56:54',56,'2023-02-02 08:57:38',56),(24,'B2LQT49ORlzpZtJkW8REF7c4wRUKOOg9ZUU6R5Tj',8,'2023-02-02 08:55:21',57,'2023-02-02 08:57:26',57),(25,'oM6x6wrTN2ix2fg0qRjiK8qbVx7H4epiv6DacHN7',8,'2023-02-02 08:55:21',57,'2023-02-02 10:37:46',57),(26,'oM6x6wrTN2ix2fg0qRjiK8qbVx7H4epiv6DacHN7',9,'2023-02-02 10:04:38',56,'2023-02-02 11:29:48',56),(27,'oM6x6wrTN2ix2fg0qRjiK8qbVx7H4epiv6DacHN7',9,'2023-02-02 10:04:38',56,'2023-02-02 11:29:56',56),(28,'oM6x6wrTN2ix2fg0qRjiK8qbVx7H4epiv6DacHN7',9,'2023-02-02 10:04:38',56,'2023-02-02 11:30:08',56),(29,'oM6x6wrTN2ix2fg0qRjiK8qbVx7H4epiv6DacHN7',9,'2023-02-02 10:04:38',56,'2023-02-02 12:00:21',56),(30,'oM6x6wrTN2ix2fg0qRjiK8qbVx7H4epiv6DacHN7',9,'2023-02-02 10:04:38',56,'2023-02-02 12:00:28',56),(31,'AyIKoRy5LWYA2DvVBn5wsWHavJccw8CAY1IoOz21',8,'2023-02-02 08:55:21',57,'2023-02-02 11:29:38',57),(32,'sQEeq1bU8oPOkGAbkltfN87RlppRk0hNXXTqETZM',9,'2023-02-02 10:04:38',56,'2023-02-02 12:00:46',56),(33,'sNMhasNeG7Qzy5g5szgeANYUqucQqKGsXuzwRYBS',7,'2023-02-01 04:56:54',56,'2023-02-02 10:02:02',56),(34,'cJddox6ZcCMunDpTo8upFe3XnYTKDx0uqppPdN1w',8,'2023-02-02 08:55:21',57,'2023-02-02 14:10:35',57),(35,'cJddox6ZcCMunDpTo8upFe3XnYTKDx0uqppPdN1w',6,'2023-01-31 15:21:52',57,'2023-02-02 08:57:29',57),(36,'cJddox6ZcCMunDpTo8upFe3XnYTKDx0uqppPdN1w',7,'2023-02-01 04:56:54',56,'2023-02-04 08:27:11',56),(37,'AZAJUXPkfKGW3NmCutKO9RezVDIuOtUZmRJFVmAi',9,'2023-02-02 10:04:38',56,'2023-02-02 14:10:39',56),(38,'TR5TjkSUilsxnUpBfLGLWykgDHpyiAmCutJpJX7R',9,'2023-02-02 10:04:38',56,'2023-02-04 11:41:31',56),(39,'ROV6tSy4xrwKy2MHIpbpIVd5JPE9KZ3XIozfw27c',8,'2023-02-02 08:55:21',57,'2023-02-04 08:44:09',57),(40,'uEXgOdHJnINXuQXWCVvzuvq315CYF8uhEhQDtrDR',8,'2023-02-02 08:55:21',57,'2023-02-05 08:02:29',57),(41,'kM5SdSQKx13y2YdLJ6M0qHhd1ldP0cNjITmvIIGe',9,'2023-02-02 10:04:38',56,'2023-02-04 16:39:34',56),(42,'amPaAF8kjSXTdzvvZiPev3C8qD1E9jNRymBhAo6g',9,'2023-02-02 10:04:38',56,'2023-02-06 02:57:09',56),(43,'ogdXn6I5USMJdMD9Jr2vYCwwNPdRkuKpXngWySwP',7,'2023-02-01 04:56:54',56,'2023-02-06 05:44:49',56),(44,'ogdXn6I5USMJdMD9Jr2vYCwwNPdRkuKpXngWySwP',7,'2023-02-01 04:56:54',56,'2023-02-06 05:45:38',56),(45,'6eCDoqy1HBuHCPzxf8Culofffhge5T6IVKWuZqum',9,'2023-02-02 10:04:38',56,'2023-02-06 05:04:11',56),(46,'wLfVbXLqmBtRiPyEwL9Clgh1fpAK3ccbYrROIuEC',9,'2023-02-02 10:04:38',56,'2023-02-06 07:41:45',56),(47,'n5xCFDWRKqAnrCJ95V1mruCiSHpZoC1AwJzeG7N8',7,'2023-02-01 04:56:54',56,'2023-02-06 05:45:44',56),(48,'6QGB2ZcsitZzY9pZ7jhm6u56FSfUmsQ9Q6jAKCAf',9,'2023-02-02 10:04:38',56,'2023-02-06 09:17:05',56),(49,'D14tmNa8wvkeKmWesu2PuKUReee4rhENscepGdQ8',19,'2023-02-06 12:31:39',60,'2023-02-06 12:32:44',60),(50,'IBFHMjUkImhtR3jmQn4v0IwXyOd2USLIK8H7YEux',9,'2023-02-02 10:04:38',56,'2023-02-06 11:22:06',56),(51,'IBFHMjUkImhtR3jmQn4v0IwXyOd2USLIK8H7YEux',7,'2023-02-01 04:56:54',56,'2023-02-06 10:34:52',56),(52,'SDaSdHXlIUdCEaaWKpyFrOwRFSIG9dV6dpYqM4cf',7,'2023-02-01 04:56:54',56,'2023-02-06 12:46:01',56),(53,'IBFHMjUkImhtR3jmQn4v0IwXyOd2USLIK8H7YEux',17,'2023-02-04 10:58:28',56,'2023-02-05 09:23:47',56),(54,'IBFHMjUkImhtR3jmQn4v0IwXyOd2USLIK8H7YEux',16,'2023-02-04 10:57:47',56,'2023-02-06 12:48:55',56),(55,'IBFHMjUkImhtR3jmQn4v0IwXyOd2USLIK8H7YEux',13,'2023-02-02 14:23:49',56,'2023-02-02 14:23:49',56),(56,'IBFHMjUkImhtR3jmQn4v0IwXyOd2USLIK8H7YEux',12,'2023-02-02 14:23:14',56,'2023-02-06 05:44:33',56),(57,'IBFHMjUkImhtR3jmQn4v0IwXyOd2USLIK8H7YEux',17,'2023-02-04 10:58:28',56,'2023-02-06 12:49:31',56),(58,'IBFHMjUkImhtR3jmQn4v0IwXyOd2USLIK8H7YEux',7,'2023-02-01 04:56:54',56,'2023-02-06 12:46:10',56),(59,'heS1wBfbTybETxZ89PGgTJh2PDfHxKc7SeS8tnei',9,'2023-02-02 10:04:38',56,'2023-02-06 12:45:42',56),(60,'zu7es1I44svEwCr2aR34QDagIuqAORGBV52XjyIV',9,'2023-02-02 10:04:38',56,'2023-02-06 13:19:38',56),(61,'78MXhtae9V1IH4wOmwAbqNQh9uYfcCYzMoghFFaQ',7,'2023-02-01 04:56:54',56,'2023-02-06 12:52:20',56),(62,'0eiQamHRvJVVpQJmUzMPNwZbGuB6HafhcL2YGYq2',9,'2023-02-02 10:04:38',56,'2023-02-06 13:28:18',56),(63,'uFgUdB9uOcCB1wxXC6jnvGseTqQ7W7cBxPPlByt5',9,'2023-02-02 10:04:38',56,'2023-02-06 15:36:09',56),(64,'9kF95NfPiIVZTOFVaxD9i0cm8hSDtPy8QApYcZsx',9,'2023-02-02 10:04:38',56,'2023-02-06 17:43:11',56),(65,'2nQua3j8sCBZuXzSeZxOTuJs1eUO9WDXhif3PP2u',9,'2023-02-02 10:04:38',56,'2023-02-06 19:50:03',56),(66,'2saoW2cf50xWukMhI518gksN27y8yGeuTmGPxvWl',9,'2023-02-02 10:04:38',56,'2023-02-06 21:54:15',56),(67,'y3KD3jajB5e3VQLHJGBSbwNrWBf4jK1LAU8ST71D',9,'2023-02-02 10:04:38',56,'2023-02-07 00:01:57',56),(68,'uqEBxSg1B904Emx3HQvXMuWh51IJeTfJPF05YnHg',9,'2023-02-02 10:04:38',56,'2023-02-07 02:09:48',56),(69,'lwG7w4XOfb0fbwRTyjKyUxRdrdizv3W7BB4EN52R',7,'2023-02-01 04:56:54',56,'2023-02-06 14:55:33',56),(70,'zoBEau1tPvvT5cSg21ovkjNbonVxlqPeNsrOug5d',7,'2023-02-01 04:56:54',56,'2023-02-07 05:33:29',56),(71,'Fyr8jm7M2B29tHeb9IpJRL1UYUOzWnfd8h0Bcq9N',9,'2023-02-02 10:04:38',56,'2023-02-07 04:15:50',56),(72,'4gGIgY8DxGag4oyZJ72ZnXZLWMfErnNnzPOX583B',20,'2023-02-07 08:00:52',56,'2023-02-07 08:01:49',56),(73,'aU5H1w4LNZkHDpcsMItRholKTDDwAA8AJDgOFx4m',21,'2023-02-07 08:16:50',61,'2023-02-07 08:17:22',61),(74,'aU5H1w4LNZkHDpcsMItRholKTDDwAA8AJDgOFx4m',21,'2023-02-07 08:16:50',61,'2023-02-07 08:17:34',61),(75,'c0dyBdYqV4efMA7FAkswOadTO4uUweYuk13MXIw9',8,'2023-02-02 08:55:21',57,'2023-02-07 08:18:38',57),(76,'FY6ybwxZpw2XnaOXpS3iGkwaZibW1vke6Gcf6LH7',8,'2023-02-02 08:55:21',57,'2023-02-07 09:35:21',57),(77,'GnvwdLRfNKJ5KwMIExxj5KnIgoc61xnsu24X2zX3',22,'2023-02-07 09:43:22',57,'2023-02-07 10:24:42',57),(78,'GnvwdLRfNKJ5KwMIExxj5KnIgoc61xnsu24X2zX3',22,'2023-02-07 09:43:22',57,'2023-02-07 10:25:52',57),(79,'a95NyqUJ18onx77fueWKXssDODxorLMEZiXAoNAp',23,'2023-03-06 04:35:29',56,'2023-03-06 04:35:29',56),(80,'a95NyqUJ18onx77fueWKXssDODxorLMEZiXAoNAp',23,'2023-03-06 04:35:29',56,'2023-03-06 04:35:48',56),(81,'jkYIWsA7P8nAvWMWL6N7G70sXdRAbMxlOmTGHksC',23,'2023-03-06 04:35:29',56,'2023-03-06 04:39:36',56),(82,'jkYIWsA7P8nAvWMWL6N7G70sXdRAbMxlOmTGHksC',23,'2023-03-06 04:35:29',56,'2023-03-06 04:56:17',56),(83,'mCB0sgDy4nnxdaOuRo6zVZUIdGlGMc7mCXffQGc0',23,'2023-03-06 04:35:29',56,'2023-03-06 04:57:19',56),(84,'mCB0sgDy4nnxdaOuRo6zVZUIdGlGMc7mCXffQGc0',23,'2023-03-06 04:35:29',56,'2023-03-06 05:03:35',56),(85,'ZjysECvSfj72AhvI1wOZSQ4zkjr18J6V5pUHLXcT',23,'2023-03-06 04:35:29',56,'2023-03-06 06:50:06',56),(86,'ZjysECvSfj72AhvI1wOZSQ4zkjr18J6V5pUHLXcT',23,'2023-03-06 04:35:29',56,'2023-03-06 13:09:41',56),(87,'ZjysECvSfj72AhvI1wOZSQ4zkjr18J6V5pUHLXcT',23,'2023-03-06 04:35:29',56,'2023-03-06 13:11:08',56),(88,'BrJguu94AFyuBoJCBQ9KY9jtConQQqKF12J1OcUV',23,'2023-03-06 04:35:29',56,'2023-03-06 13:11:33',56),(89,'BrJguu94AFyuBoJCBQ9KY9jtConQQqKF12J1OcUV',23,'2023-03-06 04:35:29',56,'2023-03-07 04:22:56',56),(90,'BrJguu94AFyuBoJCBQ9KY9jtConQQqKF12J1OcUV',23,'2023-03-06 04:35:29',56,'2023-03-07 04:32:08',56),(91,'BrJguu94AFyuBoJCBQ9KY9jtConQQqKF12J1OcUV',23,'2023-03-06 04:35:29',56,'2023-03-07 06:25:48',56),(92,'BrJguu94AFyuBoJCBQ9KY9jtConQQqKF12J1OcUV',24,'2023-03-07 08:39:20',56,'2023-03-07 08:39:21',56),(93,'BrJguu94AFyuBoJCBQ9KY9jtConQQqKF12J1OcUV',23,'2023-03-06 04:35:29',56,'2023-03-07 06:30:36',56),(94,'yEWUxNWPpDGSiXVC8zcHEktogM8Ql44zg3sQnW3Q',23,'2023-03-06 04:35:29',56,'2023-03-07 08:39:43',56),(95,'yEWUxNWPpDGSiXVC8zcHEktogM8Ql44zg3sQnW3Q',23,'2023-03-06 04:35:29',56,'2023-03-07 08:40:20',56),(96,'yEWUxNWPpDGSiXVC8zcHEktogM8Ql44zg3sQnW3Q',24,'2023-03-07 08:39:20',56,'2023-03-07 08:39:33',56),(97,'DUgVfsyuei3xGWaqcyrFo2UCEbqeUCIIQ8Thq6SN',24,'2023-03-07 08:39:20',56,'2023-03-07 09:08:24',56),(98,'PDIr5RqXFnsaOYmFNWcaLxAxDtyu7Mj0IadvzPlV',24,'2023-03-07 08:39:20',56,'2023-03-07 12:52:56',56),(99,'PDIr5RqXFnsaOYmFNWcaLxAxDtyu7Mj0IadvzPlV',24,'2023-03-07 08:39:20',56,'2023-03-08 10:01:52',56),(100,'UscahqFHI5y741GaWur6omW8VTgbg7gnejPRHgCR',23,'2023-03-06 04:35:29',56,'2023-03-07 09:08:11',56),(101,'yMttrYVCqyjJbZxRD9NTaZN1Iq7HAQdneFzJJWgY',24,'2023-03-07 08:39:20',56,'2023-03-08 10:02:08',56),(102,'cWdwg0c4A9aqwLiNHitc9zDOjzZIYUibuxLcG4Jj',24,'2023-03-07 08:39:20',56,'2023-03-09 12:14:06',56),(103,'cWdwg0c4A9aqwLiNHitc9zDOjzZIYUibuxLcG4Jj',24,'2023-03-07 08:39:20',56,'2023-03-11 04:15:01',56),(104,'X5B2M8ZFs3khomEOmEYy5bXAwHjgkY9pntQWaUEe',23,'2023-03-06 04:35:29',56,'2023-03-09 05:12:43',56),(105,'cWdwg0c4A9aqwLiNHitc9zDOjzZIYUibuxLcG4Jj',23,'2023-03-06 04:35:29',56,'2023-03-11 04:41:39',56),(106,'bHah2m8QsGNOwMvQLqm4SmlEcpGdtjmLB4PckZbe',23,'2023-03-06 04:35:29',56,'2023-03-11 05:42:25',56),(107,'nCMTlIptOuPF9vRo3fbHvAvckBEygnSQdho1IPWc',23,'2023-03-06 04:35:29',56,'2023-03-11 09:08:50',56),(108,'H2YtS1fLSo53tKWxWLuzRGUCA9Ku9yn0WkXYpSZ1',24,'2023-03-07 08:39:20',56,'2023-03-11 04:16:12',56),(109,'bK0rf7cf2p39lEwB9LEcAAp9o9V3wU418Sna1C3W',24,'2023-03-07 08:39:20',56,'2023-03-11 13:02:32',56),(110,'NXkRIQPlFiSQottjuMdlCwxJjhLgc7dJGOSaBixC',24,'2023-03-07 08:39:20',56,'2023-03-12 05:16:39',56),(111,'a3AITEwhmgfFNRYHsbRT7ApXdYwvPsARTtUQ0qXn',24,'2023-03-07 08:39:20',56,'2023-03-12 12:29:55',56),(112,'iTbcfR90dCFf22gaSHrFganCkMc8CojU3dXeMY8p',24,'2023-03-07 08:39:20',56,'2023-03-12 13:42:07',56),(113,'zTrSDy6xgkGksLfZmk2HjlOzgASllvGyjDxOTXoc',24,'2023-03-07 08:39:20',56,'2023-03-13 00:45:27',56),(114,'6QcRBrm9DG9aXGT0Mw0HQyEYGcUvnvn2CAvD5icj',23,'2023-03-06 04:35:29',56,'2023-03-11 09:30:20',56),(115,'ifz7KGHOPTfuWHFD8jKMAJiY6HnwDpu0AgI54tTn',24,'2023-03-07 08:39:20',56,'2023-03-16 00:58:48',56),(116,'dI1tXyV5PjxkM7rOdKq0bP4FKdRlvLWEe2g51rA4',24,'2023-03-07 08:39:20',56,'2023-03-17 04:06:34',56),(117,'SywRn65iVZVBhG1YdLtBGILxg0i0nBSjxUosPeHZ',24,'2023-03-07 08:39:20',56,'2023-03-17 20:25:49',56),(118,'uaixAkRLzuFoBrY3ftbiFSpRMz7SE8w1Ub4HqnEn',23,'2023-03-06 04:35:29',56,'2023-03-16 04:40:53',56),(119,'nEgJCppDd42nQRHp2pinNUU4jyIrv4sa8J0JMV05',24,'2023-03-07 08:39:20',56,'2023-03-18 06:30:20',56),(120,'l0tpV5G0Vtcq2yXEOHdDkwwhRQJLQ8EKCMRcaDxF',23,'2023-03-06 04:35:29',56,'2023-03-18 09:28:14',56),(121,'0KsQIjOsRg2zx4SrYgvbBT6muGgikpt7upDFMnUG',23,'2023-03-06 04:35:29',56,'2023-03-19 00:28:14',56),(122,'G5HLfFKaESqQ5MRye5UWuWE3L2U8IsCaqvAJ9sN6',23,'2023-03-06 04:35:29',56,'2023-03-19 01:48:06',56),(123,'G5HLfFKaESqQ5MRye5UWuWE3L2U8IsCaqvAJ9sN6',24,'2023-03-07 08:39:20',56,'2023-03-18 18:00:36',56),(124,'G5HLfFKaESqQ5MRye5UWuWE3L2U8IsCaqvAJ9sN6',24,'2023-03-07 08:39:20',56,'2023-03-19 06:15:29',56),(125,'AR9URwTVkuFhFVVR61WpyOUgeGPrN8yPHP1hNDm6',24,'2023-03-07 08:39:20',56,'2023-03-19 06:16:30',56),(126,'fW7HT53qcPP4IPuNZ1SHFerH6xnq258BsM4zcYhM',23,'2023-03-06 04:35:29',56,'2023-03-19 06:15:23',56),(127,'kddx2LrqZq6cZ8K3PtkQkza6UliLuxtf0A7OVHS4',24,'2023-03-07 08:39:20',56,'2023-03-19 06:35:07',56),(128,'uHwoId3DU7EbzsXoztdhhURlQtOFmxNLIJ5lTvgF',24,'2023-03-07 08:39:20',56,'2023-03-19 09:21:03',56),(129,'llRgcb2OaoTeRxVL96TtSwmlfB4WUybjPESaUC6F',23,'2023-03-06 04:35:29',56,'2023-03-19 07:58:14',56),(130,'GvqwlpQ8FaDdnJpFvVEzQWVV4GtETImnILW2IHej',25,'2023-03-20 06:02:54',70,'2023-03-20 06:02:54',70),(131,'GvqwlpQ8FaDdnJpFvVEzQWVV4GtETImnILW2IHej',24,'2023-03-07 08:39:20',56,'2023-03-19 21:36:33',56),(132,'GvqwlpQ8FaDdnJpFvVEzQWVV4GtETImnILW2IHej',23,'2023-03-06 04:35:29',56,'2023-03-20 04:53:36',56),(133,'GvqwlpQ8FaDdnJpFvVEzQWVV4GtETImnILW2IHej',26,'2023-03-20 06:09:48',70,'2023-03-20 06:12:45',70),(134,'GvqwlpQ8FaDdnJpFvVEzQWVV4GtETImnILW2IHej',25,'2023-03-20 06:02:54',70,'2023-03-20 06:08:16',70),(135,'GvqwlpQ8FaDdnJpFvVEzQWVV4GtETImnILW2IHej',26,'2023-03-20 06:09:48',70,'2023-03-20 06:19:44',70),(136,'Y9DxnPGw0diurnZZA4JZakHOBwC6eYiw6vgCnrXU',26,'2023-03-20 06:09:48',70,'2023-03-20 06:21:38',70),(137,'GvqwlpQ8FaDdnJpFvVEzQWVV4GtETImnILW2IHej',26,'2023-03-20 06:09:48',70,'2023-03-20 06:29:28',70),(138,'kDH29BUfXeykWojSUtTJsVdM6aZ1qbXJXzOeEabE',26,'2023-03-20 06:09:48',70,'2023-03-20 06:36:33',70),(139,'kDH29BUfXeykWojSUtTJsVdM6aZ1qbXJXzOeEabE',26,'2023-03-20 06:09:48',70,'2023-03-20 07:02:12',70),(140,'kDH29BUfXeykWojSUtTJsVdM6aZ1qbXJXzOeEabE',24,'2023-03-07 08:39:20',56,'2023-03-20 06:03:59',56),(141,'kDH29BUfXeykWojSUtTJsVdM6aZ1qbXJXzOeEabE',23,'2023-03-06 04:35:29',56,'2023-03-20 06:04:05',56),(142,'kDH29BUfXeykWojSUtTJsVdM6aZ1qbXJXzOeEabE',26,'2023-03-20 06:09:48',70,'2023-03-20 07:02:19',70),(143,'d5lbNNohT3xXIgm9Pbf9Ww97L0Hw6L5wo52IoxYW',23,'2023-03-06 04:35:29',56,'2023-03-20 07:02:53',56),(144,'d5lbNNohT3xXIgm9Pbf9Ww97L0Hw6L5wo52IoxYW',23,'2023-03-06 04:35:29',56,'2023-03-20 09:31:30',56),(145,'tMa4k0YTWVxI6AX7T99IBkQCtAYMXMZiuxIB3pWO',26,'2023-03-20 06:09:48',70,'2023-03-20 07:59:46',70),(146,'jp5cxAZlZPVdppQTWX1CAvqG2ewdhMAb1W9NVY0c',23,'2023-03-06 04:35:29',56,'2023-03-20 09:33:28',56),(147,'gTzzKB6VMExeO0V7bw2AVay3nnn3ehsaPU4HYm0k',24,'2023-03-07 08:39:20',56,'2023-03-20 07:02:28',56),(148,'QOQgbsVsX3X2OmfbpTKv2RcvjXSaj2TdYEADLqtU',26,'2023-03-20 06:09:48',70,'2023-03-20 09:52:39',70),(149,'QOQgbsVsX3X2OmfbpTKv2RcvjXSaj2TdYEADLqtU',26,'2023-03-20 06:09:48',70,'2023-03-20 11:10:35',70),(150,'5Xq8TI82245Njaz3uWT3mUJ5dA8vbxiidsXhkz2B',26,'2023-03-20 06:09:48',70,'2023-03-20 11:10:49',70),(151,'h3dJdqR4bytEkJQUGBbhllBV06WPSsgkJdLbwphb',26,'2023-03-20 06:09:48',70,'2023-03-20 11:47:37',70),(152,'wVVaeHV6YNIp2Aa7VwrOAX0fKCskmEqTBnjnpbHs',23,'2023-03-06 04:35:29',56,'2023-03-20 10:49:08',56),(153,'YLBkCB0jf0WjeNR7FUiBMKH5NKyRi5nzzzohwkR1',26,'2023-03-20 06:09:48',70,'2023-03-20 14:00:49',70),(154,'4VL6nBR5Te3aubGH1QDAgf3iraQ8XcO1wvPBikNo',24,'2023-03-07 08:39:20',56,'2023-03-20 10:51:58',56),(155,'LbavSfIN4RIXHcV8zlyOUnVbR6YtFQz5PggJpCNL',23,'2023-03-06 04:35:29',56,'2023-03-20 14:59:36',56),(156,'xvNHnvUwEtHPPjS1kY4df8pGU7vo64qbpchVDwK5',24,'2023-03-07 08:39:20',56,'2023-03-20 23:00:42',56),(157,'a96LXgQTANA3zQPatBELzo5NSh0dqzpHRCeIAW5l',24,'2023-03-07 08:39:20',56,'2023-03-21 08:12:44',56),(158,'Vpig7u80Poa5Haf0K1xshDT2ntHTPCDhQJ19os8b',26,'2023-03-20 06:09:48',70,'2023-03-20 16:48:39',70),(159,'XyBFYpcxlU3JYGmRVke8CbcR3PI7QLTSyyiCwMnu',26,'2023-03-20 06:09:48',70,'2023-03-21 09:43:47',70),(160,'Bu1tpJLTuFydtpf52wZ96dfbTpUTLAWz2bG9bIza',26,'2023-03-20 06:09:48',70,'2023-03-22 07:30:24',70),(161,'FxcegIExl0OrMgjh1Pl8810aEY2NWq6x91oVeSdv',24,'2023-03-07 08:39:20',56,'2023-03-21 09:39:49',56),(162,'XzSQxlascuPcHU9qnjxlXEFJMU4vXYbyX1tbIT80',24,'2023-03-07 08:39:20',56,'2023-03-22 18:31:03',56),(163,'Zph9eXBWm4CCx1SHJ4wnCaKbO1IIZEa9Rk2neFoA',26,'2023-03-20 06:09:48',70,'2023-03-22 12:20:59',70),(164,'8O8wjFSDytXpEHQEfRvI2xdNZOhNSsKf0gj42O3u',24,'2023-03-07 08:39:20',56,'2023-03-23 06:41:31',56),(165,'cxBPkKAGRhCmBF8rK9gOBXqpHtg5O4R8EfSyP3PP',26,'2023-03-20 06:09:48',70,'2023-03-23 10:07:46',70),(166,'XdHvrpTXN0V8qA055Rl0u5weLY13Ijop35wdW43D',23,'2023-03-06 04:35:29',56,'2023-03-21 02:18:12',56),(167,'vRb6Zt19L8MJ2uMoLNzhMZw0IwPARugPciGwbDqE',26,'2023-03-20 06:09:48',70,'2023-03-24 13:12:44',70),(168,'81dCtRbvvRfQb4DUK6LPzU2yRQ0dt9FQh8daD3II',23,'2023-03-06 04:35:29',56,'2023-03-24 15:08:52',56),(169,'KGxqHeiaI0mjGO7b0Y7BokKdLTe1YaWURRQlBuwv',24,'2023-03-07 08:39:20',56,'2023-03-23 22:48:25',56),(170,'ZPbON018kTlEYWMstunJm2VSxlwuuuNYQ3DKO8uU',24,'2023-03-07 08:39:20',56,'2023-03-25 09:49:08',56),(171,'uIHO9QhHE5L8b8W92LMnWhzIEteUfZoIVn2fd43U',26,'2023-03-20 06:09:48',70,'2023-03-24 18:56:11',70),(172,'LkpQj0rdaYyQAfdLfZR5yBXNQMsYV5ob2ToEenv0',24,'2023-03-07 08:39:20',56,'2023-03-25 17:42:15',56),(173,'GaAKd1i5sSanbMcuMAEfyoFV3QpWoXj8UTCdNlDT',26,'2023-03-20 06:09:48',70,'2023-03-25 20:57:29',70),(174,'rUdG460MCZ2QuJLNBLkzpPd0QG5gmhoOi1aGEHrd',23,'2023-03-06 04:35:29',56,'2023-03-24 22:38:51',56),(175,'ishOz3U4Y9zrD1TtQXfXhLMnjkWWwkiuIwSd4veX',23,'2023-03-06 04:35:29',56,'2023-03-27 08:01:48',56),(176,'VypD4snXq1dRS3oBQQwB9MLy8qOBWqXhA8xszGRr',26,'2023-03-20 06:09:48',70,'2023-03-26 23:57:46',70),(177,'aDZ4OR806VzPeEvpehD9FBDyqMblWkxFKJbQuBMm',24,'2023-03-07 08:39:20',56,'2023-03-26 19:23:36',56),(178,'b2yUidS5PKOfaBKOZn4zyj6OuylpCLEdIIgFcgLl',26,'2023-03-20 06:09:48',70,'2023-03-28 22:53:11',70),(179,'VRn3evsMnW9LBIUs69GNS7xPu3HPtHNnXlJfjNmC',23,'2023-03-06 04:35:29',56,'2023-03-27 09:23:05',56),(180,'B4PHv6VSB0SUqVys3uqAe4sUtRhpPzSTMN1n0v32',24,'2023-03-07 08:39:20',56,'2023-03-29 00:30:25',56),(181,'HRpcT0OXEyu96uvoYlYMqpuQgHN3sO80bFgMscRy',26,'2023-03-20 06:09:48',70,'2023-03-29 21:54:42',70),(182,'xp7UexsG8Vi1kjHrxlKCEqZCMKDR0fkdF92vpIkb',26,'2023-03-20 06:09:48',70,'2023-03-30 10:14:49',70),(183,'BpSIh9c1DOzmsB4XPXckceZ9cvO9eUcpeVdU2RXu',26,'2023-03-20 06:09:48',70,'2023-03-30 12:55:57',70),(184,'ddIO2aTsIDUR4Y863y9HJdElH2ZDxLDlgu1pRTAs',23,'2023-03-06 04:35:29',56,'2023-03-30 05:21:20',56),(185,'xIgYjX3eyAmGvOyYjUj6R3zwc7fJsxn0MF77PR4P',23,'2023-03-06 04:35:29',56,'2023-03-30 14:52:39',56),(186,'iUTuovrlgPsQWyjf4ZRaGMjTAuR7lNEUN3sZhEeY',26,'2023-03-20 06:09:48',70,'2023-03-30 13:12:23',70),(187,'jnXfW7Y5Aw3TshIHMarEvkzAfJmx5gOPyinhXa9o',24,'2023-03-07 08:39:20',56,'2023-03-30 07:15:54',56),(188,'Hajt8vxDoHCQm1QmZiMM8seOUgXOSmV6EMT2W5qM',29,'2023-04-01 04:45:54',75,'2023-04-01 04:49:12',75),(189,'ZZawXDK8YAj6Qo6dvU40vlPMRKbtDK4AL6MgZ42d',30,'2023-04-01 04:47:48',75,'2023-04-01 04:49:17',75),(190,'V86kyFAjsFXXlbzHXKB7LI2AwE069BGuWkf8JLj1',30,'2023-04-01 04:47:48',75,'2023-04-01 08:16:47',75),(191,'ts8th5I2tD61qAb7vUFaNmlI9gZIhbRWO7rElWUC',30,'2023-04-01 04:47:48',75,'2023-04-01 21:45:10',75),(192,'ts8th5I2tD61qAb7vUFaNmlI9gZIhbRWO7rElWUC',30,'2023-04-01 04:47:48',75,'2023-04-01 22:23:22',75),(193,'3IXr70kjrva0puHXkTigqOxsYk3oHYmT6mgp9jMI',26,'2023-03-20 06:09:48',70,'2023-03-31 14:47:21',70),(194,'L27LaoEiZpTfhp8HoDROLmZfOQt5HnRC8ufIPcHp',30,'2023-04-01 04:47:48',75,'2023-04-01 22:23:30',75),(195,'JH7empOxRug0LdJUQTk1oWvtdHArNabciMhTzZ9k',30,'2023-04-01 04:47:48',75,'2023-04-02 03:07:27',75),(196,'bcRMfoGhtUlqjXwSChIdFiwK3A2RjopfykpeCt3K',24,'2023-03-07 08:39:20',56,'2023-03-31 17:02:21',56),(197,'7T3PAD0pCOCNgzpdHAdWyF6H2ikBtNwqtAc9RbSQ',29,'2023-04-01 04:45:54',75,'2023-04-01 07:52:17',75),(198,'CAw07SanoJs0kED4tSnxPCqqRZfKe5fXuqa3Lcdm',23,'2023-03-06 04:35:29',56,'2023-03-30 15:51:08',56),(199,'OIi4uv9SKMxrbgufQvKe1BJNhBzsX9nICqbfg2zs',23,'2023-03-06 04:35:29',56,'2023-04-02 22:50:11',56),(200,'JmGyIlwxhFtb1XJkjxlF0dX2lYUSVO0bMpe2iYIk',30,'2023-04-01 04:47:48',75,'2023-04-02 04:12:41',75),(201,'rOYmbqMVjiLKvjmi7yZoVjowVZHTZpoHrpYwtGwk',30,'2023-04-01 04:47:48',75,'2023-04-03 08:59:19',75),(202,'XAsz9CnhIfwbnjeaSXDV0IwGfnaEyKzQIKXNBknI',30,'2023-04-01 04:47:48',75,'2023-04-03 09:10:39',75),(203,'e5Bh2fhyaO823X95UMMzNDzDJ8oRCmKTUjYS8iZQ',24,'2023-03-07 08:39:20',56,'2023-04-02 07:06:25',56),(204,'S4plN8Duy0hHaXz1yhjOYWip0f8E55VdQVnRUF5V',23,'2023-03-06 04:35:29',56,'2023-04-02 23:57:16',56),(205,'GRQ6f1vwu2ue8lZw6k90SBX0sycrnoO2nDAxMnDr',23,'2023-03-06 04:35:29',56,'2023-04-03 15:35:43',56),(206,'xZ7ObMEXoX8WeKyb1FwJFKSltppbtFw1Faoj568H',29,'2023-04-01 04:45:54',75,'2023-04-02 17:05:02',75),(207,'eGwkkT1MptPXlVRjnTco3mViyRL9FUjQBBHjLgGv',30,'2023-04-01 04:47:48',75,'2023-04-03 09:55:39',75),(208,'R6SZhuAUUNDtadvO3yqTQ8vToy8xOUrJr6lW6Wzi',29,'2023-04-01 04:45:54',75,'2023-04-04 00:14:47',75),(209,'mG8qwAfqGOngaOupWzFzALlGcCKBvxvAYiFV1mrl',30,'2023-04-01 04:47:48',75,'2023-04-04 04:00:20',75),(210,'3SFfXNYzskBYxhQFDhrLBXFTit6OMP54NdeiQjpS',29,'2023-04-01 04:45:54',75,'2023-04-04 12:58:58',75),(211,'NKPIaeEZqEmlh3HZYw3Y7yS1HPybXG7ai08guwHC',30,'2023-04-01 04:47:48',75,'2023-04-05 02:39:04',75),(212,'Gi61TF8E4Ue2XbsBTiOj2sdQYkJfBMdxC4FczLcX',30,'2023-04-01 04:47:48',75,'2023-04-05 07:55:24',75),(213,'jQI0BX6LKC3rcKVIbFezkO0qWcB76rpKnpwQd1sS',29,'2023-04-01 04:45:54',75,'2023-04-05 07:38:03',75),(214,'JpAKY5gA1NRJuMF8H2ni7paNN94O8pH2GUbJaMfq',30,'2023-04-01 04:47:48',75,'2023-04-06 18:11:17',75),(215,'klzoP1lDT0rH3XVg2k8zNuDbJnSrjnX0nHbxDCJ9',29,'2023-04-01 04:45:54',75,'2023-04-06 22:56:48',75),(216,'KpFD7wl8IVSEmUABhOBJumYme76pC2rlfj7dQdya',29,'2023-04-01 04:45:54',75,'2023-04-07 19:46:01',75),(217,'kKQsXmlZswpVVkvnDMbRJ3ydtnlY8BNWj32Tx3qi',30,'2023-04-01 04:47:48',75,'2023-04-07 19:09:07',75),(218,'jH22gnly4SshI5JJqy3sCj9pLMKYxGEfwrw7vJ3T',29,'2023-04-01 04:45:54',75,'2023-04-08 07:33:42',75),(219,'ZDEyib17JPceC9JQwODcSbXiMHZ6I68JP2uWxN8S',29,'2023-04-01 04:45:54',75,'2023-04-09 11:39:18',75),(220,'sxA5ReJY3LgmVEk8as4isqU55y4co1fVwmkvdKSH',26,'2023-03-20 06:09:48',70,'2023-04-02 02:35:07',70),(221,'OdLQVIABaLLquRnjtlHVGUqRNmnFo65lJ5VI8ayt',24,'2023-03-07 08:39:20',56,'2023-04-03 14:32:43',56),(222,'cI38Hek8OZDiUhT4tIUZynoaP7dj6CJqHgmUsrRS',29,'2023-04-01 04:45:54',75,'2023-04-10 01:43:03',75),(223,'A4YZVdRHdSbvpPqY0p8IXLc2TMVOHZJ4cEQqbRu4',30,'2023-04-01 04:47:48',75,'2023-04-08 07:41:01',75),(224,'PiqwrLt6mIs96HyqJonUSknR0bU4Q7SzLN6I8fxv',24,'2023-03-07 08:39:20',56,'2023-04-11 04:51:18',56),(225,'niwU2SnRj9NRkwQUba7cElnZvFj2cyI8ZzyRCYXt',26,'2023-03-20 06:09:48',70,'2023-04-10 03:13:03',70),(226,'PiqwrLt6mIs96HyqJonUSknR0bU4Q7SzLN6I8fxv',24,'2023-03-07 08:39:20',56,'2023-04-13 03:58:53',56),(227,'PjQjogOYGLus8Hg5TEqdelMa0r7tKuMXJmyy7v5o',29,'2023-04-01 04:45:54',75,'2023-04-12 04:33:38',75),(228,'RS5uWlqPr7dCzD4QaUraf62jidS8Jocg72QJiAjw',30,'2023-04-01 04:47:48',75,'2023-04-12 06:30:33',75),(229,'dA0FPj9RQrKtGFD4wGvMS85Do5al0gAiB4vgIbm0',30,'2023-04-01 04:47:48',75,'2023-04-13 14:51:57',75),(230,'dA0FPj9RQrKtGFD4wGvMS85Do5al0gAiB4vgIbm0',30,'2023-04-01 04:47:48',75,'2023-04-15 14:12:42',75),(231,'dA0FPj9RQrKtGFD4wGvMS85Do5al0gAiB4vgIbm0',30,'2023-04-01 04:47:48',75,'2023-04-15 14:13:49',75),(232,'dA0FPj9RQrKtGFD4wGvMS85Do5al0gAiB4vgIbm0',30,'2023-04-01 04:47:48',75,'2023-04-15 15:19:14',75),(233,'Ui3YjGsPQOD2nvVHYT8LCYrPWJ8Rm9Id4kVlCL1K',26,'2023-03-20 06:09:48',70,'2023-04-13 04:03:52',70),(234,'tiP3WJwefMPTnC5dUP0PsxBQNgmHnQlYaBassOgf',30,'2023-04-01 04:47:48',75,'2023-04-15 15:19:31',75),(235,'pnzOzPKtCO05shok8ajsx1i2YvpYS0A83Td9z2zg',26,'2023-03-20 06:09:48',70,'2023-04-16 04:08:38',70),(236,'pnzOzPKtCO05shok8ajsx1i2YvpYS0A83Td9z2zg',26,'2023-03-20 06:09:48',70,'2023-04-16 10:04:02',70),(237,'B5wz0IwDEWhovDe0FKX7VoOoGmvixn4pAhfvdmf7',29,'2023-04-01 04:45:54',75,'2023-04-13 05:30:18',75),(238,'B5wz0IwDEWhovDe0FKX7VoOoGmvixn4pAhfvdmf7',29,'2023-04-01 04:45:54',75,'2023-04-16 11:58:23',75),(239,'B5wz0IwDEWhovDe0FKX7VoOoGmvixn4pAhfvdmf7',26,'2023-03-20 06:09:48',70,'2023-04-16 10:17:57',70),(240,'B5wz0IwDEWhovDe0FKX7VoOoGmvixn4pAhfvdmf7',30,'2023-04-01 04:47:48',75,'2023-04-16 04:11:48',75);
/*!40000 ALTER TABLE `recent_view_ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `report_from_id` bigint(20) unsigned NOT NULL,
  `report_to_id` bigint(20) unsigned NOT NULL,
  `commends` text NOT NULL,
  `reason` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reports_report_from_id_foreign` (`report_from_id`),
  KEY `reports_report_to_id_foreign` (`report_to_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requested_products`
--

DROP TABLE IF EXISTS `requested_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requested_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ads_id` int(255) NOT NULL,
  `request_to` int(255) NOT NULL,
  `request_form` int(255) NOT NULL,
  `offer_price` int(255) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requested_products`
--

LOCK TABLES `requested_products` WRITE;
/*!40000 ALTER TABLE `requested_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `requested_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `stars` int(11) NOT NULL,
  `item_id` int(255) NOT NULL,
  `order_id` int(225) DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `fastShipper` tinyint(4) NOT NULL DEFAULT 0,
  `itemAsDescribed` tinyint(4) NOT NULL DEFAULT 0,
  `quickReplies` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `reviews_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(22,3),(23,1),(23,3),(24,1),(24,3),(25,1),(25,3),(26,1),(26,3),(27,1),(27,3),(28,1),(28,3),(29,1),(29,3),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'superadmin','admin','2022-07-25 05:09:44','2022-07-25 05:09:44'),(3,'Translate list','admin','2023-01-06 10:48:34','2023-01-06 10:48:34');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seos`
--

DROP TABLE IF EXISTS `seos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `page_slug` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title_lv` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `description_lv` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seos`
--

LOCK TABLES `seos` WRITE;
/*!40000 ALTER TABLE `seos` DISABLE KEYS */;
INSERT INTO `seos` VALUES (1,'home','2LIFE | Sell and buy clothes, shoes and accessories ','2LIFE | Pārdod un pērc apģērbu, apavus un aksesuārus ','2LIFE | Sell and buy clothes, shoes and accessories ','2LIFE | Pārdod un pērc apģērbu, apavus un aksesuārus ','uploads/images/seo/1673698058_63c29b0a335b4.jpg','2022-07-25 05:09:47','2023-03-23 12:16:12'),(2,'about','2LIFE | Sell and buy clothes, shoes and accessories ','2LIFE | Pārdod un pērc apģērbu, apavus un aksesuārus ','2LIFE | Sell and buy clothes, shoes and accessories ','2LIFE | Pārdod un pērc apģērbu, apavus un aksesuārus ','uploads/images/seo/1673696645_63c29585a5b50.jpg','2022-07-25 05:09:47','2023-03-23 12:16:26'),(3,'contact','2LIFE | Sell and buy clothes, shoes and accessories ','2LIFE | Pārdod un pērc apģērbu, apavus un aksesuārus ','2LIFE | Sell and buy clothes, shoes and accessories ','2LIFE | Pārdod un pērc apģērbu, apavus un aksesuārus ','uploads/images/seo/1679309593_64183b1986d09.png','2022-07-25 05:09:47','2023-03-23 12:16:38'),(4,'ads','2LIFE | Sell and buy clothes, shoes and accessories ','2LIFE | Pārdod un pērc apģērbu, apavus un aksesuārus ','2LIFE | Sell and buy clothes, shoes and accessories ','2LIFE | Pārdod un pērc apģērbu, apavus un aksesuārus ','https://2life.webdevs4u.com/uploads/app/logo/ZyNGfAIe8Xkz6uD6cJ010aesk02pkvW4nRzj9OnI.svg','2022-07-25 05:09:47','2023-03-23 12:16:57'),(5,'blog','2LIFE | Sell and buy clothes, shoes and accessories ','2LIFE | Pārdod un pērc apģērbu, apavus un aksesuārus ','2LIFE | Sell and buy clothes, shoes and accessories ','2LIFE | Pārdod un pērc apģērbu, apavus un aksesuārus ','https://2life.webdevs4u.com/uploads/app/logo/ZyNGfAIe8Xkz6uD6cJ010aesk02pkvW4nRzj9OnI.svg','2022-07-25 05:09:47','2023-03-23 12:17:31'),(6,'pricing','2LIFE | Sell and buy clothes, shoes and accessories ','2LIFE | Pārdod un pērc apģērbu, apavus un aksesuārus ','2LIFE | Sell and buy clothes, shoes and accessories ','2LIFE | Pārdod un pērc apģērbu, apavus un aksesuārus ','https://2life.webdevs4u.com/uploads/app/logo/ZyNGfAIe8Xkz6uD6cJ010aesk02pkvW4nRzj9OnI.svg','2022-07-25 05:09:47','2023-03-23 12:17:50'),(7,'login','2LIFE | Sell and buy clothes, shoes and accessories ','2LIFE | Pārdod un pērc apģērbu, apavus un aksesuārus ','2LIFE | Sell and buy clothes, shoes and accessories ','2LIFE | Pārdod un pērc apģērbu, apavus un aksesuārus ','https://2life.webdevs4u.com/uploads/app/logo/ZyNGfAIe8Xkz6uD6cJ010aesk02pkvW4nRzj9OnI.svg','2022-07-25 05:09:47','2023-03-23 12:18:09'),(8,'register','2LIFE | Sell and buy clothes, shoes and accessories ','2LIFE | Pārdod un pērc apģērbu, apavus un aksesuārus ','2LIFE | Sell and buy clothes, shoes and accessories ','2LIFE | Pārdod un pērc apģērbu, apavus un aksesuārus ','https://2life.webdevs4u.com/uploads/app/logo/ZyNGfAIe8Xkz6uD6cJ010aesk02pkvW4nRzj9OnI.svg','2022-07-25 05:09:47','2023-03-23 12:18:25'),(9,'faq','2LIFE | Sell and buy clothes, shoes and accessories ','2LIFE | Pārdod un pērc apģērbu, apavus un aksesuārus ','2LIFE | Sell and buy clothes, shoes and accessories ','2LIFE | Pārdod un pērc apģērbu, apavus un aksesuārus ','https://2life.webdevs4u.com/uploads/app/logo/ZyNGfAIe8Xkz6uD6cJ010aesk02pkvW4nRzj9OnI.svg','2022-07-25 05:09:47','2023-03-23 12:18:46');
/*!40000 ALTER TABLE `seos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `logo_image` varchar(255) DEFAULT NULL,
  `white_logo` varchar(255) DEFAULT NULL,
  `favicon_image` varchar(255) DEFAULT NULL,
  `header_css` varchar(255) DEFAULT NULL,
  `header_script` varchar(255) DEFAULT NULL,
  `body_script` varchar(255) DEFAULT NULL,
  `free_featured_ad_limit` int(11) NOT NULL DEFAULT 3,
  `regular_ads_homepage` tinyint(1) NOT NULL DEFAULT 0,
  `featured_ads_homepage` tinyint(1) NOT NULL DEFAULT 1,
  `customer_email_verification` tinyint(1) NOT NULL DEFAULT 0,
  `maximum_ad_image_limit` int(10) unsigned NOT NULL DEFAULT 5,
  `subscription_type` enum('one_time','recurring') NOT NULL DEFAULT 'one_time',
  `ads_admin_approval` tinyint(1) NOT NULL DEFAULT 0,
  `free_ad_limit` int(11) NOT NULL DEFAULT 5,
  `sidebar_color` varchar(255) DEFAULT NULL,
  `nav_color` varchar(255) DEFAULT NULL,
  `sidebar_txt_color` varchar(255) DEFAULT NULL,
  `nav_txt_color` varchar(255) DEFAULT NULL,
  `main_color` varchar(255) DEFAULT NULL,
  `accent_color` varchar(255) DEFAULT NULL,
  `frontend_primary_color` varchar(255) DEFAULT NULL,
  `frontend_secondary_color` varchar(255) DEFAULT NULL,
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `facebook_pixel` tinyint(1) NOT NULL DEFAULT 0,
  `google_analytics` tinyint(1) NOT NULL DEFAULT 0,
  `search_engine_indexing` tinyint(1) NOT NULL DEFAULT 1,
  `default_layout` tinyint(1) NOT NULL DEFAULT 1,
  `website_loader` tinyint(1) NOT NULL DEFAULT 1,
  `loader_image` varchar(255) DEFAULT NULL,
  `language_changing` tinyint(1) NOT NULL DEFAULT 1,
  `email_verification` tinyint(1) NOT NULL DEFAULT 0,
  `watermark_status` tinyint(1) NOT NULL DEFAULT 0,
  `watermark_type` enum('text','image') NOT NULL DEFAULT 'text',
  `watermark_text` varchar(255) NOT NULL DEFAULT 'ZakirSoft',
  `watermark_image` varchar(255) NOT NULL DEFAULT 'frontend/images/logo.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `default_map` enum('google-map','map-box') NOT NULL DEFAULT 'google-map',
  `google_map_key` varchar(255) DEFAULT NULL,
  `map_box_key` varchar(255) DEFAULT NULL,
  `default_long` double NOT NULL DEFAULT -100,
  `default_lat` double NOT NULL DEFAULT 40,
  `push_notification_status` tinyint(1) NOT NULL DEFAULT 1,
  `server_key` varchar(255) DEFAULT NULL,
  `api_key` varchar(255) DEFAULT NULL,
  `auth_domain` varchar(255) DEFAULT NULL,
  `project_id` varchar(255) DEFAULT NULL,
  `storage_bucket` varchar(255) DEFAULT NULL,
  `messaging_sender_id` varchar(255) DEFAULT NULL,
  `app_id` varchar(255) DEFAULT NULL,
  `measurement_id` varchar(255) DEFAULT NULL,
  `deals_under_price` float NOT NULL DEFAULT 0,
  `admin_commission` float(14,2) NOT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `gmail` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `tiktok` varchar(255) DEFAULT NULL,
  `ad_valid_day` int(11) NOT NULL DEFAULT 0,
  `google_analytical_id` varchar(255) DEFAULT NULL,
  `fb_app_id` varchar(255) DEFAULT NULL,
  `fa_pixel_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'public/uploads/app/logo/zfpCWWHZVDDiqlOcsCk71FgQOQMgkXuIKSciTgIQ.png','public/uploads/app/logo/SoqmBb9766HMMPaRjBXhGqoDfsBNogqKfkVdAWTq.png','uploads/app/logo/eNvRY9mNGOYoiF7BV9OMCOJYkqpbvyvPUtH0B6dp.png',NULL,NULL,NULL,0,0,0,1,0,'',1,0,'#022446','#0a243e','#e0e9f2','#e0e9f2','#05c279','#ffc107','#05c279','#ffc107',0,0,0,1,1,0,NULL,1,0,1,'text','2life.lv','public/frontend/images/logo.png','2022-07-25 05:09:45','2023-04-16 11:23:38','google-map','AIzaSyA72zy8Wy4kFpom_brg28OqBOa8S0eXXGY','AIzaSyA72zy8Wy4kFpom_brg28OqBOa8S0eXXGY',90.411270491741,23.757853442383,0,'your-server-key','your-api-key','your-auth-domain','your-project-id','your-storage-bucket','your-messaging-sender-id','your-app-id','your-measurement-id',0,5.50,'https://facebook.com','rony@gmail.com','https://instagram.com','https://tiktok.com',40,'G-VE7ZL7T23F','5840805692668340',NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setup_guides`
--

DROP TABLE IF EXISTS `setup_guides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setup_guides` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `task_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `action_route` varchar(255) NOT NULL,
  `action_label` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setup_guides`
--

LOCK TABLES `setup_guides` WRITE;
/*!40000 ALTER TABLE `setup_guides` DISABLE KEYS */;
INSERT INTO `setup_guides` VALUES (1,'app_setting','App Information ','Add your app logo, name, description, owner and other information.','settings.general','Add App Information',1,'2022-07-25 05:09:47','2023-03-20 10:41:24'),(2,'smtp_setting','SMTP Configuration','Add your app logo, name, description, owner and other information.','settings.email','Add Mail Configuration',1,'2022-07-25 05:09:47','2023-03-20 10:48:50'),(3,'payment_setting','Enable Payment Method','Enable to payment methods to receive payments from your customer.','settings.payment','Add Payment',1,'2022-07-25 05:09:47','2023-01-05 12:48:39'),(4,'theme_setting','Customize Theme','Customize your theme to make your app look more attractive.','settings.theme','Customize Your App Now',1,'2022-07-25 05:09:47','2022-09-17 03:14:21'),(5,'map_setting','Map Configuration','Configure your map setting api to create ad in any location.','settings.system','Add Map API',1,'2022-07-25 05:09:47','2022-09-17 03:32:16'),(6,'pusher_setting','Pusher Configuration','Configure your pusher setting api for the chat application','settings.system','Add Pusher API',0,'2022-07-25 05:09:47','2022-07-25 05:09:47');
/*!40000 ALTER TABLE `setup_guides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiping_locations`
--

DROP TABLE IF EXISTS `shiping_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shiping_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso` varchar(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `locations` varchar(255) NOT NULL,
  `iso3` varchar(3) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiping_locations`
--

LOCK TABLES `shiping_locations` WRITE;
/*!40000 ALTER TABLE `shiping_locations` DISABLE KEYS */;
INSERT INTO `shiping_locations` VALUES (1,'AF','AFGHANISTAN','Afghanistan','AFG',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(2,'AL','ALBANIA','Albania','ALB',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(3,'DZ','ALGERIA','Algeria','DZA',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(4,'AS','AMERICAN SAMOA','American Samoa','ASM',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(5,'AD','ANDORRA','Andorra','AND',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(6,'AO','ANGOLA','Angola','AGO',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(7,'AI','ANGUILLA','Anguilla','AIA',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(8,'AQ','ANTARCTICA','Antarctica','',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(9,'AG','ANTIGUA AND BARBUDA','Antigua and Barbuda','ATG',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(10,'AR','ARGENTINA','Argentina','ARG',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(11,'AM','ARMENIA','Armenia','ARM',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(12,'AW','ARUBA','Aruba','ABW',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(13,'AU','AUSTRALIA','Australia','AUS',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(14,'AT','AUSTRIA','Austria','AUT',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(15,'AZ','AZERBAIJAN','Azerbaijan','AZE',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(16,'BS','BAHAMAS','Bahamas','BHS',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(17,'BH','BAHRAIN','Bahrain','BHR',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(18,'BD','BANGLADESH','Bangladesh','BGD',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(19,'BB','BARBADOS','Barbados','BRB',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(20,'BY','BELARUS','Belarus','BLR',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(21,'BE','BELGIUM','Belgium','BEL',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(22,'BZ','BELIZE','Belize','BLZ',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(23,'BJ','BENIN','Benin','BEN',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(24,'BM','BERMUDA','Bermuda','BMU',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(25,'BT','BHUTAN','Bhutan','BTN',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(26,'BO','BOLIVIA','Bolivia','BOL',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(27,'BA','BOSNIA AND HERZEGOVINA','Bosnia and Herzegovina','BIH',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(28,'BW','BOTSWANA','Botswana','BWA',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(29,'BV','BOUVET ISLAND','Bouvet Island','',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(30,'BR','BRAZIL','Brazil','BRA',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(31,'IO','BRITISH INDIAN OCEAN TERRITORY','British Indian Ocean Territory','',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(32,'BN','BRUNEI DARUSSALAM','Brunei Darussalam','BRN',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(33,'BG','BULGARIA','Bulgaria','BGR',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(34,'BF','BURKINA FASO','Burkina Faso','BFA',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(35,'BI','BURUNDI','Burundi','BDI',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(36,'KH','CAMBODIA','Cambodia','KHM',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(37,'CM','CAMEROON','Cameroon','CMR',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(38,'CA','CANADA','Canada','CAN',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(39,'CV','CAPE VERDE','Cape Verde','CPV',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(40,'KY','CAYMAN ISLANDS','Cayman Islands','CYM',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(41,'CF','CENTRAL AFRICAN REPUBLIC','Central African Republic','CAF',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(42,'TD','CHAD','Chad','TCD',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(43,'CL','CHILE','Chile','CHL',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(44,'CN','CHINA','China','CHN',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(45,'CX','CHRISTMAS ISLAND','Christmas Island','',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(46,'CC','COCOS (KEELING) ISLANDS','Cocos (Keeling) Islands','',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(47,'CO','COLOMBIA','Colombia','COL',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(48,'KM','COMOROS','Comoros','COM',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(49,'CG','CONGO','Congo','COG',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(50,'CD','CONGO, THE DEMOCRATIC REPUBLIC OF THE','Congo, the Democratic Republic of the','COD',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(51,'CK','COOK ISLANDS','Cook Islands','COK',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(52,'CR','COSTA RICA','Costa Rica','CRI',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(53,'CI','COTE D\'IVOIRE','Cote D\'Ivoire','CIV',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(54,'HR','CROATIA','Croatia','HRV',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(55,'CU','CUBA','Cuba','CUB',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(56,'CY','CYPRUS','Cyprus','CYP',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(57,'CZ','CZECH REPUBLIC','Czech Republic','CZE',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(58,'DK','DENMARK','Denmark','DNK',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(59,'DJ','DJIBOUTI','Djibouti','DJI',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(60,'DM','DOMINICA','Dominica','DMA',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(61,'DO','DOMINICAN REPUBLIC','Dominican Republic','DOM',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(62,'EC','ECUADOR','Ecuador','ECU',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(63,'EG','EGYPT','Egypt','EGY',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(64,'SV','EL SALVADOR','El Salvador','SLV',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(65,'GQ','EQUATORIAL GUINEA','Equatorial Guinea','GNQ',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(66,'ER','ERITREA','Eritrea','ERI',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(67,'EE','ESTONIA','Estonia','EST',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(68,'ET','ETHIOPIA','Ethiopia','ETH',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(69,'FK','FALKLAND ISLANDS (MALVINAS)','Falkland Islands (Malvinas)','FLK',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(70,'FO','FAROE ISLANDS','Faroe Islands','FRO',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(71,'FJ','FIJI','Fiji','FJI',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(72,'FI','FINLAND','Finland','FIN',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(73,'FR','FRANCE','France','FRA',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(74,'GF','FRENCH GUIANA','French Guiana','GUF',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(75,'PF','FRENCH POLYNESIA','French Polynesia','PYF',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(76,'TF','FRENCH SOUTHERN TERRITORIES','French Southern Territories','',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(77,'GA','GABON','Gabon','GAB',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(78,'GM','GAMBIA','Gambia','GMB',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(79,'GE','GEORGIA','Georgia','GEO',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(80,'DE','GERMANY','Germany','DEU',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(81,'GH','GHANA','Ghana','GHA',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(82,'GI','GIBRALTAR','Gibraltar','GIB',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(83,'GR','GREECE','Greece','GRC',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(84,'GL','GREENLAND','Greenland','GRL',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(85,'GD','GRENADA','Grenada','GRD',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(86,'GP','GUADELOUPE','Guadeloupe','GLP',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(87,'GU','GUAM','Guam','GUM',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(88,'GT','GUATEMALA','Guatemala','GTM',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(89,'GN','GUINEA','Guinea','GIN',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(90,'GW','GUINEA-BISSAU','Guinea-Bissau','GNB',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(91,'GY','GUYANA','Guyana','GUY',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(92,'HT','HAITI','Haiti','HTI',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(93,'HM','HEARD ISLAND AND MCDONALD ISLANDS','Heard Island and Mcdonald Islands','',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(94,'VA','HOLY SEE (VATICAN CITY STATE)','Holy See (Vatican City State)','VAT',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(95,'HN','HONDURAS','Honduras','HND',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(96,'HK','HONG KONG','Hong Kong','HKG',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(97,'HU','HUNGARY','Hungary','HUN',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(98,'IS','ICELAND','Iceland','ISL',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(99,'IN','INDIA','India','IND',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(100,'ID','INDONESIA','Indonesia','IDN',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(101,'IR','IRAN, ISLAMIC REPUBLIC OF','Iran, Islamic Republic of','IRN',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(102,'IQ','IRAQ','Iraq','IRQ',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(103,'IE','IRELAND','Ireland','IRL',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(104,'IL','ISRAEL','Israel','ISR',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(105,'IT','ITALY','Italy','ITA',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(106,'JM','JAMAICA','Jamaica','JAM',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(107,'JP','JAPAN','Japan','JPN',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(108,'JO','JORDAN','Jordan','JOR',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(109,'KZ','KAZAKHSTAN','Kazakhstan','KAZ',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(110,'KE','KENYA','Kenya','KEN',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(111,'KI','KIRIBATI','Kiribati','KIR',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(112,'KP','KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF','Korea, Democratic People\'s Republic of','PRK',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(113,'KR','KOREA, REPUBLIC OF','Korea, Republic of','KOR',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(114,'KW','KUWAIT','Kuwait','KWT',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(115,'KG','KYRGYZSTAN','Kyrgyzstan','KGZ',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(116,'LA','LAO PEOPLE\'S DEMOCRATIC REPUBLIC','Lao People\'s Democratic Republic','LAO',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(117,'LV','LATVIA','Latvia','LVA',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(118,'LB','LEBANON','Lebanon','LBN',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(119,'LS','LESOTHO','Lesotho','LSO',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(120,'LR','LIBERIA','Liberia','LBR',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(121,'LY','LIBYAN ARAB JAMAHIRIYA','Libyan Arab Jamahiriya','LBY',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(122,'LI','LIECHTENSTEIN','Liechtenstein','LIE',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(123,'LT','LITHUANIA','Lithuania','LTU',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(124,'LU','LUXEMBOURG','Luxembourg','LUX',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(125,'MO','MACAO','Macao','MAC',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(126,'MK','MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','Macedonia, the Former Yugoslav Republic of','MKD',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(127,'MG','MADAGASCAR','Madagascar','MDG',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(128,'MW','MALAWI','Malawi','MWI',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(129,'MY','MALAYSIA','Malaysia','MYS',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(130,'MV','MALDIVES','Maldives','MDV',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(131,'ML','MALI','Mali','MLI',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(132,'MT','MALTA','Malta','MLT',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(133,'MH','MARSHALL ISLANDS','Marshall Islands','MHL',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(134,'MQ','MARTINIQUE','Martinique','MTQ',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(135,'MR','MAURITANIA','Mauritania','MRT',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(136,'MU','MAURITIUS','Mauritius','MUS',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(137,'YT','MAYOTTE','Mayotte','',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(138,'MX','MEXICO','Mexico','MEX',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(139,'FM','MICRONESIA, FEDERATED STATES OF','Micronesia, Federated States of','FSM',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(140,'MD','MOLDOVA, REPUBLIC OF','Moldova, Republic of','MDA',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(141,'MC','MONACO','Monaco','MCO',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(142,'MN','MONGOLIA','Mongolia','MNG',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(143,'MS','MONTSERRAT','Montserrat','MSR',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(144,'MA','MOROCCO','Morocco','MAR',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(145,'MZ','MOZAMBIQUE','Mozambique','MOZ',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(146,'MM','MYANMAR','Myanmar','MMR',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(147,'NA','NAMIBIA','Namibia','NAM',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(148,'NR','NAURU','Nauru','NRU',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(149,'NP','NEPAL','Nepal','NPL',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(150,'NL','NETHERLANDS','Netherlands','NLD',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(151,'AN','NETHERLANDS ANTILLES','Netherlands Antilles','ANT',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(152,'NC','NEW CALEDONIA','New Caledonia','NCL',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(153,'NZ','NEW ZEALAND','New Zealand','NZL',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(154,'NI','NICARAGUA','Nicaragua','NIC',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(155,'NE','NIGER','Niger','NER',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(156,'NG','NIGERIA','Nigeria','NGA',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(157,'NU','NIUE','Niue','NIU',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(158,'NF','NORFOLK ISLAND','Norfolk Island','NFK',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(159,'MP','NORTHERN MARIANA ISLANDS','Northern Mariana Islands','MNP',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(160,'NO','NORWAY','Norway','NOR',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(161,'OM','OMAN','Oman','OMN',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(162,'PK','PAKISTAN','Pakistan','PAK',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(163,'PW','PALAU','Palau','PLW',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(164,'PS','PALESTINIAN TERRITORY, OCCUPIED','Palestinian Territory, Occupied','',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(165,'PA','PANAMA','Panama','PAN',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(166,'PG','PAPUA NEW GUINEA','Papua New Guinea','PNG',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(167,'PY','PARAGUAY','Paraguay','PRY',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(168,'PE','PERU','Peru','PER',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(169,'PH','PHILIPPINES','Philippines','PHL',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(170,'PN','PITCAIRN','Pitcairn','PCN',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(171,'PL','POLAND','Poland','POL',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(172,'PT','PORTUGAL','Portugal','PRT',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(173,'PR','PUERTO RICO','Puerto Rico','PRI',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(174,'QA','QATAR','Qatar','QAT',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(175,'RE','REUNION','Reunion','REU',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(176,'RO','ROMANIA','Romania','ROM',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(177,'RU','RUSSIAN FEDERATION','Russian Federation','RUS',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(178,'RW','RWANDA','Rwanda','RWA',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(179,'SH','SAINT HELENA','Saint Helena','SHN',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(180,'KN','SAINT KITTS AND NEVIS','Saint Kitts and Nevis','KNA',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(181,'LC','SAINT LUCIA','Saint Lucia','LCA',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(182,'PM','SAINT PIERRE AND MIQUELON','Saint Pierre and Miquelon','SPM',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(183,'VC','SAINT VINCENT AND THE GRENADINES','Saint Vincent and the Grenadines','VCT',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(184,'WS','SAMOA','Samoa','WSM',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(185,'SM','SAN MARINO','San Marino','SMR',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(186,'ST','SAO TOME AND PRINCIPE','Sao Tome and Principe','STP',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(187,'SA','SAUDI ARABIA','Saudi Arabia','SAU',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(188,'SN','SENEGAL','Senegal','SEN',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(189,'CS','SERBIA AND MONTENEGRO','Serbia and Montenegro','',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(190,'SC','SEYCHELLES','Seychelles','SYC',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(191,'SL','SIERRA LEONE','Sierra Leone','SLE',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(192,'SG','SINGAPORE','Singapore','SGP',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(193,'SK','SLOVAKIA','Slovakia','SVK',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(194,'SI','SLOVENIA','Slovenia','SVN',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(195,'SB','SOLOMON ISLANDS','Solomon Islands','SLB',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(196,'SO','SOMALIA','Somalia','SOM',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(197,'ZA','SOUTH AFRICA','South Africa','ZAF',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(198,'GS','SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','South Georgia and the South Sandwich Islands','',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(199,'ES','SPAIN','Spain','ESP',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(200,'LK','SRI LANKA','Sri Lanka','LKA',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(201,'SD','SUDAN','Sudan','SDN',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(202,'SR','SURINAME','Suriname','SUR',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(203,'SJ','SVALBARD AND JAN MAYEN','Svalbard and Jan Mayen','SJM',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(204,'SZ','SWAZILAND','Swaziland','SWZ',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(205,'SE','SWEDEN','Sweden','SWE',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(206,'CH','SWITZERLAND','Switzerland','CHE',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(207,'SY','SYRIAN ARAB REPUBLIC','Syrian Arab Republic','SYR',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(208,'TW','TAIWAN, PROVINCE OF CHINA','Taiwan, Province of China','TWN',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(209,'TJ','TAJIKISTAN','Tajikistan','TJK',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(210,'TZ','TANZANIA, UNITED REPUBLIC OF','Tanzania, United Republic of','TZA',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(211,'TH','THAILAND','Thailand','THA',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(212,'TL','TIMOR-LESTE','Timor-Leste','',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(213,'TG','TOGO','Togo','TGO',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(214,'TK','TOKELAU','Tokelau','TKL',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(215,'TO','TONGA','Tonga','TON',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(216,'TT','TRINIDAD AND TOBAGO','Trinidad and Tobago','TTO',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(217,'TN','TUNISIA','Tunisia','TUN',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(218,'TR','TURKEY','Turkey','TUR',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(219,'TM','TURKMENISTAN','Turkmenistan','TKM',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(220,'TC','TURKS AND CAICOS ISLANDS','Turks and Caicos Islands','TCA',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(221,'TV','TUVALU','Tuvalu','TUV',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(222,'UG','UGANDA','Uganda','UGA',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(223,'UA','UKRAINE','Ukraine','UKR',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(224,'AE','UNITED ARAB EMIRATES','United Arab Emirates','ARE',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(225,'GB','UNITED KINGDOM','United Kingdom','GBR',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(226,'US','UNITED STATES','United States','USA',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(227,'UM','UNITED STATES MINOR OUTLYING ISLANDS','United States Minor Outlying Islands','',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(228,'UY','URUGUAY','Uruguay','URY',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(229,'UZ','UZBEKISTAN','Uzbekistan','UZB',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(230,'VU','VANUATU','Vanuatu','VUT',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(231,'VE','VENEZUELA','Venezuela','VEN',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(232,'VN','VIET NAM','Viet Nam','VNM',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(233,'VG','VIRGIN ISLANDS, BRITISH','Virgin Islands, British','VGB',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(234,'VI','VIRGIN ISLANDS, U.S.','Virgin Islands, U.s.','VIR',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(235,'WF','WALLIS AND FUTUNA','Wallis and Futuna','WLF',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(236,'EH','WESTERN SAHARA','Western Sahara','ESH',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(237,'YE','YEMEN','Yemen','YEM',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(238,'ZM','ZAMBIA','Zambia','ZMB',1,'2022-12-03 07:08:55','2022-12-03 07:08:55'),(239,'ZW','ZIMBABWE','Zimbabwe','ZWE',1,'2022-12-03 07:08:55','2022-12-03 07:08:55');
/*!40000 ALTER TABLE `shiping_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_addresses`
--

DROP TABLE IF EXISTS `shipping_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT NULL,
  `apartment` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_addresses`
--

LOCK TABLES `shipping_addresses` WRITE;
/*!40000 ALTER TABLE `shipping_addresses` DISABLE KEYS */;
INSERT INTO `shipping_addresses` VALUES (1,57,NULL,'Limbažu novads','Limbazi','LV-4001',117,'Turaidas iela 2','2023-01-31 12:58:34','2023-01-31 12:58:34'),(2,56,'dhaka','ANDHRA PRADESH','Chittoor','1213',18,'dhaka, banani','2023-02-01 04:49:35','2023-02-01 04:49:35'),(3,58,NULL,'Dhak','Dhaka','231',18,'KB-Road, Konabari, Gazipur','2023-02-04 05:12:37','2023-02-04 05:12:37'),(4,60,'Dhaka-1212, Bangladesh','Dhaka','dhaka','1213',18,'House #2, Road #2, Block-K, Ba','2023-02-06 12:27:04','2023-02-06 12:27:04'),(5,56,'dhaka','ANDHRA PRADESH','Chittoor','1213',18,'dhaka, banani','2023-02-06 12:48:41','2023-02-06 12:48:41'),(6,61,'dhaka','ANDHRA PRADESH','Chittoor','1213',2,'dhaka, banani','2023-02-07 08:16:28','2023-02-07 08:16:28'),(7,56,NULL,'Outside Dhaka','Jamalpur','2030',3,'Dewangonj, Jamalpur.','2023-03-07 10:25:00','2023-03-07 10:25:00'),(8,68,'23','Dhaka','Banani','1234',18,'Dhaka','2023-03-19 11:52:07','2023-03-19 11:52:07'),(9,56,'dhaka','123','dhaka','1234',3,'dhaka','2023-03-19 12:01:35','2023-03-19 12:01:35'),(10,56,NULL,'Outside Dhaka','Jamalpur','2030',3,'Dewangonj, Jamalpur.','2023-03-19 12:59:25','2023-03-19 12:59:25'),(11,56,'123','1234','dhaka','1234',1,'banani','2023-03-19 12:59:40','2023-03-19 12:59:40'),(12,70,'Dhaka','Bangladesh','Dhaka','1212',18,'Dhaka','2023-03-20 06:01:41','2023-03-20 06:01:41'),(13,69,'Dhaka','Dhaka','Dhaka','12345',18,'Dhaka','2023-03-21 05:30:23','2023-03-21 05:30:23'),(14,73,'Mirpur,Dhaka','Dhaka','Dhaka','1216',18,'Mirpur','2023-03-30 06:57:52','2023-03-30 06:57:52'),(15,73,'32','dhaka','Dhaka','1216',17,'Mirpur','2023-03-30 07:04:59','2023-03-30 07:04:59'),(16,75,'dhaka','Bangladesh','dhaka','1231',18,'Dhaka','2023-04-01 04:45:37','2023-04-01 04:45:37');
/*!40000 ALTER TABLE `shipping_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sliders` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `seller_id` int(11) NOT NULL,
  `content_title` varchar(255) NOT NULL,
  `content_body` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` VALUES (8,'uploads/slider/1675601031_63dfa487ab401.jpg',0,0,'FROM PEOPLE FOR PEOPLE','Buy, sell, discover authenticated pieces','2023-04-14 12:24:58','2023-02-02 12:05:00'),(9,'uploads/slider/1681475052_643945ec091d2.jpg',1,0,'asdd','sadasdas','2023-04-14 12:24:12','2023-04-14 12:24:12');
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media`
--

DROP TABLE IF EXISTS `social_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `social_media` enum('facebook','twitter','instagram','youtube','linkedin','pinterest','reddit','github','other') NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_media_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media`
--

LOCK TABLES `social_media` WRITE;
/*!40000 ALTER TABLE `social_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_show_home` int(1) NOT NULL DEFAULT 1,
  `thumb` varchar(155) DEFAULT NULL,
  `mesurement_point` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_categories_category_id_foreign` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categories`
--

LOCK TABLES `sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
INSERT INTO `sub_categories` VALUES (2,1,'TOPS','tops',1,'2022-10-19 06:18:32','2023-03-19 14:46:08',1,'uploads/subcategory/1666161118_634f99de20e19.jpg','Bust,Length,Shoulders,Waist'),(3,1,'BOTTOMS','bottoms',1,'2022-10-19 06:19:51','2023-03-20 13:25:10',1,'uploads/subcategory/1666161037_634f998d88733.jpg',NULL),(4,1,'OUTERWEAR','outerwear',1,'2022-10-19 06:21:22','2023-03-19 14:45:49',1,'uploads/subcategory/1666160924_634f991c138c6.jpg',NULL),(5,1,'FOOTWEAR','footwear',1,'2022-10-19 06:22:26','2023-03-19 14:45:29',1,'uploads/subcategory/1666160687_634f982fa038a.jpg',NULL),(6,1,'TAILORING','tailoring',1,'2022-10-19 06:33:38','2023-03-19 14:45:59',1,'uploads/subcategory/1666161218_634f9a4290aa5.jpg',NULL),(7,1,'ACCESSORIES','accessories',1,'2022-10-19 06:35:10','2023-03-20 13:20:37',1,'uploads/subcategory/1666161310_634f9a9e88ea2.jpg','Bust,Length'),(8,2,'TOPS','tops',1,'2022-10-19 06:44:17','2023-03-19 14:46:05',1,'uploads/subcategory/1666161857_634f9cc18b4f4.jpg',NULL),(9,2,'BOTTOMS','bottoms',1,'2022-10-19 06:44:38','2023-03-20 13:24:01',1,'uploads/subcategory/1666161878_634f9cd61c163.jpg',NULL),(10,2,'OUTERWEAR','outerwear',1,'2022-10-19 06:44:55','2023-03-19 14:45:46',1,'uploads/subcategory/1666161895_634f9ce7ec087.jpg',NULL),(11,2,'DRESSES','dresses',1,'2022-10-19 06:45:24','2023-03-20 13:28:33',1,'uploads/subcategory/1666161924_634f9d04a566c.jpg',NULL),(12,2,'FOOTWEAR','footwear',1,'2022-10-19 06:46:36','2023-03-20 13:28:49',1,'uploads/subcategory/1666161996_634f9d4cd64d4.jpg',NULL),(13,2,'BAGS AND LUGGAGE','bags-and-luggage',1,'2022-10-19 06:49:23','2023-03-20 13:22:40',1,'uploads/subcategory/1666162163_634f9df36dc19.jpg','Bust'),(14,2,'JEWELRY','jewelry',1,'2022-10-19 06:49:35','2023-03-19 14:45:42',0,'uploads/subcategory/1666162175_634f9dff5d5f8.jpg',NULL),(18,2,'ACCESSORIES','accessories',1,'2023-01-28 10:07:29','2023-03-19 14:44:51',0,NULL,NULL),(19,6,'GIRLS CLOTHING','girls-clothing',1,'2023-01-29 09:14:29','2023-03-19 14:45:33',0,NULL,NULL),(20,6,'BOYS CLOTHING','boys-clothing',1,'2023-01-29 09:14:41','2023-03-20 13:26:44',0,'uploads/subcategory/1679318804_64185f1464719.jpeg',NULL),(21,6,'TOYS','toys',1,'2023-01-29 09:14:51','2023-03-19 14:46:12',0,NULL,NULL),(22,6,'BABY CARE','baby-care',1,'2023-01-29 09:15:24','2023-03-20 13:22:04',0,'uploads/subcategory/1679318524_64185dfc00611.jpeg',NULL),(23,6,'STROLLERS','strollers',1,'2023-01-29 09:15:39','2023-03-19 14:45:56',0,NULL,NULL),(24,6,'RIDE-ON TOYS','ride-on-toys',1,'2023-01-29 09:15:56','2023-03-19 14:45:52',0,NULL,NULL),(27,7,'HOME ACCESSORIES','home-accessories',1,'2023-01-29 10:35:13','2023-03-19 14:45:37',0,NULL,NULL),(28,7,'TEXTILES','textiles',1,'2023-01-29 10:35:21','2023-03-19 14:46:02',0,NULL,NULL);
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonials` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `stars` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'Bottom Wear','test','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','uploads/testimonial/Iw4GrqIJPdx48iD2ZY7k9ryf3oUkH2FwhMiEBKJU.jpg',3,'2022-11-12 06:34:40','2022-11-12 06:34:40');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `themes`
--

DROP TABLE IF EXISTS `themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `themes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `home_page` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `themes`
--

LOCK TABLES `themes` WRITE;
/*!40000 ALTER TABLE `themes` DISABLE KEYS */;
/*!40000 ALTER TABLE `themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timezones`
--

DROP TABLE IF EXISTS `timezones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timezones` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=851 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timezones`
--

LOCK TABLES `timezones` WRITE;
/*!40000 ALTER TABLE `timezones` DISABLE KEYS */;
INSERT INTO `timezones` VALUES (1,'Africa/Abidjan'),(2,'Africa/Accra'),(3,'Africa/Addis_Ababa'),(4,'Africa/Algiers'),(5,'Africa/Asmara'),(6,'Africa/Bamako'),(7,'Africa/Bangui'),(8,'Africa/Banjul'),(9,'Africa/Bissau'),(10,'Africa/Blantyre'),(11,'Africa/Brazzaville'),(12,'Africa/Bujumbura'),(13,'Africa/Cairo'),(14,'Africa/Casablanca'),(15,'Africa/Ceuta'),(16,'Africa/Conakry'),(17,'Africa/Dakar'),(18,'Africa/Dar_es_Salaam'),(19,'Africa/Djibouti'),(20,'Africa/Douala'),(21,'Africa/El_Aaiun'),(22,'Africa/Freetown'),(23,'Africa/Gaborone'),(24,'Africa/Harare'),(25,'Africa/Johannesburg'),(26,'Africa/Juba'),(27,'Africa/Kampala'),(28,'Africa/Khartoum'),(29,'Africa/Kigali'),(30,'Africa/Kinshasa'),(31,'Africa/Lagos'),(32,'Africa/Libreville'),(33,'Africa/Lome'),(34,'Africa/Luanda'),(35,'Africa/Lubumbashi'),(36,'Africa/Lusaka'),(37,'Africa/Malabo'),(38,'Africa/Maputo'),(39,'Africa/Maseru'),(40,'Africa/Mbabane'),(41,'Africa/Mogadishu'),(42,'Africa/Monrovia'),(43,'Africa/Nairobi'),(44,'Africa/Ndjamena'),(45,'Africa/Niamey'),(46,'Africa/Nouakchott'),(47,'Africa/Ouagadougou'),(48,'Africa/Porto-Novo'),(49,'Africa/Sao_Tome'),(50,'Africa/Tripoli'),(51,'Africa/Tunis'),(52,'Africa/Windhoek'),(53,'America/Adak'),(54,'America/Anchorage'),(55,'America/Anguilla'),(56,'America/Antigua'),(57,'America/Araguaina'),(58,'America/Argentina/Buenos_Aires'),(59,'America/Argentina/Catamarca'),(60,'America/Argentina/Cordoba'),(61,'America/Argentina/Jujuy'),(62,'America/Argentina/La_Rioja'),(63,'America/Argentina/Mendoza'),(64,'America/Argentina/Rio_Gallegos'),(65,'America/Argentina/Salta'),(66,'America/Argentina/San_Juan'),(67,'America/Argentina/San_Luis'),(68,'America/Argentina/Tucuman'),(69,'America/Argentina/Ushuaia'),(70,'America/Aruba'),(71,'America/Asuncion'),(72,'America/Atikokan'),(73,'America/Bahia'),(74,'America/Bahia_Banderas'),(75,'America/Barbados'),(76,'America/Belem'),(77,'America/Belize'),(78,'America/Blanc-Sablon'),(79,'America/Boa_Vista'),(80,'America/Bogota'),(81,'America/Boise'),(82,'America/Cambridge_Bay'),(83,'America/Campo_Grande'),(84,'America/Cancun'),(85,'America/Caracas'),(86,'America/Cayenne'),(87,'America/Cayman'),(88,'America/Chicago'),(89,'America/Chihuahua'),(90,'America/Costa_Rica'),(91,'America/Creston'),(92,'America/Cuiaba'),(93,'America/Curacao'),(94,'America/Danmarkshavn'),(95,'America/Dawson'),(96,'America/Dawson_Creek'),(97,'America/Denver'),(98,'America/Detroit'),(99,'America/Dominica'),(100,'America/Edmonton'),(101,'America/Eirunepe'),(102,'America/El_Salvador'),(103,'America/Fort_Nelson'),(104,'America/Fortaleza'),(105,'America/Glace_Bay'),(106,'America/Goose_Bay'),(107,'America/Grand_Turk'),(108,'America/Grenada'),(109,'America/Guadeloupe'),(110,'America/Guatemala'),(111,'America/Guayaquil'),(112,'America/Guyana'),(113,'America/Halifax'),(114,'America/Havana'),(115,'America/Hermosillo'),(116,'America/Indiana/Indianapolis'),(117,'America/Indiana/Knox'),(118,'America/Indiana/Marengo'),(119,'America/Indiana/Petersburg'),(120,'America/Indiana/Tell_City'),(121,'America/Indiana/Vevay'),(122,'America/Indiana/Vincennes'),(123,'America/Indiana/Winamac'),(124,'America/Inuvik'),(125,'America/Iqaluit'),(126,'America/Jamaica'),(127,'America/Juneau'),(128,'America/Kentucky/Louisville'),(129,'America/Kentucky/Monticello'),(130,'America/Kralendijk'),(131,'America/La_Paz'),(132,'America/Lima'),(133,'America/Los_Angeles'),(134,'America/Lower_Princes'),(135,'America/Maceio'),(136,'America/Managua'),(137,'America/Manaus'),(138,'America/Marigot'),(139,'America/Martinique'),(140,'America/Matamoros'),(141,'America/Mazatlan'),(142,'America/Menominee'),(143,'America/Merida'),(144,'America/Metlakatla'),(145,'America/Mexico_City'),(146,'America/Miquelon'),(147,'America/Moncton'),(148,'America/Monterrey'),(149,'America/Montevideo'),(150,'America/Montserrat'),(151,'America/Nassau'),(152,'America/New_York'),(153,'America/Nipigon'),(154,'America/Nome'),(155,'America/Noronha'),(156,'America/North_Dakota/Beulah'),(157,'America/North_Dakota/Center'),(158,'America/North_Dakota/New_Salem'),(159,'America/Nuuk'),(160,'America/Ojinaga'),(161,'America/Panama'),(162,'America/Pangnirtung'),(163,'America/Paramaribo'),(164,'America/Phoenix'),(165,'America/Port-au-Prince'),(166,'America/Port_of_Spain'),(167,'America/Porto_Velho'),(168,'America/Puerto_Rico'),(169,'America/Punta_Arenas'),(170,'America/Rainy_River'),(171,'America/Rankin_Inlet'),(172,'America/Recife'),(173,'America/Regina'),(174,'America/Resolute'),(175,'America/Rio_Branco'),(176,'America/Santarem'),(177,'America/Santiago'),(178,'America/Santo_Domingo'),(179,'America/Sao_Paulo'),(180,'America/Scoresbysund'),(181,'America/Sitka'),(182,'America/St_Barthelemy'),(183,'America/St_Johns'),(184,'America/St_Kitts'),(185,'America/St_Lucia'),(186,'America/St_Thomas'),(187,'America/St_Vincent'),(188,'America/Swift_Current'),(189,'America/Tegucigalpa'),(190,'America/Thule'),(191,'America/Thunder_Bay'),(192,'America/Tijuana'),(193,'America/Toronto'),(194,'America/Tortola'),(195,'America/Vancouver'),(196,'America/Whitehorse'),(197,'America/Winnipeg'),(198,'America/Yakutat'),(199,'America/Yellowknife'),(200,'Antarctica/Casey'),(201,'Antarctica/Davis'),(202,'Antarctica/DumontDUrville'),(203,'Antarctica/Macquarie'),(204,'Antarctica/Mawson'),(205,'Antarctica/McMurdo'),(206,'Antarctica/Palmer'),(207,'Antarctica/Rothera'),(208,'Antarctica/Syowa'),(209,'Antarctica/Troll'),(210,'Antarctica/Vostok'),(211,'Arctic/Longyearbyen'),(212,'Asia/Aden'),(213,'Asia/Almaty'),(214,'Asia/Amman'),(215,'Asia/Anadyr'),(216,'Asia/Aqtau'),(217,'Asia/Aqtobe'),(218,'Asia/Ashgabat'),(219,'Asia/Atyrau'),(220,'Asia/Baghdad'),(221,'Asia/Bahrain'),(222,'Asia/Baku'),(223,'Asia/Bangkok'),(224,'Asia/Barnaul'),(225,'Asia/Beirut'),(226,'Asia/Bishkek'),(227,'Asia/Brunei'),(228,'Asia/Chita'),(229,'Asia/Choibalsan'),(230,'Asia/Colombo'),(231,'Asia/Damascus'),(232,'Asia/Dhaka'),(233,'Asia/Dili'),(234,'Asia/Dubai'),(235,'Asia/Dushanbe'),(236,'Asia/Famagusta'),(237,'Asia/Gaza'),(238,'Asia/Hebron'),(239,'Asia/Ho_Chi_Minh'),(240,'Asia/Hong_Kong'),(241,'Asia/Hovd'),(242,'Asia/Irkutsk'),(243,'Asia/Jakarta'),(244,'Asia/Jayapura'),(245,'Asia/Jerusalem'),(246,'Asia/Kabul'),(247,'Asia/Kamchatka'),(248,'Asia/Karachi'),(249,'Asia/Kathmandu'),(250,'Asia/Khandyga'),(251,'Asia/Kolkata'),(252,'Asia/Krasnoyarsk'),(253,'Asia/Kuala_Lumpur'),(254,'Asia/Kuching'),(255,'Asia/Kuwait'),(256,'Asia/Macau'),(257,'Asia/Magadan'),(258,'Asia/Makassar'),(259,'Asia/Manila'),(260,'Asia/Muscat'),(261,'Asia/Nicosia'),(262,'Asia/Novokuznetsk'),(263,'Asia/Novosibirsk'),(264,'Asia/Omsk'),(265,'Asia/Oral'),(266,'Asia/Phnom_Penh'),(267,'Asia/Pontianak'),(268,'Asia/Pyongyang'),(269,'Asia/Qatar'),(270,'Asia/Qostanay'),(271,'Asia/Qyzylorda'),(272,'Asia/Riyadh'),(273,'Asia/Sakhalin'),(274,'Asia/Samarkand'),(275,'Asia/Seoul'),(276,'Asia/Shanghai'),(277,'Asia/Singapore'),(278,'Asia/Srednekolymsk'),(279,'Asia/Taipei'),(280,'Asia/Tashkent'),(281,'Asia/Tbilisi'),(282,'Asia/Tehran'),(283,'Asia/Thimphu'),(284,'Asia/Tokyo'),(285,'Asia/Tomsk'),(286,'Asia/Ulaanbaatar'),(287,'Asia/Urumqi'),(288,'Asia/Ust-Nera'),(289,'Asia/Vientiane'),(290,'Asia/Vladivostok'),(291,'Asia/Yakutsk'),(292,'Asia/Yangon'),(293,'Asia/Yekaterinburg'),(294,'Asia/Yerevan'),(295,'Atlantic/Azores'),(296,'Atlantic/Bermuda'),(297,'Atlantic/Canary'),(298,'Atlantic/Cape_Verde'),(299,'Atlantic/Faroe'),(300,'Atlantic/Madeira'),(301,'Atlantic/Reykjavik'),(302,'Atlantic/South_Georgia'),(303,'Atlantic/St_Helena'),(304,'Atlantic/Stanley'),(305,'Australia/Adelaide'),(306,'Australia/Brisbane'),(307,'Australia/Broken_Hill'),(308,'Australia/Darwin'),(309,'Australia/Eucla'),(310,'Australia/Hobart'),(311,'Australia/Lindeman'),(312,'Australia/Lord_Howe'),(313,'Australia/Melbourne'),(314,'Australia/Perth'),(315,'Australia/Sydney'),(316,'Europe/Amsterdam'),(317,'Europe/Andorra'),(318,'Europe/Astrakhan'),(319,'Europe/Athens'),(320,'Europe/Belgrade'),(321,'Europe/Berlin'),(322,'Europe/Bratislava'),(323,'Europe/Brussels'),(324,'Europe/Bucharest'),(325,'Europe/Budapest'),(326,'Europe/Busingen'),(327,'Europe/Chisinau'),(328,'Europe/Copenhagen'),(329,'Europe/Dublin'),(330,'Europe/Gibraltar'),(331,'Europe/Guernsey'),(332,'Europe/Helsinki'),(333,'Europe/Isle_of_Man'),(334,'Europe/Istanbul'),(335,'Europe/Jersey'),(336,'Europe/Kaliningrad'),(337,'Europe/Kiev'),(338,'Europe/Kirov'),(339,'Europe/Lisbon'),(340,'Europe/Ljubljana'),(341,'Europe/London'),(342,'Europe/Luxembourg'),(343,'Europe/Madrid'),(344,'Europe/Malta'),(345,'Europe/Mariehamn'),(346,'Europe/Minsk'),(347,'Europe/Monaco'),(348,'Europe/Moscow'),(349,'Europe/Oslo'),(350,'Europe/Paris'),(351,'Europe/Podgorica'),(352,'Europe/Prague'),(353,'Europe/Riga'),(354,'Europe/Rome'),(355,'Europe/Samara'),(356,'Europe/San_Marino'),(357,'Europe/Sarajevo'),(358,'Europe/Saratov'),(359,'Europe/Simferopol'),(360,'Europe/Skopje'),(361,'Europe/Sofia'),(362,'Europe/Stockholm'),(363,'Europe/Tallinn'),(364,'Europe/Tirane'),(365,'Europe/Ulyanovsk'),(366,'Europe/Uzhgorod'),(367,'Europe/Vaduz'),(368,'Europe/Vatican'),(369,'Europe/Vienna'),(370,'Europe/Vilnius'),(371,'Europe/Volgograd'),(372,'Europe/Warsaw'),(373,'Europe/Zagreb'),(374,'Europe/Zaporozhye'),(375,'Europe/Zurich'),(376,'Indian/Antananarivo'),(377,'Indian/Chagos'),(378,'Indian/Christmas'),(379,'Indian/Cocos'),(380,'Indian/Comoro'),(381,'Indian/Kerguelen'),(382,'Indian/Mahe'),(383,'Indian/Maldives'),(384,'Indian/Mauritius'),(385,'Indian/Mayotte'),(386,'Indian/Reunion'),(387,'Pacific/Apia'),(388,'Pacific/Auckland'),(389,'Pacific/Bougainville'),(390,'Pacific/Chatham'),(391,'Pacific/Chuuk'),(392,'Pacific/Easter'),(393,'Pacific/Efate'),(394,'Pacific/Fakaofo'),(395,'Pacific/Fiji'),(396,'Pacific/Funafuti'),(397,'Pacific/Galapagos'),(398,'Pacific/Gambier'),(399,'Pacific/Guadalcanal'),(400,'Pacific/Guam'),(401,'Pacific/Honolulu'),(402,'Pacific/Kanton'),(403,'Pacific/Kiritimati'),(404,'Pacific/Kosrae'),(405,'Pacific/Kwajalein'),(406,'Pacific/Majuro'),(407,'Pacific/Marquesas'),(408,'Pacific/Midway'),(409,'Pacific/Nauru'),(410,'Pacific/Niue'),(411,'Pacific/Norfolk'),(412,'Pacific/Noumea'),(413,'Pacific/Pago_Pago'),(414,'Pacific/Palau'),(415,'Pacific/Pitcairn'),(416,'Pacific/Pohnpei'),(417,'Pacific/Port_Moresby'),(418,'Pacific/Rarotonga'),(419,'Pacific/Saipan'),(420,'Pacific/Tahiti'),(421,'Pacific/Tarawa'),(422,'Pacific/Tongatapu'),(423,'Pacific/Wake'),(424,'Pacific/Wallis'),(425,'UTC'),(426,'Africa/Abidjan'),(427,'Africa/Accra'),(428,'Africa/Addis_Ababa'),(429,'Africa/Algiers'),(430,'Africa/Asmara'),(431,'Africa/Bamako'),(432,'Africa/Bangui'),(433,'Africa/Banjul'),(434,'Africa/Bissau'),(435,'Africa/Blantyre'),(436,'Africa/Brazzaville'),(437,'Africa/Bujumbura'),(438,'Africa/Cairo'),(439,'Africa/Casablanca'),(440,'Africa/Ceuta'),(441,'Africa/Conakry'),(442,'Africa/Dakar'),(443,'Africa/Dar_es_Salaam'),(444,'Africa/Djibouti'),(445,'Africa/Douala'),(446,'Africa/El_Aaiun'),(447,'Africa/Freetown'),(448,'Africa/Gaborone'),(449,'Africa/Harare'),(450,'Africa/Johannesburg'),(451,'Africa/Juba'),(452,'Africa/Kampala'),(453,'Africa/Khartoum'),(454,'Africa/Kigali'),(455,'Africa/Kinshasa'),(456,'Africa/Lagos'),(457,'Africa/Libreville'),(458,'Africa/Lome'),(459,'Africa/Luanda'),(460,'Africa/Lubumbashi'),(461,'Africa/Lusaka'),(462,'Africa/Malabo'),(463,'Africa/Maputo'),(464,'Africa/Maseru'),(465,'Africa/Mbabane'),(466,'Africa/Mogadishu'),(467,'Africa/Monrovia'),(468,'Africa/Nairobi'),(469,'Africa/Ndjamena'),(470,'Africa/Niamey'),(471,'Africa/Nouakchott'),(472,'Africa/Ouagadougou'),(473,'Africa/Porto-Novo'),(474,'Africa/Sao_Tome'),(475,'Africa/Tripoli'),(476,'Africa/Tunis'),(477,'Africa/Windhoek'),(478,'America/Adak'),(479,'America/Anchorage'),(480,'America/Anguilla'),(481,'America/Antigua'),(482,'America/Araguaina'),(483,'America/Argentina/Buenos_Aires'),(484,'America/Argentina/Catamarca'),(485,'America/Argentina/Cordoba'),(486,'America/Argentina/Jujuy'),(487,'America/Argentina/La_Rioja'),(488,'America/Argentina/Mendoza'),(489,'America/Argentina/Rio_Gallegos'),(490,'America/Argentina/Salta'),(491,'America/Argentina/San_Juan'),(492,'America/Argentina/San_Luis'),(493,'America/Argentina/Tucuman'),(494,'America/Argentina/Ushuaia'),(495,'America/Aruba'),(496,'America/Asuncion'),(497,'America/Atikokan'),(498,'America/Bahia'),(499,'America/Bahia_Banderas'),(500,'America/Barbados'),(501,'America/Belem'),(502,'America/Belize'),(503,'America/Blanc-Sablon'),(504,'America/Boa_Vista'),(505,'America/Bogota'),(506,'America/Boise'),(507,'America/Cambridge_Bay'),(508,'America/Campo_Grande'),(509,'America/Cancun'),(510,'America/Caracas'),(511,'America/Cayenne'),(512,'America/Cayman'),(513,'America/Chicago'),(514,'America/Chihuahua'),(515,'America/Costa_Rica'),(516,'America/Creston'),(517,'America/Cuiaba'),(518,'America/Curacao'),(519,'America/Danmarkshavn'),(520,'America/Dawson'),(521,'America/Dawson_Creek'),(522,'America/Denver'),(523,'America/Detroit'),(524,'America/Dominica'),(525,'America/Edmonton'),(526,'America/Eirunepe'),(527,'America/El_Salvador'),(528,'America/Fort_Nelson'),(529,'America/Fortaleza'),(530,'America/Glace_Bay'),(531,'America/Goose_Bay'),(532,'America/Grand_Turk'),(533,'America/Grenada'),(534,'America/Guadeloupe'),(535,'America/Guatemala'),(536,'America/Guayaquil'),(537,'America/Guyana'),(538,'America/Halifax'),(539,'America/Havana'),(540,'America/Hermosillo'),(541,'America/Indiana/Indianapolis'),(542,'America/Indiana/Knox'),(543,'America/Indiana/Marengo'),(544,'America/Indiana/Petersburg'),(545,'America/Indiana/Tell_City'),(546,'America/Indiana/Vevay'),(547,'America/Indiana/Vincennes'),(548,'America/Indiana/Winamac'),(549,'America/Inuvik'),(550,'America/Iqaluit'),(551,'America/Jamaica'),(552,'America/Juneau'),(553,'America/Kentucky/Louisville'),(554,'America/Kentucky/Monticello'),(555,'America/Kralendijk'),(556,'America/La_Paz'),(557,'America/Lima'),(558,'America/Los_Angeles'),(559,'America/Lower_Princes'),(560,'America/Maceio'),(561,'America/Managua'),(562,'America/Manaus'),(563,'America/Marigot'),(564,'America/Martinique'),(565,'America/Matamoros'),(566,'America/Mazatlan'),(567,'America/Menominee'),(568,'America/Merida'),(569,'America/Metlakatla'),(570,'America/Mexico_City'),(571,'America/Miquelon'),(572,'America/Moncton'),(573,'America/Monterrey'),(574,'America/Montevideo'),(575,'America/Montserrat'),(576,'America/Nassau'),(577,'America/New_York'),(578,'America/Nipigon'),(579,'America/Nome'),(580,'America/Noronha'),(581,'America/North_Dakota/Beulah'),(582,'America/North_Dakota/Center'),(583,'America/North_Dakota/New_Salem'),(584,'America/Nuuk'),(585,'America/Ojinaga'),(586,'America/Panama'),(587,'America/Pangnirtung'),(588,'America/Paramaribo'),(589,'America/Phoenix'),(590,'America/Port-au-Prince'),(591,'America/Port_of_Spain'),(592,'America/Porto_Velho'),(593,'America/Puerto_Rico'),(594,'America/Punta_Arenas'),(595,'America/Rainy_River'),(596,'America/Rankin_Inlet'),(597,'America/Recife'),(598,'America/Regina'),(599,'America/Resolute'),(600,'America/Rio_Branco'),(601,'America/Santarem'),(602,'America/Santiago'),(603,'America/Santo_Domingo'),(604,'America/Sao_Paulo'),(605,'America/Scoresbysund'),(606,'America/Sitka'),(607,'America/St_Barthelemy'),(608,'America/St_Johns'),(609,'America/St_Kitts'),(610,'America/St_Lucia'),(611,'America/St_Thomas'),(612,'America/St_Vincent'),(613,'America/Swift_Current'),(614,'America/Tegucigalpa'),(615,'America/Thule'),(616,'America/Thunder_Bay'),(617,'America/Tijuana'),(618,'America/Toronto'),(619,'America/Tortola'),(620,'America/Vancouver'),(621,'America/Whitehorse'),(622,'America/Winnipeg'),(623,'America/Yakutat'),(624,'America/Yellowknife'),(625,'Antarctica/Casey'),(626,'Antarctica/Davis'),(627,'Antarctica/DumontDUrville'),(628,'Antarctica/Macquarie'),(629,'Antarctica/Mawson'),(630,'Antarctica/McMurdo'),(631,'Antarctica/Palmer'),(632,'Antarctica/Rothera'),(633,'Antarctica/Syowa'),(634,'Antarctica/Troll'),(635,'Antarctica/Vostok'),(636,'Arctic/Longyearbyen'),(637,'Asia/Aden'),(638,'Asia/Almaty'),(639,'Asia/Amman'),(640,'Asia/Anadyr'),(641,'Asia/Aqtau'),(642,'Asia/Aqtobe'),(643,'Asia/Ashgabat'),(644,'Asia/Atyrau'),(645,'Asia/Baghdad'),(646,'Asia/Bahrain'),(647,'Asia/Baku'),(648,'Asia/Bangkok'),(649,'Asia/Barnaul'),(650,'Asia/Beirut'),(651,'Asia/Bishkek'),(652,'Asia/Brunei'),(653,'Asia/Chita'),(654,'Asia/Choibalsan'),(655,'Asia/Colombo'),(656,'Asia/Damascus'),(657,'Asia/Dhaka'),(658,'Asia/Dili'),(659,'Asia/Dubai'),(660,'Asia/Dushanbe'),(661,'Asia/Famagusta'),(662,'Asia/Gaza'),(663,'Asia/Hebron'),(664,'Asia/Ho_Chi_Minh'),(665,'Asia/Hong_Kong'),(666,'Asia/Hovd'),(667,'Asia/Irkutsk'),(668,'Asia/Jakarta'),(669,'Asia/Jayapura'),(670,'Asia/Jerusalem'),(671,'Asia/Kabul'),(672,'Asia/Kamchatka'),(673,'Asia/Karachi'),(674,'Asia/Kathmandu'),(675,'Asia/Khandyga'),(676,'Asia/Kolkata'),(677,'Asia/Krasnoyarsk'),(678,'Asia/Kuala_Lumpur'),(679,'Asia/Kuching'),(680,'Asia/Kuwait'),(681,'Asia/Macau'),(682,'Asia/Magadan'),(683,'Asia/Makassar'),(684,'Asia/Manila'),(685,'Asia/Muscat'),(686,'Asia/Nicosia'),(687,'Asia/Novokuznetsk'),(688,'Asia/Novosibirsk'),(689,'Asia/Omsk'),(690,'Asia/Oral'),(691,'Asia/Phnom_Penh'),(692,'Asia/Pontianak'),(693,'Asia/Pyongyang'),(694,'Asia/Qatar'),(695,'Asia/Qostanay'),(696,'Asia/Qyzylorda'),(697,'Asia/Riyadh'),(698,'Asia/Sakhalin'),(699,'Asia/Samarkand'),(700,'Asia/Seoul'),(701,'Asia/Shanghai'),(702,'Asia/Singapore'),(703,'Asia/Srednekolymsk'),(704,'Asia/Taipei'),(705,'Asia/Tashkent'),(706,'Asia/Tbilisi'),(707,'Asia/Tehran'),(708,'Asia/Thimphu'),(709,'Asia/Tokyo'),(710,'Asia/Tomsk'),(711,'Asia/Ulaanbaatar'),(712,'Asia/Urumqi'),(713,'Asia/Ust-Nera'),(714,'Asia/Vientiane'),(715,'Asia/Vladivostok'),(716,'Asia/Yakutsk'),(717,'Asia/Yangon'),(718,'Asia/Yekaterinburg'),(719,'Asia/Yerevan'),(720,'Atlantic/Azores'),(721,'Atlantic/Bermuda'),(722,'Atlantic/Canary'),(723,'Atlantic/Cape_Verde'),(724,'Atlantic/Faroe'),(725,'Atlantic/Madeira'),(726,'Atlantic/Reykjavik'),(727,'Atlantic/South_Georgia'),(728,'Atlantic/St_Helena'),(729,'Atlantic/Stanley'),(730,'Australia/Adelaide'),(731,'Australia/Brisbane'),(732,'Australia/Broken_Hill'),(733,'Australia/Darwin'),(734,'Australia/Eucla'),(735,'Australia/Hobart'),(736,'Australia/Lindeman'),(737,'Australia/Lord_Howe'),(738,'Australia/Melbourne'),(739,'Australia/Perth'),(740,'Australia/Sydney'),(741,'Europe/Amsterdam'),(742,'Europe/Andorra'),(743,'Europe/Astrakhan'),(744,'Europe/Athens'),(745,'Europe/Belgrade'),(746,'Europe/Berlin'),(747,'Europe/Bratislava'),(748,'Europe/Brussels'),(749,'Europe/Bucharest'),(750,'Europe/Budapest'),(751,'Europe/Busingen'),(752,'Europe/Chisinau'),(753,'Europe/Copenhagen'),(754,'Europe/Dublin'),(755,'Europe/Gibraltar'),(756,'Europe/Guernsey'),(757,'Europe/Helsinki'),(758,'Europe/Isle_of_Man'),(759,'Europe/Istanbul'),(760,'Europe/Jersey'),(761,'Europe/Kaliningrad'),(762,'Europe/Kiev'),(763,'Europe/Kirov'),(764,'Europe/Lisbon'),(765,'Europe/Ljubljana'),(766,'Europe/London'),(767,'Europe/Luxembourg'),(768,'Europe/Madrid'),(769,'Europe/Malta'),(770,'Europe/Mariehamn'),(771,'Europe/Minsk'),(772,'Europe/Monaco'),(773,'Europe/Moscow'),(774,'Europe/Oslo'),(775,'Europe/Paris'),(776,'Europe/Podgorica'),(777,'Europe/Prague'),(778,'Europe/Riga'),(779,'Europe/Rome'),(780,'Europe/Samara'),(781,'Europe/San_Marino'),(782,'Europe/Sarajevo'),(783,'Europe/Saratov'),(784,'Europe/Simferopol'),(785,'Europe/Skopje'),(786,'Europe/Sofia'),(787,'Europe/Stockholm'),(788,'Europe/Tallinn'),(789,'Europe/Tirane'),(790,'Europe/Ulyanovsk'),(791,'Europe/Uzhgorod'),(792,'Europe/Vaduz'),(793,'Europe/Vatican'),(794,'Europe/Vienna'),(795,'Europe/Vilnius'),(796,'Europe/Volgograd'),(797,'Europe/Warsaw'),(798,'Europe/Zagreb'),(799,'Europe/Zaporozhye'),(800,'Europe/Zurich'),(801,'Indian/Antananarivo'),(802,'Indian/Chagos'),(803,'Indian/Christmas'),(804,'Indian/Cocos'),(805,'Indian/Comoro'),(806,'Indian/Kerguelen'),(807,'Indian/Mahe'),(808,'Indian/Maldives'),(809,'Indian/Mauritius'),(810,'Indian/Mayotte'),(811,'Indian/Reunion'),(812,'Pacific/Apia'),(813,'Pacific/Auckland'),(814,'Pacific/Bougainville'),(815,'Pacific/Chatham'),(816,'Pacific/Chuuk'),(817,'Pacific/Easter'),(818,'Pacific/Efate'),(819,'Pacific/Fakaofo'),(820,'Pacific/Fiji'),(821,'Pacific/Funafuti'),(822,'Pacific/Galapagos'),(823,'Pacific/Gambier'),(824,'Pacific/Guadalcanal'),(825,'Pacific/Guam'),(826,'Pacific/Honolulu'),(827,'Pacific/Kanton'),(828,'Pacific/Kiritimati'),(829,'Pacific/Kosrae'),(830,'Pacific/Kwajalein'),(831,'Pacific/Majuro'),(832,'Pacific/Marquesas'),(833,'Pacific/Midway'),(834,'Pacific/Nauru'),(835,'Pacific/Niue'),(836,'Pacific/Norfolk'),(837,'Pacific/Noumea'),(838,'Pacific/Pago_Pago'),(839,'Pacific/Palau'),(840,'Pacific/Pitcairn'),(841,'Pacific/Pohnpei'),(842,'Pacific/Port_Moresby'),(843,'Pacific/Rarotonga'),(844,'Pacific/Saipan'),(845,'Pacific/Tahiti'),(846,'Pacific/Tarawa'),(847,'Pacific/Tongatapu'),(848,'Pacific/Wake'),(849,'Pacific/Wallis'),(850,'UTC');
/*!40000 ALTER TABLE `timezones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) NOT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `payment_provider` enum('flutterwave','mollie','midtrans','paypal','paystack','razorpay','sslcommerz','stripe','instamojo','offline') NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `amount` varchar(255) NOT NULL,
  `coupons` int(11) DEFAULT NULL,
  `coupon_id` int(11) NOT NULL,
  `currency_symbol` varchar(255) DEFAULT NULL,
  `usd_amount` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,'28137200','ch_3MWJNzK602rFquMz1Z3IfKOC','stripe',57,'3.24',5,7,'$','3.24','paid','2023-01-31 12:56:32','2023-01-31 12:56:32'),(2,'442905658','ch_3MWYD2K602rFquMz05Vgk1hu','stripe',56,'3.25',5,7,'$','3.25','paid','2023-02-01 04:46:13','2023-02-01 04:46:13'),(3,'338386612','ch_3MXe1qK602rFquMz1b5iFfyf','stripe',58,'2.99',5,7,'$','2.99','paid','2023-02-04 05:11:11','2023-02-04 05:11:11'),(4,'977802116','ch_3MXjQ8K602rFquMz1DLUOxIY','stripe',56,'1.77',3,6,'$','1.77','paid','2023-02-04 10:56:37','2023-02-04 10:56:37'),(5,'930635682','ch_3MY7faK602rFquMz0Hxjyayg','stripe',56,'2.99',5,7,'$','2.99','paid','2023-02-05 12:50:11','2023-02-05 12:50:11'),(6,'818887153','ch_3MYTlkK602rFquMz1lJYOtLu','stripe',60,'0.67',1,5,'$','0.67','paid','2023-02-06 12:26:02','2023-02-06 12:26:02'),(7,'536151345','ch_3MYU3oK602rFquMz0Vz5leN4','stripe',60,'0.67',1,5,'$','0.67','paid','2023-02-06 12:44:41','2023-02-06 12:44:41'),(8,'600992174','ch_3MYmKNK602rFquMz1BneYngI','stripe',61,'0.67',1,5,'$','0.67','paid','2023-02-07 08:15:00','2023-02-07 08:15:00'),(9,'461006795','ch_3MjfmIK602rFquMz0jauZStG','stripe',56,'1.77',3,6,'$','1.77','paid','2023-03-09 09:28:51','2023-03-09 09:28:51'),(10,'469169702','ch_3MjfmjK602rFquMz0SGTYoFK','stripe',56,'2.99',5,7,'$','2.99','paid','2023-03-09 09:29:18','2023-03-09 09:29:18'),(11,'414038864','ch_3MkO4YK602rFquMz0irkU7jT','stripe',63,'2.99',5,7,'$','2.99','paid','2023-03-11 08:46:38','2023-03-11 08:46:38'),(12,'88846390','ch_3MnFO7K602rFquMz12iTFQoL','stripe',67,'0.67',1,5,'$','0.67','paid','2023-03-19 06:06:40','2023-03-19 06:06:40'),(13,'321066094','ch_3MnFU9K602rFquMz1qfLLAFd','stripe',67,'0.67',1,5,'$','0.67','paid','2023-03-19 06:12:54','2023-03-19 06:12:54'),(14,'798991321','ch_3MnKflK602rFquMz0W1V7973','stripe',68,'2.99',5,7,'$','2.99','paid','2023-03-19 11:45:14','2023-03-19 11:45:14'),(15,'983192071','ch_3Mnbc2K602rFquMz0iRyHmQb','stripe',70,'2.99',5,7,'$','2.99','paid','2023-03-20 05:50:31','2023-03-20 05:50:31'),(16,'748814276','ch_3Mnbj3K602rFquMz0XEURApw','stripe',70,'2.99',5,7,'$','2.99','paid','2023-03-20 05:57:46','2023-03-20 05:57:46'),(17,'561236219','ch_3MnxlAK602rFquMz0mgZLces','stripe',69,'2.99',5,7,'$','2.99','paid','2023-03-21 05:29:25','2023-03-21 05:29:25'),(18,'916779433','ch_3MrFGLK602rFquMz1p7bDMlu','stripe',73,'0.67',1,5,'$','0.67','paid','2023-03-30 06:47:10','2023-03-30 06:47:10'),(19,'825734941','ch_3MrwHPK602rFquMz1cfdxeVt','stripe',75,'2.99',5,7,'$','2.99','paid','2023-04-01 04:43:08','2023-04-01 04:43:08');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_device_tokens`
--

DROP TABLE IF EXISTS `user_device_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_device_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `device_token` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_device_tokens_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_device_tokens`
--

LOCK TABLES `user_device_tokens` WRITE;
/*!40000 ALTER TABLE `user_device_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_device_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_followers`
--

DROP TABLE IF EXISTS `user_followers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_followers` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `seller_id` int(255) NOT NULL,
  `follower_id` int(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_followers`
--

LOCK TABLES `user_followers` WRITE;
/*!40000 ALTER TABLE `user_followers` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_followers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_plans`
--

DROP TABLE IF EXISTS `user_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_plans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `ad_limit` bigint(20) unsigned NOT NULL DEFAULT 3,
  `featured_limit` bigint(20) unsigned NOT NULL DEFAULT 0,
  `badge` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subscription_type` enum('one_time','recurring') NOT NULL DEFAULT 'one_time',
  `expired_date` date DEFAULT NULL,
  `current_plan_id` bigint(20) unsigned DEFAULT NULL,
  `is_restored_plan_benefits` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `user_plans_user_id_foreign` (`user_id`),
  KEY `user_plans_current_plan_id_foreign` (`current_plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_plans`
--

LOCK TABLES `user_plans` WRITE;
/*!40000 ALTER TABLE `user_plans` DISABLE KEYS */;
INSERT INTO `user_plans` VALUES (1,56,0,0,0,'2023-01-29 09:56:46','2023-01-29 09:56:46','',NULL,NULL,0),(2,57,0,0,0,'2023-01-29 12:54:37','2023-01-29 12:54:37','',NULL,NULL,0),(3,58,0,0,0,'2023-02-04 05:01:28','2023-02-04 05:01:28','',NULL,NULL,0),(4,59,0,0,0,'2023-02-06 12:19:21','2023-02-06 12:19:21','',NULL,NULL,0),(5,60,0,0,0,'2023-02-06 12:21:48','2023-02-06 12:21:48','',NULL,NULL,0),(6,61,0,0,0,'2023-02-07 08:13:44','2023-02-07 08:13:44','',NULL,NULL,0),(7,62,0,0,0,'2023-03-01 07:26:49','2023-03-01 07:26:49','',NULL,NULL,0),(8,63,0,0,0,'2023-03-07 08:40:05','2023-03-07 08:40:05','',NULL,NULL,0),(9,64,0,0,0,'2023-03-09 09:03:17','2023-03-09 09:03:17','',NULL,NULL,0),(10,65,0,0,0,'2023-03-11 06:47:03','2023-03-11 06:47:03','',NULL,NULL,0),(11,66,0,0,0,'2023-03-11 08:56:23','2023-03-11 08:56:23','',NULL,NULL,0),(12,67,0,0,0,'2023-03-19 05:55:08','2023-03-19 05:55:08','',NULL,NULL,0),(13,68,0,0,0,'2023-03-19 11:43:06','2023-03-19 11:43:06','',NULL,NULL,0),(14,69,0,0,0,'2023-03-20 05:42:54','2023-03-20 05:42:54','',NULL,NULL,0),(15,70,0,0,0,'2023-03-20 05:46:45','2023-03-20 05:46:45','',NULL,NULL,0),(16,71,0,0,0,'2023-03-20 08:30:15','2023-03-20 08:30:15','',NULL,NULL,0),(17,72,0,0,0,'2023-03-30 06:41:13','2023-03-30 06:41:13','',NULL,NULL,0),(18,73,0,0,0,'2023-03-30 06:44:05','2023-03-30 06:44:05','',NULL,NULL,0),(19,74,0,0,0,'2023-04-01 03:59:49','2023-04-01 03:59:49','',NULL,NULL,0),(20,75,0,0,0,'2023-04-01 04:41:24','2023-04-01 04:41:24','',NULL,NULL,0),(21,76,0,0,0,'2023-04-01 05:01:23','2023-04-01 05:01:23','',NULL,NULL,0),(22,77,0,0,0,'2023-04-13 05:26:30','2023-04-13 05:26:30','',NULL,NULL,0),(23,78,0,0,0,'2023-04-13 05:27:27','2023-04-13 05:27:27','',NULL,NULL,0),(24,79,0,0,0,'2023-04-16 06:37:52','2023-04-16 06:37:52','',NULL,NULL,0);
/*!40000 ALTER TABLE `user_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `location` int(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `web` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'backend/image/default-user.png',
  `token` varchar(255) DEFAULT NULL,
  `last_seen` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `auth_type` varchar(255) NOT NULL DEFAULT 'email',
  `provider` varchar(255) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `fcm_token` varchar(255) DEFAULT NULL,
  `withdraw_request_amount` float NOT NULL DEFAULT 0,
  `total_seller_amount` float NOT NULL DEFAULT 0,
  `trusted_seller` tinyint(4) NOT NULL DEFAULT 0,
  `bio` text DEFAULT NULL,
  `quick_responder` tinyint(4) NOT NULL DEFAULT 0,
  `show_phone` int(2) NOT NULL DEFAULT 0,
  `coupons` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_phone_unique` (`phone`),
  UNIQUE KEY `users_web_unique` (`web`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (56,'Rony','ronymia','ronymia.tech@gmail.com',NULL,NULL,'2023-03-19 12:01:06','$2y$10$V5UXdzqnkvoc64NpbDP90OxJ/EaKKDB.kCK/q7iueVpDsFYm4y3ky',NULL,'uploads/customer/1675687647_63e0f6dfb5c24.jpg',NULL,'2023-04-16 05:59:53',NULL,'2023-01-29 09:56:46','2023-04-16 05:59:53','email',NULL,NULL,NULL,0,0,0,'<p>rr</p>',0,0,9),(57,'Ričards Mucenieks','ricards123','mucenieksricards@gmail.com',NULL,117,'2023-04-13 14:54:03','$2y$10$T5zN8MIa6DGLZuImNzWF/OyOmuTAZev.ZjLGFr883qkx22HO7KVcO',NULL,'uploads/customer/1675175744_63d92740db877.jpg',NULL,'2023-04-13 15:53:48','vovOaGsm96AtR1cFimpUUmsCcoYQNYudxh1qcUvxemU6TnKdEOqcugFo5wQQ','2023-01-29 12:54:37','2023-04-13 15:53:48','email','facebook','2160772120783121',NULL,0,0,0,'<p>ds</p>',0,0,1),(58,'Odder','odder','odder@gmail.com',NULL,NULL,NULL,'$2y$10$8P4H6VH6MbJE4FjE6AgZ0Otfm4wW/9JxgwQCcYyP4kl3VzctFdVRW',NULL,'backend/image/default-user.png',NULL,'2023-02-04 05:23:02',NULL,'2023-02-04 05:01:28','2023-04-01 04:40:20','email',NULL,NULL,NULL,0,0,0,NULL,0,0,3),(59,'rabin','rabin','rabin@gmail.com',NULL,NULL,NULL,'$2y$10$UoELtFPN/bNrNOdaN/Uy9O9bW6MVs8L//Gb7ZI8rB436SUZU.52hO',NULL,'backend/image/default-user.png',NULL,'2023-02-06 12:21:07',NULL,'2023-02-06 12:19:21','2023-02-06 12:21:07','email',NULL,NULL,NULL,0,0,0,NULL,0,0,NULL),(60,'rabin','rabin12','rony@gmail.com',NULL,NULL,NULL,'$2y$10$6wijesVLv9IQh/LyneyR.OqJ825iUenFk4BV3OUbDvO5S6PqE3LXe',NULL,'backend/image/default-user.png',NULL,'2023-02-06 12:44:56',NULL,'2023-02-06 12:21:48','2023-02-06 12:44:56','email',NULL,NULL,NULL,0,0,0,NULL,0,0,0),(61,'Rajib','rajib','rajib@gmail.com',NULL,NULL,NULL,'$2y$10$A9sBNs/CnExLgAMSAW62/OvtkA5JNdeXb8VbW/Fk/y/5Sa5eW2eci',NULL,'backend/image/default-user.png',NULL,'2023-02-07 08:17:53',NULL,'2023-02-07 08:13:44','2023-02-07 08:17:53','email',NULL,NULL,NULL,0,0,0,NULL,0,0,0),(62,'Mokaddes Hosain','mokaddeshosain875244','mr.mokaddes@gmail.com',NULL,NULL,NULL,NULL,NULL,'backend/image/default-user.png',NULL,'2023-03-01 08:54:57',NULL,'2023-03-01 07:26:49','2023-03-01 08:54:57','email','facebook','2432881400192637',NULL,0,0,0,NULL,0,0,NULL),(63,'Mahfuzur Rahman Faruk','mahfuzurrahmanfaruk400656','mahfuzur32785@gmail.com',NULL,NULL,NULL,NULL,NULL,'backend/image/default-user.png',NULL,'2023-03-11 09:13:34',NULL,'2023-03-07 08:40:05','2023-03-11 09:13:34','email','google','100466412492788577548',NULL,0,0,0,NULL,0,0,5),(64,'Md Maidul','mdmaidul966044','maidul.tech@gmail.com',NULL,NULL,NULL,NULL,NULL,'backend/image/default-user.png',NULL,'2023-03-09 09:03:35',NULL,'2023-03-09 09:03:17','2023-03-09 09:03:35','email','google','107639191533203099239',NULL,0,0,0,NULL,0,0,NULL),(65,'nayeem1','nayeemsarwar','nayeem@gmail.com',NULL,NULL,NULL,'$2y$10$eqeteBKinjp9lxKnv4Ploe27mDalI.KPolq489Nbg1qUP8URCn9cu',NULL,'backend/image/default-user.png',NULL,'2023-03-12 05:17:11',NULL,'2023-03-11 06:47:03','2023-03-12 05:17:11','email',NULL,NULL,NULL,0,0,0,NULL,0,0,NULL),(66,'Faruk','faruk1','faruk@gmail.com',NULL,NULL,NULL,'$2y$10$5TNqRZpJlEjqe1bfdSr2VeOmMEzcz/FWgxSWYO52/V3lYvgTl7XM6',NULL,'backend/image/default-user.png',NULL,'2023-03-11 09:12:29',NULL,'2023-03-11 08:56:23','2023-03-11 09:12:29','email',NULL,NULL,NULL,0,0,0,NULL,0,0,NULL),(67,'imrul kayes Tamim','tamim','imrul@gmail.com',NULL,NULL,'2023-03-19 05:55:09','$2y$10$YG3RWi5Hi.mMrgd5UkWPseju8.9TikxYwYyd8/I6PV9rORFkpg3lC',NULL,'backend/image/default-user.png',NULL,'2023-03-19 06:20:11',NULL,'2023-03-19 05:55:08','2023-03-19 06:20:11','email',NULL,NULL,NULL,0,0,0,NULL,0,0,2),(68,'Rony','pikabo','ronymia2211@gmail.com',NULL,NULL,'2023-03-19 11:43:06','$2y$10$.YXiR98bI2s8CIlarfHH5O1OwPpJGHevhGe1H7O80jQJIT1ZFQzvO',NULL,'backend/image/default-user.png',NULL,'2023-03-19 11:56:57',NULL,'2023-03-19 11:43:06','2023-03-19 11:56:57','email',NULL,NULL,NULL,0,0,0,NULL,0,0,5),(69,'Ali Zafar','alizafar','alizafar@gmail.com',NULL,NULL,'2023-03-20 05:42:54','$2y$10$HrOoWGRPo0VBurDL7vGsH.04E4lOW1aNVAorHwNSYmbv/HITdQFEm',NULL,'backend/image/default-user.png',NULL,'2023-03-21 07:06:39',NULL,'2023-03-20 05:42:54','2023-03-21 07:06:39','email',NULL,NULL,NULL,0,0,0,NULL,0,0,4),(70,'Neeow','neeow','neeow@gmail.com','01714387757',18,'2023-03-20 05:47:18','$2y$10$3Qyyg3rmcyxW.WfZE.zUkuMgaQ36tSoiV/RHxmuN8F37TGeQtrRjG',NULL,'uploads/customer/1679291529_6417f489c9e58.png',NULL,'2023-03-21 09:48:50',NULL,'2023-03-20 05:46:45','2023-04-01 04:41:05','email',NULL,NULL,NULL,0,0,0,'<p>Best for Us</p>',1,0,6),(71,'MD.RIYAD BHUYAN','md.riyadbhuyan412095','ziariyad018@gmail.com',NULL,NULL,'2023-03-20 08:33:27',NULL,NULL,'backend/image/default-user.png',NULL,'2023-03-20 08:34:25',NULL,'2023-03-20 08:30:15','2023-03-20 08:34:25','email','google','117353262777248551189',NULL,0,0,0,NULL,0,0,NULL),(72,'sakib','sakib','sakib@gmail.com',NULL,NULL,NULL,'$2y$10$nPAgY4WXoLcf/4KLb51d0uKuPE4orA10w3FyXC61nrarqUdNRJWlm',NULL,'backend/image/default-user.png',NULL,'2023-03-30 06:42:00',NULL,'2023-03-30 06:41:13','2023-03-30 06:42:00','email',NULL,NULL,NULL,0,0,0,NULL,0,0,NULL),(73,'nayeem sarwar','nayeem sarwar','nayeemsarwar1275@gmail.com',NULL,NULL,'2023-03-30 06:45:54','$2y$10$Kt69YyBwExSnC6TohYByQeVMwoRFkB3wiMdDrhopxKfUl3b8fnh..',NULL,'backend/image/default-user.png',NULL,'2023-03-30 07:05:19',NULL,'2023-03-30 06:44:05','2023-03-30 07:05:19','email',NULL,NULL,NULL,0,0,0,NULL,0,0,1),(74,'New','new','new@gmail.com',NULL,NULL,NULL,NULL,NULL,'backend/image/default-user.png',NULL,'2023-04-01 04:32:29',NULL,'2023-04-01 03:59:49','2023-04-01 04:39:43','email','google','110340730129744054851',NULL,0,0,1,NULL,1,0,NULL),(75,'Safwan','safwan','safwan@gmail.com',NULL,NULL,'2023-04-01 04:41:24','$2y$10$khFIsdIMUa6cbujdHPsOneZd239Y0p7hT2wGo2EnjrmypzVaSyQcG',NULL,'backend/image/default-user.png',NULL,'2023-04-01 04:52:39',NULL,'2023-04-01 04:41:24','2023-04-01 04:52:39','email',NULL,NULL,NULL,0,0,0,NULL,0,0,3),(76,'Manny','manny','manny@gmail.com',NULL,NULL,NULL,'$2y$10$CQz2JR3zZf9sYHGrtqELbe7Ik5.WPu8EZPKuen1u.3nnDVvDTBpRi',NULL,'backend/image/default-user.png',NULL,'2023-04-01 05:01:32',NULL,'2023-04-01 05:01:23','2023-04-01 05:01:32','email',NULL,NULL,NULL,0,0,0,NULL,0,0,NULL),(77,'rabin','rabi','rabin12@gmail.com',NULL,NULL,NULL,'$2y$10$opAlsx7FoPEL6bzhW5frlex0DPMCIKKW4M0nvORp4d3KB5R1Ib3oe',NULL,'backend/image/default-user.png',NULL,'2023-04-13 05:27:03',NULL,'2023-04-13 05:26:30','2023-04-13 05:27:03','email',NULL,NULL,NULL,0,0,0,NULL,0,0,NULL),(78,'rabin','rabin1212','rabinmia7578@gmail.com',NULL,NULL,NULL,'$2y$10$Y9bYoXIoCe0q.LMwF3mFlefYNEu.dQ7TDpJ9IZT6H9h15s0P1pWEi',NULL,'backend/image/default-user.png',NULL,'2023-04-13 08:55:37',NULL,'2023-04-13 05:27:27','2023-04-13 08:55:37','email',NULL,NULL,NULL,0,0,0,NULL,0,0,NULL),(79,'Md. Meraj Hossain','merajhossain','alif.prince19.hero@gmai.com',NULL,NULL,NULL,'$2y$10$bYv4CrYlRg2FehS7YdwszuPmuBK8OuEF26R/ezsdS3qxf36jJCVVK',NULL,'backend/image/default-user.png',NULL,'2023-04-16 06:41:40',NULL,'2023-04-16 06:37:52','2023-04-16 06:41:40','email',NULL,NULL,NULL,0,0,0,NULL,0,0,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishlists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ad_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlists_ad_id_foreign` (`ad_id`),
  KEY `wishlists_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
INSERT INTO `wishlists` VALUES (3,29,56,'2023-04-16 05:50:23','2023-04-16 05:50:23'),(4,30,79,'2023-04-16 06:41:30','2023-04-16 06:41:30'),(5,29,79,'2023-04-16 06:41:33','2023-04-16 06:41:33'),(6,26,79,'2023-04-16 06:41:35','2023-04-16 06:41:35');
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraw_requests`
--

DROP TABLE IF EXISTS `withdraw_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `withdraw_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_id` int(255) NOT NULL,
  `amount` float(14,2) NOT NULL DEFAULT 0.00,
  `withdraw_request_date` datetime NOT NULL,
  `approved_date` datetime DEFAULT NULL,
  `status` varchar(255) NOT NULL COMMENT '0=request,1=approved',
  `screenshoot` varchar(255) NOT NULL,
  `payment_by` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraw_requests`
--

LOCK TABLES `withdraw_requests` WRITE;
/*!40000 ALTER TABLE `withdraw_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdraw_requests` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_withdraw_requests_insert` AFTER INSERT ON `withdraw_requests` FOR EACH ROW begin

	declare var_amount float default 0;
 	select sum(amount) into var_amount from withdraw_requests where seller_id = new.seller_id;

 	update users set withdraw_request_amount = var_amount where id = new.seller_id;
 	

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-16 12:22:15
